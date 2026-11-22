#!/usr/bin/env python3
"""Stream a large flow dataset through the pipelined VAE IP on a PYNQ-Z2 and measure it.

Runs on the board (PYNQ image, Python 3, numpy). Copy these files next to each other:

    vae_sender.bit  vae_sender.hwh       from autoencoder/overlay/build/
    vae_test_dataset.npz                 from board/make_board_dataset.py
    run_batch.py                         this script

    sudo -E python3 run_batch.py                          # 100k test flows, default sweep
    sudo -E python3 run_batch.py --flows 1000000          # tile the test set up to 1M flows
    sudo -E python3 run_batch.py --periods 0,16,1000 --single 2000 --out results.json

What it does, for each pacing period in --periods:
  1. Writes all feature codes into one DDR buffer.
  2. Starts vae_feature_sender once for the whole batch. The IP streams every flow into
     vae_axis and writes back, per flow, the score plus the cycle stamps at which beat 0
     left the sender and the score came back (one free-running PL counter).
  3. Checks every score bit for bit against the hls4ml model, and reports latency,
     throughput and detection metrics.

--period is the minimum number of PL cycles between the starts of consecutive flows:
  0      saturate. The pipeline runs at its own pace and latency includes queueing.
  16     the core's initiation interval: full rate with ~no queueing.
  1000   isolated flows: pure per-flow pipeline latency.
--single N additionally runs N one-flow batches to measure the PS round trip
(register write -> AP_DONE seen by Python), the latency software actually sees per call.
"""
from __future__ import annotations

import argparse
import json
import time
from pathlib import Path

import numpy as np

# Register map from vae_feature_sender_ip/.../xvae_feature_sender_hw.h
AP_CTRL = 0x00
FEATURES = 0x10
T_SEND = 0x1C
RESULTS = 0x28
N_FLOWS = 0x34
PERIOD = 0x3C
AP_START, AP_DONE, AP_IDLE = 0x1, 0x2, 0x4

SENTINEL = np.uint64(0xFFFFFFFFFFFFFFFF)
FEATURE_MASK = (1 << 25) - 1


def write64(ip, offset, value):
    ip.write(offset, int(value) & 0xFFFFFFFF)
    ip.write(offset + 4, int(value) >> 32)


class Sender:
    def __init__(self, overlay, n_max):
        from pynq import allocate

        self.ip = overlay.sender
        self.features = allocate(shape=(n_max * 8,), dtype=np.uint32)
        self.t_send = allocate(shape=(n_max,), dtype=np.uint64)
        self.results = allocate(shape=(n_max * 2,), dtype=np.uint64)  # 128-bit records
        write64(self.ip, FEATURES, self.features.device_address)
        write64(self.ip, T_SEND, self.t_send.device_address)
        write64(self.ip, RESULTS, self.results.device_address)

    def load(self, codes):
        n = len(codes)
        self.features[: n * 8] = (codes.astype(np.int64).reshape(-1) & FEATURE_MASK).astype(np.uint32)
        self.features.flush()

    def run(self, n, period, timeout):
        """One batch of the first n loaded flows. Returns (scores, t_send, t_recv, wall_s)."""
        if not self.ip.read(AP_CTRL) & AP_IDLE:
            raise RuntimeError("sender is not idle; reload the overlay")
        self.t_send[:n] = SENTINEL
        self.results[: 2 * n] = SENTINEL
        self.t_send.flush()
        self.results.flush()
        self.ip.write(N_FLOWS, n)
        self.ip.write(PERIOD, period)
        read, deadline = self.ip.read, time.perf_counter() + timeout
        t0 = time.perf_counter()
        self.ip.write(AP_CTRL, AP_START)
        while not read(AP_CTRL) & AP_DONE:
            if time.perf_counter() > deadline:
                self.results.invalidate()
                got = int(np.count_nonzero(self.results[0 : 2 * n : 2] != SENTINEL))
                raise TimeoutError(f"batch of {n} did not finish in {timeout} s ({got} scores written)")
        wall = time.perf_counter() - t0
        self.t_send.invalidate()
        self.results.invalidate()
        rec = np.asarray(self.results[: 2 * n]).reshape(n, 2)
        return rec[:, 0].copy(), np.asarray(self.t_send[:n]).copy(), rec[:, 1].copy(), wall


def stats(values):
    v = np.asarray(values, dtype=np.float64)
    q = np.percentile(v, [50, 90, 99, 99.9])
    return dict(min=v.min(), mean=v.mean(), p50=q[0], p90=q[1], p99=q[2], p999=q[3], max=v.max())


def auroc(scores, y):
    """Mann-Whitney AUROC with average ranks for ties (no sklearn needed on the board)."""
    s = scores.astype(np.float64)
    order = np.argsort(s, kind="mergesort")
    ranks = np.empty(len(s))
    sorted_s = s[order]
    _, first, counts = np.unique(sorted_s, return_index=True, return_counts=True)
    avg = first + (counts - 1) / 2.0 + 1
    ranks[order] = np.repeat(avg, counts)
    pos = y == 1
    n_pos, n_neg = pos.sum(), (~pos).sum()
    return float((ranks[pos].sum() - n_pos * (n_pos + 1) / 2) / (n_pos * n_neg))


def fmt(d, scale=1.0, unit=""):
    return "  ".join(f"{k} {v * scale:,.3f}{unit}" for k, v in d.items())


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--bit", default="vae_sender.bit")
    p.add_argument("--data", default="vae_test_dataset.npz")
    p.add_argument("--flows", type=int, default=0, help="number of flows (default: whole file; larger tiles it)")
    p.add_argument("--periods", default="0,16,24,1000", help="comma-separated pacing periods in PL cycles")
    p.add_argument("--single", type=int, default=1000, help="one-flow batches for PS round-trip latency (0 = skip)")
    p.add_argument("--timeout", type=float, default=60.0)
    p.add_argument("--out", default="vae_batch_results.json")
    args = p.parse_args()

    from pynq import Clocks, Overlay

    with np.load(args.data, allow_pickle=False) as z:
        codes, expected, y = z["codes"], z["expected_score_u64"], z["y"]
        attack, threshold = z["attack"], np.uint64(z["threshold_code_u64"])
    n = args.flows or len(codes)
    reps = -(-n // len(codes))
    codes, expected, y, attack = (np.tile(a, (reps,) + (1,) * (a.ndim - 1))[:n] for a in (codes, expected, y, attack))

    overlay = Overlay(args.bit)
    mhz = float(Clocks.fclk0_mhz)
    sender = Sender(overlay, n)
    sender.load(codes)
    print(f"{n:,} flows ({reps}x tiled), PL clock {mhz:.2f} MHz, threshold code {int(threshold)}")

    report = dict(flows=n, fclk_mhz=mhz, batches=[], single=None)
    for period in (int(v) for v in args.periods.split(",")):
        scores, tx, rx, wall = sender.run(n, period, args.timeout)
        lat = (rx - tx).astype(np.int64)
        mism = int(np.count_nonzero(scores != expected))
        span = int(rx[-1] - tx[0])
        rx_gap = np.diff(rx.astype(np.int64))
        flagged = scores > threshold
        row = dict(
            period=period,
            score_mismatches=mism,
            latency_cycles=stats(lat),
            latency_us=stats(lat / mhz),
            pl_span_cycles=span,
            pl_throughput_flows_per_s=(n - 1) / (rx[-1] - rx[0]) * mhz * 1e6 if n > 1 else None,
            median_output_interval_cycles=float(np.median(rx_gap)) if n > 1 else None,
            wall_s=wall,
            wall_throughput_flows_per_s=n / wall,
            recall=float(flagged[y == 1].mean()) if (y == 1).any() else None,
            fpr=float(flagged[y == 0].mean()) if (y == 0).any() else None,
            auroc=auroc(scores, y) if 0 < y.sum() < n else None,
            per_attack_recall={a: float(flagged[attack == a].mean()) for a in np.unique(attack[y == 1])},
        )
        report["batches"].append(row)
        print(f"\nperiod {period:>5} cycles  |  {'OK' if mism == 0 else f'{mism} SCORE MISMATCHES'}")
        print(f"  latency  cycles: {fmt(row['latency_cycles'])}")
        print(f"  latency      us: {fmt(row['latency_us'])}")
        tput = row["pl_throughput_flows_per_s"]
        print(f"  PL throughput {tput / 1e6:,.3f} M flows/s (output every {row['median_output_interval_cycles']:.0f} cycles), "
              f"batch span {span / mhz / 1e3:,.3f} ms")
        print(f"  PS wall clock {wall * 1e3:,.3f} ms -> {row['wall_throughput_flows_per_s'] / 1e6:,.3f} M flows/s incl. start/poll")
        if row["recall"] is not None:
            print(f"  detection: recall {row['recall']:.4f}  FPR {row['fpr']:.4f}  AUROC {row['auroc']:.4f}")

    if args.single:
        rtt, pl = [], []
        for i in range(args.single):
            scores, tx, rx, wall = sender.run(1, 0, args.timeout)
            if scores[0] != expected[0]:
                raise RuntimeError(f"single-flow score mismatch on run {i}")
            rtt.append(wall * 1e6)
            pl.append(int(rx[0] - tx[0]) / mhz)
        report["single"] = dict(runs=args.single, ps_round_trip_us=stats(rtt), pl_latency_us=stats(pl))
        print(f"\nsingle flow x{args.single}")
        print(f"  PS round trip us: {fmt(report['single']['ps_round_trip_us'])}")
        print(f"  PL latency    us: {fmt(report['single']['pl_latency_us'])}")

    Path(args.out).write_text(json.dumps(report, indent=1, default=float))
    print(f"\nwrote {args.out}")
    if any(b["score_mismatches"] for b in report["batches"]):
        raise SystemExit(1)


if __name__ == "__main__":
    main()

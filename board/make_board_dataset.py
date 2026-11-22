#!/usr/bin/env python3
"""Build the dataset file that board/run_batch.py streams through the FPGA.

Runs on the development machine (not the board). For every held-out test flow it
writes the 25-bit feature codes the IP consumes and the score code the IP must
return, computed with hls4ml's bit-accurate C++ model of vae_core (the compiled
library in runs/vae/hls4ml_prj/firmware) plus the wrapper's exact squared error.

  .venv/bin/python board/make_board_dataset.py            # -> board/vae_test_dataset.npz
"""
from __future__ import annotations

import argparse
import ctypes
import json
import re
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
RUN = HERE.parent / "runs" / "vae"
FEATURE_FRAC = 16
FEATURE_BITS = 25


def feature_codes(x: np.ndarray) -> np.ndarray:
    """Same quantisation as train_vae.to_feature_codes: round half to even, saturate."""
    codes = np.round(x.astype(np.float64) * 2 ** FEATURE_FRAC)
    lim = 2 ** (FEATURE_BITS - 1)
    return np.clip(codes, -lim, lim - 1).astype(np.int64)


def bit_exact_scores(codes: np.ndarray, lib_path: Path) -> np.ndarray:
    lib = ctypes.CDLL(str(lib_path))
    fn = lib.vae_core_double
    fn.argtypes = [np.ctypeslib.ndpointer(np.float64, flags="C"), np.ctypeslib.ndpointer(np.float64, flags="C")]
    fn.restype = None
    xq = np.ascontiguousarray(codes / 2.0 ** FEATURE_FRAC, dtype=np.float64)
    recon = np.empty_like(xq)
    row_out = np.empty(8, np.float64)
    for i in range(len(xq)):
        fn(np.ascontiguousarray(xq[i]), row_out)
        recon[i] = row_out
    rc = recon * 2 ** FEATURE_FRAC
    if not np.all(rc == np.round(rc)):
        raise ValueError("reconstruction has more than 16 fractional bits")
    diff = codes - rc.astype(np.int64)
    sq = diff.astype(object) ** 2
    return np.array([int(v) for v in sq.sum(1)], dtype=np.uint64)


def golden_vectors(header: Path):
    """Parse the integer codes and scores from runs/vae/golden_vectors.h."""
    text = header.read_text()
    feat, score = text.split("kGoldenScores")
    rows = re.findall(r"\{([-0-9, ]+)\}", feat.split("kGoldenFeatures", 1)[1])
    codes = np.array([[int(v) for v in r.split(",")] for r in rows], dtype=np.int64)
    scores = np.array([int(v) for v in re.findall(r"(\d+)ULL", score)], dtype=np.uint64)
    return codes, scores


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--run", type=Path, default=RUN)
    p.add_argument("--output", type=Path, default=HERE / "vae_test_dataset.npz")
    args = p.parse_args()

    libs = sorted((args.run / "hls4ml_prj" / "firmware").glob("vae_core-*.so"))
    if not libs:
        raise SystemExit("No compiled hls4ml library; run train_vae.py first")
    meta = json.loads((args.run / "metadata.json").read_text())

    # Self-check against the golden vectors the C-sim testbench uses.
    gcodes, gscores = golden_vectors(args.run / "golden_vectors.h")
    if not np.array_equal(bit_exact_scores(gcodes, libs[-1]), gscores):
        raise SystemExit("hls4ml library does not reproduce golden_vectors.h")

    with np.load(args.run / "test_features.npz", allow_pickle=False) as z:
        x, y, attack = z["x"], z["y"], z["attack"]
    codes = feature_codes(x)
    expected = bit_exact_scores(codes, libs[-1])
    np.savez_compressed(
        args.output,
        codes=codes.astype(np.int32),
        expected_score_u64=expected,
        y=y.astype(np.uint8),
        attack=attack.astype("U14"),
        threshold_code_u64=np.uint64(meta["threshold_code_u64"]),
        feature_order=np.array(meta["ordered_pl_inputs"]),
    )
    flagged = expected > np.uint64(meta["threshold_code_u64"])
    print(f"{len(codes)} flows -> {args.output}  (golden self-check OK; "
          f"recall {flagged[y == 1].mean():.4f}, FPR {flagged[y == 0].mean():.4f})")


if __name__ == "__main__":
    main()

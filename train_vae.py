#!/usr/bin/env python3
"""Train a VAE anomaly detector on NF-UNSW-NB15-v3 and build a Pynq-Z2 IP with hls4ml.

Features, preprocessing and the chronological split are reused verbatim from
../software-model (the frozen "compact" 8-feature contract of the Deep SVDD
baseline). Only benign training rows are used for optimisation.

Pipeline
  1. Load the compact development arrays (benign train, mixed validation) and,
     unless --skip-test, the held-out test rows via the same preprocessing JSON.
  2. Train a VAE 8 -> 32 -> 16 -> (mu, logvar)[latent] -> 16 -> 32 -> 8.
  3. Score = sum_i (x_i - decoder(mu(x))_i)^2  (deterministic, higher = anomalous).
     The threshold is calibrated on normal validation only (target FPR) and
     frozen before any test score is computed.
  4. Convert the deterministic inference path to HLS C++ with hls4ml, choosing
     fixed-point integer bits from benign-training activation ranges.
  5. Wrap it in an AXI4-Stream top (`vae_axis`) with the same ports, formats and
     framing rules as ../inference-hls `deep_svdd_axis`, then run Vitis HLS
     C simulation, synthesis and IP export for xc7z020clg400-1.

Usage
  .venv/bin/python train_vae.py                       # everything
  .venv/bin/python train_vae.py --no-synth            # stop after hls4ml project + csim vectors
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
import os
import shutil
import subprocess
import sys
import time
from pathlib import Path

import numpy as np
import torch
from torch import nn

HERE = Path(__file__).resolve().parent
FEATURE_BITS, FEATURE_INT = 25, 9     # ap_fixed<25,9>: 16 fractional bits, same as deep_svdd_axis
FEATURE_FRAC = FEATURE_BITS - FEATURE_INT
SCORE_BITS, SCORE_INT = 64, 32        # ap_ufixed<64,32>: 32 fractional bits, same as deep_svdd_axis
PART = "xc7z020clg400-1"              # Pynq-Z2


# --------------------------------------------------------------------------- model
class VAE(nn.Module):
    def __init__(self, d: int, latent: int):
        super().__init__()
        self.enc1, self.enc2 = nn.Linear(d, 32), nn.Linear(32, 16)
        self.mu, self.logvar = nn.Linear(16, latent), nn.Linear(16, latent)
        self.dec1, self.dec2, self.out = nn.Linear(latent, 16), nn.Linear(16, 32), nn.Linear(32, d)

    def encode(self, x):
        h = torch.relu(self.enc2(torch.relu(self.enc1(x))))
        return self.mu(h), self.logvar(h)

    def decode(self, z):
        return self.out(torch.relu(self.dec2(torch.relu(self.dec1(z)))))

    def forward(self, x):
        mu, logvar = self.encode(x)
        z = mu + torch.randn_like(mu) * torch.exp(0.5 * logvar)
        return self.decode(z), mu, logvar


class VAEInference(nn.Module):
    """Deterministic path synthesised to hardware: x -> decoder(mu(x))."""

    def __init__(self, vae: VAE):
        super().__init__()
        self.enc1, self.enc2, self.mu = vae.enc1, vae.enc2, vae.mu
        self.dec1, self.dec2, self.out = vae.dec1, vae.dec2, vae.out

    def forward(self, x):
        h = torch.relu(self.enc2(torch.relu(self.enc1(x))))
        z = self.mu(h)
        return self.out(torch.relu(self.dec2(torch.relu(self.dec1(z)))))


def vae_loss(model, x, beta):
    recon, mu, logvar = model(x)
    rec = (recon - x).square().sum(1).mean()
    kl = (-0.5 * (1 + logvar - mu.square() - logvar.exp()).sum(1)).mean()
    return rec + beta * kl, rec, kl


@torch.no_grad()
def scores(model, x, device, batch=8192):
    model.eval()
    inf = VAEInference(model).to(device)
    out = []
    for i in range(0, len(x), batch):
        xb = torch.from_numpy(x[i:i + batch]).to(device)
        out.append((inf(xb) - xb).square().sum(1).cpu().numpy())
    return np.concatenate(out).astype(np.float64)


def train(x_train, x_val_normal, args, device, out):
    torch.manual_seed(args.seed)
    np.random.seed(args.seed)
    model = VAE(x_train.shape[1], args.latent).to(device)
    opt = torch.optim.Adam(model.parameters(), lr=args.lr)
    xt = torch.from_numpy(x_train).to(device)
    xv = torch.from_numpy(x_val_normal).to(device)
    gen = torch.Generator(device="cpu").manual_seed(args.seed)
    best, best_state, stale, history = math.inf, None, 0, []
    for epoch in range(1, args.epochs + 1):
        model.train()
        # KL warm-up over the first `warmup` epochs avoids early posterior collapse.
        beta = args.beta * min(1.0, epoch / max(1, args.warmup))
        perm = torch.randperm(len(xt), generator=gen).to(device)
        tot = n = 0
        for i in range(0, len(xt), args.batch_size):
            xb = xt[perm[i:i + args.batch_size]]
            loss, _, _ = vae_loss(model, xb, beta)
            opt.zero_grad(set_to_none=True)
            loss.backward()
            opt.step()
            tot += loss.item() * len(xb)
            n += len(xb)
        model.eval()
        with torch.no_grad():
            torch.manual_seed(args.seed + epoch)
            vl, vr, vk = (t.item() for t in vae_loss(model, xv, args.beta))
        history.append(dict(epoch=epoch, beta=beta, train_loss=tot / n, val_loss=vl, val_recon=vr, val_kl=vk))
        print(f"epoch {epoch:3d}  train {tot / n:.5f}  val {vl:.5f} (rec {vr:.5f}, kl {vk:.4f})", flush=True)
        # Early stopping only once the full beta is active so losses are comparable.
        if epoch >= args.warmup:
            if vl < best * (1 - 1e-4):
                best, stale = vl, 0
                best_state = {k: v.detach().clone() for k, v in model.state_dict().items()}
            else:
                stale += 1
                if stale >= args.patience:
                    break
    model.load_state_dict(best_state)
    torch.save(dict(state_dict=model.state_dict(), latent=args.latent, input_dim=x_train.shape[1],
                    seed=args.seed), out / "vae.pt")
    return model, history


# --------------------------------------------------------------------------- data
def load_data(sw: Path, out: Path, skip_test: bool):
    sys.path.insert(0, str(sw))
    from svdd_features.data import load_ids
    from svdd_features.preprocessing import Preprocessor

    data = sw / "runs/software/data"
    contract = data / "compact_preprocessing.json"
    with np.load(data / "compact_development.npz", allow_pickle=False) as z:
        dev = {k: z[k].copy() for k in z.files}
    test = None
    if not skip_test:
        cache = out / "test_features.npz"
        if cache.exists():
            with np.load(cache, allow_pickle=False) as z:
                test = {k: z[k].copy() for k in z.files}
        else:
            with np.load(data / "split_indices.npz", allow_pickle=False) as z:
                ids = z["test_row_ids"].copy()
            cfg = json.loads((sw / "configs/software.json").read_text())
            print(f"Loading {len(ids)} test rows from the CSV (one pass)...", flush=True)
            frame = load_ids(sw / cfg["data"], {"test": ids}, cfg["chunk_size"])["test"]
            x = Preprocessor.load(contract).transform(frame)
            test = dict(x=x.astype(np.float32), y=frame.Label.to_numpy(np.uint8),
                        attack=frame.Attack.to_numpy(dtype=str), row_ids=frame.index.to_numpy())
            np.savez_compressed(cache, **test)
    raw_columns = json.loads(contract.read_text())["raw_columns"]
    return dev, test, raw_columns, hashlib.sha256(contract.read_bytes()).hexdigest()


def evaluate(s, y, attacks, threshold):
    from svdd_features.evaluation import metrics
    return metrics(s, y, attacks, threshold)


# --------------------------------------------------------------------------- hls4ml
def int_bits_for(max_abs, headroom=2.0):
    """Integer bits (including sign) to represent +/- max_abs * headroom."""
    return max(1, math.ceil(math.log2(max(max_abs * headroom, 1e-9)))) + 1


@torch.no_grad()
def layer_ranges(inf: VAEInference, x):
    xt = torch.from_numpy(x)
    h1 = inf.enc1(xt); a1 = torch.relu(h1)
    h2 = inf.enc2(a1); a2 = torch.relu(h2)
    z = inf.mu(a2)
    h3 = inf.dec1(z); a3 = torch.relu(h3)
    h4 = inf.dec2(a3); a4 = torch.relu(h4)
    y = inf.out(a4)
    return {"enc1": h1, "enc2": h2, "mu": z, "dec1": h3, "dec2": h4, "out": y}


def build_hls(model, x_train, args, out):
    import hls4ml

    inf = VAEInference(model.cpu()).eval()
    ranges = {k: float(v.abs().max()) for k, v in layer_ranges(inf, x_train).items()}
    width = args.bits
    config = hls4ml.utils.config_from_pytorch_model(
        inf, input_shape=(x_train.shape[1],), granularity="name", backend="Vitis",
        default_precision=f"ap_fixed<{width},8>", default_reuse_factor=args.reuse_factor)
    config["Model"]["Strategy"] = args.strategy
    precision_plan = {}
    for name, layer in config["LayerName"].items():
        if name in ranges:
            w = getattr(inf, name)
            wi = int_bits_for(float(w.weight.detach().abs().max()), 1.0)
            bi = int_bits_for(float(w.bias.detach().abs().max()), 1.0)
            ri = int_bits_for(ranges[name])
            if name == "out":
                ri = max(ri, 4)  # reconstructions must span the preprocessed range [-1, 4]
            layer["Precision"] = dict(
                weight=f"ap_fixed<{width},{wi},AP_RND_CONV,AP_SAT>",
                bias=f"ap_fixed<{width},{bi},AP_RND_CONV,AP_SAT>",
                result=f"ap_fixed<{width},{ri},AP_RND_CONV,AP_SAT>",
                accum=f"ap_fixed<{args.accum_bits or width + 12},{ri + 4}>")
            layer["ReuseFactor"] = args.reuse_factor
            precision_plan[name] = dict(max_abs_train=ranges[name], weight_int=wi, bias_int=bi, result_int=ri)
        elif "relu" in name.lower():
            src = {"relu": "enc1", "relu_1": "enc2", "relu_2": "dec1", "relu_3": "dec2"}.get(name)
            ri = int_bits_for(ranges[src]) if src else 8
            layer["Precision"] = dict(result=f"ap_ufixed<{width},{ri - 1},AP_RND_CONV,AP_SAT>")
    # The first layer is the input; it must match the stream's ap_fixed<25,9>.
    input_name = next(iter(config["LayerName"]))
    config["LayerName"][input_name]["Precision"] = {"result": f"ap_fixed<{FEATURE_BITS},{FEATURE_INT}>"}
    prj = out / "hls4ml_prj"
    if prj.exists():
        shutil.rmtree(prj)
    hls_model = hls4ml.converters.convert_from_pytorch_model(
        inf, hls_config=config, output_dir=str(prj), project_name="vae_core",
        backend="Vitis", part=PART, clock_period=args.clock, io_type="io_parallel")
    hls_model.compile()
    (out / "hls4ml_config.json").write_text(json.dumps(config, indent=1, default=str))
    return hls_model, prj, precision_plan


def to_feature_codes(x):
    codes = np.round(x.astype(np.float64) * 2 ** FEATURE_FRAC)
    lim = 2 ** (FEATURE_BITS - 1)
    return np.clip(codes, -lim, lim - 1).astype(np.int64)


def fixed_scores(hls_model, x):
    """Bit-exact model of vae_axis: hls4ml C++ network + exact squared error at 32 frac bits."""
    codes = to_feature_codes(x)
    xq = (codes / 2 ** FEATURE_FRAC).astype(np.float64)
    recon = np.asarray(hls_model.predict(np.ascontiguousarray(xq)), dtype=np.float64).reshape(len(x), -1)
    rc = recon * 2 ** FEATURE_FRAC
    if not np.all(rc == np.round(rc)):
        raise ValueError("Output precision has more than 16 fractional bits; score would not be exact")
    diff = codes - rc.astype(np.int64)                 # 16 fractional bits
    score_codes = (diff.astype(object) ** 2).sum(1)    # 32 fractional bits, exact (Python ints)
    score_codes = np.array([int(v) for v in score_codes], dtype=np.uint64)
    return codes, score_codes, score_codes.astype(np.float64) / 2 ** 32


def write_golden(path: Path, codes, score_codes):
    lines = ["// Generated by train_vae.py: feature codes (16 frac bits) and expected score codes (32 frac bits).",
             "#pragma once", "#include <cstdint>", f"constexpr int kGoldenCount = {len(codes)};",
             "constexpr std::int32_t kGoldenFeatures[kGoldenCount][8] = {"]
    lines += ["    {" + ", ".join(str(int(v)) for v in row) + "}," for row in codes]
    lines += ["};", "constexpr std::uint64_t kGoldenScores[kGoldenCount] = {"]
    lines += [f"    {int(s)}ULL," for s in score_codes]
    lines += ["};", ""]
    path.write_text("\n".join(lines))


def write_tcl(out: Path, prj: Path, args):
    src = HERE / "hls"
    fw = prj / "firmware"
    # nnet_helpers.h reads weights/*.txt in C simulation; give it an absolute directory.
    (out / "weights_dir.h").write_text(f'#pragma once\n#define WEIGHTS_DIR "{fw / "weights"}"\n')
    cflags = f"-std=c++14 -I{fw} -I{src} -include {out / 'weights_dir.h'}"
    tcl = f"""# Generated by train_vae.py. Run: vitis_hls -f {out / 'build_vae_axis.tcl'}
cd {out}
open_project -reset vae_axis_ip
set_top vae_axis
add_files {src / 'vae_axis.cpp'} -cflags "{cflags}"
add_files {fw / 'vae_core.cpp'} -cflags "{cflags}"
add_files -tb {src / 'test_vae_axis.cpp'} -cflags "{cflags} -I{out}"
open_solution solution1 -flow_target vivado
set_part {{{PART}}}
create_clock -period {args.clock} -name default
# Extra margin: HLS schedules for (period - uncertainty); Vivado still closes at the full period.
set_clock_uncertainty {args.clock_uncertainty}
config_rtl -reset control -reset_level low
csim_design -ldflags {{-B/usr/bin/}} -clean
csynth_design
export_design -flow {"impl" if args.impl else "none"} -format ip_catalog -vendor user.org -library hls -version 1.0 -display_name "VAE anomaly score (AXI4-Stream)"
exit
"""
    path = out / "build_vae_axis.tcl"
    path.write_text(tcl)
    return path


# --------------------------------------------------------------------------- main
def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--software-model", type=Path, default=HERE.parent / "software-model")
    p.add_argument("--output", type=Path, default=HERE / "runs/vae")
    p.add_argument("--device", default="auto", choices=["auto", "cpu", "cuda"])
    p.add_argument("--seed", type=int, default=7)
    p.add_argument("--latent", type=int, default=4)
    p.add_argument("--beta", type=float, default=0.01,
                   help="KL weight; 1.0 collapses the posterior with these [-1,4]-scaled features")
    p.add_argument("--warmup", type=int, default=10, help="KL warm-up epochs")
    p.add_argument("--lr", type=float, default=1e-3)
    p.add_argument("--batch-size", type=int, default=512)
    p.add_argument("--epochs", type=int, default=150)
    p.add_argument("--patience", type=int, default=10)
    p.add_argument("--target-fpr", type=float, default=0.01)
    p.add_argument("--bits", type=int, default=18, help="fixed-point width for weights/activations")
    p.add_argument("--reuse-factor", type=int, default=16)
    p.add_argument("--accum-bits", type=int, default=0, help="accumulator width (default: bits + 12)")
    p.add_argument("--strategy", default="Resource", choices=["Latency", "Resource"])
    p.add_argument("--clock", type=float, default=10.0, help="clock period in ns")
    p.add_argument("--clock-uncertainty", type=float, default=3.5, help="HLS scheduling margin in ns")
    p.add_argument("--no-impl", dest="impl", action="store_false",
                   help="skip Vivado synthesis/place-and-route (resource/timing check) during export")
    p.add_argument("--golden-rows", type=int, default=256)
    p.add_argument("--skip-test", action="store_true", help="do not load/evaluate the held-out test split")
    p.add_argument("--retrain", action="store_true", help="ignore an existing vae.pt")
    p.add_argument("--no-synth", action="store_true", help="skip Vitis HLS csim/synthesis/export")
    args = p.parse_args()

    out = args.output.resolve()
    out.mkdir(parents=True, exist_ok=True)
    device = "cuda" if args.device != "cpu" and torch.cuda.is_available() else "cpu"
    dev, test, features, contract_sha = load_data(args.software_model.resolve(), out, args.skip_test)
    xtr, xv, yv, av = dev["x_train"], dev["x_validation"], dev["y_validation"], dev["attack_validation"]
    print(f"device={device}  benign train={len(xtr)}  validation={len(xv)} (attacks {int(yv.sum())})  features={features}")

    # 1. Train (or reuse) the VAE.
    ckpt = out / "vae.pt"
    if ckpt.exists() and not args.retrain:
        state = torch.load(ckpt, map_location=device)
        model = VAE(state["input_dim"], state["latent"]).to(device)
        model.load_state_dict(state["state_dict"])
        history = json.loads((out / "history.json").read_text()) if (out / "history.json").exists() else []
        print(f"Reusing {ckpt}")
    else:
        t0 = time.time()
        model, history = train(xtr, xv[yv == 0], args, device, out)
        print(f"trained in {time.time() - t0:.1f}s")
        (out / "history.json").write_text(json.dumps(history, indent=1))

    # 2. Float scoring: threshold from normal validation only, frozen before test.
    from svdd_features.evaluation import calibrate
    sv = scores(model, xv, device)
    cal = calibrate(sv[yv == 0], args.target_fpr)
    result = dict(model="VAE", architecture=f"8-32-16-({args.latent} mu,{args.latent} logvar)-16-32-8",
                  features=features, preprocessing_sha256=contract_sha, seed=args.seed,
                  score="sum((x - decoder(mu(x)))^2), higher is anomalous", args={k: str(v) for k, v in vars(args).items()},
                  float=dict(calibration=cal, validation=evaluate(sv, yv, av, cal["threshold"])))
    freeze = dict(threshold=cal["threshold"], checkpoint_sha256=hashlib.sha256(ckpt.read_bytes()).hexdigest())
    (out / "freeze.json").write_text(json.dumps(freeze, indent=1))
    if test is not None:
        result["float"]["test"] = evaluate(scores(model, test["x"], device), test["y"], test["attack"], cal["threshold"])

    # 3. hls4ml conversion + bit-exact fixed-point evaluation.
    hls_model, prj, plan = build_hls(model, xtr, args, out)
    _, _, qv = fixed_scores(hls_model, xv)
    qcal = calibrate(qv[yv == 0], args.target_fpr)
    qthr_code = int(round(qcal["threshold"] * 2 ** 32))
    result["fixed_point"] = dict(precision_plan=plan, calibration=qcal, threshold_code_u64=qthr_code,
                                 validation=evaluate(qv, yv, av, qcal["threshold"]),
                                 max_abs_score_error_vs_float_validation=float(np.max(np.abs(qv - sv))))
    if test is not None:
        _, _, qt = fixed_scores(hls_model, test["x"])
        result["fixed_point"]["test"] = evaluate(qt, test["y"], test["attack"], qcal["threshold"])

    # Golden vectors for the C simulation: normal and attack validation rows.
    rng = np.random.default_rng(args.seed)
    half = args.golden_rows // 2
    gi = np.sort(np.concatenate([rng.choice(np.flatnonzero(yv == 0), half, replace=False),
                                 rng.choice(np.flatnonzero(yv == 1), args.golden_rows - half, replace=False)]))
    codes, score_codes, _ = fixed_scores(hls_model, xv[gi])
    write_golden(out / "golden_vectors.h", codes, score_codes)
    np.savetxt(out / "golden_inputs.csv", xv[gi], delimiter=",", fmt="%.9g")
    np.savetxt(out / "golden_scores_u64.csv", score_codes, fmt="%d")

    metadata = dict(top="vae_axis", part=PART, clock_ns=args.clock, ordered_pl_inputs=features,
                    input_format=f"ap_fixed<{FEATURE_BITS},{FEATURE_INT}> in TDATA[24:0] (16 fractional bits)",
                    output_format="ap_ufixed<64,32> in TDATA[63:0] (32 fractional bits)",
                    threshold_float=qcal["threshold"], threshold_code_u64=qthr_code,
                    decision="anomaly iff score_code > threshold_code_u64",
                    preprocessing=str(args.software_model.resolve() / "runs/software/data/compact_preprocessing.json"),
                    preprocessing_sha256=contract_sha)
    (out / "metadata.json").write_text(json.dumps(metadata, indent=1))

    def headline(tag, r):
        return f"{tag}: AUROC {r['roc_auc']:.4f}  AP {r['average_precision']:.4f}  recall {r['recall']:.4f}  FPR {r['measured_fpr']:.4f}"
    print(headline("float  validation", result["float"]["validation"]))
    print(headline("fixed  validation", result["fixed_point"]["validation"]))
    if test is not None:
        print(headline("float  test      ", result["float"]["test"]))
        print(headline("fixed  test      ", result["fixed_point"]["test"]))

    # 4. Vitis HLS: csim against golden vectors, synthesis, IP export.
    tcl = write_tcl(out, prj, args)
    if not args.no_synth:
        vitis = shutil.which("vitis_hls")
        if vitis is None:
            raise SystemExit("vitis_hls not on PATH; run it manually: vitis_hls -f " + str(tcl))
        env = dict(os.environ)
        if args.impl and shutil.which("vivado") is None:  # export_design -flow impl needs Vivado
            found = sorted(Path("/opt/AMD/Vivado").glob("*/bin/vivado")) + sorted(Path("/tools/Xilinx/Vivado").glob("*/bin/vivado"))
            if not found:
                raise SystemExit("Vivado not found; put it on PATH or pass --no-impl")
            env["PATH"] = f"{found[-1].parent}:{env['PATH']}"
        with open(out / "vitis_hls_run.log", "w") as log:
            rc = subprocess.run([vitis, "-f", str(tcl)], cwd=out, env=env, stdout=log, stderr=subprocess.STDOUT).returncode
        if rc != 0:
            raise SystemExit(f"vitis_hls failed (exit {rc}); see {out / 'vitis_hls_run.log'}")
        rpt = out / "vae_axis_ip/solution1/syn/report/vae_axis_csynth.rpt"
        result["synthesis_report"] = str(rpt)
        result["ip_export"] = str(out / "vae_axis_ip/solution1/impl/export.zip")
        impl = out / "vae_axis_ip/solution1/impl/report/verilog/vae_axis_export.rpt"
        if args.impl and impl.exists():
            text = impl.read_text()
            result["post_implementation"] = text[text.index("#=== Post-Implementation"):].strip()
            print(result["post_implementation"])
        print(f"IP exported: {result['ip_export']}\nReport: {rpt}")
    (out / "results.json").write_text(json.dumps(result, indent=1, default=float))
    print(f"Results: {out / 'results.json'}")


if __name__ == "__main__":
    main()

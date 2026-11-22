# VAE anomaly detector → hls4ml → Pynq-Z2 IP

`train_vae.py` trains a variational autoencoder on NF-UNSW-NB15-v3. It uses the
same 8 compact features, preprocessing contract, chronological split and
benign-only training rows as `../software-model`. It then converts the model with
hls4ml and builds `vae_axis`, an AXI4-Stream IP for `xc7z020clg400-1`. The IP is
pin- and format-compatible with `../inference-hls` `deep_svdd_axis`.

## Run

```sh
python3 -m venv --system-site-packages .venv      # reuses the system PyTorch 2.12
.venv/bin/pip install -r requirements.txt
.venv/bin/python train_vae.py                     # train, evaluate, hls4ml, csim, csynth, P&R, IP export
```

Requires `../software-model/runs/software/` (produced by `reproduce-software.sh`)
and Vitis HLS + Vivado 2023.2. Vivado is found automatically under `/opt/AMD/Vivado`.
Useful flags: `--no-synth` (stop after hls4ml), `--no-impl` (skip Vivado P&R),
`--retrain`, `--skip-test`, `--reuse-factor`, `--bits`, `--beta`, `--latent`.
An existing `runs/vae/vae.pt` is reused unless you pass `--retrain`.

## Model

```
train:     x(8) → 32 → 16 → μ(4), logσ²(4) → z ~ N(μ,σ²) → 16 → 32 → x̂(8)      ReLU hidden layers
hardware:  x(8) → 32 → 16 → μ(4) → 16 → 32 → x̂(8);  score = Σ (x − x̂)²       (logσ² head dropped)
```

- Loss: `Σ(x−x̂)² + β·KL`, β = 0.01, with KL warm-up over 10 epochs. Adam, lr 1e-3,
  batch 512, early stopping on normal-validation loss (patience 10), seed 7.
- With β = 1 the posterior collapses: KL drops to about 0 and the decoder outputs the
  benign mean, because the [-1, 4]-scaled features have a per-dimension variance of
  only about 0.05. β = 0.01 keeps KL around 3.7 nats.
- The threshold is the normal-validation 99th percentile (target FPR 1%,
  `score > threshold`). It is written to `freeze.json` before any test score is
  computed. The fixed-point threshold is calibrated the same way on the hardware's
  bit-exact scores.

## Results (`runs/vae/results.json`)

| Split | Scores | AUROC | AP | Recall | FPR |
|---|---|---:|---:|---:|---:|
| validation | float | 0.9998 | 0.9978 | 0.9997 | 1.00% |
| validation | fixed (IP) | 0.9998 | 0.9978 | 0.9997 | 1.00% |
| test | float | 0.9998 | 0.9973 | 0.9997 | 1.05% |
| test | fixed (IP) | 0.9998 | 0.9973 | 0.9997 | 1.04% |

For reference, Deep SVDD compact seed 7 reaches a test AUROC of 0.99976, AP 0.9945,
recall 1.0 and FPR 1.09%.

Selection disclosure: β was reduced from 1.0 because of the normal-only collapse
diagnostic (KL ≈ 0). β = 0.01 and β = 0.001 were also compared on validation, which
does use attack labels; their metrics were nearly identical. The test set was not
used for any choice.

## IP: `vae_axis`

The ports, beat formats, feature order and framing rules are identical to
`../inference-hls/README.md`:

- 8 feature beats per flow, each an `ap_fixed<25,9>` (16 fractional bits) in `TDATA[24:0]`.
- `TLAST` on the 8th beat; TKEEP and TSTRB must be `4'hF`.
- One 64-bit score beat per valid frame: `ap_ufixed<64,32>`, i.e. `score = TDATA / 2^32`.
- Frames with an early or late `TLAST`, or a bad byte mask, are dropped exactly as in
  `deep_svdd_axis`.

Only the meaning of the score changes: it is now the squared reconstruction error.
Flag an anomaly when `score_code > threshold_code_u64`; the value is in
`runs/vae/metadata.json` (currently 226209848, ≈ 0.0527).

Feature order: `IN_BYTES, OUT_BYTES, FLOW_DURATION_MILLISECONDS, MIN_TTL,
MAX_IP_PKT_LEN, MIN_IP_PKT_LEN, TCP_WIN_MAX_IN, TCP_WIN_MAX_OUT`. They are
preprocessed on the PS with `software-model/runs/software/data/compact_preprocessing.json`.

### Implementation

- hls4ml 1.3.0, Vitis backend, `io_parallel`, Resource strategy, reuse factor 16.
- Weights and activations are 18-bit with `AP_RND_CONV, AP_SAT`. Integer bits per
  layer come from the benign-training maximum with 2× headroom; accumulators are 30 bits.
- The score in the wrapper is exact, so C-sim matches hls4ml's bit-accurate Python
  model bit-for-bit on 256 golden vectors, and passes all framing tests.

Vivado 2023.2 post-place-and-route at 100 MHz (10 ns) on xc7z020clg400-1:

| LUT | FF | DSP | BRAM_18K | Timing |
|---:|---:|---:|---:|---|
| 27,840 (52%) | 28,342 (27%) | 128 (58%) | 49 (18%) | met, 9.773 ns |

Core latency is 132–138 cycles (about 1.4 µs), with a dataflow interval of 16 cycles.
The Vitis csynth LUT estimate (~120%) is very pessimistic for this design; trust the
post-P&R numbers above. HLS schedules for 6.5 ns (`--clock-uncertainty 3.5`) so that
the real 10 ns constraint closes. Without that margin, the result was 10.68 ns.

To use it, add `runs/vae/vae_axis_ip/solution1/impl/ip` (or unzip `impl/export.zip`)
as a Vivado IP repository and instantiate `vae_axis` in place of `deep_svdd_axis`.

## Files

| Path | Content |
|---|---|
| `train_vae.py` | the whole pipeline |
| `hls/vae_axis.{hpp,cpp}` | AXI4-Stream wrapper around the hls4ml core, plus the exact score |
| `hls/test_vae_axis.cpp` | C-sim testbench: golden vectors and framing |
| `runs/vae/vae.pt`, `history.json`, `freeze.json` | checkpoint, learning curve, frozen threshold |
| `runs/vae/results.json`, `metadata.json` | metrics (float and fixed), precision plan, IP contract |
| `runs/vae/hls4ml_prj/` | generated hls4ml project (`vae_core`) |
| `runs/vae/build_vae_axis.tcl`, `vitis_hls_run.log` | generated Vitis build script and its log |
| `runs/vae/golden_*.csv`, `golden_vectors.h` | integration test vectors |
| `runs/vae/vae_axis_ip/solution1/impl/export.zip` | the Vivado IP |

## Pipelined IP, batch sender and board measurement

`hls/vae_axis.cpp` is now a free-running dataflow pipeline: `read_frame → vae_core → score_and_write`,
with a bypass FIFO for the features. It overlaps successive flows. The ports, formats and framing
rules are unchanged, and the old sequential wrapper is kept as `hls/vae_axis_sequential.cpp.orig`.
`hls/build_vae_axis_pipe.tcl` builds it into `runs/vae/vae_axis_pipe_ip` (IP version 1.1). C-sim and
cosim pass, and post-P&R timing is 9.92 ns. `train_vae.py` also builds this wrapper from now on.

`sender/vae_feature_sender` (HLS, IP `user.org:hls:vae_feature_sender:1.0`) streams a whole batch:

- It burst-reads `8 × n_flows` feature words from DDR and sends them as AXI4-Stream frames at one
  beat per cycle. `period` sets the minimum number of cycles between flow starts (0 = as fast as
  `vae_axis` accepts).
- It writes, per flow, `t_send` (the cycle at which beat 0 was accepted) and a 128-bit record
  `{t_recv, score}`.
- Both timestamps come from one free-running 64-bit counter (`overlay/cycle_counter.v`), read
  through always-non-empty `ap_fifo` ports. A `volatile` `ap_none` port does not work: HLS samples it once.
- Registers: `0x00` AP_CTRL, `0x10` features address, `0x1c` t_send address, `0x28` results
  address, `0x34` n_flows, `0x3c` period. The 64-bit addresses are written low word first.

### Build

```sh
vitis_hls -f hls/build_vae_axis_pipe.tcl                 # pipelined vae_axis IP (cd runs/vae first)
(cd sender && vitis_hls -f build_sender.tcl)             # sender IP
.venv/bin/python board/make_board_dataset.py             # board/vae_test_dataset.npz (codes + bit-exact scores)
sim/run_sim.sh                                           # cycle-accurate system simulation (xsim)
(cd overlay && vivado -mode batch -source build_overlay.tcl)   # overlay/build/vae_sender.{bit,hwh}
```

Vivado must be on `PATH` (`/opt/AMD/Vivado/2023.2/bin`). The PYNQ-Z2 board files are in `board_files/`.

### Run on the PYNQ-Z2

Copy `overlay/build/vae_sender.bit`, `vae_sender.hwh`, `board/run_batch.py` and
`board/vae_test_dataset.npz` into one directory on the board, then run:

```sh
sudo -E python3 run_batch.py                       # 100k test flows, periods 0,16,24,1000, 1000 single-flow runs
sudo -E python3 run_batch.py --flows 1000000       # tile the test set to 1M flows
```

For each period, the script checks every score bit for bit and reports latency (min/mean/p50/p90/p99/
p99.9/max in cycles and µs), PL throughput, PS wall-clock throughput, and recall/FPR/AUROC/per-attack
recall. The single-flow runs give the PS round trip (register write → AP_DONE seen from Python).
Everything is also written to `vae_batch_results.json`.

### Expected numbers (system RTL simulation, 100 MHz, 40-cycle DDR read latency)

`sim/results/`, 512 real test flows: 0 score mismatches in every run.

| period | latency (cycles) | output interval | throughput |
|---|---|---|---|
| 1000 (isolated flows) | 161 (1.61 µs) | 1000 | 0.1 M flows/s |
| 16 | 161–172 | 20 cycles | 5.0 M flows/s |
| 0 (saturated) | 161–172 | 20 cycles | 5.0 M flows/s |

The steady-state interval is 20 cycles, not the 16 that hls4ml reports for `vae_core`. The
dense-layer processes add about 4 cycles per flow, and inlining `vae_core` into the top-level
dataflow did not change this. The old sequential wrapper took about 150 cycles per flow.

### Overlay (`overlay/build/`, Vivado 2023.2, xc7z020 at 100 MHz)

| LUT | FF | DSP | BRAM tiles | WNS |
|---:|---:|---:|---:|---|
| 34,443 (65%) | 36,859 (35%) | 136 (62%) | 33.5 (24%) | +0.124 ns (met) |

The PS7 DDR-skew critical warnings come from the PYNQ-Z2 board preset. They do not matter under
PYNQ, which configures DDR at boot.

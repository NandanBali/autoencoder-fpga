#!/usr/bin/env bash
# Cycle-accurate system simulation (xsim): sender -> pipelined vae_axis -> sender, DDR modelled.
#   FLOWS=1024 PERIODS="0 16 1000" MEM_LATENCY=40 ./run_sim.sh
# Needs both IPs built (sender/build_sender.tcl, hls/build_vae_axis_pipe.tcl) and
# board/vae_test_dataset.npz (board/make_board_dataset.py).
set -euo pipefail
here=$(cd "$(dirname "$0")" && pwd)
root=$(dirname "$here")
export PATH=/opt/AMD/Vivado/2023.2/bin:$PATH
work=${WORK:-$here/work}
flows=${FLOWS:-1024}
periods=${PERIODS:-"0 16 24 1000"}
mem_latency=${MEM_LATENCY:-40}
sender_v=${SENDER_V:-$root/sender/vae_feature_sender_ip/solution1/impl/verilog}
vae_v=${VAE_V:-$root/runs/vae/vae_axis_pipe_ip/solution1/impl/verilog}

mkdir -p "$work" && cd "$work"
"$root/.venv/bin/python" - "$root/board/vae_test_dataset.npz" "$flows" <<'PY'
import sys, numpy as np
z = np.load(sys.argv[1]); n = int(sys.argv[2])
codes = z["codes"][:n].astype(np.int64).reshape(-1) & 0x1FFFFFF
np.savetxt("features.hex", codes, fmt="%08x")
np.savetxt("expected.hex", z["expected_score_u64"][:n], fmt="%016x")
PY
python3 "$here/gen_ports.py" ports.svh "$sender_v/vae_feature_sender.v" "$vae_v/vae_axis.v"
rm -f ./*.dat; cp "$sender_v"/*.dat "$vae_v"/*.dat . 2>/dev/null || true
rm -rf xsim.dir
xvlog -sv -i . "$here/axi_mem.sv" "$here/tb.sv" > xvlog_tb.log
xvlog "$sender_v"/*.v "$vae_v"/*.v > xvlog_ip.log
xelab tb -s tb_sim -timescale 1ns/1ps > xelab.log
for p in $periods; do
    n=$flows
    if [ "$p" -ge 200 ] && [ "$n" -gt 128 ]; then n=128; fi   # isolated flows: fewer are enough
    echo "== period $p, $n flows"
    xsim tb_sim -R -testplusarg flows=$n -testplusarg period=$p -testplusarg mem_latency=$mem_latency \
        -testplusarg csv=latency_p$p.csv -testplusarg max_cycles=$(( n * (p > 24 ? p : 24) * 4 + 100000 )) | tee xsim_p$p.log | grep -E 'RESULT|PASS|FAIL|MISMATCH|TIMEOUT|ERROR|Error'
done

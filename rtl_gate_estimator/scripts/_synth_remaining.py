"""Synthesise the 4 remaining real-RTL modules that weren't reached in task-371."""
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from scripts.yosys_synthesis import YosysSynthesizer

real_dir = Path("data/real_rtl")
synth_dir = real_dir / "synthesis"
synth_dir.mkdir(parents=True, exist_ok=True)

remaining = [
    ("i2c_master_axil.v", ["axis_fifo.v", "i2c_master.v"], 90),
    ("uart.v",            ["uart_rx.v", "uart_tx.v"],       60),
    ("uart_rx.v",         [],                               60),
    ("uart_tx.v",         [],                               60),
]

print(f"{'Module':<30} {'Status':<10} {'Gates':>8}")
print("-" * 52)
for fname, deps, timeout in remaining:
    vf = real_dir / fname
    syn = YosysSynthesizer(synth_dir, timeout=timeout)
    res = syn.run_synthesis(vf, dependencies=deps)
    st = res.get("synthesis_status", "?")
    gc = res.get("gate_count", 0)
    flag = "" if st == "success" else "  <- FAILED"
    print(f"  {fname:<28} {st:<10} {gc:>8}{flag}")
    rp = synth_dir / f"{vf.stem}_result.json"
    with open(rp, "w") as f:
        json.dump(res, f, indent=2)

print("Done.")

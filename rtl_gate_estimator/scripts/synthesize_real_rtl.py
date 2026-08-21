"""
synthesize_real_rtl.py
======================
Run real Yosys synthesis on every .v file in data/real_rtl/ and produce
  data/real_rtl/labels_real.csv
  data/real_rtl/yosys_raw_logs/<module>.log

Each module is synthesised *independently* — only its own file (plus explicitly
declared sub-module dependencies) is passed to Yosys.  This avoids the
severe slowdowns caused by loading all 20 files for every run.

Dependency map:
  Some modules instantiate submodules from other files in the dataset.
  We declare them explicitly here so Yosys can resolve the hierarchy.

Run:
    python scripts/synthesize_real_rtl.py
"""
import json
import logging
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from scripts.yosys_synthesis import YosysSynthesizer

logging.basicConfig(
    level=logging.INFO,
    format="[%(levelname)s] %(asctime)s - %(name)s - %(message)s",
)
logger = logging.getLogger(__name__)

# ──────────────────────────────────────────────────────────────────────────────
# Known inter-module dependencies (sub-file instantiations).
# Keys are module filenames; values are lists of dependency filenames that must
# be read first so Yosys can resolve instantiated sub-modules.
# ──────────────────────────────────────────────────────────────────────────────
DEPENDENCY_MAP: dict[str, list[str]] = {
    # arbiter instantiates priority_encoder
    "arbiter.v": ["priority_encoder.v"],
    # uart.v instantiates uart_rx and uart_tx → load both first
    "uart.v": ["uart_rx.v", "uart_tx.v"],
    # axis_pipeline_register instantiates axis_register
    "axis_pipeline_register.v": ["axis_register.v"],
    # axis_arb_mux instantiates arbiter and axis_mux
    "axis_arb_mux.v": ["priority_encoder.v", "arbiter.v", "axis_mux.v"],
    # i2c_master_axil instantiates both axis_fifo and i2c_master
    "i2c_master_axil.v": ["axis_fifo.v", "i2c_master.v"],
}

# ──────────────────────────────────────────────────────────────────────────────
# Modules to skip due to known intractable synthesis cost.
# axis_gmii_rx and axis_gmii_tx directly instantiate `lfsr` (a massive
# parameterised LFSR from lfsr.v, ~16 KB).  Even with lfsr.v as dependency,
# Yosys elaboration takes 5+ minutes — far beyond a practical timeout.
# These two modules are excluded from the benchmark set and documented below.
# ──────────────────────────────────────────────────────────────────────────────
SKIP_MODULES: set[str] = {
    "axis_gmii_rx.v",  # instantiates lfsr — synthesis intractable (>5 min)
    "axis_gmii_tx.v",  # instantiates lfsr — synthesis intractable (>5 min)
    "lfsr.v",          # massive parameterised LFSR; intractable alone (>5 min)
}

SKIP_MODULES_REASON: dict[str, str] = {
    "axis_gmii_rx.v": "directly instantiates lfsr (16 KB parameterised LFSR); Yosys elaboration >5 min",
    "axis_gmii_tx.v": "directly instantiates lfsr (16 KB parameterised LFSR); Yosys elaboration >5 min",
    "lfsr.v": "massive parameterised LFSR module; Yosys elaboration intractable (>5 min) without a technology library",
}

# Per-module timeout overrides (seconds).  Default is 60s.
TIMEOUT_OVERRIDES: dict[str, int] = {
    "axis_fifo.v": 90,        # large FIFO with generate blocks ~39s observed
    "i2c_master_axil.v": 90,  # depends on axis_fifo
    "i2c_master.v": 90,       # large state machine
    "lfsr.v": 90,             # parameterised LFSR
}


def synthesize_all(real_dir: Path) -> list[dict]:
    synth_dir = real_dir / "synthesis"
    synth_dir.mkdir(parents=True, exist_ok=True)

    # Use a base synthesizer just to verify Yosys is available.
    base_syn = YosysSynthesizer(synth_dir, timeout=60)
    if not base_syn.yosys_available:
        logger.error("Real Yosys not found. Aborting.")
        sys.exit(1)

    verilog_files = sorted(real_dir.glob("*.v"))
    logger.info(f"Found {len(verilog_files)} RTL files in {real_dir}")

    results = []
    for vf in verilog_files:
        if vf.name in SKIP_MODULES:
            reason = SKIP_MODULES_REASON.get(vf.name, "skipped")
            logger.warning(f"SKIPPING {vf.name}: {reason}")
            results.append({
                "module_name": vf.stem,
                "filename": vf.name,
                "synthesis_status": "skipped",
                "skip_reason": reason,
                "gate_count": None,
                "and_gates": None,
                "or_gates": None,
                "xor_gates": None,
                "not_gates": None,
                "nand_gates": None,
                "nor_gates": None,
            })
            continue

        timeout = TIMEOUT_OVERRIDES.get(vf.name, 60)
        syn = YosysSynthesizer(synth_dir, timeout=timeout)
        deps = DEPENDENCY_MAP.get(vf.name, [])
        logger.info(f"Synthesising {vf.name} (deps={deps or 'none'}, timeout={timeout}s)")
        res = syn.run_synthesis(vf, dependencies=deps)
        status = res.get("synthesis_status", "unknown")
        gate_count = res.get("gate_count", 0)
        logger.info(f"  → status={status}, gate_count={gate_count}")
        res["filename"] = vf.name
        results.append(res)

    return results


def write_labels_csv(results: list[dict], out_path: Path) -> None:
    import csv

    columns = [
        "module_id", "gate_count", "and_gates", "or_gates",
        "xor_gates", "not_gates", "nand_gates", "nor_gates",
        "synthesis_status",
    ]
    with open(out_path, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=columns, extrasaction="ignore")
        writer.writeheader()
        for r in results:
            row = {
                "module_id": r.get("module_name", Path(r.get("filename", "")).stem),
                "gate_count": r.get("gate_count", 0),
                "and_gates": r.get("and_gates", 0),
                "or_gates": r.get("or_gates", 0),
                "xor_gates": r.get("xor_gates", 0),
                "not_gates": r.get("not_gates", 0),
                "nand_gates": r.get("nand_gates", 0),
                "nor_gates": r.get("nor_gates", 0),
                "synthesis_status": r.get("synthesis_status", "unknown"),
            }
            writer.writerow(row)
    logger.info(f"Labels written to {out_path}")


def main() -> None:
    real_dir = Path("data/real_rtl")
    if not real_dir.exists():
        logger.error(f"RTL directory not found: {real_dir}")
        sys.exit(1)

    results = synthesize_all(real_dir)

    # ── summary ──────────────────────────────────────────────────────────────
    success = [r for r in results if r.get("synthesis_status") == "success"]
    failed = [r for r in results if r.get("synthesis_status") != "success"]

    logger.info(f"Synthesis complete: {len(success)}/{len(results)} succeeded")
    if failed:
        logger.warning(
            "Failed modules: " + ", ".join(r.get("module_name", "?") for r in failed)
        )

    # ── write CSV ─────────────────────────────────────────────────────────────
    out_csv = real_dir / "labels_real.csv"
    write_labels_csv(results, out_csv)

    # ── write metadata ────────────────────────────────────────────────────────
    meta = {
        "total_modules": len(results),
        "synthesised_ok": len(success),
        "failed": len(failed),
        "failed_modules": [r.get("module_name", "?") for r in failed],
        "label_sources": {
            r.get("module_name", "?"): r.get("synthesis_status", "?")
            for r in results
        },
    }
    meta_path = real_dir / "labels_real_metadata.json"
    meta_path.write_text(json.dumps(meta, indent=2), encoding="utf-8")
    logger.info(f"Metadata written to {meta_path}")

    # ── print table ───────────────────────────────────────────────────────────
    print(f"\n{'Module':<30} {'Status':<10} {'Gates':>8}")
    print("-" * 52)
    for r in sorted(results, key=lambda x: x.get("module_name", "")):
        name = r.get("module_name", r.get("filename", "?"))
        st = r.get("synthesis_status", "?")
        gc = r.get("gate_count")
        gc_str = str(gc) if gc is not None else "N/A"
        flag = "" if st == "success" else "  ← FAILED/SKIPPED"
        print(f"  {name:<28} {st:<10} {gc_str:>8}{flag}")


if __name__ == "__main__":
    main()

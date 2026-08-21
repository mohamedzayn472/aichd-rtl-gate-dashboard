"""
Compile labels_real.csv directly from synthesis result JSON files.
Modules with no JSON (skipped) are excluded from the CSV.
"""
import csv
import json
import logging
from pathlib import Path

logging.basicConfig(level=logging.INFO, format="[%(levelname)s] %(message)s")
logger = logging.getLogger(__name__)

real_dir = Path("data/real_rtl")
synth_dir = real_dir / "synthesis"

SKIPPED = {"axis_gmii_rx", "axis_gmii_tx", "lfsr"}

rows = []
for jp in sorted(synth_dir.glob("*_result.json")):
    module_name = jp.stem.replace("_result", "")
    if module_name in SKIPPED:
        continue
    with open(jp) as f:
        d = json.load(f)
    st = d.get("synthesis_status", "unknown")
    if st != "success":
        logger.warning(f"  {module_name}: status={st} — excluding from CSV")
        continue
    rows.append({
        "module_id":        module_name,
        "gate_count":       d.get("gate_count", 0),
        "and_gates":        d.get("and_gates",  0),
        "or_gates":         d.get("or_gates",   0),
        "xor_gates":        d.get("xor_gates",  0),
        "not_gates":        d.get("not_gates",  0),
        "nand_gates":       d.get("nand_gates", 0),
        "nor_gates":        d.get("nor_gates",  0),
        "synthesis_status": st,
    })

rows.sort(key=lambda r: r["module_id"])

out_csv = real_dir / "labels_real.csv"
fieldnames = ["module_id","gate_count","and_gates","or_gates","xor_gates","not_gates","nand_gates","nor_gates","synthesis_status"]
with open(out_csv, "w", newline="", encoding="utf-8") as f:
    writer = csv.DictWriter(f, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(rows)
logger.info(f"Wrote {len(rows)} rows to {out_csv}")

# Print summary
print(f"\n{'Module':<30} {'Gates':>8}  Status")
print("-" * 55)
for r in rows:
    print(f"  {r['module_id']:<28} {r['gate_count']:>8}  {r['synthesis_status']}")

print(f"\nTotal: {len(rows)} modules with real Yosys gate counts.")
print("Skipped (intractable): axis_gmii_rx, axis_gmii_tx, lfsr")

# Metadata
meta = {
    "total_in_csv": len(rows),
    "skipped_intractable": list(SKIPPED),
    "yosys_version": "Yosys 0.67+84 (git sha1 e2c27aaaf)",
    "method": "real_yosys_synthesis",
    "label_sources": {r["module_id"]: "yosys" for r in rows},
}
(real_dir / "labels_real_metadata.json").write_text(json.dumps(meta, indent=2))
logger.info("Metadata written.")

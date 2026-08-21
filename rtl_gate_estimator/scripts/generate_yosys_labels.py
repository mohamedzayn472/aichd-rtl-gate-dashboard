import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

import pandas as pd
from scripts.collect_labels import LabelCollector

def generate():
    rtl_dir = Path("data/rtl")
    labels_dir = Path("data/labels")
    out_file = labels_dir / "labels_yosys.csv"
    collector = LabelCollector(rtl_dir, labels_dir, method="yosys", output_file=out_file)
    df = collector.collect_labels()
    out_file.write_text(df.to_csv(index=False), encoding="utf-8")
    print(f"[OK] Saved {len(df)} labels to {out_file.resolve()}")

if __name__ == "__main__":
    generate()

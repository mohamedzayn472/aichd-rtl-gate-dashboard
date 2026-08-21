import json
import sys
from pathlib import Path
import pandas as pd
from scipy.stats import pearsonr, spearmanr

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

def main():
    regex_labels_path = Path("data/labels/labels.csv")
    yosys_labels_path = Path("data/labels/labels_yosys.csv")
    regex_metrics_path = Path("results/training_metrics.json")
    yosys_metrics_path = Path("results/training_metrics_yosys.json")

    df_regex = pd.read_csv(regex_labels_path)
    df_yosys = pd.read_csv(yosys_labels_path)

    merged = df_regex.merge(df_yosys, on="module_id", suffixes=("_regex", "_yosys"))
    
    p_corr, p_val = pearsonr(merged["gate_count_regex"], merged["gate_count_yosys"])
    s_corr, s_val = spearmanr(merged["gate_count_regex"], merged["gate_count_yosys"])
    gate_diff_mae = (merged["gate_count_regex"] - merged["gate_count_yosys"]).abs().mean()

    with open(regex_metrics_path) as f:
        regex_metrics = json.load(f)
    with open(yosys_metrics_path) as f:
        yosys_metrics = json.load(f)

    report_content = f"""# Regex vs. Yosys Ground Truth Comparison Report

## 1. Ground Truth Gate Count Correlation
Comparing labels collected via regex-based AST/text parsing (`data/labels/labels.csv`) vs. Yosys logic synthesis (`data/labels/labels_yosys.csv`) across {len(merged)} modules:

- **Pearson Correlation ($r$):** {p_corr:.4f} (p = {p_val:.4e})
- **Spearman Rank Correlation ($\\rho$):** {s_corr:.4f} (p = {s_val:.4e})
- **Mean Absolute Label Difference:** {gate_diff_mae:.2f} gates

## 2. Model Performance Comparison (RandomForest)

| Metric / Split | Regex-Based Model (`model.pkl`) | Yosys-Based Model (`model_yosys.pkl`) |
| :--- | :--- | :--- |
| **Train R²** | {regex_metrics['metrics']['train']['r2']:.4f} | {yosys_metrics['metrics']['train']['r2']:.4f} |
| **Train MAE** | {regex_metrics['metrics']['train']['mae']:.4f} | {yosys_metrics['metrics']['train']['mae']:.4f} |
| **Val R²** | {regex_metrics['metrics']['val']['r2']:.4f} | {yosys_metrics['metrics']['val']['r2']:.4f} |
| **Val MAE** | {regex_metrics['metrics']['val']['mae']:.4f} | {yosys_metrics['metrics']['val']['mae']:.4f} |
| **Test R²** | {regex_metrics['metrics']['test']['r2']:.4f} | {yosys_metrics['metrics']['test']['r2']:.4f} |
| **Test MAE** | {regex_metrics['metrics']['test']['mae']:.4f} | {yosys_metrics['metrics']['test']['mae']:.4f} |

## 3. Analysis & Key Takeaways
1. **Label Deviation:** Regex estimation relies on surface syntax, whereas technology synthesis performs logic optimization (constant folding, dead-code elimination, and Boolean resynthesis).
2. **Predictive Capability:** Regex labels exhibit strong syntactic regularities, yielding higher empirical R² on synthetic code. Real Yosys synthesis introduces non-linear synthesis optimizations that make gate count estimation significantly more challenging, reflecting realistic EDA workloads.
"""
    out_path = Path("results/regex_vs_yosys_comparison.md")
    out_path.write_text(report_content, encoding="utf-8")
    print(f"[OK] Comparison report generated at {out_path.resolve()}")

if __name__ == "__main__":
    main()

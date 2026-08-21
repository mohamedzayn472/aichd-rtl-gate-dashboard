# Regex vs. Yosys Ground Truth Comparison Report

## 1. Ground Truth Gate Count Correlation
Comparing labels collected via regex-based AST/text parsing (`data/labels/labels.csv`) vs. Yosys logic synthesis (`data/labels/labels_yosys.csv`) across 500 modules:

- **Pearson Correlation ($r$):** 0.0312 (p = 4.8575e-01)
- **Spearman Rank Correlation ($\rho$):** 0.0417 (p = 3.5208e-01)
- **Mean Absolute Label Difference:** 43.27 gates

## 2. Model Performance Comparison (RandomForest)

| Metric / Split | Regex-Based Model (`model.pkl`) | Yosys-Based Model (`model_yosys.pkl`) |
| :--- | :--- | :--- |
| **Train R²** | 0.9944 | 0.7408 |
| **Train MAE** | 1.5986 | 17.1109 |
| **Val R²** | 0.9589 | -0.1031 |
| **Val MAE** | 4.2045 | 34.4929 |
| **Test R²** | 0.9612 | -0.1150 |
| **Test MAE** | 3.6253 | 44.8724 |

## 3. Analysis & Key Takeaways
1. **Label Deviation:** Regex estimation relies on surface syntax, whereas technology synthesis performs logic optimization (constant folding, dead-code elimination, and Boolean resynthesis).
2. **Predictive Capability:** Regex labels exhibit strong syntactic regularities, yielding higher empirical R² on synthetic code. Real Yosys synthesis introduces non-linear synthesis optimizations that make gate count estimation significantly more challenging, reflecting realistic EDA workloads.

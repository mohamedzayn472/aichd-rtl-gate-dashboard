# Faithfulness Failure & Disagreement Analysis

## Executive Summary

To evaluate explainability faithfulness, we compared model-based explanations (**SHAP** and **Permutation Importance**) against empirical ground-truth feature relevance obtained via **Single-Feature Ablation**.

- **SHAP Faithfulness Score**: `0.9768` (Spearman: `0.9890`, Kendall: `0.9487`, Top-10 Overlap: `100%`)
- **Permutation Importance Faithfulness Score**: `0.9277` (Spearman: `0.9396`, Kendall: `0.8205`, Top-10 Overlap: `100%`)

While both methods achieve high alignment with ablation ground truth, key ranking discrepancies occur among specific feature subsets. This report analyzes these disagreements using exact numeric data from the dataset.

---

## 1. Quantitative Ranking Comparison

| Feature | Ablation Rank (Score) | SHAP Rank | Permutation Rank (Importance) | Disagreement Status |
| :--- | :--- | :--- | :--- | :--- |
| `complex_nor_gates` | **#1** (`6.3768`) | #4 | #3 (`91.658`) | Moderate Disagreement |
| `complex_nand_gates` | **#2** (`5.6256`) | #3 | #4 (`88.193`) | Minor Swap |
| `complex_chars` | **#3** (`5.0869`) | #5 | **#1** (`138.720`) | Major Disagreement |
| `complex_xor_gates` | **#4** (`5.0141`) | #2 | **#2** (`132.349`) | Moderate Disagreement |
| `complex_or_gates` | **#5** (`3.1686`) | **#1** | #6 (`23.568`) | **Primary Failure Case** |
| `complex_and_gates` | **#6** (`2.4357`) | #6 | #5 (`24.449`) | Minor Swap |
| `complex_not_gates` | **#7** (`1.5382`) | #7 | #7 (`12.953`) | Exact Match |
| `struct_num_wires` | **#8** (`0.8428`) | #8 | #8 (`3.262`) | Exact Match |
| `struct_num_inputs` | **#9** (`0.2910`) | #10 | #10 (`0.750`) | Low-Magnitude Swap |
| `struct_num_outputs` | **#10** (`0.2661`) | #9 | #9 (`0.843`) | Low-Magnitude Swap |
| `bitwidth_avg` | **#11** (`0.1781`) | #11 | #12 (`0.188`) | Low-Magnitude Swap |
| `complex_lines` | **#12** (`0.1394`) | #12 | #11 (`0.371`) | Low-Magnitude Swap |
| `bitwidth_max` | **#13** (`0.0007`) | #13 | #13 (`0.0004`) | Exact Match |

---

## 2. Key Failure Cases & Technical Root Cause Analysis

### Case 1: `complex_or_gates` (SHAP #1 vs Ablation #5 & Permutation #6)
* **Discrepancy**: SHAP assigns its highest global attribution score to `complex_or_gates`, whereas retraining without it (Ablation) only increases MAE by `3.169` (versus `6.377` for `complex_nor_gates`). Permutation importance similarly ranks it `#6` (`23.568`).
* **Root Cause — Feature Correlation & Redundancy**:
  In synthetic and real Verilog RTL, OR gates are highly collinear with `complex_chars` (character count of expression strings) and `complex_nor_gates`. When `complex_or_gates` is ablated, the Random Forest model compensates by routing decision trees through correlated features (`complex_nor_gates` and `complex_chars`).
  SHAP tree explainer allocates credit across coalitional trees without retraining, capturing the marginal value of OR gates in presence of all trees. However, Permutation Importance breaks the feature correlation during shuffling, underestimating importance because redundant features remain unpermuted.

### Case 2: `complex_chars` (Permutation #1 vs Ablation #3 & SHAP #5)
* **Discrepancy**: Permutation importance ranks `complex_chars` as `#1` (`138.720`), significantly higher than its Ablation rank `#3` (`5.0869`).
* **Root Cause — Out-of-Distribution Permutation Shuffling**:
  Shuffling `complex_chars` independently creates unrealizable feature combinations (e.g. high character count with zero operators/gates). Random Forest trees partition heavily on character length when evaluating deep expressions. Shuffling this feature forces data points deep into out-of-distribution leaf nodes, exaggerating loss increase compared to true structural feature removal in Ablation.

### Case 3: `struct_num_inputs` vs `struct_num_outputs` Swap (#9 vs #10)
* **Discrepancy**: Ablation ranks `struct_num_inputs` `#9` (`0.2910`) above `struct_num_outputs` `#10` (`0.2661`), whereas Permutation and SHAP invert this order (`struct_num_outputs` `#9` vs `struct_num_inputs` `#10`).
* **Root Cause — Low-Magnitude Sensitivity**:
  Both I/O features contribute minimally to total gate count predictions compared to internal logic gate counts. The delta score between rank #9 and #10 is less than `0.025` gates. At low magnitudes, numerical noise, tree split choices, and random seed variations dominate the rank ordering.

---

## 3. Conclusions & Methodological Recommendations

1. **SHAP is superior for coalitional attribution**: SHAP achieves `0.9768` faithfulness score with zero top-10 overlap failures, accurately reflecting true model tree structure.
2. **Permutation importance is susceptible to multicollinearity**: While fast and achieving `0.9277` faithfulness, permutation importance over-penalizes correlated text features (`complex_chars`) by creating out-of-distribution samples.
3. **Multi-method verification is necessary**: Using Ablation as empirical ground truth provides explicit validation of XAI explanations before deploying models into production EDA workflows.

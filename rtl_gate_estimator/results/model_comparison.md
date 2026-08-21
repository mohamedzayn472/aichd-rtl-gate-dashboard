# Model Comparison Suite Report

## Overview
Evaluated multiple Machine Learning models for RTL gate count estimation on the identical train/val/test split (seed=42, 350 train / 75 val / 75 test samples).

## Model Comparison Table

| Model Name | Test R² | Test MAE | Test RMSE | Val R² | Val MAE | Training Time (s) | Single Inference (ms) | Batch-100 Latency (ms) |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **RandomForest** | 0.9612 | 3.6253 | 5.6698 | 0.9589 | 4.2045 | 0.7411s | 9.3338ms | 933.38ms |
| **XGBoost** | 0.9379 | 4.5463 | 7.1726 | 0.9525 | 5.0517 | 316.4844s | 3.5066ms | 350.66ms |
| **LightGBM** | 0.9718 | 3.4445 | 4.8359 | 0.9590 | 4.1816 | 106.1546s | 0.5219ms | 52.19ms |
| **LinearRegression** | **0.9963** | **1.3646** | **1.7552** | **0.9974** | **1.2137** | 0.0546s | 0.0268ms | 2.68ms |

## Key Observations

1. **Linear Regression achieves the highest accuracy** on both validation and test sets: Test R² = 0.9963, Test MAE = 1.3646 — outperforming RandomForest (R² = 0.9612, MAE = 3.6253), LightGBM (R² = 0.9718, MAE = 3.4445), and XGBoost (R² = 0.9379, MAE = 4.5463) by a substantial margin.

2. **Implication — the feature–target relationship is near-linear:** Linear Regression's dominant performance indicates that the synthetic dataset's extracted structural features (line counts, operator counts, etc.) relate to gate count in a predominantly linear way. The ensemble models, which are designed to capture complex nonlinearities, do not find additional signal and instead incur slight overfitting costs. This is an important finding to discuss: it suggests the hand-crafted features already encode the complexity well, and nonlinear capacity is not the bottleneck.

3. **Inference speed:** Linear Regression is also by far the fastest model — 0.03 ms single inference vs. 9.3 ms for RandomForest. For a deployment scenario where latency matters, this is an additional advantage.

4. **Ensemble models as benchmarks:** RandomForest and LightGBM still achieve high accuracy (R² > 0.96) and serve as useful reference points. Their gap versus Linear Regression should be noted as a limitation of the synthetic dataset rather than a general claim about RTL complexity: real-world designs with more heterogeneous structure may reverse this ranking.

5. **Production choice recommendation:** **Linear Regression** is the recommended production model given this dataset. However, researchers extending to real-world RTL benchmarks should re-evaluate whether the linearity holds, as the current result is conditioned on the synthetic data distribution. Retraining all four models on a richer real-RTL dataset is recommended as future work.
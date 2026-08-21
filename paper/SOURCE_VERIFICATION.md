# SOURCE_VERIFICATION.md — Numeric Claim Traceability

Every numeric claim in `main.tex` is traced to its source file and field below.

| # | Claim in Paper | Value | Source File | Source Field/Location | Verified? |
|---|:---|:---|:---|:---|:---:|
| 1 | Yosys synthesis latency per module | 199.43 ms | `results/latency_benchmark.json` | `real_yosys_synthesis.avg_yosys_per_module_ms` | ✅ |
| 2 | ML batch inference latency per module | 0.363 ms | `results/latency_benchmark.json` | `batch_ml_inference.per_module_latency_ms` (0.3633) | ✅ |
| 3 | Speedup ratio | 548.9× | `results/latency_benchmark.json` | `speedup_metrics.speedup_formatted` | ✅ |
| 4 | Time saved percent | 99.82% | `results/latency_benchmark.json` | `speedup_metrics.time_saved_percent` (99.818) | ✅ |
| 5 | Best test R² | 0.9963 | `results/model_comparison.json` | LinearRegression → `test_r2` | ✅ |
| 6 | Best test MAE | 1.36 gates | `results/model_comparison.json` | LinearRegression → `test_mae` (1.3646) | ✅ |
| 7 | SHAP faithfulness score | 0.9768 | `results/faithfulness_report.json` | `faithfulness_score` (0.97678) | ✅ |
| 8 | SHAP Spearman ρ | 0.989 | `results/faithfulness_report.json` | `correlation_metrics.spearman_correlation` (0.98901) | ✅ |
| 9 | SHAP Spearman p-value | 1.75×10⁻¹⁰ | `results/faithfulness_report.json` | `correlation_metrics.spearman_p_value` (1.7507e-10) | ✅ |
| 10 | SHAP Kendall τ | 0.9487 | `results/faithfulness_report.json` | `correlation_metrics.kendall_correlation` | ✅ |
| 11 | SHAP top-5 overlap | 5/5 (100%) | `results/faithfulness_report.json` | `overlap_metrics.top_5_overlap` = 5, `top_5_overlap_ratio` = 1.0 | ✅ |
| 12 | SHAP top-10 overlap | 10/10 (100%) | `results/faithfulness_report.json` | `overlap_metrics.top_10_overlap` = 10, `top_10_overlap_ratio` = 1.0 | ✅ |
| 13 | Permutation faithfulness score | 0.9277 | `results/faithfulness_report_permutation.json` | `faithfulness_score` (0.92766) | ✅ |
| 14 | Permutation Spearman ρ | 0.940 | `results/faithfulness_report_permutation.json` | `correlation_metrics.spearman_correlation` (0.93956) | ✅ |
| 15 | Permutation Spearman p-value | 1.88×10⁻⁶ | `results/faithfulness_report_permutation.json` | `correlation_metrics.spearman_p_value` (1.8782e-6) | ✅ |
| 16 | Permutation Kendall τ | 0.8205 | `results/faithfulness_report_permutation.json` | `correlation_metrics.kendall_correlation` | ✅ |
| 17 | Permutation top-5 overlap | 4/5 (80%) | `results/faithfulness_report_permutation.json` | `overlap_metrics.top_5_overlap` = 4, `top_5_overlap_ratio` = 0.8 | ✅ |
| 18 | Permutation top-10 overlap | 10/10 (100%) | `results/faithfulness_report_permutation.json` | `overlap_metrics.top_10_overlap` = 10, `top_10_overlap_ratio` = 1.0 | ✅ |
| 19 | Real-RTL R² | −0.068 | `results/real_rtl_evaluation.json` | `out_of_distribution_metrics.r2` (−0.06846) | ✅ |
| 20 | Real-RTL MAE | 8,218.69 gates | `results/real_rtl_evaluation.json` | `out_of_distribution_metrics.mae` (8218.694) | ✅ |
| 21 | axis_fifo actual gates | 133,594 | `results/real_rtl_evaluation.json` | `per_module_predictions[6].actual_gates` | ✅ |
| 22 | Outlier-excluded MAE (16 modules) | 385.95 gates | Recomputed from `per_module_predictions` | sum(error_abs excl. axis_fifo)/16 = 6175.15/16 | ✅ |
| 23 | Outlier-excluded median abs error | 126.61 gates | Recomputed from `per_module_predictions` | sorted errors[8] (0-indexed) | ✅ |
| 24 | Dataset size | 500 modules | `results/training_metrics.json` | `split_sizes`: 350+75+75 = 500 | ✅ |
| 25 | Train/Val/Test split | 350/75/75 | `results/training_metrics.json` | `split_sizes` | ✅ |
| 26 | Number of features | 13 | `results/training_metrics.json` | `num_features` | ✅ |
| 27 | Feature names (13 listed) | [see paper] | `results/training_metrics.json` | `feature_columns` array (13 entries) | ✅ |
| 28 | CV folds | 5 | `results/cv_results.json` | `k_folds` | ✅ |
| 29 | CV R² mean | −0.124 | `results/cv_results.json` | `metrics.r2_mean` (−0.12393) | ✅ |
| 30 | CV R² std | 0.097 | `results/cv_results.json` | `metrics.r2_std` (0.09666) | ✅ |
| 31 | CV MAE mean | 37.91 gates | `results/cv_results.json` | `metrics.mae_mean` (37.909) | ✅ |
| 32 | CV MAE std | 2.89 gates | `results/cv_results.json` | `metrics.mae_std` (2.895) | ✅ |
| 33 | CV per-fold R² range | −0.317 to −0.068 | `results/cv_results.json` | `per_fold[1].r2` = −0.317, `per_fold[0].r2` = −0.070 | ✅ |
| 34 | RandomForest test R² | 0.9612 | `results/model_comparison.json` | RandomForest → `test_r2` | ✅ |
| 35 | RandomForest test MAE | 3.63 gates | `results/model_comparison.json` | RandomForest → `test_mae` (3.6253) | ✅ |
| 36 | XGBoost test R² | 0.9379 | `results/model_comparison.json` | XGBoost → `test_r2` | ✅ |
| 37 | XGBoost test MAE | 4.55 gates | `results/model_comparison.json` | XGBoost → `test_mae` (4.5463) | ✅ |
| 38 | LightGBM test R² | 0.9718 | `results/model_comparison.json` | LightGBM → `test_r2` | ✅ |
| 39 | LightGBM test MAE | 3.44 gates | `results/model_comparison.json` | LightGBM → `test_mae` (3.4445) | ✅ |
| 40 | LinearRegression val R² | 0.9974 | `results/model_comparison.json` | LinearRegression → `val_r2` | ✅ |
| 41 | LinearRegression val MAE | 1.21 gates | `results/model_comparison.json` | LinearRegression → `val_mae` (1.2137) | ✅ |
| 42 | RandomForest test RMSE | 5.67 | `results/model_comparison.json` | RandomForest → `test_rmse` (5.6698) | ✅ |
| 43 | XGBoost test RMSE | 7.17 | `results/model_comparison.json` | XGBoost → `test_rmse` (7.1726) | ✅ |
| 44 | LightGBM test RMSE | 4.84 | `results/model_comparison.json` | LightGBM → `test_rmse` (4.8359) | ✅ |
| 45 | LinearRegression test RMSE | 1.76 | `results/model_comparison.json` | LinearRegression → `test_rmse` (1.7552) | ✅ |
| 46 | RF train time | 0.74s | `results/model_comparison.json` | RandomForest → `train_time_sec` (0.7411) | ✅ |
| 47 | XGB train time | 316.48s | `results/model_comparison.json` | XGBoost → `train_time_sec` (316.4844) | ✅ |
| 48 | LGBM train time | 106.15s | `results/model_comparison.json` | LightGBM → `train_time_sec` (106.1546) | ✅ |
| 49 | LR train time | 0.05s | `results/model_comparison.json` | LinearRegression → `train_time_sec` (0.0546) | ✅ |
| 50 | RF inference latency | 9.33ms | `results/model_comparison.json` | RandomForest → `latency_per_sample_ms` (9.3338) | ✅ |
| 51 | LR inference latency | 0.03ms | `results/model_comparison.json` | LinearRegression → `latency_per_sample_ms` (0.0268) | ✅ |
| 52 | Learning curve test R² at N=50 | 0.9241 | `results/learning_curve.json` | Entry 0 → `test_r2` | ✅ |
| 53 | Learning curve test R² at N=400 | 0.9771 | `results/learning_curve.json` | Entry 7 → `test_r2` | ✅ |
| 54 | Real-world module count | 17 | `results/real_rtl_evaluation.json` | `num_modules` | ✅ |
| 55 | Yosys version | 0.67+84 (git sha1 e2c27aaaf) | `data/real_rtl/yosys_raw_logs/arbiter.log` | Line 9 | ✅ |
| 56 | RF hyperparams (200 trees, depth 20) | 200/20 | `results/training_metrics.json` | `hyperparameters.n_estimators`, `max_depth` | ✅ |
| 57 | Batch ML total time | 36.33 ms | `results/latency_benchmark.json` | `batch_ml_inference.avg_batch_time_ms` | ✅ |
| 58 | Yosys total time (100 modules) | 19.94 s | `results/latency_benchmark.json` | `real_yosys_synthesis.total_yosys_time_sec` (19.943) | ✅ |
| 59 | axis_register predicted | 45.31 | `results/real_rtl_evaluation.json` | `per_module_predictions[10]` | ✅ |
| 60 | axis_register error | 1.31 / 3.0% | `results/real_rtl_evaluation.json` | `per_module_predictions[10]` | ✅ |

## Regression Check Targets
The following values are known-wrong from prior drafts and must NOT appear in `main.tex`:
- `0.58+11` (wrong Yosys version)
- `0.9412` (wrong R² figure)
- `picorv32` (fabricated module)
- `aes_sbox` (fabricated module)
- `alu_32bit` (fabricated module)
- `Gradient Boosting` (fabricated model)
- `Decision Tree` (fabricated model)
- `511.41` (wrong outlier-excluded MAE)

# Baseline Metrics and Test Suite Status (Before Changes)

**Date:** July 21, 2026  
**Repository:** `rtl_gate_estimator/`

## 1. Existing Test Suite Verification
Command: `python -m pytest tests/ -v`
Result: **14 / 14 PASSED**

```
tests/test_pipeline.py::test_rtl_generator_produces_valid_verilog PASSED
tests/test_pipeline.py::test_feature_extractor_returns_expected_features PASSED
tests/test_pipeline.py::test_label_collector_produces_gate_counts PASSED
tests/test_pipeline.py::test_model_trainer_trains_and_evaluates PASSED
tests/test_pipeline.py::test_shap_explainer_computes_values PASSED
tests/test_pipeline.py::test_ablation_study_produces_delotas PASSED
tests/test_pipeline.py::test_faithfulness_verifier_computes_correlations PASSED
tests/test_pipeline.py::test_pipeline_end_to_end_runs_fast PASSED
tests/test_pipeline.py::test_extract_features_cli PASSED
tests/test_pipeline.py::test_collect_labels_cli PASSED
tests/test_pipeline.py::test_train_model_cli PASSED
tests/test_pipeline.py::test_run_shap_cli PASSED
tests/test_pipeline.py::test_ablation_sweep_cli PASSED
tests/test_pipeline.py::test_compare_faithfulness_cli PASSED
```

## 2. Model Baseline Performance (RandomForest, 13 features)
From `results/training_metrics.json`:
- **Train Set (350 samples):**
  - MSE: 5.2057
  - MAE: 1.5986
  - R²: 0.9944
- **Validation Set (75 samples):**
  - MSE: 45.6815
  - MAE: 4.2045
  - R²: 0.9589
- **Test Set (75 samples):**
  - MSE: 32.1462
  - MAE: 3.6253
  - R²: 0.9612

## 3. Faithfulness Verification Baseline
From `results/faithfulness_report.json`:
- **Faithfulness Score:** 0.9768
- **Spearman Correlation (SHAP vs Ablation):** 0.9890 (p = 1.75e-10)
- **Kendall Correlation (SHAP vs Ablation):** 0.9487 (p = 2.89e-08)
- **Top-5 Overlap Ratio:** 1.0 (5/5)
- **Top-10 Overlap Ratio:** 1.0 (10/10)

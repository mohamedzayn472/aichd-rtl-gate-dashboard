# Abstract Verification and Revision

## Conclusion

The original abstract described the project direction accurately at a high level, but several details no longer matched the implemented repository. The paper abstracts have been revised to describe the current AICHD system conservatively and to preserve the distinction between measured evidence, conditional verification, and known limitations.

## Corrections made

| Original claim | Verified project state | Revision |
|---|---|---|
| A Random Forest is the sole learning method reported | The active inference route uses the default Random Forest, while the research artifacts compare Random Forest, XGBoost, LightGBM, and linear regression | The abstract distinguishes the default inference path from the separate model-comparison study |
| The model uses 13 structural features | The current persisted training artifact contains 24 feature columns covering structural, operator, complexity, and bit-width signals | Updated to 24 features |
| The data are described as synthetic data with Yosys ground truth | The repository contains generated RTL, generator labels, explicitly selected Yosys labels, and real-RTL evaluation; the label regime must be stated explicitly | Reworded as generated RTL with Yosys-derived labels when selected |
| SHAP faithfulness is presented as independently verified | The implementation compares SHAP and permutation rankings with mean-replacement ablation; this is a protocol-dependent empirical diagnostic and is not causal proof | Added the limitation directly to the abstract |
| Real RTL validation implies generalization | The 17-module open-source benchmark reports $R^2=-0.068$ and MAE 8,218.69 gates, with substantial distribution shift driven in part by large parameterized designs | The abstract now presents this as an OOD stress test and limitation |
| Optimization candidates are generally corrected and optimized | Candidate RTL is exposed only when equivalence, applicable exhaustive verification, and measured PPA improvement pass; failed or unsupported cases are withheld | Added the conditional safety-gate wording |
| The speedup is a universal system property | The reported speedup is from a controlled 100-module benchmark and compares batch ML inference with the measured Yosys path | Scoped the claim to that benchmark and updated it to 423.2x, matching the current latency artifact |

## Files updated

- `paper/main.tex`: active conference-paper source.
- `paper/main_revised.tex`: audit-focused revised-paper source.

## Current revised abstract

Accurate gate-count estimates at the register-transfer level (RTL) can provide early design-space feedback before full logic synthesis. We present **AICHD**, an end-to-end framework that combines lightweight source-level feature extraction, Yosys-based synthesis labels, machine-learning estimation, post-hoc explanation, and safety-gated RTL optimization. The current inference path uses a Random Forest regressor over 24 structural, operator, complexity, and bit-width features; a separate model-comparison study evaluates linear regression, Random Forest, XGBoost, and LightGBM on the generated benchmark. The framework computes TreeSHAP and permutation-based explanations and checks their ranking agreement with mean-replacement ablation, treating the result as an empirical, protocol-dependent diagnostic rather than proof of causal faithfulness. Evaluation includes 500 generated RTL modules and a zero-shot benchmark of 17 open-source modules. The latter yields $R^2=-0.068$ and an MAE of 8,218.69 gates, exposing substantial distribution shift and limiting claims of production-scale generalization. In the optimization workbench, candidate rewrites are retained only after Yosys equivalence checking, exhaustive simulation for eligible small combinational designs, and a measured reduction in synthesized cell count or logic depth; otherwise the candidate is withheld and diagnostics are returned. In a controlled 100-module benchmark, batch ML inference is 423.2x faster than the measured Yosys synthesis path. AICHD therefore provides an auditable research and engineering workflow for early RTL estimation, explanation, and verification-aware optimization, with explicit boundaries on reliability under distribution shift and incomplete tool support.

## Verification status

The abstract text was checked against the current source-context audit and persisted JSON artifacts. LaTeX compilation was attempted but could not be completed because `pdflatex` is not installed in the execution environment; the source escapes were manually normalized after replacement.

## References

[1]: ../PROJECT_CONTEXT.md "AICHD project context and current implementation boundaries"
[2]: ../rtl_gate_estimator/results/model_comparison.json "Model comparison metrics"
[3]: ../rtl_gate_estimator/results/training_metrics.json "Persisted training feature and split metadata"
[4]: ../rtl_gate_estimator/results/real_rtl_evaluation.json "Open-source RTL evaluation metrics"
[5]: ../rtl_gate_estimator/results/latency_benchmark.json "Inference and Yosys latency benchmark"
[6]: ../rtl_gate_estimator/results/faithfulness_report.json "SHAP faithfulness diagnostic"
[7]: ../rtl_gate_estimator/CORRECTION_LOG.md "Synthesis-label and data-integrity correction log"

# AICD Conference-Paper Publication Strategy

## Executive assessment

The project is promising but the current manuscript is not yet submission-safe. Its strongest raw result is not the most defensible novelty claim: prior work already covers presynthesis RTL PPA prediction with graph representations, transfer learning, data augmentation, and fast design-space exploration. The strongest publishable angle is instead a carefully audited study of lightweight RTL gate-count prediction that makes label provenance explicit, quantifies the difference between generator and Yosys labels, evaluates zero-shot transfer to real RTL, and tests whether post-hoc explanations agree with empirical feature sensitivity.

The revised paper should present the work as an **auditable explainability and distribution-shift study for RTL gate-count estimation**, with a compact feature representation and an open, reproducible pipeline. It should avoid claiming that AICD is the first RTL/EDA ML estimator or that current accuracy demonstrates production-scale generalization.

## Evidence that should be used in the revised paper

The current artifact snapshot contains 500 clean synthetic modules and 14 extracted features. A repeated-seed evaluation using a 15% held-out test set produced the following results:

| Label regime | Model | Mean test R² | R² SD | Mean MAE (gates) | MAE SD |
|---|---|---:|---:|---:|---:|
| Generator ground truth | Linear regression | 0.9978 | 0.0004 | 1.17 | 0.09 |
| Generator ground truth | Random forest | 0.9735 | 0.0106 | 3.73 | 0.61 |
| Yosys synthesis | Linear regression | 0.9565 | 0.0106 | 7.24 | 0.57 |
| Yosys synthesis | Random forest | 0.9313 | 0.0121 | 9.27 | 0.96 |

The clean join contains 500 common modules. Generator/regex labels correlate with Yosys labels at Pearson r=0.9666 and Spearman rho=0.9396, with mean absolute difference 18.534 gates. These values conflict with an older report in the repository that states near-zero label correlation. The paper must freeze the current artifact version and regenerate every reported result from the same commit before submission.

For the current generator-ground-truth random forest, a synchronized explanation experiment on the same 75-sample held-out set yielded a base MAE of 5.20 gates. SHAP and permutation rankings each had Spearman rho=1.00 and Kendall tau=1.00 against single-feature mean-replacement ablation, with top-5 overlap 5/5. These results are preliminary and should be repeated across seeds and under a Yosys-label regime before being used as the central claim.

The existing real-RTL benchmark remains valuable as a stress test but should be framed honestly. It contains 17 successfully synthesized modules from a narrow Alex Forencich UART/I2C/AXI-Stream corpus, with three exclusions for synthesis timeout. The recorded zero-shot result is R²=-0.0685 and MAE=8218.69 gates under hierarchy-inclusive Yosys counts without a technology library. This is strong evidence of distribution shift, not evidence of robust generalization.

## Novelty statement to use

> We present an auditable RTL gate-count estimation pipeline that separates label provenance, compares lightweight feature-based predictors under generator and synthesis-derived targets, evaluates zero-shot transfer to open-source RTL, and tests post-hoc explanations against empirical feature sensitivity. The study shows that apparently excellent in-distribution accuracy can coexist with substantial synthesis-label and real-design distribution shifts, while explanation rankings can be quantitatively checked rather than assumed faithful.

This claim is narrower than the current manuscript’s “first in RTL/EDA ML” language and is more defensible against MasterRTL, FastPASE, transfer-learning PPA models, and recent SOG-based work.

## Experimental work required before submission

The paper should regenerate a single frozen artifact bundle containing the feature table, all three label tables, train/test indices, model checkpoints, explanation rankings, random seeds, Yosys version, synthesis command, timeout policy, and source commit hashes. The generator, regex/default, and Yosys regimes should be trained and evaluated with identical splits. The evaluation should report repeated-seed means and standard deviations, not a single lucky split.

The explanation study should use the same model, feature list, held-out set, and ablation definition for SHAP and permutation importance. Because mean replacement can create unrealistic correlated-feature combinations, a second protocol should be added: conditional or retraining-based ablation, or at minimum a correlation-aware perturbation analysis. The paper should state exactly whether the ranking is computed on training, validation, or held-out data.

The real-RTL evaluation should add at least one independent source family beyond Alex Forencich if feasible, document licenses and commit hashes, separate flat modules from hierarchy-heavy modules, and report both raw-gate and log-scale metrics. The `axis_fifo` and other memory-dominated cases should be analyzed rather than silently removed.

## Venue strategy

**Primary immediate target: DATE 2027.** The official DATE 2027 call covers design automation, logical analysis and design, applications of AI systems, and machine-learning solutions for embedded/cyber-physical systems. Registration is due September 13, 2026 AoE and the full paper is due September 20, 2026 AoE. The paper should be positioned as an auditable design-automation methodology and evaluation study rather than as a pure ML paper.

**Secondary target: DAC 2027.** DAC is a stronger and more competitive long-term target, scheduled for July 11–14, 2027 in San Jose. The 2027 research-manuscript deadline should be confirmed from the official CFP when released. A DAC version would require stronger novelty, broader benchmarks, and a more compelling design-automation use case.

**Not currently available for a new ASP-DAC 2027 submission.** The official ASP-DAC 2027 CFP required the abstract by July 11, 2026 and the PDF by July 18, 2026, with a six-page maximum plus one page of references. Those deadlines have passed as of August 21, 2026.

## Submission-readiness risks

The current manuscript has placeholder author metadata, stale claims of 13 features, tables that do not match the current 14-feature training artifact, and an outdated claim that all headline labels are Yosys ground truth. The existing XAI reports also use different feature counts across SHAP and permutation artifacts. These issues must be corrected before any submission. A reviewer will likely reject the paper if the label provenance and experimental snapshot cannot be reproduced exactly.

## References used for positioning

1. W. Fang et al., “MasterRTL: A Pre-Synthesis PPA Estimation Framework for Any RTL Design,” ICCAD 2023, arXiv:2311.08441, https://arxiv.org/abs/2311.08441.
2. W. Fang et al., “Transferable Presynthesis PPA Estimation for RTL Designs With Data Augmentation Techniques,” IEEE TCAD 2025, DOI: 10.1109/TCAD.2024.3420904, https://ieeexplore.ieee.org/document/10577671/.
3. A. Levy et al., “An AI-Driven Fast PPA Speculation Engine for RTL Design Space Optimization,” 2024, IEEE document 10528750, https://ieeexplore.ieee.org/document/10528750/.
4. L. Francisco et al., “Fast and Accurate PPA Modeling with Transfer Learning,” ICCAD 2021, IEEE document 9531109, https://ieeexplore.ieee.org/document/9531109/.
5. A. Chattopadhyay and V. K. Sutrakar, “Machine Learning Framework for Early Power, Performance, and Area Estimation of RTL,” arXiv:2502.16203, https://arxiv.org/abs/2502.16203.
6. S. M. Lundberg and S.-I. Lee, “A Unified Approach to Interpreting Model Predictions,” NeurIPS 2017, https://neurips.cc/virtual/2017/oral/10008.
7. DATE 2027 Call for Papers, https://www.date-conference.com/date-2027-call-papers.
8. ASP-DAC 2027 Call for Papers, https://www.aspdac.com/aspdac2027/cfp/.

# AICD Project Context

> Generated from the current workspace on 2026-09-21. Source code and configuration are authoritative; README files, archived implementations, generated artifacts, and planning notes are treated as secondary evidence. Secrets and credentials are not reproduced.

## Project Identity

**Project name:** AICHD / Explainable RTL Gate Count Estimator (repository root: AICD Project)

**Purpose:** Estimate the synthesized hardware cost of Verilog/SystemVerilog RTL from source-derived structural features, explain model predictions with SHAP, compare feature importance through ablation, validate explanation faithfulness, and expose the workflow through a Next.js dashboard. The current dashboard also runs a synthesis-backed RTL optimization workflow, but only returns corrected RTL after formal equivalence and applicable bounded verification pass and measured Yosys metrics improve.

**Problem addressed:** Early RTL-stage gate-count estimation is much faster than synthesis, but source-level features can be misleading. This project combines generated and real RTL, Yosys labels, regression models, explainability, verification, and a user-facing inference workbench.

**Target users:** RTL/FPGA/ASIC designers, hardware researchers, explainability researchers, and developers reviewing RTL estimates or safe optimization candidates.

## Current Repository Boundaries

The current implementation has three meaningful layers:

1. `rtl_gate_estimator/` is the Python research and inference backend.
2. `dashboard/` is the canonical current Next.js 15 web application.
3. `archive/` contains retired implementations and should not be treated as the active runtime unless explicitly selected.

The root also contains research papers, notebooks, generated datasets/results, helper scripts, and deployment configuration. The working tree is dirty: active uncommitted changes exist in dashboard inference files and optimization verification files, and many temporary/generated files are present. This document describes that current working tree, not only `HEAD`.

## Technology Stack

- Python 3.11+ is documented; the repository memory records Python 3.13.14 in the local virtual environment.
- Python: pandas, NumPy, scikit-learn, SHAP, SciPy, Matplotlib, Seaborn, Plotly, PyYAML, pytest, Jupyter, and Streamlit as an archived/reference dependency.
- EDA tools: Yosys for synthesis and statistics; Icarus Verilog (`iverilog`/`vvp`) for bounded combinational simulation when installed.
- Frontend: Next.js 15.5, React 19, TypeScript, Tailwind CSS 4, Recharts, Framer Motion/Motion, Radix UI, Lucide React, Zustand and related UI packages.
- Fonts/UI: Next Google fonts, local Rebels font, custom CSS, Circuit Canvas visual system.
- Deployment: Docker image based on `node:22-bookworm-slim`, with Python, Yosys, and Icarus installed; Render configuration uses Docker and exposes port 3000.
- No application database was found. Persistent data is files (CSV, JSON, PNG, pickle, Verilog) and browser `localStorage` for inference draft/history.
- The active prediction API is a local server-to-process bridge: Next.js invokes Python with `child_process.exec`, writes a temporary `.v` file, parses JSON, and deletes the temporary file.

## High-Level Architecture

```text
Synthetic RTL generator / uploaded Verilog / real RTL corpus
        |
        +--> lightweight Verilog validation and regex feature extraction
        |         |
        |         +--> trained RandomForest model --> gate-count estimate
        |         +--> SHAP TreeExplainer ---------> feature contributions
        |
        +--> Yosys synthesis --> cell/gate counts, logic depth, diagnostics
                                  |
                                  +--> labels for training/evaluation
                                  +--> baseline/candidate PPA comparison

Training features + labels --> train/validation/test split --> model.pkl + metrics
SHAP + ablation rankings --> Spearman/Kendall/top-k comparison --> faithfulness report

Browser Verilog editor/upload
        --> Next.js POST /api/predict
        --> temporary source file
        --> Python scripts/optimize_rtl.py
        --> ML prediction + optional SHAP + Yosys rewrite/proof/evidence
        --> sanitized JSON response
        --> Circuit Canvas result tabs, local report, local history
```

## Backend Components

### Pipeline orchestrator
**File:** `rtl_gate_estimator/run_pipeline.py`

`RTLGateCountPipeline` loads YAML configuration, creates configured directories, and runs seven phases:

1. `phase_1_generate_rtl`: generate Verilog and exact generator-side gate breakdown in `data/rtl/ground_truth_gates.csv`.
2. `phase_2_extract_features`: parse every `.v` file and write `data/features/features.csv`.
3. `phase_3_collect_labels`: choose generator ground truth, Yosys, or regex labels according to method and availability.
4. `phase_4_train_model`: merge features and labels on numeric `module_id`, train RandomForest, save `models/model.pkl` and metrics.
5. `phase_5_shap_explanations`: create SHAP JSON and plots.
6. `phase_6_ablation_study`: mean-replacement prediction-sensitivity study.
7. `phase_7_verify_faithfulness`: compare SHAP rankings to ablation rankings and save a score/report.

The orchestrator then writes `pipeline_summary.json`, JavaScript data mirrors for browser use, and, when a model is available, serializes RandomForest tree structures to `model_structure.js`.

CLI entry point:

```text
python rtl_gate_estimator/run_pipeline.py [--config config/config.yaml] [--num-samples N] [--skip-phases ...] [--label-method auto|yosys|regex] [--phase 1-7]
```

### RTL generation
**File:** `rtl_gate_estimator/scripts/generate_rtl.py`

`RTLGenerator` creates synthetic modules with randomized ports, widths, internal signals, logic density, and expression depth. Supported basic gates are AND, OR, XOR, NOT, NAND, and NOR. `_generate_expr` recursively creates compound expressions while tracking exact gate counts. Additional generator methods create arithmetic, behavioral, and mixed modules with heuristic arithmetic/mux gate estimates. The current phase-1 orchestrator calls `generate_module_with_counts`; generated module IDs and counts are persisted for later label selection.

Inputs are YAML generation settings and a random seed. Outputs are Verilog files and generator truth labels. The arithmetic/behavioral/mixed paths use estimates, not direct Yosys counts, until labels are collected.

### Feature extraction
**File:** `rtl_gate_estimator/scripts/extract_features.py`

`RTLFeatureExtractor` deliberately uses lightweight regex/scanning rather than a full HDL AST parser. It:

- strips comments and UTF-8 BOMs;
- validates module/endmodule counts, a module header, and delimiter balance;
- counts input/output/inout ports, wires/regs, simple instances, vector widths;
- scans assign expressions for AND, OR, XOR, NOT, NAND, and NOR;
- scans broader source for arithmetic, comparisons, shifts, ternary muxes, concatenations, always blocks, procedural assignments, and case branches;
- returns `struct_*`, `complex_*`, `bitwidth_*`, and `module_id` feature fields.

The model trainer selects only columns beginning `struct_`, `complex_`, or `bitwidth_`. `module_id` is not a model feature.

### Label collection and synthesis
**Files:** `rtl_gate_estimator/scripts/collect_labels.py`, `scripts/yosys_synthesis.py`, `scripts/synthesis_runner.py`

`LabelCollector` selects labels in this order for `auto`: generator ground truth if present, otherwise Yosys if available, otherwise regex counting. Explicit `yosys` fails when synthesis fails rather than silently inventing labels; explicit `regex` performs approximate assign-expression counting. CSV labels contain `module_id`, total `gate_count`, and six gate-type columns.

`YosysSynthesizer` finds `yosys` on PATH or under `%USERPROFILE%/oss-cad-suite/bin/yosys.exe`, writes a Yosys script, synthesizes the requested module and declared dependencies, saves raw logs, parses hierarchy-inclusive cell counts and primitive type counts, and writes result JSON. This is the preferred real synthesis path for labels.

`YosysRunner` provides the optimization-facing abstraction. It reports area as Yosys cell count and timing as longest topological path (`ltp` logic levels), can build a generic Yosys-derived candidate, and handles BOM-free private copies without changing user source.

### Model training and inference
**Files:** `rtl_gate_estimator/scripts/train_model.py`, `scripts/predict.py`

`ModelTrainer` merges feature/label CSVs, performs a 70% train / 15% validation / 15% test split using configured fractions and seed, trains `RandomForestRegressor` with 200 trees, max depth 20, minimum split 5, minimum leaf 2, random state 42, and all CPUs, then records MSE, MAE, and R2 plus feature importance. Optional five-fold cross-validation writes `cv_results.json`.

`predict.py` validates an uploaded/source file, extracts features, loads the pickle bundle, aligns missing feature columns to zero, handles older bundles lacking `struct_num_instances`, predicts a non-negative rounded gate count, and optionally computes top-10 TreeSHAP attributions. `--json` returns file, predicted count, numeric features, and structured SHAP entries.

### Explainability and validation
**Files:** `scripts/run_shap.py`, `scripts/ablation_sweep.py`, `scripts/compare_faithfulness.py`

`SHAPExplainer` loads the model and feature matrix, samples up to the configured number of rows, computes TreeSHAP values, writes feature importance and raw values to `shap_values.json`, and creates summary, beeswarm, and top-feature dependence plots.

`AblationStudy` measures mean absolute prediction change after replacing each feature with its mean. Its older multi-strategy method also exists, but the pipeline uses the simpler feature-importance ablation and writes `ablation_study_results.json`.

`FaithfulnessVerifier` compares explanation and ablation rankings with Spearman and Kendall correlations, top-5/10/15 overlap, and a weighted score: 0.4 normalized Spearman + 0.3 normalized Kendall + 0.3 average overlap ratio. It writes JSON and JavaScript reports. These scores validate ranking agreement, not physical gate-count accuracy.

### Optimization and proof gates
**Files:** `scripts/optimize_rtl.py`, `scripts/rules_engine.py`, `scripts/equivalence_checker.py`, `scripts/exhaustive_checker.py`

The current inference optimization flow is:

1. predict with the existing model and SHAP;
2. synthesize the submitted RTL for baseline area and logic depth;
3. try static identity/constant rules in `RulesEngine` (LLM mode is disabled by the production caller); if no narrow rewrite exists, ask Yosys for a generic structural candidate;
4. require Yosys formal equivalence using `equiv_make`, `equiv_simple -seq 5`, and `equiv_status -assert`; only the final success marker is accepted;
5. for small combinational designs, use `ExhaustiveEquivalenceChecker` with Yosys port/state discovery and Icarus simulation over every input vector, capped at 12 input bits by default;
6. synthesize the candidate and retain it only if cell count or logic depth decreases.

Sequential designs with skipped bounded verification are withheld unless a complete stateful proof path exists. Failed, unavailable, or ambiguous synthesis/proof returns preserve the ML estimate and diagnostics but do not expose corrected RTL. The route labels outcomes as `rewrite_available`, `no_measurable_improvement`, `candidate_unverified`, or `synthesis_attention`.

## Frontend Architecture

### Shell and routes
`dashboard/app/layout.tsx` loads global styles, fonts, metadata, and `ObservatoryShell`. The current visual terminology is Circuit Canvas despite the retained shell component name.

Current pages include:

- `/`: landing/overview route.
- `/dashboard`: imports synced JSON result files and shows KPIs, SHAP and ablation charts, and a searchable feature table.
- `/predict`: live inference workbench with editor/upload/dropzone, target selector, estimate, explanation, optimization, evidence chart, report, and history tabs.
- `/faithfulness`, `/latency`, `/learning-curve`, `/model-comparison`, `/validation`, `/docs`: analysis and documentation views backed by synced result JSON/Markdown.
- `/api/predict`: POST route bridging browser input to Python optimization/inference.

`dashboard/scripts/sync-data.js` copies selected JSON results and documentation from `rtl_gate_estimator/results` and `rtl_gate_estimator/docs` into `dashboard/data` and `dashboard/public/data`. It runs before `dev` and `build`.

### Prediction API contract
**Endpoint:** `POST /api/predict`

**Request:** `{ "code": "<Verilog/SystemVerilog source>", "target": "asic|xilinx|intel" }`.

**Validation:** nonempty string, maximum 500,000 characters, UTF-8 BOM stripped at byte boundary, UUID-named temporary `.v` file.

**Backend process:** chooses root `.venv`, root `venv`, backend venv, `python3`, or `python`; runs `python -m scripts.optimize_rtl --input <temp> --target <target>` from `rtl_gate_estimator`; timeout is 120 seconds.

**Success response:** `{ success, gateCount, features, shapValues, optimization_status, optimizable, optimized_code, diff, functional_equivalence, impact, transformations_applied, warnings, synthesisDiagnostics, boundedVerification, syntax_error, raw }`. Internal `module_id` is removed from client-facing features. Python JSON parsing tolerates logging/noise around the outer JSON object.

**Error behavior:** invalid input is 400; oversized input is 413; missing interpreter/script or process errors are returned as structured failure responses; synthesis failures retain ML data through the optimizer’s diagnostic response.

### Predict page state
`dashboard/app/predict/page.tsx` stores draft source, selected target, and up to six local history entries in browser `localStorage`. It displays gate count, top SHAP feature, extracted input/output/wire counts, feature details, a Recharts SHAP bar chart, optimization evidence, Markdown report copy/download, and restored source history. The UI does not claim physical implementation equivalence; it distinguishes model evidence from synthesis/proof evidence.

## Data and Artifacts

### Inputs
- Generated Verilog: `rtl_gate_estimator/data/rtl/rtl_module_*.v`.
- Generator labels: `data/rtl/ground_truth_gates.csv`.
- Optional real RTL: `rtl_gate_estimator/data/real_rtl/` with source metadata and labels.
- Uploaded `.v`/`.sv` source entered through the dashboard.

### Intermediate and output formats
- CSV: feature matrices, labels, evaluation tables.
- JSON: metrics, reports, summaries, predictions, metadata.
- Pickle: `models/model.pkl` RandomForest plus feature column names; loading pickle is trusted-local-file behavior.
- PNG: SHAP and learning-curve plots.
- JS: browser mirrors generated from result JSON.
- Verilog/Yosys scripts/logs: synthesis and proof intermediates.

### Current persisted evidence
The repository contains 500 generated module files, trained models, synthesis logs, SHAP/ablation/faithfulness outputs, real-RTL evaluation outputs, latency benchmarks, and dashboard data copies. Exact values should be read from the corresponding JSON at run time. Existing reports record SHAP faithfulness around 0.9768, permutation faithfulness around 0.9277, and a real-RTL out-of-distribution R2 around -0.068 with a very large `axis_fifo` outlier; these are reported artifacts, not guarantees for a newly regenerated run.

## Configuration

Primary config: `rtl_gate_estimator/config/config.yaml`.

Important values:

- 500 samples, seed 42, validation/test fractions 0.15/0.15.
- Port limits 8/8, internal signals 32, logic density 0.3-0.9, depth 2-8.
- Structural, complexity, bitwidth, statistical, and graph feature flags are configured, although the current extractor implements the structural/complexity/bitwidth fields described above.
- RandomForest: 200 estimators, depth 20, split 5, leaf 2.
- SHAP: TreeExplainer, 100 explanation samples, top 30 configured.
- Ablation: 100 iterations and three strategy names; pipeline's active implementation uses mean replacement.
- Yosys generic technology, optimization level 2, fallback enabled.
- Faithfulness correlation threshold 0.3 and coverage target 0.8 are configuration values; the verifier's score logic is the operational behavior.
- Synthesis timeout 300 seconds; pipeline batch size 32 and max workers 4; GPU disabled.

## Execution Procedures

### SETUP

```text
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
cd dashboard
npm install
```

Install Yosys separately as a system tool. For bounded verification, install Icarus Verilog. The Dockerfile installs both on Debian-based images. Do not put secrets in source; an optional `GEMINI_API_KEY` is referenced only by the experimental LLM rewrite module and should be configured as `GEMINI_API_KEY=[REDACTED]` if that path is intentionally used.

### BUILD AND RUN BACKEND

```text
cd rtl_gate_estimator
python run_pipeline.py
```

For a smaller reproducible run, use `python run_pipeline.py --num-samples 100 --label-method regex`. Individual scripts and phase selection are documented in `rtl_gate_estimator/README.md`; paths are relative to the backend directory for those commands.

### RUN DASHBOARD

```text
cd dashboard
npm run dev
```

Open `http://localhost:3000`. `npm run build` runs data sync through `prebuild`, then creates the production Next.js build. `npm run start` serves it.

### PREDICT DIRECTLY

```text
cd rtl_gate_estimator
python scripts/predict.py --input path/to/design.v
python scripts/predict.py --input path/to/design.v --json
```

The dashboard's live path uses `python -m scripts.optimize_rtl`, not plain `predict.py`.

### TEST

From the root, `pytest.ini` points pytest at `rtl_gate_estimator/tests` and adds `rtl_gate_estimator` to `pythonpath`:

```text
pytest -v
cd rtl_gate_estimator
pytest tests/ -v
```

Focused tests cover feature parsing, labels, pipeline outputs, SHAP output, formal equivalence acceptance parsing, BOM handling, Yosys stats/candidate generation, bounded combinational truth tables, optimization rollback, and sequential-proof withholding.

### DEPLOY

```text
docker build -t aicd-rtl-dashboard .
docker run --rm -p 3000:3000 aicd-rtl-dashboard
```

Render uses `render.yaml` and the root `Dockerfile`; `PORT` is supplied by the platform. No hardware programming or microcontroller/FPGA flashing command exists in the active project. FPGA names in the UI are synthesis targets, not direct board interfaces.

## Tests and Validation Limits

Tests are pytest-based. They verify contracts and selected workflows, but they do not constitute proof of model quality on all RTL families. The feature extractor is regex/scanner based, so unusual SystemVerilog syntax, deep hierarchy, macros, escaped identifiers, and complex parameterization may be outside its reliable scope. The current model's strong synthetic metrics can be inflated by the generated-data relationship and do not transfer to large real designs; the recorded real-RTL R2 is negative. Yosys and Icarus availability changes which integration tests run or are skipped.

## Completed, Partial, Not Implemented

### COMPLETED

- Seven-phase synthetic RTL, feature, label, model, SHAP, ablation, and faithfulness pipeline.
- Yosys synthesis integration and raw audit logs.
- RandomForest training, persisted model, direct prediction, and SHAP output.
- Next.js dashboard pages and live `/api/predict` inference.
- BOM normalization, payload size guard, temporary-file collision avoidance, and synthesis diagnostic fallback.
- Formal equivalence acceptance hardening and bounded exhaustive combinational verification.
- Conditional optimization candidate exposure based on proof and measured area/depth improvement.
- Docker/Render deployment configuration.

### PARTIALLY COMPLETED

- Real-RTL generalization: evaluation exists, but distribution mismatch is severe, especially for large parameterized modules.
- Generic SystemVerilog support: basic `.sv` upload is accepted, but extraction and synthesis are not a complete language implementation.
- Optimization: static rules are narrow and generic Yosys rewrites are conservative; sequential candidate acceptance is intentionally withheld without stateful proof.
- Dashboard deployment verification: `todo.md` still has an unchecked final hosting verification pass; deployment configuration exists, but this workspace inspection did not establish live-host health.
- Documentation: some older architecture documents describe retired static dashboards or broader model suites and must be checked against current source.

### NOT IMPLEMENTED / NOT EVIDENCED IN ACTIVE CODE

- No application database, authentication, user accounts, or server-side result persistence.
- No direct hardware board, sensor, pin, bus, UART/SPI/I2C programming, or FPGA flashing interface.
- No physical power/timing signoff; Yosys cell count and logic depth are proxies.
- No demonstrated complete stateful equivalence proof for accepted sequential rewrites.
- No guarantee that every documented multi-model comparison is regenerated by the current seven-phase orchestrator; those results are persisted research artifacts/scripts.

### KNOWN ISSUES AND TECHNICAL DEBT

- Root README, backend README, architecture docs, task notes, and current routes contain historical/parallel claims; always inspect active code before relying on them.
- `RulesEngine` contains an experimental LLM path referencing `GEMINI_API_KEY`; production optimizer disables it, and the fallback condition is awkward and should be treated as experimental.
- Feature extraction relies on regular expressions rather than a Verilog parser.
- `CommandExecutor` runs shell commands with `shell=True`; paths and inputs are internally constructed in the current flow, but this is a security-sensitive boundary.
- The API returns a `raw` optimizer payload in addition to sanitized fields; review before exposing new backend details publicly.
- `validate_paths` creates configured paths relative to the process working directory, while the pipeline's `_path` method resolves them relative to backend project root; execution from the documented working directory matters.
- Existing generated data, models, logs, and dashboard copies can become stale after rerunning parts of the pipeline.
- The working tree contains many untracked temp/test artifacts and active edits not included in the last commit.

## Git State

Current branch: `main`.

Recent commits include Circuit Canvas visual redesign/refinements, formal-equivalence hardening, sequential rewrite withholding, and exhaustive equivalence verification. The current worktree has uncommitted changes in `dashboard/app/api/predict/route.ts`, `dashboard/app/predict/page.tsx`, `rtl_gate_estimator/scripts/exhaustive_checker.py`, `rtl_gate_estimator/scripts/rules_engine.py`, and planning notes, plus numerous untracked temporary/generated files. No commit was created for this documentation task.

## Requirement Traceability

| Requirement | Implementation | Files | Status |
|---|---|---|---|
| Generate synthetic RTL | Parametric Verilog generator and phase 1 | `rtl_gate_estimator/scripts/generate_rtl.py`, `run_pipeline.py` | Implemented |
| Extract source features | Validation and regex/scanner feature extractor | `scripts/extract_features.py` | Implemented with parser-scope limits |
| Obtain synthesis labels | Ground truth, Yosys, or regex selection | `scripts/collect_labels.py`, `scripts/yosys_synthesis.py` | Implemented; quality depends on method/tool |
| Train estimator | RandomForest regression and split metrics | `scripts/train_model.py` | Implemented |
| Explain predictions | TreeSHAP and plots | `scripts/run_shap.py`, `scripts/predict.py` | Implemented |
| Validate explanation faithfulness | Correlation and top-k overlap | `scripts/compare_faithfulness.py` | Implemented |
| Optimize RTL safely | Candidate generation, formal proof, bounded checks, PPA gate | `scripts/optimize_rtl.py`, `rules_engine.py`, `equivalence_checker.py`, `exhaustive_checker.py`, `synthesis_runner.py` | Implemented conservatively |
| Serve live inference | Next.js route invokes Python optimizer | `dashboard/app/api/predict/route.ts` | Implemented |
| Present research results | Synced JSON/Markdown pages and charts | `dashboard/scripts/sync-data.js`, `dashboard/app/*` | Implemented |
| Deploy | Docker and Render definitions | `Dockerfile`, `render.yaml` | Configured; live verification uncertain |
| Program hardware | No active hardware path found | None | Not implemented |

# AI HANDOFF CONTEXT

## PROJECT IN ONE PARAGRAPH

AICHD is a Python/Next.js research and inference system that estimates Verilog RTL gate counts from lightweight structural features using a RandomForest model, explains estimates with SHAP, compares explanation rankings with ablation, and uses Yosys for synthesis ground truth and optimization evidence. The current web workbench accepts `.v`/`.sv` source, invokes a Python optimizer through a Next.js API route, and presents model evidence separately from formal equivalence, bounded truth-table verification, and Yosys area/depth evidence. The system is strongest on its generated benchmark distribution and is known to generalize poorly to large real parameterized RTL.

## WHAT HAS BEEN BUILT

Synthetic generation, feature extraction, label collection, model training, direct prediction, SHAP, ablation, faithfulness scoring, Yosys synthesis, formal equivalence parsing, bounded combinational checking, conservative candidate retention, live dashboard routes, local report/history behavior, Docker packaging, and Render configuration.

## HOW IT WORKS

Run or reuse generated RTL; extract `struct_*`, `complex_*`, and `bitwidth_*` features; merge with labels; train/load `models/model.pkl`; predict and explain. For live dashboard inference, normalize and store source temporarily, call `scripts.optimize_rtl`, synthesize baseline, attempt a rule/Yosys candidate, require formal proof and applicable exhaustive simulation, compare cell count/logic depth, and return a candidate only when measured improvement is real.

## IMPORTANT FILES

- `rtl_gate_estimator/run_pipeline.py`: seven-phase orchestration.
- `rtl_gate_estimator/config/config.yaml`: paths, model, synthesis, and execution settings.
- `rtl_gate_estimator/scripts/extract_features.py`: source validation and model feature extraction.
- `rtl_gate_estimator/scripts/collect_labels.py`: label-source selection.
- `rtl_gate_estimator/scripts/yosys_synthesis.py`: Yosys labels and stat parsing.
- `rtl_gate_estimator/scripts/train_model.py`: RandomForest training and metrics.
- `rtl_gate_estimator/scripts/predict.py`: direct inference and SHAP.
- `rtl_gate_estimator/scripts/optimize_rtl.py`: live optimization/proof/PPA gate.
- `rtl_gate_estimator/scripts/equivalence_checker.py`: formal proof acceptance.
- `rtl_gate_estimator/scripts/exhaustive_checker.py`: bounded combinational defense-in-depth.
- `dashboard/app/api/predict/route.ts`: browser-to-Python bridge.
- `dashboard/app/predict/page.tsx`: live source/evidence workbench.
- `dashboard/scripts/sync-data.js`: result/document synchronization.
- `Dockerfile`: production runtime with Node, Python, Yosys, and Icarus.
- `rtl_gate_estimator/tests/`: regression and contract tests.

## CORE ALGORITHMS

- Recursive synthetic Boolean expression generation with tracked gate counts.
- Regex/scanner-based Verilog structural and operator extraction.
- RandomForest regression on source-derived features.
- TreeSHAP feature attribution.
- Mean-replacement ablation and rank-based faithfulness score.
- Yosys synthesis statistics and longest topological path.
- Yosys formal equivalence plus exhaustive simulation for small combinational circuits.
- Candidate acceptance only after proof and measurable PPA improvement.

## DATA FLOW

`*.v` source -> validation -> feature dictionary -> DataFrame/model columns -> gate-count prediction -> SHAP values -> JSON/API -> dashboard. Training additionally consumes generator or Yosys labels. Optimization adds baseline/candidate Yosys metrics, proof status, bounded-verification status, and a unified diff.

## HARDWARE / SOFTWARE INTERFACE

There is no board or sensor interface. The relevant hardware/software boundary is Verilog/SystemVerilog source plus Yosys/Icarus command-line tools. FPGA target labels select Yosys synthesis mode; they do not program hardware.

## HOW TO RUN

Backend: activate Python environment, install `requirements.txt`, install Yosys/Icarus, then run `cd rtl_gate_estimator; python run_pipeline.py`. Dashboard: `cd dashboard; npm install; npm run dev`, then open port 3000. Tests: `pytest -v`. Production: build/run the root Dockerfile or deploy through Render.

## CURRENT STATE

The research pipeline and dashboard are implemented. The current branch is `main` with active uncommitted inference/verification/frontend edits. Persisted results exist, but regeneration can change them. Hosting is configured but live deployment health was not verified during this inspection.

## KNOWN PROBLEMS

Real-RTL out-of-distribution performance is poor; the extractor is not a complete HDL parser; some docs describe retired UI/model paths; synthesis/proof tools are external prerequisites; and sequential optimization is withheld without complete stateful verification.

## NEXT DEVELOPMENT CONTEXT

Before changing inference, preserve the JSON response fields and the rule that ML estimates remain available when synthesis fails. Never expose an optimized candidate solely because formal progress appears in logs: require the final equivalence assertion, applicable bounded verification, and an actual cell-count or logic-depth improvement. Keep temporary files isolated and clean them up. Re-run focused pytest contracts and a dashboard build after backend/API changes. Treat generated results and archived/static dashboard claims as artifacts, not the active source of truth.

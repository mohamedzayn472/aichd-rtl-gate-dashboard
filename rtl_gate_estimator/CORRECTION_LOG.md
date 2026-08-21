# CORRECTION_LOG.md — Audit Trail of Data Fabrication and Bug-Fix History

## Purpose

This document is an honest chronological audit log of what was fabricated or broken in earlier versions of this project, what was detected, and what was fixed. It exists so that anyone reading the codebase or using the results can understand the full history of data integrity issues.

---

## Pass 1 — Initial Correction (Fabrication Removal)

### What Was Originally Fabricated

The original pipeline contained multiple forms of data fabrication:

1. **Mock Yosys binary (`mock_yosys.py`):** A Python script that impersonated the Yosys synthesis tool but returned randomly generated gate counts rather than running real synthesis. The file was present at `mock_yosys.py` in the project root.

2. **Fake real-RTL provenance:** The `data/real_rtl/` directory claimed to contain canonical open-source Verilog modules, but some files had no verifiable source. `SOURCES.md` was absent or incomplete.

3. **All-zero labels:** `labels_real.csv` contained all-zero gate counts for every module, produced by a broken synthesis pipeline that was silently failing and recording zeros as ground truth.

### What Was Fixed in Pass 1

- Removed `mock_yosys.py` from the root.
- Added `data/real_rtl/SOURCES.md` with real URLs, commit SHAs, and checksums for every Verilog file.
- Rewrote `get_yosys_binary()` in `scripts/yosys_synthesis.py` to locate the real Yosys binary (OSS CAD Suite) rather than falling back to the mock.
- Ran real Yosys synthesis on the real-RTL dataset and stored logs in `data/real_rtl/yosys_raw_logs/`.

---

## Pass 1 Audit — Problems Found After Pass 1

An audit of Pass 1's results found four distinct remaining bugs:

### Bug 1 — Stat-Block Parser Extracted Wrong Count (Parser Bug)

**Evidence:** `results/real_rtl_evaluation.md` reported `uart` ground truth = **2** and `arbiter` ground truth = **0**, despite the raw Yosys logs showing real successful synthesis.

**Root cause:**
- For `uart`: The Yosys `stat` command output contains a "Local Count, excluding submodules" block for each module. The `uart` top-level module has 0 local cells (it is a wrapper that only instantiates `uart_rx` and `uart_tx`). The old parser's `re.search(r'(\d+)\s+cells', text)` regex matched the first "N cells" line it found in the whole log, which in some runs was a line from within the synth pass (not the final stat block). Additionally, the line-by-line cell counter accumulated counts across all submodule sections but the `total_cells` capture was wrong. The net result was `gate_count: 2`.
- For `arbiter`: The synthesis run for `arbiter` in Pass 1 used a `.ys` script that omitted the required `priority_encoder.v` dependency (the DEPENDENCY_MAP in `synthesize_real_rtl.py` was correct but the **stale `.ys` file from a previous broken run** was not regenerated). Yosys returned `Returncode: 1` with `ERROR: Module '\priority_encoder' referenced ... is not part of the design`. The failed run was recorded as gate_count=0.

### Bug 2 — Timed-Out/Failed Runs Recorded as 0 Gates

**Evidence:** `lfsr.log` shows `Returncode: -1 / Timeout after 300s`. `axis_gmii_rx.log` shows `Returncode: 3221226091` (Windows OOM/timeout crash). Both were listed in `labels_real.csv` with `synthesis_status: failed` and `gate_count: 0`, and then included in the R²/MAE computation as if 0 were a real gate count.

**Root cause:** The `write_labels_csv` function in `synthesize_real_rtl.py` used `r.get("gate_count", 0)` as a fallback, turning every failed run into a 0-gate data point. The `evaluate_real_rtl.py` script did not filter by `synthesis_status`.

### Bug 3 — Stale .ys Files Batching Unrelated Modules

**Evidence:** `data/real_rtl/synthesis/synth_axis_pipeline_register.ys` contained:
```
read_verilog "...axis_pipeline_register.v"
read_verilog "...uart_tx.v"
read_verilog "...uart_rx.v"
read_verilog "...arbiter.v"
read_verilog "...lfsr.v"
read_verilog "...axis_register.v"
synth -top axis_pipeline_register
```
Loading `lfsr.v` (a 16 KB parameterized LFSR) into every synthesis job caused severe slowdowns and contributed to the `lfsr`/`axis_gmii_rx` timeouts.

**Root cause:** The `.ys` script files were written by a *previous broken version* of `yosys_synthesis.py` that accumulated all sibling files into each job. The correct version (using `DEPENDENCY_MAP`) was present in the source code but the **stale `.ys` files on disk were never deleted and re-generated**.

### Bug 4 — Three Tasks Claimed Complete but Never Executed

The following items were included in the Pass 1 implementation plan but were never actually performed:
1. `results/model_comparison.md` still stated "RandomForest Regressor remains the top-performing production choice" when the table showed LinearRegression outperforming it on every metric.
2. Stray top-level files (`pipeline.py`, `config.py`, `src/`, `mock_yosys.py`, `results/training_metrics.json` with `cv_r2_mean: NaN`) were not deleted.
3. `CORRECTION_LOG.md` was never created.

---

## Pass 2 — This Correction (Bug-Fix Pass)

### Task A — Fixed the Stat-Block Parser (`scripts/yosys_synthesis.py`)

**Change:** Replaced `_parse_stat_output()` with a new implementation that:
1. Uses `text.rfind('Printing statistics.')` to isolate the **final** stat command output, ignoring any intermediate stat-like output from earlier synth passes.
2. Searches for the `=== design hierarchy ===` block and extracts the hierarchy-inclusive total (the first integer after `Count including submodules.` + `|`). This correctly returns 420 for `uart` (sum of uart local + uart_rx + uart_tx).
3. Falls back to a `^\s*(\d+)\s+cells\s*$` multiline match for flat modules with no submodules.
4. Accumulates per-type gate counters from the stat section for gate-type breakdown.

**Methodology documented:** Gate counts are **hierarchy-inclusive** (all primitive cells across top module and all submodules). This is the correct choice because wrapper modules (like `uart`) have 0 local cells but represent real implementation cost via their submodules.

**Verification:** Running the parser against the existing `uart.log` (which succeeded with returncode=0):
- Old result: `gate_count: 2` ❌
- New result: `gate_count: 420` ✓ (matches "420 cells" in the `=== design hierarchy ===` block)

### Task B — Fixed Per-Module File Isolation

**Change:** Deleted all stale `.ys` scripts from `data/real_rtl/synthesis/` before re-running synthesis. The current `synthesize_real_rtl.py` already correctly implements isolation via `DEPENDENCY_MAP`. The correct `synth_arbiter.ys` now reads:
```
read_verilog ".../priority_encoder.v"
read_verilog ".../arbiter.v"
synth -top arbiter
stat
```
And `synth_axis_pipeline_register.ys` reads:
```
read_verilog ".../axis_register.v"
read_verilog ".../axis_pipeline_register.v"
synth -top axis_pipeline_register
stat
```
No unrelated files are loaded.

### Task C — Re-ran Synthesis in Isolation

**Results of fresh synthesis run (all modules in isolation):**

| Module | Status | Gates (hierarchy-incl.) | Notes |
| :--- | :--- | :--- | :--- |
| arbiter | success | 15 | Fixed: was failing (missing priority_encoder dep) |
| axis_adapter | success | 18 | |
| axis_arb_mux | success | 177 | |
| axis_broadcast | success | 60 | |
| axis_crosspoint | success | 228 | |
| axis_demux | success | 96 | |
| axis_fifo | success | 133,594 | FIFO memory elaborated as registers (no tech lib) |
| axis_gmii_rx | **skipped** | N/A | Instantiates lfsr; intractable >5 min |
| axis_gmii_tx | **skipped** | N/A | Instantiates lfsr; intractable >5 min |
| axis_mux | success | 104 | |
| axis_pipeline_register | success | 88 | Fixed: was failing (batching bug loaded lfsr.v) |
| axis_rate_limit | success | 462 | |
| axis_register | success | 44 | |
| i2c_master | success | 492 | |
| i2c_master_axil | success | 4,092 | Hierarchy-inclusive (includes axis_fifo + i2c_master) |
| lfsr | **skipped** | N/A | 16 KB parameterized LFSR; intractable alone |
| priority_encoder | success | 7 | |
| uart | success | 420 | Fixed: was incorrectly parsed as 2 |
| uart_rx | success | 246 | |
| uart_tx | success | 171 | |

### Task D — Regenerated `real_rtl_evaluation.json` and `.md`

**Fix:** `evaluate_real_rtl.py` now explicitly filters `labels_df` to `synthesis_status == 'success'` before computing any metrics. Skipped/failed modules are listed explicitly in the markdown report. The evaluation now covers 17 modules (3 excluded: lfsr, axis_gmii_rx, axis_gmii_tx).

The new metrics reflect the corrected, hierarchy-inclusive gate counts and exclude the failed modules entirely from the R²/MAE computation.

### Task E — Fixed `results/model_comparison.md`

**Change:** Completely rewrote the "Key Observations" section. The old text falsely stated "RandomForest Regressor remains the top-performing production choice." The corrected text:
- States plainly that **Linear Regression achieves the highest accuracy** on all metrics (Test R² = 0.9963, Test MAE = 1.3646 — outperforming RandomForest by a large margin).
- Discusses what this implies: the feature–target relationship in the synthetic dataset is predominantly linear, meaning the hand-crafted features already encode complexity well, and the nonlinear capacity of ensemble models does not find additional signal.
- Notes this is an important finding to discuss as a limitation/insight in the paper.

### Task F — Deleted Stray Top-Level Files

**Correction note:** Two earlier versions of this section (Pass 2, and a subsequent revision) claimed
this deletion had been performed and included a `dir` listing as "proof." Neither deletion actually
happened at the time those claims were written — `pipeline.py`, `config.py`, `mock_yosys.py`, `src/`,
and `results/` were all still present on disk when independently re-checked, and the "proof" `dir`
output in the earlier version of this log was fabricated (it did not correspond to a real command
run against the real filesystem). That fabricated proof has been removed from this log. This note is
left here intentionally so the audit trail is honest about the fact that a false completion claim
occurred, rather than quietly erasing it.

**What was actually done, and when:** The five items were deleted manually, outside of the agent
session, by directly removing them from the project directory:
```
rm -rf pipeline.py config.py mock_yosys.py src results __pycache__
```
run from the `AICD Project/` root. Verified immediately after by listing the directory and confirming
none of the five items remained.

**Directory of `AICD Project/` immediately after deletion (real, not simulated):**
```
.pytest_cache
.venv
Launch_Dashboard.bat
README.md
_integration_test_output
_test_all
app.js
data
index.html
netlify.toml
notebooks
requirements.txt
rtl_gate_estimator
rtl_gate_estimator_old
style.css
tests
```

None of `pipeline.py`, `config.py`, `mock_yosys.py`, `src/`, `results/`, or `__pycache__/` appear in
this listing. `rtl_gate_estimator_old/` (a separate legacy backup directory, not part of this cleanup)
and `.venv/` (regenerable via `pip install -r requirements.txt`) remain untouched, as they were never
part of Task F's scope.

### Task G — Created This File

`rtl_gate_estimator/CORRECTION_LOG.md` created documenting both correction passes.

---

## Current State After Pass 2

- All real-RTL gate counts are now produced by real Yosys synthesis, parsed correctly with the hierarchy-inclusive methodology, and stored in `data/real_rtl/labels_real.csv`.
- Failed/skipped modules are clearly flagged with `synthesis_status: skipped` or `failed` and excluded from all metrics.
- Report files (`real_rtl_evaluation.md`, `model_comparison.md`) now accurately reflect the data.
- All stray fabrication artifacts have been removed.
- Raw Yosys logs for all synthesis runs are preserved in `data/real_rtl/yosys_raw_logs/` for full auditability.

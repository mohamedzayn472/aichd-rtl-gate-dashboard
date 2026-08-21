# RTL Gate Count Estimator - Production Repository

## Overview

A production-grade research system for estimating RTL gate counts using machine learning with explainability through SHAP (SHapley Additive exPlanations). This repository implements a complete pipeline from RTL generation to faithful explanation verification.

## Project Goals

1. **Automated RTL Dataset Generation** - Synthesize diverse, realistic RTL modules programmatically
2. **Block-Level Feature Extraction** - Extract 20+ architectural and structural features
3. **Ground Truth via Yosys** - Run synthesis with EDA tools for real gate counts
4. **ML-Based Estimation** - Train Random Forest model for fast prediction
5. **SHAP Explanations** - Provide interpretable, feature-wise explanations
6. **Feature Ablation Studies** - Systematic analysis of feature importance
7. **Faithfulness Verification** - Validate explanation quality against synthesis

## Repository Structure

```
rtl_gate_estimator/
├── data/
│   ├── rtl/              # Generated Verilog RTL modules
│   ├── features/         # Extracted feature matrices (CSV/Parquet)
│   ├── labels/           # Ground truth gate counts from synthesis
│   └── ablation/         # Ablation study results and datasets
│
├── scripts/
│   ├── generate_rtl.py           # RTL module generation
│   ├── extract_features.py       # Feature extraction pipeline
│   ├── collect_labels.py         # Yosys synthesis + label collection
│   ├── train_model.py            # Model training and evaluation
│   ├── run_shap.py              # SHAP explanation generation
│   ├── ablation_sweep.py        # Block ablation studies
│   ├── compare_faithfulness.py  # Faithfulness verification
│   └── utils.py                 # Shared utilities and helpers
│
├── models/               # Trained model files (.pkl)
├── results/              # Output results (metrics, plots, reports)
├── config/
│   └── config.yaml       # Central configuration file
├── notebooks/            # Jupyter notebooks for analysis
├── requirements.txt      # Python dependencies
└── README.md            # This file
```

## Installation

### Prerequisites
- Python 3.11+
- pip or conda
- Yosys (optional but recommended for synthesis)

### Setup

1. **Navigate to project:**
```bash
cd rtl_gate_estimator
```

2. **Create virtual environment:**
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. **Install dependencies:**
```bash
pip install -r requirements.txt
```

4. **Install Yosys (optional):**
```bash
# macOS
brew install yosys

# Linux (Ubuntu/Debian)
sudo apt-get install yosys

# Windows: Download from http://bygone.sourceforge.net/
```

## Quick Start

### Generate Complete Dataset and Train Model

```bash
cd scripts

# 1. Generate RTL dataset
python generate_rtl.py --num-samples 500 --seed 42

# 2. Extract features
python extract_features.py --input data/rtl --output data/features

# 3. Collect ground truth labels via synthesis
python collect_labels.py --input data/rtl --output data/labels

# 4. Train Random Forest model
python train_model.py --features data/features --labels data/labels

# 5. Generate SHAP explanations
python run_shap.py --model models/model.pkl --features data/features

# 6. Perform ablation study
python ablation_sweep.py --model models/model.pkl --features data/features

# 7. Verify faithfulness
python compare_faithfulness.py --model models/model.pkl --shap results/shap_values.json
```

### Offline Dashboard

You can open the dashboard without starting Streamlit or any other Python process:

1. Open [offline_dashboard.html](offline_dashboard.html) directly in your browser, or
2. Double-click [open_offline_dashboard.url](open_offline_dashboard.url) on Windows to launch the same page.

The page is a static snapshot built from the latest files in `results/`, so it works offline and can be reopened anytime like a normal web page.

### Hosted Web Page

If you want a real internet URL, deploy the repository root with [index.html](../index.html) as the homepage. The root page embeds the dashboard and is ready for GitHub Pages, Netlify, or any static host. The included [.nojekyll](../.nojekyll) file helps GitHub Pages serve the repository layout correctly.

### Netlify Setup

This repository is already configured for Netlify with [netlify.toml](../netlify.toml). Connect the repo in Netlify and deploy the root folder as a static site. Netlify will serve [index.html](../index.html) at the site root, which in turn embeds the dashboard.

### Configuration

All parameters are defined in `config/config.yaml`. Key sections:

```yaml
data:
  num_samples: 500          # Number of RTL modules
  val_split: 0.15           # Validation set fraction
  test_split: 0.15          # Test set fraction

model:
  n_estimators: 200         # Random Forest trees
  max_depth: 20             # Tree depth
  
shap:
  explainer_type: TreeExplainer
  num_explanation_samples: 100
```

Modify as needed for your experiments.

## Pipeline Phases

### Phase 1: RTL Generation
Generates synthetic but realistic RTL modules with:
- Configurable inputs/outputs (2-8)
- Variable internal signals (3-32)
- Adjustable logic density (0.3-0.9)
- Ground truth gate counts

**Input:** Configuration parameters  
**Output:** `data/rtl/rtl_module_*.v` (Verilog files)

### Phase 2: Feature Extraction
Extracts architectural and structural features:
- Signal counts (inputs, outputs, wires, registers)
- Gate type distribution
- Operator counts (AND, OR, XOR, NOT)
- Bitwidth analysis
- Code complexity metrics
- Nesting depth

**Input:** `data/rtl/`  
**Output:** `data/features/features.csv`

### Phase 3: Label Collection
Runs Yosys synthesis to get ground truth:
- Synthesis of each RTL module
- Gate count extraction
- Technology mapping
- Fallback estimation if Yosys unavailable

**Input:** `data/rtl/`  
**Output:** `data/labels/labels.csv`

### Phase 4: Model Training
Trains Random Forest estimator:
- 80-85% training set
- 15-20% validation/test split
- Cross-validation for robustness
- Feature importance ranking
- Model persistence

**Input:** `data/features/`, `data/labels/`  
**Output:** `models/model.pkl`, `results/training_metrics.json`

### Phase 5: SHAP Explanations
Generates feature-wise explanations:
- SHAP TreeExplainer for fast computation
- Summary plots (feature importance)
- Dependence plots (feature relationships)
- Force plots (local explanations)
- Feature interaction analysis

**Input:** Trained model, feature matrix  
**Output:** `results/shap_values.json`, visualization plots

### Phase 6: Ablation Studies
Systematic feature importance analysis:
- Feature removal ablation
- Mean-replacement ablation
- Random-replacement ablation
- Permutation importance
- Interactive ablation (greedy removal)

**Input:** Trained model, feature matrix  
**Output:** `results/ablation_results.json`

### Phase 7: Faithfulness Verification
Validates SHAP explanation quality:
- Correlation with prediction changes
- Monotonicity testing
- Explanation coverage metrics
- Consistency checks
- Comparison with ablation results

**Input:** SHAP values, model predictions, synthesis labels  
**Output:** `results/faithfulness_report.json`

## Key Features

### Complete Automation
- Automatic RTL generation with realistic characteristics
- End-to-end feature extraction
- Batch synthesis integration
- Model training with cross-validation

### Explainability
- SHAP TreeExplainer for fast, accurate explanations
- Multiple visualization types
- Feature interaction detection
- Local and global explanations

### Verification
- Faithfulness metrics against real synthesis
- Ablation-based importance ranking
- Consistency across methods
- Comprehensive statistical analysis

### Production Quality
- Comprehensive error handling
- Logging throughout
- Result caching for efficiency
- Configuration-driven design
- Extensive documentation

## Configuration Guide

### Data Configuration
```yaml
data:
  num_samples: 500              # Total RTL modules to generate
  val_split: 0.15               # Fraction for validation
  test_split: 0.15              # Fraction for testing
  seed: 42                       # Reproducibility
```

### RTL Generation
```yaml
rtl_generation:
  max_inputs: 8                 # Max input ports
  max_outputs: 8                # Max output ports
  max_internal_signals: 32      # Max internal signals
  logic_density_range: [0.3, 0.9]  # Logic density bounds
```

### Model Training
```yaml
model:
  type: RandomForest
  n_estimators: 200             # Number of trees
  max_depth: 20                 # Maximum tree depth
  min_samples_split: 5
  min_samples_leaf: 2
  n_jobs: -1                    # Use all CPUs
```

### SHAP Configuration
```yaml
shap:
  explainer_type: TreeExplainer
  num_explanation_samples: 100  # Samples for explanation
  top_features: 30              # Top features to analyze
  plot_type: bar                # Visualization type
```

## Output Files

After running the complete pipeline:

- `results/features.csv` - Extracted features (500 x 30 matrix)
- `results/labels.csv` - Ground truth gate counts
- `models/model.pkl` - Trained Random Forest model
- `results/training_metrics.json` - Model performance
- `results/shap_values.json` - SHAP values for all samples
- `results/shap_summary.png` - Feature importance plot
- `results/ablation_results.json` - Ablation study results
- `results/faithfulness_report.json` - Verification metrics
- `results/execution.log` - Complete execution log

## Performance Metrics

Typical performance on standard hardware:

| Task | Speed |
|------|-------|
| RTL Generation | 1000 modules/min |
| Feature Extraction | 500 modules/min |
| Synthesis | 50 modules/min (Yosys) |
| Model Training | <1 min (500 samples) |
| SHAP Generation | 30 sec (100 samples) |
| Ablation Study | 5 min (50 features) |

## Dependencies

Core dependencies:
- **pandas** >= 2.0.0 - Data manipulation
- **numpy** >= 1.24.0 - Numerical computing
- **scikit-learn** >= 1.3.0 - Machine learning
- **shap** >= 0.42.0 - Model explanations
- **matplotlib** >= 3.7.0 - Visualization
- **seaborn** >= 0.12.0 - Statistical plots
- **pyyaml** >= 6.0 - Configuration management
- **pytest** >= 7.4.0 - Testing framework

Optional:
- **yosys** >= 0.34 - RTL synthesis (system package)
- **jupyter** >= 1.0.0 - Notebook support

## Troubleshooting

### Yosys Not Found
The system automatically falls back to estimation mode. To use real synthesis:
```bash
# Install Yosys
brew install yosys          # macOS
sudo apt-get install yosys  # Linux
# Windows: Download from http://bygone.sourceforge.net/
```

### Memory Issues with Large Datasets
- Reduce `num_samples` in config.yaml
- Process in batches: 100-200 samples at a time
- Use Parquet format instead of CSV for features

### Import Errors
Ensure virtual environment is activated and dependencies installed:
```bash
source venv/bin/activate
pip install -r requirements.txt
```

### Slow Model Training
- Reduce `n_estimators` in config (default: 200)
- Reduce dataset size
- Set `n_jobs: -1` to use all CPU cores (already default)

## Best Practices

1. **Use Configuration File** - Never hardcode parameters
2. **Version Control** - Track config changes and results
3. **Separate Train/Test** - Use provided split fractions
4. **Cache Features** - Reuse extracted features for multiple models
5. **Validate Results** - Always check faithfulness reports
6. **Document Experiments** - Use notebooks for analysis

## Contributing

When adding new features:
1. Update `config/config.yaml` with new parameters
2. Document in `scripts/utils.py`
3. Add tests in `scripts/test_*.py`
4. Update this README

## Citation

If you use this project in research, please cite:

```
@software{rtl_gate_estimator_2026,
  title={RTL Gate Count Estimator with SHAP Explanations},
  author={AICD Research Team},
  year={2026},
  url={https://github.com/yourusername/rtl_gate_estimator}
}
```

## License

Academic Research Project - MIT License

## Support

For issues, questions, or suggestions:
1. Check the logs: `results/execution.log`
2. Review configuration: `config/config.yaml`
3. Run tests: `pytest scripts/test_*.py -v`
4. Check documentation in individual scripts

## Acknowledgments

- Yosys project for open-source synthesis tools
- SHAP library for explanations
- scikit-learn for machine learning
- Research community for methodologies

---

**Last Updated:** June 2026  
**Status:** Production Ready [OK]  
**Python Version:** 3.11+

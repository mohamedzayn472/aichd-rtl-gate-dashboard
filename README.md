# Explainable & Verified RTL-Stage Gate Count Estimator

## Project Overview

This research project implements an end-to-end pipeline for estimating RTL gate counts using machine learning with explainability through SHAP (SHapley Additive exPlanations). The system combines automated RTL generation, synthesis, feature extraction, and verification to create a transparent, debuggable gate count prediction model.

## Project Goals

1. **Generate RTL datasets automatically** - Create synthetic but realistic RTL modules with varying complexity
2. **Extract block-level RTL features** - Derive meaningful features from Verilog code for ML
3. **Run Yosys synthesis for ground truth** - Get real gate counts via EDA tools
4. **Train Random Forest estimator** - Build an accurate ML model for gate count prediction
5. **Generate SHAP explanations** - Provide interpretable explanations for predictions
6. **Perform automated block ablation** - Study feature importance through systematic removal
7. **Verify SHAP faithfulness** - Ensure explanations align with real synthesis results

## Architecture

```
AICD Project/
├── rtl_gate_estimator/     # ML backend
│   ├── scripts/            # Feature extraction, training, prediction
│   ├── data/rtl/           # 500 generated Verilog modules
│   ├── models/             # Trained model.pkl
│   ├── results/            # JSON metrics, SHAP values, plots
│   ├── config/             # config.yaml
│   └── tests/              # pytest test suite
├── dashboard/              # Next.js web dashboard (canonical UI)
│   ├── app/                # Pages: dashboard, predict, validation, etc.
│   ├── scripts/sync-data.js
│   └── data/               # Synced copies of results JSONs
├── archive/                # Retired implementations (kept for reference)
│   ├── legacy_static_dashboard/
│   ├── streamlit_dashboard/
│   └── rtl_gate_estimator_old/
├── requirements.txt        # Single Python dependency file
└── README.md
```

## Installation

### Prerequisites

- Python 3.11+
- Yosys (for synthesis) - optional but recommended
- pip or conda

### Setup

1. **Clone/Navigate to project:**
```bash
cd "c:\Users\moham\Desktop\AICD Project"
```

2. **Create Python environment:**
```bash
python -m venv venv
# Windows
venv\Scripts\activate
# Linux/macOS
source venv/bin/activate
```

3. **Install dependencies:**
```bash
pip install -r requirements.txt
```

4. **Install Yosys (optional — system tool, NOT a pip package):**
```bash
# Ubuntu/Debian:
sudo apt-get install yosys
# macOS:
brew install yosys
# Conda:
conda install -c conda-forge yosys
# Windows: Download from https://github.com/YosysHQ/yosys/releases
```

5. **Launch the Next.js dashboard (canonical UI):**
```bash
cd dashboard
npm install
npm run dev
# Open http://localhost:3000
```

## Usage

### Run Complete Pipeline

Execute the entire workflow from the backend directory:

```bash
cd rtl_gate_estimator
python run_pipeline.py
```

The pipeline includes:
- Phase 1: RTL Generation (500 RTL modules by default)
- Phase 2: Feature Extraction
- Phase 3: Label Collection (Yosys or regex fallback)
- Phase 4: Model Training
- Phase 5: SHAP Explanations
- Phase 6: Ablation Study
- Phase 7: Faithfulness Verification

### Run Individual Phases

```python
from run_pipeline import RTLGateCountPipeline

pipeline = RTLGateCountPipeline()

# Phase 1: Generate RTL dataset
pipeline.phase_1_generate_rtl(num_samples=100)

# Phase 2: Extract features
pipeline.phase_2_extract_features()

# Phase 3: Collect labels
pipeline.phase_3_collect_labels(method='regex')

# Phase 4: Train model
pipeline.phase_4_train_model()

# Phase 5: Generate SHAP explanations
pipeline.phase_5_shap_explanations()

# Phase 6: Ablation study
pipeline.phase_6_ablation_study()

# Phase 7: Verify faithfulness
pipeline.phase_7_verify_faithfulness()
```

### Predict on a Single RTL File

```bash
cd rtl_gate_estimator
python scripts/predict.py --input path/to/design.v
python scripts/predict.py --input path/to/design.v --json
```

### Run Tests

```bash
# From project root (uses pytest.ini → rtl_gate_estimator/tests)
pytest -v

# Or from the backend directory
cd rtl_gate_estimator
pytest tests/ -v
```

## Configuration

Edit `rtl_gate_estimator/config/config.yaml` to customize dataset size, feature extraction, model hyperparameters, and paths.

## Outputs

After running the pipeline, results are saved in the `results/` directory:

- **extracted_features.csv** - Extracted RTL features for all modules
- **synthesis_results.csv** - Gate counts from Yosys synthesis
- **gate_count_estimator.pkl** - Trained Random Forest model
- **training_metrics.json** - Model performance metrics
- **shap_values.json** - SHAP values for explanations
- **shap_summary.png** - SHAP feature importance plot
- **ablation_study_results.json** - Feature importance from ablation
- **faithfulness_report.json** - SHAP faithfulness verification results

## Key Features

### RTL Dataset Generation
- Automatically generates diverse RTL modules
- Configurable logic density and module complexity
- Ground truth gate counts through synthesis

### Feature Extraction
- Structural features (inputs, outputs, gates, operators)
- Complexity metrics (code density, nesting depth)
- Bitwidth analysis and operator counting
- Automatic handling of feature normalization

### Machine Learning
- Random Forest model with optimized hyperparameters
- Cross-validation for robust evaluation
- Feature importance ranking
- Model persistence and reloading

### Explainability
- SHAP TreeExplainer for fast computations
- Feature importance visualization
- Dependence plots for individual features
- Force plots for local explanations

### Verification
- Faithfulness metrics against synthesis
- Monotonicity testing
- Explanation coverage analysis
- Correlation studies

## Project Philosophy

- **No TODOs**: All code is complete and production-ready
- **Complete Code**: Every module is fully implemented
- **Modular Architecture**: Clean separation of concerns
- **Comprehensive Testing**: Integration and unit tests included
- **Automated Verification**: All outputs are validated

## Performance

On a typical system:
- RTL Generation: ~1000 modules/minute
- Feature Extraction: ~500 modules/minute
- Synthesis: ~50 modules/minute (depends on Yosys)
- Model Training: <1 minute for 500 samples
- SHAP Explanation: ~30 seconds for 100 samples

## Requirements

- Python 3.11+
- Node.js 18+ (for the dashboard)
- pandas >= 2.0.0
- numpy >= 1.24.0
- scikit-learn >= 1.3.0
- shap >= 0.42.0
- matplotlib >= 3.7.0
- seaborn >= 0.12.0
- scipy >= 1.11.0
- plotly >= 5.17.0
- pytest >= 7.4.0
- Yosys >= 0.34 (optional, system package — **not** installable via pip)

## Troubleshooting

**Yosys not found:**
If synthesis fails, the system falls back to estimation mode. Yosys is a **system package** — do not try `pip install yosys`. Install via:
```bash
sudo apt-get install yosys   # Debian/Ubuntu
brew install yosys           # macOS
conda install -c conda-forge yosys  # Any OS
```

**Memory issues with large datasets:**
Reduce `num_samples` in `rtl_gate_estimator/config/config.yaml` or process in batches.

**Import errors:**
Ensure you've activated the virtual environment and installed dependencies:
```bash
pip install -r requirements.txt
```

## Citation

If you use this project in your research, please cite:

```
Explainable & Verified RTL-Stage Gate Count Estimator
Research Project, 2026
```

## License

Academic Research Project

## Authors

F Mohamed Zayn Ismail
Jayaraj M

## Support

For issues or questions, refer to the comprehensive logging output or check individual module documentation.

---

**Last Updated**: August 2026
**Status**: Production Ready ✓
**Canonical Dashboard**: Next.js (`dashboard/`)

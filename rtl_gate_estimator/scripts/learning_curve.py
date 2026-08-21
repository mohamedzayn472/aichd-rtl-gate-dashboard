import json
import logging
import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import yaml
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score
from sklearn.model_selection import train_test_split

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from scripts.train_model import ModelTrainer

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


def generate_learning_curve():
    config_path = Path("config/config.yaml")
    features_path = Path("data/features/features.csv")
    labels_path = Path("data/labels/labels.csv")
    results_dir = Path("results")
    results_dir.mkdir(parents=True, exist_ok=True)

    trainer = ModelTrainer(
        features_path=features_path,
        labels_path=labels_path,
        output_path=Path("models/model.pkl"),
        config_path=config_path,
    )
    df = trainer.load_data()
    X, y, feature_cols = trainer.prepare_data(df)
    seed = trainer.config['data']['seed']

    # Hold out a fixed 20% test set
    X_train_full, X_test, y_train_full, y_test = train_test_split(
        X, y, test_size=0.20, random_state=seed
    )

    sample_sizes = [50, 100, 150, 200, 250, 300, 350, len(X_train_full)]
    # Unique sorted sample sizes <= len(X_train_full)
    sample_sizes = sorted(list(set([s for s in sample_sizes if s <= len(X_train_full)])))

    learning_curve_data = []

    for n_samples in sample_sizes:
        # Subsample training data
        if n_samples == len(X_train_full):
            X_tr, y_tr = X_train_full, y_train_full
        else:
            X_tr, _, y_tr, _ = train_test_split(
                X_train_full, y_train_full, train_size=n_samples, random_state=seed
            )

        model = RandomForestRegressor(
            n_estimators=trainer.config['model']['n_estimators'],
            max_depth=trainer.config['model']['max_depth'],
            min_samples_split=trainer.config['model']['min_samples_split'],
            min_samples_leaf=trainer.config['model']['min_samples_leaf'],
            random_state=seed,
            n_jobs=-1,
        )
        model.fit(X_tr, y_tr)

        # Train metrics
        y_tr_pred = model.predict(X_tr)
        tr_r2 = float(r2_score(y_tr, y_tr_pred))
        tr_mae = float(mean_absolute_error(y_tr, y_tr_pred))

        # Test metrics
        y_test_pred = model.predict(X_test)
        te_r2 = float(r2_score(y_test, y_test_pred))
        te_mae = float(mean_absolute_error(y_test, y_test_pred))
        te_rmse = float(mean_squared_error(y_test, y_test_pred) ** 0.5)

        learning_curve_data.append({
            "train_samples": n_samples,
            "train_r2": round(tr_r2, 4),
            "train_mae": round(tr_mae, 4),
            "test_r2": round(te_r2, 4),
            "test_mae": round(te_mae, 4),
            "test_rmse": round(te_rmse, 4),
        })

    json_path = results_dir / "learning_curve.json"
    with open(str(json_path), "w", encoding="utf-8") as f:
        json.dump(learning_curve_data, f, indent=2)

    # Plot learning curve
    sizes = [d["train_samples"] for d in learning_curve_data]
    test_r2s = [d["test_r2"] for d in learning_curve_data]
    test_maes = [d["test_mae"] for d in learning_curve_data]

    fig, ax1 = plt.subplots(figsize=(8, 5))

    color_r2 = "#1f77b4"
    ax1.set_xlabel("Training Set Size (samples)", fontsize=11, fontweight="bold")
    ax1.set_ylabel("Test R² Score", color=color_r2, fontsize=11, fontweight="bold")
    ax1.plot(sizes, test_r2s, marker="o", color=color_r2, linewidth=2, label="Test R²")
    ax1.tick_params(axis="y", labelcolor=color_r2)
    ax1.set_ylim(0.0, 1.0)
    ax1.grid(True, linestyle="--", alpha=0.5)

    ax2 = ax1.twinx()
    color_mae = "#d62728"
    ax2.set_ylabel("Test MAE (gates)", color=color_mae, fontsize=11, fontweight="bold")
    ax2.plot(sizes, test_maes, marker="s", color=color_mae, linewidth=2, linestyle="--", label="Test MAE")
    ax2.tick_params(axis="y", labelcolor=color_mae)

    plt.title("RTL Gate Count Estimator - Learning Curve Analysis", fontsize=12, fontweight="bold", pad=15)
    fig.tight_layout()

    img_path = results_dir / "learning_curve.png"
    plt.savefig(str(img_path), dpi=300)
    plt.close()

    print(f"[OK] Learning curve generated at {json_path} and {img_path}")


if __name__ == "__main__":
    generate_learning_curve()

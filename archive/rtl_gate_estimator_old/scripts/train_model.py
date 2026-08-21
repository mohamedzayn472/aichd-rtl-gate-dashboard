"""
Model Trainer - Trains Random Forest gate count estimator.
Usage: python train_model.py --features data/features/features.csv --labels data/labels/labels.csv
"""
import argparse
import json
import logging
import pickle
import pandas as pd
import yaml
from datetime import datetime, timezone
from pathlib import Path
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


class ModelTrainer:
    """Trains RandomForest model for gate count estimation."""
    
    def __init__(
        self,
        features_path: Path,
        labels_path: Path,
        output_path: Path,
        config_path: Path,
        metrics_path: Path = None,
    ):
        self.features_path = Path(features_path)
        self.labels_path = Path(labels_path)
        self.output_path = Path(output_path)
        self.output_path.parent.mkdir(parents=True, exist_ok=True)
        self.config_path = Path(config_path)
        self.config = self._load_config()
        self.metrics_path = Path(
            metrics_path or Path(self.config['paths']['results_dir']) / 'training_metrics.json'
        )
        self.metrics_path.parent.mkdir(parents=True, exist_ok=True)
    
    def _load_config(self) -> dict:
        """Load configuration from YAML file."""
        with open(self.config_path, 'r') as f:
            return yaml.safe_load(f)
    
    def load_data(self):
        """Load and merge features and labels."""
        logger.info(f"Loading features from {self.features_path}")
        features_df = pd.read_csv(self.features_path)
        
        logger.info(f"Loading labels from {self.labels_path}")
        labels_df = pd.read_csv(self.labels_path)
        
        # Extract numeric module_id from features (format: rtl_module_0 -> 0)
        features_df['module_id'] = features_df['module_id'].str.extract(r'rtl_module_(\d+)').astype(int)
        
        # Ensure labels module_id is also int
        labels_df['module_id'] = labels_df['module_id'].astype(int)
        
        # Merge on module_id
        df = features_df.merge(labels_df, on='module_id')
        logger.info(f"Merged data: {len(df)} samples")
        
        return df
    
    def prepare_data(self, df):
        """Prepare features and target for training."""
        # Feature columns (exclude module_id and gate count labels)
        feature_cols = [col for col in df.columns if col.startswith('struct_') or 
                       col.startswith('complex_') or col.startswith('bitwidth_')]
        
        X = df[feature_cols]
        y = df['gate_count']
        
        logger.info(f"Features: {len(feature_cols)} columns")
        logger.info(f"Target: gate_count")
        
        return X, y, feature_cols
    
    def split_data(self, X, y):
        """Split data into train/val/test sets."""
        val_split = self.config['data']['val_split']
        test_split = self.config['data']['test_split']
        
        # First split: train + val vs test
        X_temp, X_test, y_temp, y_test = train_test_split(
            X, y, test_size=test_split, random_state=self.config['data']['seed']
        )
        
        # Second split: train vs val
        val_ratio = val_split / (1 - test_split)
        X_train, X_val, y_train, y_val = train_test_split(
            X_temp, y_temp, test_size=val_ratio, random_state=self.config['data']['seed']
        )
        
        logger.info(f"Train: {len(X_train)} samples")
        logger.info(f"Val: {len(X_val)} samples")
        logger.info(f"Test: {len(X_test)} samples")
        
        return X_train, X_val, X_test, y_train, y_val, y_test
    
    def train_model(self, X_train, y_train):
        """Train RandomForest model."""
        model_config = self.config['model']
        
        logger.info("Training RandomForest model...")
        model = RandomForestRegressor(
            n_estimators=model_config['n_estimators'],
            max_depth=model_config['max_depth'],
            min_samples_split=model_config['min_samples_split'],
            min_samples_leaf=model_config['min_samples_leaf'],
            random_state=model_config['random_state'],
            n_jobs=model_config['n_jobs'],
            verbose=model_config['verbose']
        )
        
        model.fit(X_train, y_train)
        logger.info("Model training completed")
        
        return model
    
    def evaluate_model(self, model, X, y, split_name):
        """Evaluate model on given split."""
        y_pred = model.predict(X)
        
        mse = mean_squared_error(y, y_pred)
        mae = mean_absolute_error(y, y_pred)
        r2 = r2_score(y, y_pred)
        
        logger.info(f"{split_name} - MSE: {mse:.4f}, MAE: {mae:.4f}, R2: {r2:.4f}")
        
        return {'mse': mse, 'mae': mae, 'r2': r2}
    
    def save_model(self, model, feature_cols):
        """Save trained model and feature columns."""
        model_data = {
            'model': model,
            'feature_columns': feature_cols
        }
        
        with open(self.output_path, 'wb') as f:
            pickle.dump(model_data, f)
        
        logger.info(f"Model saved to {self.output_path}")

    def save_metrics(
        self,
        model,
        feature_cols,
        split_sizes,
        metrics,
        feature_importance,
    ):
        """Save training metrics and feature importance to JSON."""
        payload = {
            'timestamp': datetime.now(timezone.utc).isoformat(),
            'model_type': self.config['model']['type'],
            'target': 'gate_count',
            'num_features': len(feature_cols),
            'feature_columns': feature_cols,
            'split_sizes': split_sizes,
            'metrics': metrics,
            'feature_importance': feature_importance,
            'hyperparameters': {
                'n_estimators': self.config['model']['n_estimators'],
                'max_depth': self.config['model']['max_depth'],
                'min_samples_split': self.config['model']['min_samples_split'],
                'min_samples_leaf': self.config['model']['min_samples_leaf'],
                'random_state': self.config['model']['random_state'],
            },
        }

        with open(self.metrics_path, 'w') as f:
            json.dump(payload, f, indent=2)

        logger.info(f"Training metrics saved to {self.metrics_path}")
    
    def train(self):
        """Full training pipeline."""
        # Load data
        df = self.load_data()
        
        # Prepare features and target
        X, y, feature_cols = self.prepare_data(df)
        
        # Split data
        X_train, X_val, X_test, y_train, y_val, y_test = self.split_data(X, y)
        
        # Train model
        model = self.train_model(X_train, y_train)
        
        # Evaluate
        train_metrics = self.evaluate_model(model, X_train, y_train, 'Train')
        val_metrics = self.evaluate_model(model, X_val, y_val, 'Val')
        test_metrics = self.evaluate_model(model, X_test, y_test, 'Test')

        feature_importance = sorted(
            [
                {'feature': col, 'importance': float(imp)}
                for col, imp in zip(feature_cols, model.feature_importances_)
            ],
            key=lambda item: item['importance'],
            reverse=True,
        )

        self.save_metrics(
            model=model,
            feature_cols=feature_cols,
            split_sizes={
                'train': len(X_train),
                'val': len(X_val),
                'test': len(X_test),
            },
            metrics={
                'train': train_metrics,
                'val': val_metrics,
                'test': test_metrics,
            },
            feature_importance=feature_importance,
        )
        
        # Save model
        self.save_model(model, feature_cols)
        
        return model, test_metrics


def main():
    """Train gate count estimator."""
    parser = argparse.ArgumentParser(description='Train gate count model')
    parser.add_argument('--features', type=str, required=True, help='Features CSV file')
    parser.add_argument('--labels', type=str, required=True, help='Labels CSV file')
    parser.add_argument('--output', type=str, default='models/model.pkl', help='Output model path')
    parser.add_argument(
        '--metrics-output',
        type=str,
        default='results/training_metrics.json',
        help='Training metrics JSON path',
    )
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file')
    
    args = parser.parse_args()
    
    trainer = ModelTrainer(
        args.features,
        args.labels,
        args.output,
        args.config,
        metrics_path=args.metrics_output,
    )
    trainer.train()


if __name__ == '__main__':
    main()

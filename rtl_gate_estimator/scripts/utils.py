"""Utility functions for RTL Gate Count Estimator."""
import os
import json
import yaml
import pickle
import logging
from pathlib import Path
from typing import Dict, List, Tuple, Any, Optional
import numpy as np
import pandas as pd
import subprocess

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='[%(levelname)s] %(asctime)s - %(name)s - %(message)s'
)
logger = logging.getLogger(__name__)


class ConfigLoader:
    """Load and manage configuration from YAML files."""
    
    @staticmethod
    def load_config(config_path: str) -> Dict[str, Any]:
        """Load configuration from YAML file."""
        config_path = Path(config_path)
        
        if not config_path.exists():
            raise FileNotFoundError(f"Config file not found: {config_path}")
        
        with open(config_path, 'r') as f:
            config = yaml.safe_load(f)
        
        logger.info(f"[OK] Config loaded from {config_path}")
        return config
    
    @staticmethod
    def save_config(config: Dict[str, Any], output_path: str) -> Path:
        """Save configuration to YAML file."""
        output_path = Path(output_path)
        output_path.parent.mkdir(parents=True, exist_ok=True)
        
        with open(output_path, 'w') as f:
            yaml.dump(config, f, default_flow_style=False)
        
        logger.info(f"[OK] Config saved to {output_path}")
        return output_path


class FileManager:
    """Manage file operations."""
    
    @staticmethod
    def ensure_directory(path: Path) -> Path:
        """Create directory if it doesn't exist."""
        path = Path(path)
        path.mkdir(parents=True, exist_ok=True)
        return path
    
    @staticmethod
    def save_dataframe(df: pd.DataFrame, output_path: str, format: str = 'csv') -> Path:
        """Save DataFrame to file."""
        output_path = Path(output_path)
        FileManager.ensure_directory(output_path.parent)
        
        if format == 'csv':
            df.to_csv(output_path, index=False)
        elif format == 'parquet':
            df.to_parquet(output_path, index=False)
        elif format == 'json':
            df.to_json(output_path, orient='records')
        else:
            raise ValueError(f"Unknown format: {format}")
        
        logger.info(f"[OK] DataFrame saved to {output_path} ({len(df)} rows)")
        return output_path
    
    @staticmethod
    def load_dataframe(file_path: str, format: str = None) -> pd.DataFrame:
        """Load DataFrame from file."""
        file_path = Path(file_path)
        
        if not file_path.exists():
            raise FileNotFoundError(f"File not found: {file_path}")
        
        if format is None:
            format = file_path.suffix.strip('.')
        
        if format == 'csv':
            df = pd.read_csv(file_path)
        elif format == 'parquet':
            df = pd.read_parquet(file_path)
        elif format == 'json':
            df = pd.read_json(file_path)
        else:
            raise ValueError(f"Unknown format: {format}")
        
        logger.info(f"[OK] DataFrame loaded from {file_path} ({len(df)} rows)")
        return df
    
    @staticmethod
    def save_json(data: Dict[str, Any], output_path: str) -> Path:
        """Save data to JSON file."""
        output_path = Path(output_path)
        FileManager.ensure_directory(output_path.parent)
        
        with open(output_path, 'w') as f:
            json.dump(data, f, indent=2, default=str)
        
        logger.info(f"[OK] JSON saved to {output_path}")
        return output_path
    
    @staticmethod
    def load_json(file_path: str) -> Dict[str, Any]:
        """Load data from JSON file."""
        file_path = Path(file_path)
        
        if not file_path.exists():
            raise FileNotFoundError(f"File not found: {file_path}")
        
        with open(file_path, 'r') as f:
            data = json.load(f)
        
        logger.info(f"[OK] JSON loaded from {file_path}")
        return data
    
    @staticmethod
    def save_pickle(obj: Any, output_path: str) -> Path:
        """Save object to pickle file."""
        output_path = Path(output_path)
        FileManager.ensure_directory(output_path.parent)
        
        with open(output_path, 'wb') as f:
            pickle.dump(obj, f)
        
        logger.info(f"[OK] Object saved to {output_path}")
        return output_path
    
    @staticmethod
    def load_pickle(file_path: str) -> Any:
        """Load object from pickle file."""
        file_path = Path(file_path)
        
        if not file_path.exists():
            raise FileNotFoundError(f"File not found: {file_path}")
        
        with open(file_path, 'rb') as f:
            obj = pickle.load(f)
        
        logger.info(f"[OK] Object loaded from {file_path}")
        return obj


class CommandExecutor:
    """Execute shell commands."""
    
    @staticmethod
    def run_command(cmd: str, cwd: str = None, timeout: int = None) -> Tuple[int, str, str]:
        """Execute a shell command."""
        logger.info(f"Running: {cmd}")
        
        try:
            env = os.environ.copy()
            oss_bin = Path.home() / "oss-cad-suite" / "bin"
            oss_lib = Path.home() / "oss-cad-suite" / "lib"
            if oss_bin.exists():
                env["PATH"] = f"{oss_bin};{oss_lib};" + env.get("PATH", "")

            result = subprocess.run(
                cmd,
                shell=True,
                capture_output=True,
                text=True,
                cwd=cwd,
                env=env,
                timeout=timeout
            )
            
            if result.returncode != 0:
                logger.warning(f"Command failed with code {result.returncode}")
                logger.warning(f"stderr: {result.stderr}")
            
            return result.returncode, result.stdout, result.stderr
        
        except subprocess.TimeoutExpired:
            logger.error(f"Command timed out after {timeout}s")
            return -1, "", f"Timeout after {timeout}s"
        except Exception as e:
            logger.error(f"Error running command: {e}")
            return -1, "", str(e)


class FeatureScaler:
    """Scale and normalize features."""
    
    @staticmethod
    def normalize_features(features: np.ndarray, method: str = 'minmax') -> np.ndarray:
        """Normalize features to [0, 1] or [-1, 1]."""
        if method == 'minmax':
            min_val = features.min(axis=0)
            max_val = features.max(axis=0)
            return (features - min_val) / (max_val - min_val + 1e-8)
        
        elif method == 'zscore':
            mean = features.mean(axis=0)
            std = features.std(axis=0)
            return (features - mean) / (std + 1e-8)
        
        else:
            raise ValueError(f"Unknown normalization method: {method}")
    
    @staticmethod
    def denormalize_features(features: np.ndarray, min_val: np.ndarray, 
                           max_val: np.ndarray) -> np.ndarray:
        """Denormalize features from [0, 1]."""
        return features * (max_val - min_val) + min_val


class MetricsCalculator:
    """Calculate performance metrics."""
    
    @staticmethod
    def calculate_regression_metrics(y_true: np.ndarray, y_pred: np.ndarray) -> Dict[str, float]:
        """Calculate regression metrics."""
        mse = np.mean((y_true - y_pred) ** 2)
        rmse = np.sqrt(mse)
        mae = np.mean(np.abs(y_true - y_pred))
        
        ss_res = np.sum((y_true - y_pred) ** 2)
        ss_tot = np.sum((y_true - np.mean(y_true)) ** 2)
        r2 = 1 - (ss_res / (ss_tot + 1e-8))
        
        mape = np.mean(np.abs((y_true - y_pred) / (y_true + 1e-8))) * 100
        
        return {
            'mse': float(mse),
            'rmse': float(rmse),
            'mae': float(mae),
            'r2': float(r2),
            'mape': float(mape),
        }
    
    @staticmethod
    def calculate_percentile_error(y_true: np.ndarray, y_pred: np.ndarray, 
                                  percentiles: List[int] = [50, 75, 90, 95]) -> Dict[int, float]:
        """Calculate error at different percentiles."""
        errors = np.abs(y_true - y_pred)
        result = {}
        
        for p in percentiles:
            result[p] = float(np.percentile(errors, p))
        
        return result


class ProgressTracker:
    """Track progress of long-running tasks."""
    
    def __init__(self, total: int, name: str = "Processing"):
        """Initialize progress tracker."""
        self.total = total
        self.name = name
        self.current = 0
    
    def update(self, increment: int = 1):
        """Update progress."""
        self.current += increment
        percent = (self.current / self.total) * 100
        bar_length = 40
        filled = int(bar_length * self.current / self.total)
        bar = '[' + '=' * filled + '-' * (bar_length - filled) + ']'
        logger.info(f"{self.name}: {bar} {percent:.1f}% ({self.current}/{self.total})")
    
    def finish(self):
        """Mark as finished."""
        logger.info(f"{self.name}: [OK] Complete")


def setup_logging(log_file: Optional[str] = None, level: str = 'INFO') -> logging.Logger:
    """Setup logging configuration."""
    root_logger = logging.getLogger()
    root_logger.setLevel(getattr(logging, level))
    
    if log_file:
        Path(log_file).parent.mkdir(parents=True, exist_ok=True)
        file_handler = logging.FileHandler(log_file)
        file_handler.setLevel(getattr(logging, level))
        formatter = logging.Formatter('[%(levelname)s] %(asctime)s - %(name)s - %(message)s')
        file_handler.setFormatter(formatter)
        root_logger.addHandler(file_handler)
    
    return root_logger


def validate_paths(config: Dict[str, Any]) -> bool:
    """Validate that all required paths exist or can be created."""
    paths = config.get('paths', {})
    
    for key, path in paths.items():
        try:
            Path(path).mkdir(parents=True, exist_ok=True)
            logger.info(f"[OK] Path ready: {key} -> {path}")
        except Exception as e:
            logger.error(f"[FAIL] Cannot create path {key}: {e}")
            return False
    
    return True



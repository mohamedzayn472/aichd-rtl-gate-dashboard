import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from scripts.train_model_comparison import run_model_comparison

if __name__ == "__main__":
    run_model_comparison()

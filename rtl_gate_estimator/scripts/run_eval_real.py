import sys
import json
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from scripts.evaluate_real_rtl import evaluate_real_rtl

if __name__ == "__main__":
    evaluate_real_rtl()
    print("[OK] Synchronously completed evaluate_real_rtl")

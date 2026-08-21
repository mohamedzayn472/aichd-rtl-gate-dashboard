import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from scripts.train_model import ModelTrainer
from scripts.learning_curve import generate_learning_curve

def main():
    print("Running Cross Validation...")
    trainer = ModelTrainer(
        features_path="data/features/features.csv",
        labels_path="data/labels/labels.csv",
        output_path="models/model.pkl",
        config_path="config/config.yaml",
    )
    cv_res = trainer.cross_validate(k=5)
    
    print("Running Learning Curve Analysis...")
    generate_learning_curve()
    print("[OK] Task 4 complete!")

if __name__ == "__main__":
    main()

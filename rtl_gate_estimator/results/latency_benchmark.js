const LATENCY_BENCHMARK = {
  "benchmark_config": {
    "num_modules": 100,
    "model_type": "RandomForestRegressor",
    "hardware_platform": "Windows x64"
  },
  "single_module_ml_inference": {
    "total_time_sec": 51.168387900004745,
    "num_runs": 1000,
    "avg_latency_ms": 51.168387900004745,
    "throughput_qps": 19.543316509291614
  },
  "batch_ml_inference": {
    "total_time_sec": 4.4244178000080865,
    "num_runs": 100,
    "batch_size": 100,
    "avg_batch_time_ms": 44.244178000080865,
    "per_module_latency_ms": 0.44244178000080864
  },
  "real_yosys_synthesis": {
    "total_yosys_time_sec": 18.72426540000015,
    "modules_synthesized": 100,
    "avg_yosys_per_module_ms": 187.2426540000015
  },
  "speedup_metrics": {
    "speedup_ratio": 423.202921748618,
    "speedup_formatted": "423.2x",
    "ml_latency_per_module_ms": 0.44244178000080864,
    "yosys_latency_per_module_ms": 187.2426540000015,
    "time_saved_percent": 99.76370673532496
  }
};

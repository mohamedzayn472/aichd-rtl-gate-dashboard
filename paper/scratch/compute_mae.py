import json

d = json.load(open(r'c:\Users\moham\Desktop\AICD Project\rtl_gate_estimator\results\real_rtl_evaluation.json'))
preds = [p for p in d['per_module_predictions'] if p['module_id'] != 'axis_fifo']
errors = [p['error_abs'] for p in preds]
mae = sum(errors) / len(errors)
median_err = sorted(errors)[len(errors) // 2]

print(f"Outlier-excluded MAE: {mae:.2f} gates over {len(preds)} modules")
print(f"Sum of errors: {sum(errors):.2f}")
print(f"Median absolute error: {median_err:.2f}")
print(f"All errors sorted: {sorted(errors)}")

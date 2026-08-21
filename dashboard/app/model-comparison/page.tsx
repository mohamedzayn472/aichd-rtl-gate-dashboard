"use client";

import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardCard from "@/components/dashboard/card";
import { Badge } from "@/components/ui/badge";
import GearIcon from "@/components/icons/gear";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
  Legend,
} from "recharts";
import modelComparisonData from "@/data/model_comparison.json";

export default function ModelComparisonPage() {
  const modelData = modelComparisonData.map((m) => ({
    model: m.model_name,
    trainR2: m.val_r2, // Val R2
    testR2: m.test_r2,  // Test R2
    rmse: m.test_rmse,
    mae: m.test_mae,
    inferenceMs: m.latency_per_sample_ms,
    trainTimeSec: m.train_time_sec,
    isProduction: m.model_name === "RandomForest",
  }));

  return (
    <DashboardPageLayout
      header={{
        title: "Model Comparison",
        description: "Evaluated Regression Algorithms",
        icon: GearIcon,
      }}
    >
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
        {modelData.map((m) => (
          <div key={m.model} className="rounded-lg bg-card border border-border p-4">
            <div className="flex items-center justify-between mb-2">
              <span className="text-xs uppercase text-muted-foreground tracking-wide font-medium">
                {m.model}
              </span>
              {m.isProduction && <Badge variant="outline-success">PRIMARY</Badge>}
            </div>
            <div className="text-2xl font-display">{m.testR2.toFixed(4)}</div>
            <div className="text-xs text-muted-foreground mt-1">Test R² Score</div>
          </div>
        ))}
      </div>

      {/* Model Performance Comparison Bar Chart */}
      <DashboardCard
        title="TEST ACCURACY & ERROR COMPARISON"
        addon={<Badge variant="outline">REAL MODEL EVALUATION</Badge>}
      >
        <div className="h-80 w-full pt-4">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart data={modelData}>
              <CartesianGrid strokeDasharray="3 3" stroke="var(--border)" />
              <XAxis dataKey="model" stroke="var(--muted-foreground)" />
              <YAxis yAxisId="left" stroke="var(--muted-foreground)" domain={[0.8, 1.0]} />
              <YAxis yAxisId="right" orientation="right" stroke="var(--muted-foreground)" />
              <Tooltip
                contentStyle={{
                  backgroundColor: "var(--card)",
                  borderColor: "var(--border)",
                  borderRadius: "8px",
                }}
              />
              <Legend />
              <Bar yAxisId="left" dataKey="testR2" name="Test R²" fill="var(--color-primary)" />
              <Bar yAxisId="right" dataKey="mae" name="Test MAE" fill="var(--color-warning)" />
              <Bar yAxisId="right" dataKey="rmse" name="Test RMSE" fill="var(--color-destructive)" />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </DashboardCard>

      {/* Detailed Benchmark Table */}
      <div className="mt-6">
        <DashboardCard title="DETAILED REGRESSION METRICS TABLE">
          <div className="overflow-x-auto">
            <table className="w-full text-sm text-left">
              <thead className="text-xs uppercase bg-accent/50 text-muted-foreground border-b border-border">
                <tr>
                  <th className="px-4 py-3">Algorithm</th>
                  <th className="px-4 py-3">Validation R²</th>
                  <th className="px-4 py-3">Test R²</th>
                  <th className="px-4 py-3">Test MAE</th>
                  <th className="px-4 py-3">Test RMSE</th>
                  <th className="px-4 py-3">Inference / Sample (ms)</th>
                  <th className="px-4 py-3">Train Time (sec)</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-border">
                {modelData.map((row) => (
                  <tr key={row.model} className="hover:bg-accent/30 transition-colors">
                    <td className="px-4 py-3 font-medium">
                      {row.model}
                      {row.isProduction && <Badge variant="outline-success" className="ml-2">PRIMARY</Badge>}
                    </td>
                    <td className="px-4 py-3 font-display">{row.trainR2.toFixed(4)}</td>
                    <td className="px-4 py-3 font-display text-primary">{row.testR2.toFixed(4)}</td>
                    <td className="px-4 py-3 font-display">{row.mae.toFixed(4)}</td>
                    <td className="px-4 py-3 font-display">{row.rmse.toFixed(4)}</td>
                    <td className="px-4 py-3 font-display">{row.inferenceMs.toFixed(4)} ms</td>
                    <td className="px-4 py-3 font-display">{row.trainTimeSec.toFixed(4)} s</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </DashboardCard>
      </div>
    </DashboardPageLayout>
  );
}

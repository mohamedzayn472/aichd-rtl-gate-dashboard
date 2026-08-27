"use client";

import React, { useState } from "react";
import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardCard from "@/components/dashboard/card";
import { Badge } from "@/components/ui/badge";
import EmailIcon from "@/components/icons/email";
import {
  ScatterChart,
  Scatter,
  XAxis,
  YAxis,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
} from "recharts";

import realEvalData from "@/data/real_rtl_evaluation.json";

export default function ValidationPage() {
  const [excludeOutlier, setExcludeOutlier] = useState(false);

  const rawModules = realEvalData.per_module_predictions;
  const metrics = realEvalData.out_of_distribution_metrics;

  const displayModules = excludeOutlier
    ? rawModules.filter((m) => m.module_id !== "axis_fifo")
    : rawModules;

  const scatterPoints = displayModules.map((m) => ({
    name: m.module_id,
    actual: m.actual_gates,
    predicted: Math.round(m.predicted_gates),
    errorPct: m.error_pct,
    isOutlier: m.module_id === "axis_fifo",
  }));

  return (
    <DashboardPageLayout
      header={{
        title: "Real-World Validation",
        description: "Out-of-Distribution Benchmarking on 17 Real Verilog Modules",
        icon: EmailIcon,
      }}
    >
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">VALIDATED MODULES</div>
          <div className="text-3xl font-display">{realEvalData.num_modules}</div>
          <div className="text-xs text-muted-foreground mt-1">Real RTL Benchmarks</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">OUT-OF-DIST R²</div>
          <div className="text-3xl font-display text-destructive">{metrics.r2.toFixed(4)}</div>
          <div className="text-xs text-muted-foreground mt-1">Driven by axis_fifo outlier</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">MEAN ABS ERROR (MAE)</div>
          <div className="text-3xl font-display text-warning">{metrics.mae.toFixed(2)}</div>
          <div className="text-xs text-muted-foreground mt-1">Gates (All 17 Modules)</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">OUTLIER MODULE</div>
          <div className="text-2xl font-display text-destructive">axis_fifo</div>
          <div className="text-xs text-muted-foreground mt-1">133,594 Actual Gates</div>
        </div>
      </div>

      {/* Real Scatter Chart */}
      <DashboardCard
        title="ACTUAL VS PREDICTED GATE COUNT SCATTER PLOT"
        addon={
          <button
            onClick={() => setExcludeOutlier(!excludeOutlier)}
            className="text-xs px-3 py-1 rounded bg-accent border border-border hover:bg-accent/80 font-medium text-foreground transition-colors"
          >
            {excludeOutlier ? "Show All (Include axis_fifo)" : "Toggle Visual Zoom (Exclude axis_fifo)"}
          </button>
        }
      >
        <div className="h-80 w-full pt-4">
          <ResponsiveContainer width="100%" height="100%">
            <ScatterChart margin={{ top: 20, right: 20, bottom: 20, left: 20 }}>
              <CartesianGrid strokeDasharray="3 3" stroke="var(--border)" />
              <XAxis dataKey="actual" type="number" name="Actual Gates" stroke="var(--muted-foreground)" label={{ value: 'Actual Gate Count (Yosys)', position: 'insideBottom', offset: -10 }} />
              <YAxis dataKey="predicted" type="number" name="Predicted Gates" stroke="var(--muted-foreground)" label={{ value: 'Predicted Gate Count', angle: -90, position: 'insideLeft' }} />
              <Tooltip
                cursor={{ strokeDasharray: "3 3" }}
                content={({ payload }) => {
                  if (!payload || !payload.length) return null;
                  const data = payload[0].payload;
                  return (
                    <div className="bg-card border border-border p-3 rounded-md text-xs shadow-lg space-y-1">
                      <div className="font-bold text-primary">{data.name}</div>
                      <div>Actual Gates: <span className="font-display">{data.actual.toLocaleString()}</span></div>
                      <div>Predicted Gates: <span className="font-display">{data.predicted.toLocaleString()}</span></div>
                      <div>Error: <span className="font-display text-warning">{data.errorPct.toFixed(1)}%</span></div>
                    </div>
                  );
                }}
              />
              <Scatter name="RTL Modules" data={scatterPoints} fill="var(--color-primary)" />
            </ScatterChart>
          </ResponsiveContainer>
        </div>
      </DashboardCard>

      {/* 17 Real Modules Evaluation Table */}
      <div className="mt-6">
        <DashboardCard title="PER-MODULE OUT-OF-DISTRIBUTION PREDICTION RESULTS (17 REAL RTL MODULES)">
          <div className="overflow-x-auto">
            <table className="w-full text-sm text-left">
              <thead className="text-xs uppercase bg-accent/50 text-muted-foreground border-b border-border">
                <tr>
                  <th className="px-4 py-3">Module ID</th>
                  <th className="px-4 py-3">Actual Gates (Yosys)</th>
                  <th className="px-4 py-3">Predicted Gates</th>
                  <th className="px-4 py-3">Absolute Error</th>
                  <th className="px-4 py-3">Error Percentage</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-border">
                {rawModules.map((m) => (
                <tr key={m.module_id} className={m.module_id === "axis_fifo" ? "bg-destructive/10 hover:bg-destructive/20 transition-colors" : "hover:bg-[rgba(15,40,100,0.04)] transition-colors"}>
                    <td className="px-4 py-3 font-mono font-medium">
                      {m.module_id}
                      {m.module_id === "axis_fifo" && <Badge variant="outline-destructive" className="ml-2">OUTLIER</Badge>}
                    </td>
                    <td className="px-4 py-3 font-display">{m.actual_gates.toLocaleString()}</td>
                    <td className="px-4 py-3 font-display text-primary">{m.predicted_gates.toFixed(2)}</td>
                    <td className="px-4 py-3 font-display">{m.error_abs.toFixed(2)}</td>
                    <td className="px-4 py-3 font-display text-warning">{m.error_pct.toFixed(2)}%</td>
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

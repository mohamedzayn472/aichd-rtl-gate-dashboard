"use client";

import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardCard from "@/components/dashboard/card";
import { Badge } from "@/components/ui/badge";
import MonkeyIcon from "@/components/icons/monkey";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
} from "recharts";

import latencyBenchmark from "@/data/latency_benchmark.json";
import modelComparison from "@/data/model_comparison.json";

export default function LatencyPage() {
  const speedup = latencyBenchmark.speedup_metrics;
  const single = latencyBenchmark.single_module_ml_inference;
  const batch = latencyBenchmark.batch_ml_inference;
  const yosys = latencyBenchmark.real_yosys_synthesis;

  const modelLatencies = modelComparison.map((m) => ({
    model: m.model_name,
    latencyMs: m.latency_per_sample_ms,
    batch100Ms: m.latency_batch_100_ms,
  }));

  const synthesisComparisonData = [
    { name: "Full Yosys ASIC Synthesis", ms: yosys.avg_yosys_per_module_ms, fill: "var(--color-destructive)" },
    { name: "Single-Run ML Inference", ms: single.avg_latency_ms, fill: "var(--color-warning)" },
    { name: "Batch ML Inference (Per Module)", ms: batch.per_module_latency_ms, fill: "var(--color-success)" },
  ];

  return (
    <DashboardPageLayout
      header={{
        title: "Latency Benchmark",
        description: "Inference Speedup vs Physical Yosys ASIC Synthesis",
        icon: MonkeyIcon,
      }}
    >
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">SPEEDUP RATIO</div>
          <div className="text-3xl font-display text-success">{speedup.speedup_formatted}</div>
          <div className="text-xs text-muted-foreground mt-1">{speedup.time_saved_percent.toFixed(2)}% Time Saved</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">BATCH ML LATENCY</div>
          <div className="text-3xl font-display text-primary">{batch.per_module_latency_ms.toFixed(4)} ms</div>
          <div className="text-xs text-muted-foreground mt-1">Per module in batch of 100</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">SINGLE ML LATENCY</div>
          <div className="text-3xl font-display">{single.avg_latency_ms.toFixed(2)} ms</div>
          <div className="text-xs text-muted-foreground mt-1">Average across 1,000 runs</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">YOSYS SYNTHESIS</div>
          <div className="text-3xl font-display text-destructive">{yosys.avg_yosys_per_module_ms.toFixed(2)} ms</div>
          <div className="text-xs text-muted-foreground mt-1">Full ASIC Gate Mapping</div>
        </div>
      </div>

      {/* Latency Comparison Bar Chart */}
      <DashboardCard
        title="ML INFERENCE VS YOSYS SYNTHESIS LATENCY (LOG SCALE COMPARISON)"
        addon={<Badge variant="outline-success">{speedup.speedup_formatted} FASTER</Badge>}
      >
        <div className="h-80 w-full pt-4">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart data={synthesisComparisonData}>
              <CartesianGrid strokeDasharray="3 3" stroke="var(--border)" />
              <XAxis dataKey="name" stroke="var(--muted-foreground)" />
              <YAxis stroke="var(--muted-foreground)" label={{ value: 'Latency (ms)', angle: -90, position: 'insideLeft' }} />
              <Tooltip
                contentStyle={{
                  backgroundColor: "var(--card)",
                  borderColor: "var(--border)",
                  borderRadius: "8px",
                }}
              />
              <Bar dataKey="ms" name="Execution Time (ms)" radius={[4, 4, 0, 0]} />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </DashboardCard>

      {/* Per-Model Inference Latency Table */}
      <div className="mt-6">
        <DashboardCard title="ALGORITHM LATENCY BREAKDOWN (VERIFIED MODELS)">
          <div className="overflow-x-auto">
            <table className="w-full text-sm text-left">
              <thead className="text-xs uppercase bg-accent/50 text-muted-foreground border-b border-border">
                <tr>
                  <th className="px-4 py-3">Model Name</th>
                  <th className="px-4 py-3">Single Sample Latency</th>
                  <th className="px-4 py-3">Batch 100 Latency</th>
                  <th className="px-4 py-3">Throughput (QPS)</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-border">
                {modelLatencies.map((m) => (
                  <tr key={m.model} className="hover:bg-accent/30 transition-colors">
                    <td className="px-4 py-3 font-medium">{m.model}</td>
                    <td className="px-4 py-3 font-display text-primary">{m.latencyMs.toFixed(4)} ms</td>
                    <td className="px-4 py-3 font-display">{m.batch100Ms.toFixed(4)} ms</td>
                    <td className="px-4 py-3 font-display text-success">{(1000 / m.latencyMs).toFixed(1)} req/s</td>
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

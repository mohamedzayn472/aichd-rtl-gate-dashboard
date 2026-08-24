"use client";
/* AICHD Glass Observatory: evidence-first RTL workbench with restrained spectral motion and safe source-level optimization guidance. */
import { useEffect, useRef, useState } from "react";
import DashboardPageLayout from "@/components/dashboard/layout";
import ProcessorIcon from "@/components/icons/proccesor";
import { Bar, BarChart, CartesianGrid, ResponsiveContainer, Tooltip, XAxis, YAxis } from "recharts";
import NumberFlow from "@number-flow/react";
import { AnimatePresence, motion, useReducedMotion } from "framer-motion";
import { ArrowRight, BadgeCheck, Check, Clipboard, Code2, FileDown, FileText, Info, Lightbulb, Sparkles } from "lucide-react";

const DEMO_VERILOG = `module ripple_adder_4bit (
  input  wire [3:0] a,
  input  wire [3:0] b,
  input  wire       cin,
  output wire [3:0] sum,
  output wire       cout
);
  wire [3:0] carry;
  assign {cout, sum[0]} = a[0] + b[0] + cin;
  assign {carry[0], sum[1]} = a[1] + b[1] + carry[0];
  assign {carry[1], sum[2]} = a[2] + b[2] + carry[1];
  assign {carry[2], sum[3]} = a[3] + b[3] + carry[2];
endmodule`;

type ShapItem = { feature?: string; importance?: number; raw_value?: number; [key: string]: unknown };
type PredictApiResponse = {
  success?: boolean;
  error?: string;
  gateCount?: number;
  features?: Record<string, number>;
  shapValues?: ShapItem[];
  optimizable?: boolean;
  optimized_code?: string;
  diff?: string;
  functional_equivalence?: string;
  impact?: {
    area?: { cell_count?: { baseline: number; optimized: number; delta_pct: number } };
    timing?: { logic_levels?: { baseline: number; optimized: number; delta_pct: number } };
  };
  transformations_applied?: Array<{ rule: string; location: string; rationale: string }>;
  warnings?: string[];
};
type HistoryEntry = { id: string; name: string; timestamp: string; gateCount: number; topFeature: string; code: string };
type InstrumentTab = "observation" | "explanation" | "optimization" | "evidence" | "report" | "history";
type OptimizationAssessment = { status: "optimized" | "rewrite-available"; title: string; summary: string; changes: string[]; optimizedCode?: string };
type InferenceStage = "idle" | "capture" | "structure" | "evidence";

function isValidVerilogFile(name: string) { const lower = name.toLowerCase(); return lower.endsWith(".v") || lower.endsWith(".sv"); }

function getExplanation(feature: string, importance?: number) {
  const direction = typeof importance === "number" && importance < 0 ? "reduced" : "increased";
  const normalized = feature.toLowerCase();
  if (normalized.includes("chars") || normalized.includes("lines")) return { title: "Expression density is the primary driver", summary: `The model found source-complexity signal “${feature}” to have ${direction} this estimate most strongly.`, action: "Review long expressions and repeated boolean terms. Factoring shared intermediates can make the RTL easier to inspect and may change the structural feature profile." };
  if (normalized.includes("nand") || normalized.includes("nor") || normalized.includes("xor")) return { title: "Operator composition drives the estimate", summary: `The model assigned the largest contribution to “${feature}”, a logic-operator signal that ${direction} the estimated NAND2-equivalent count.`, action: "Inspect repeated operator trees for shareable subexpressions. Confirm any refactor with synthesis, because model attribution explains this estimate rather than proving post-synthesis area savings." };
  if (normalized.includes("wire") || normalized.includes("instance")) return { title: "Structural connectivity is the primary driver", summary: `The returned structural signal “${feature}” had the largest model contribution and ${direction} the estimate.`, action: "Review intermediate nets and module boundaries for unnecessary fan-out or duplicated local structure, then compare the revised source through the same inference flow." };
  return { title: "Model evidence is led by a structural feature", summary: `The feature “${feature}” ${direction} the estimate most strongly in this run.`, action: "Use the returned attribution and extracted-feature sections below to identify which source constructs should be reviewed first." };
}

function getOptimizationAssessmentFromApi(apiResponse: PredictApiResponse | null): OptimizationAssessment {
  if (!apiResponse) {
    return {
      status: "optimized",
      title: "Awaiting analysis",
      summary: "Run a live estimate to receive an evidence-aware source assessment.",
      changes: [],
    };
  }

  if (apiResponse.optimizable && apiResponse.optimized_code) {
    const changes = apiResponse.transformations_applied?.map((t) => `${t.rule}: ${t.rationale} (${t.location})`) || [];
    if (apiResponse.functional_equivalence !== "PASS") {
      changes.push(`⚠ WARNING: Equivalence check status: ${apiResponse.functional_equivalence}`);
    }
    
    // Formatting PPA
    if (apiResponse.impact?.area?.cell_count) {
      const area = apiResponse.impact.area.cell_count;
      changes.push(`Area impact: ${area.baseline} -> ${area.optimized} cells (${area.delta_pct > 0 ? '+' : ''}${area.delta_pct}%).`);
    }

    return {
      status: "rewrite-available",
      title: "A safe source-level rewrite is available",
      summary: `AICHD found deterministic optimization opportunities in the submitted RTL, confirmed via Yosys synthesis. Functional Equivalence: ${apiResponse.functional_equivalence}.`,
      changes,
      optimizedCode: apiResponse.optimized_code,
    };
  }

  return {
    status: "optimized",
    title: "Optimized for automatic source checks",
    summary: `No safe Boolean-identity rewrite was detected by the backend. For the automatic checks AICHD can prove locally, the submitted RTL is optimized.`,
    changes: apiResponse.warnings || ["No deterministic, semantics-preserving rewrite was found."],
  };
}

export default function PredictTool() {
  const [code, setCode] = useState(DEMO_VERILOG);
  const [uploadedFileName, setUploadedFileName] = useState<string | null>(null);
  const [isDragging, setIsDragging] = useState(false);
  const [isRunning, setIsRunning] = useState(false);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);
  const [hasResult, setHasResult] = useState(false);
  const [runStage, setRunStage] = useState<InferenceStage>("idle");
  const [gateCount, setGateCount] = useState(0);
  const [shapData, setShapData] = useState<ShapItem[]>([]);
  const [features, setFeatures] = useState<Record<string, number>>({});
  const [apiResponse, setApiResponse] = useState<PredictApiResponse | null>(null);
  const [activeTab, setActiveTab] = useState<InstrumentTab>("observation");
  const [history, setHistory] = useState<HistoryEntry[]>([]);
  const [reportAction, setReportAction] = useState<"idle" | "copied" | "downloaded">("idle");
  const [optimizationAction, setOptimizationAction] = useState<"idle" | "copied">("idle");
  const fileInputRef = useRef<HTMLInputElement>(null);
  const reduceMotion = useReducedMotion();

  useEffect(() => {
    const savedDraft = window.localStorage.getItem("aichd-observatory-draft");
    const savedHistory = window.localStorage.getItem("aichd-observatory-history");
    if (savedDraft) setCode(savedDraft);
    if (savedHistory) { try { setHistory(JSON.parse(savedHistory) as HistoryEntry[]); } catch { window.localStorage.removeItem("aichd-observatory-history"); } }
  }, []);
  useEffect(() => { window.localStorage.setItem("aichd-observatory-draft", code); }, [code]);
  useEffect(() => { window.localStorage.setItem("aichd-observatory-history", JSON.stringify(history)); }, [history]);

  const loadFile = async (file: File) => {
    if (!isValidVerilogFile(file.name)) { setErrorMsg(`Unsupported source "${file.name}". Choose a .v or .sv file.`); return; }
    try { setCode(await file.text()); setUploadedFileName(file.name); setErrorMsg(null); setHasResult(false); setApiResponse(null); }
    catch { setErrorMsg(`The source file "${file.name}" could not be read.`); }
  };

  const runInference = async () => {
    setIsRunning(true); setErrorMsg(null); setReportAction("idle"); setOptimizationAction("idle");
    setRunStage("capture");
    const structureTimer = window.setTimeout(() => setRunStage("structure"), 520);
    const evidenceTimer = window.setTimeout(() => setRunStage("evidence"), 1400);
    try {
      const response = await fetch("/api/predict", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ code }) });
      const data = await response.json() as PredictApiResponse;
      if (!response.ok || data.success === false || data.error) throw new Error(data.error ?? "Inference could not complete.");
      const nextGateCount = data.gateCount ?? 0;
      const nextShap = data.shapValues ?? [];
      setGateCount(nextGateCount); setShapData(nextShap); setFeatures(data.features ?? {}); setHasResult(true); setActiveTab("observation"); setApiResponse(data);
      const entry: HistoryEntry = { id: `${Date.now()}`, name: uploadedFileName ?? "untitled_module.v", timestamp: new Date().toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" }), gateCount: nextGateCount, topFeature: nextShap[0]?.feature ?? "structural evidence", code };
      setHistory((current) => [entry, ...current.filter((item) => item.code !== code)].slice(0, 6));
    } catch (error) { setHasResult(false); setErrorMsg(error instanceof Error ? error.message : "The inference request could not be completed."); setApiResponse(null); }
    finally { window.clearTimeout(structureTimer); window.clearTimeout(evidenceTimer); setIsRunning(false); setRunStage("idle"); }
  };

  const resetDraft = () => { setCode(DEMO_VERILOG); setUploadedFileName(null); setErrorMsg(null); setHasResult(false); setApiResponse(null); setReportAction("idle"); setOptimizationAction("idle"); };
  const topFeature = shapData[0]?.feature ?? "Awaiting analysis";
  const topImpact = shapData[0]?.importance;
  const totalInputs = features.num_inputs ?? features.struct_num_inputs ?? 0;
  const totalOutputs = features.num_outputs ?? features.struct_num_outputs ?? 0;
  const totalWires = features.num_wires ?? features.struct_num_wires ?? 0;
  const explanation = getExplanation(topFeature, topImpact);
  const optimization = getOptimizationAssessmentFromApi(apiResponse);
  const stageLabel = runStage === "capture" ? "Reading source" : runStage === "structure" ? "Extracting structure" : runStage === "evidence" ? "Calibrating evidence" : "Ready";
  const reportText = hasResult ? [
    "# AICHD RTL Gate Estimation Report", `Generated: ${new Date().toLocaleString()}`, `Source: ${uploadedFileName ?? "untitled_module.v"}`, "",
    "## Gate estimate", `${gateCount} NAND2-equivalent gates`, "", "## Detailed explanation", explanation.title, explanation.summary, `Review guidance: ${explanation.action}`, "", "## RTL optimization assessment", optimization.title, optimization.summary, ...optimization.changes.map((change) => `- ${change}`), "",
    "## Extracted structure", ...Object.entries(features).map(([key, value]) => `- ${key}: ${value}`), "", "## Returned feature contributions", ...shapData.map((item) => `- ${item.feature ?? "feature"}: ${typeof item.importance === "number" ? item.importance.toFixed(6) : "n/a"}`), "",
    "## Interpretation boundary", "This report explains the current AICHD model estimate from source-derived features. It is not a substitute for technology-mapped synthesis or physical implementation analysis.",
  ].join("\n") : "";

  const downloadReport = () => {
    if (!reportText) return;
    const url = URL.createObjectURL(new Blob([reportText], { type: "text/markdown;charset=utf-8" }));
    const link = document.createElement("a");
    link.href = url; link.download = `${(uploadedFileName ?? "aichd-inference").replace(/\.(v|sv)$/i, "")}-aichd-report.md`; link.click(); URL.revokeObjectURL(url); setReportAction("downloaded");
  };
  const copyReport = async () => { if (!reportText) return; try { await navigator.clipboard.writeText(reportText); setReportAction("copied"); } catch { setReportAction("idle"); } };
  const copyOptimizedCode = async () => { if (!optimization.optimizedCode) return; try { await navigator.clipboard.writeText(optimization.optimizedCode); setOptimizationAction("copied"); } catch { setOptimizationAction("idle"); } };
  const useOptimizedCode = () => { if (!optimization.optimizedCode) return; setCode(optimization.optimizedCode); setUploadedFileName(null); setHasResult(false); setOptimizationAction("idle"); setActiveTab("observation"); };
  const selectTab = (tab: InstrumentTab) => { setActiveTab(tab); setReportAction("idle"); setOptimizationAction("idle"); };

  return <DashboardPageLayout header={{ title: "Inference workbench", description: "LIVE VERILOG / MODEL EVIDENCE", icon: ProcessorIcon }}>
    <section className="obs-inference-intro"><div><p className="obs-eyebrow">OBSERVATION MODE / SOURCE TO SIGNAL</p><h2>Make the next<br /><em>estimate observable.</em></h2><p>Load a Verilog source, run the current model, and retain the useful evidence in a local Observatory history. No preview-only values are used in this workbench.</p></div><div className={`obs-inference-status ${isRunning ? "is-acquiring" : ""}`}><span>API CHANNEL</span><b>{isRunning ? "Acquiring" : "Ready"}</b><small>{isRunning ? stageLabel : `${history.length} local observations retained`}</small><i /></div></section>
    {errorMsg && <div className="obs-error" role="alert"><b>Inference signal interrupted</b><span>{errorMsg}</span></div>}

    <section className="obs-workbench">
      <article className={`obs-source-instrument ${isRunning ? "is-running" : ""}`}>
        <header className="obs-instrument-header"><div><span>01 / SOURCE INSTRUMENT</span><b>{uploadedFileName ?? "Untitled Verilog module"}</b></div><small>draft saves locally</small></header>
        <div className={`obs-dropzone ${isDragging ? "dragging" : ""}`} onDragOver={(event) => { event.preventDefault(); setIsDragging(true); }} onDragLeave={() => setIsDragging(false)} onDrop={async (event) => { event.preventDefault(); setIsDragging(false); const file = event.dataTransfer.files?.[0]; if (file) await loadFile(file); }} onClick={() => fileInputRef.current?.click()}>
          <input ref={fileInputRef} type="file" accept=".v,.sv" className="hidden" onChange={async (event) => { const file = event.target.files?.[0]; if (file) await loadFile(file); event.target.value = ""; }} />
          <span>Drop a .v / .sv source file or browse</span><small>Structural parsing occurs only when you run inference.</small>
        </div>
        <textarea aria-label="Verilog source code" value={code} onChange={(event) => { setCode(event.target.value); setUploadedFileName(null); }} spellCheck={false} />
        <footer className="obs-source-actions"><button onClick={resetDraft} className="obs-text-button">Restore example</button><span>{code.length.toLocaleString()} characters</span><motion.button id="btn-predict-run" onClick={runInference} disabled={isRunning} className={`obs-run-button ${isRunning ? "is-running" : hasResult ? "is-complete" : ""}`} whileHover={reduceMotion || isRunning ? undefined : { y: -2, scale: 1.015 }} whileTap={reduceMotion || isRunning ? undefined : { scale: .97 }}><i aria-hidden="true" />{isRunning ? "Reading source…" : hasResult ? "Run another estimate →" : "Run live estimate →"}</motion.button></footer>
      </article>

      <article className={`obs-result-instrument ${isRunning ? "is-running" : ""}`}>
        <header className="obs-instrument-header"><div><span>02 / EVIDENCE INSTRUMENT</span><b>{hasResult ? "Live observation complete" : "Awaiting source signal"}</b></div><small>{hasResult ? "saved locally" : "no result yet"}</small></header>
        {isRunning && <motion.div className="obs-acquisition-rail" initial={reduceMotion ? false : { opacity: 0, y: -5 }} animate={{ opacity: 1, y: 0 }}><span>LIVE ACQUISITION</span>{(["capture", "structure", "evidence"] as const).map((stage, index) => <div key={stage} className={runStage === stage ? "active" : index < ["capture", "structure", "evidence"].indexOf(runStage as "capture" | "structure" | "evidence") ? "complete" : ""}><i />{stage === "capture" ? "Source" : stage === "structure" ? "Structure" : "Evidence"}</div>)}</motion.div>}
        <div className="obs-result-tabs" role="tablist" aria-label="Inference results">{(["observation", "explanation", "optimization", "evidence", "report", "history"] as InstrumentTab[]).map((tab) => <button key={tab} role="tab" aria-selected={activeTab === tab} className={activeTab === tab ? "active" : ""} onClick={() => selectTab(tab)}>{activeTab === tab && <motion.i layoutId="obs-result-tab-indicator" transition={{ type: "spring", stiffness: 420, damping: 34 }} />}<span>{tab}</span></button>)}</div>
        <AnimatePresence mode="wait">
          {activeTab === "observation" && (hasResult ? <motion.div key="observation-result" className="obs-live-result" initial={false} animate={{ opacity: 1, y: 0, scale: 1 }} transition={{ type: "spring", stiffness: 290, damping: 28 }}><div className="obs-gate-orb"><span>ESTIMATED GATES</span><b><NumberFlow value={gateCount} /></b><small>NAND2 EQUIVALENT</small></div><div className="obs-result-readout"><div><span>TOP INFLUENCE</span><b>{topFeature}</b><small>{typeof topImpact === "number" ? `${topImpact >= 0 ? "+" : ""}${topImpact.toFixed(4)} contribution` : "Feature attribution returned"}</small></div><div className="obs-structural-row"><span><b><NumberFlow value={totalInputs} /></b> inputs</span><span><b><NumberFlow value={totalOutputs} /></b> outputs</span><span><b><NumberFlow value={totalWires} /></b> wires</span></div></div></motion.div> : <EmptyResult key="observation-empty" title="Source instrument ready." detail="Run an estimate to open the gate-count and structural evidence surfaces." />)}
          {activeTab === "explanation" && (hasResult ? <motion.div key="explanation-result" className="obs-explanation-view" initial={reduceMotion ? false : { opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} exit={reduceMotion ? undefined : { opacity: 0, y: -6 }}><div className="obs-explanation-lead"><Lightbulb /><div><span>MODEL-LEVEL EXPLANATION</span><h3>{explanation.title}</h3><p>{explanation.summary}</p></div></div><div className="obs-explanation-action"><Info /><div><b>Recommended next check</b><p>{explanation.action}</p></div></div><div className="obs-feature-detail"><div><span>EXTRACTED STRUCTURE</span><small>{Object.keys(features).length} values returned</small></div><div className="obs-feature-detail-grid">{Object.entries(features).map(([key, value]) => <div key={key}><span>{key}</span><b>{value}</b></div>)}</div></div></motion.div> : <EmptyResult key="explanation-empty" title="Detailed explanation will appear here." detail="Run an estimate to connect the top feature contribution with extracted RTL structure." />)}
          {activeTab === "optimization" && (hasResult ? <motion.div key="optimization-result" className={`obs-optimization-view ${optimization.status}`} initial={reduceMotion ? false : { opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} exit={reduceMotion ? undefined : { opacity: 0, y: -6 }}><div className="obs-optimization-lead">{optimization.status === "rewrite-available" ? <Sparkles /> : <BadgeCheck />}<div><span>RTL OPTIMIZATION ASSESSMENT</span><h3>{optimization.title}</h3><p>{optimization.summary}</p></div></div>{optimization.status === "rewrite-available" && optimization.optimizedCode ? <><div className="obs-code-comparison"><section><header><span>SUBMITTED RTL</span><Code2 /></header><pre>{code}</pre></section><ArrowRight className="obs-code-arrow" aria-hidden="true" /><section className="obs-corrected-code"><header><span>CORRECTED RTL</span><BadgeCheck /></header><pre>{optimization.optimizedCode}</pre></section></div><div className="obs-optimization-actions"><div><b>What changed</b>{optimization.changes.map((change) => <p key={change}>{change}</p>)}</div><div><button onClick={copyOptimizedCode}>{optimizationAction === "copied" ? <Check /> : <Clipboard />}{optimizationAction === "copied" ? "Copied" : "Copy corrected code"}</button><button onClick={useOptimizedCode}>Use corrected source <ArrowRight /></button></div></div><small className="obs-optimization-boundary">The corrected RTL is limited to deterministic local Boolean identities. Re-run inference and validate with synthesis before accepting any area or timing outcome.</small></> : <div className="obs-optimized-state"><BadgeCheck /><div><b>No automatic rewrite is needed</b><p>{optimization.changes[0]}</p></div></div>}</motion.div> : <EmptyResult key="optimization-empty" title="Optimization guidance will appear here." detail="Run a live estimate to receive an evidence-aware source assessment." />)}
          {activeTab === "evidence" && (hasResult ? <motion.div key="evidence-result" className="obs-evidence-view" initial={false} animate={{ opacity: 1, y: 0 }}><p>Positive values increase the estimated gate count; negative values reduce it.</p><div className="h-[260px] w-full"><ResponsiveContainer width="100%" height="100%"><BarChart data={shapData} layout="vertical" margin={{ left: 4, right: 12 }}><CartesianGrid strokeDasharray="3 3" stroke="rgba(160,230,247,.18)" /><XAxis type="number" stroke="#8bb5c4" tick={{ fontSize: 10 }} /><YAxis dataKey="feature" type="category" width={125} tick={{ fontSize: 10, fill: "#c9e9f0" }} /><Tooltip contentStyle={{ backgroundColor: "rgba(11, 26, 56, .92)", backdropFilter: "blur(16px)", borderColor: "rgba(160,230,247,.35)", borderRadius: "12px" }} /><Bar dataKey="importance" fill="#8be8f6" radius={[0, 6, 6, 0]} animationDuration={reduceMotion ? 0 : 1200} animationEasing="ease-out" /></BarChart></ResponsiveContainer></div></motion.div> : <EmptyResult key="evidence-empty" title="Evidence will appear here." detail="The chart is populated only after a successful live inference." />)}
          {activeTab === "report" && (hasResult ? <motion.div key="report-result" className="obs-report-view" initial={reduceMotion ? false : { opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} exit={reduceMotion ? undefined : { opacity: 0, y: -6 }}><div className="obs-report-heading"><div><FileText /><span>INFERENCE REPORT</span><h3>{uploadedFileName ?? "untitled_module.v"}</h3><p>Generated from this live result and held in your browser until you copy or download it.</p></div><div className="obs-report-actions"><button onClick={copyReport}>{reportAction === "copied" ? <Check /> : <Clipboard />}{reportAction === "copied" ? "Copied" : "Copy"}</button><button onClick={downloadReport}><FileDown />{reportAction === "downloaded" ? "Downloaded" : "Download .md"}</button></div></div><div className="obs-report-preview"><p>Gate estimate: <b>{gateCount} NAND2-equivalent gates</b></p><p>Primary driver: <b>{topFeature}</b></p><p>{explanation.summary}</p><small>The report records returned model data and explains the estimate; it does not claim physical synthesis equivalence.</small></div></motion.div> : <EmptyResult key="report-empty" title="Your inference report will appear here." detail="Run the live model first, then copy or download a report created from returned evidence." />)}
          {activeTab === "history" && <motion.div key="history" className="obs-history-view" initial={false} animate={{ opacity: 1, y: 0 }}>{history.length === 0 ? <EmptyResult title="No local observations yet." detail="Completed estimates are retained in this browser for quick source restoration." /> : <><div className="obs-history-heading"><span>Recent local results</span><button className="obs-text-button" onClick={() => setHistory([])}>Clear history</button></div>{history.map((item) => <button className="obs-history-item" key={item.id} onClick={() => { setCode(item.code); setUploadedFileName(item.name); setActiveTab("observation"); setHasResult(false); }}><span>{item.timestamp}</span><b>{item.name}</b><small>{item.gateCount} gates · {item.topFeature}</small><em>Restore →</em></button>)}</>}</motion.div>}
        </AnimatePresence>
      </article>
    </section>
  </DashboardPageLayout>;
}

function EmptyResult({ title, detail }: { title: string; detail: string }) { return <motion.div className="obs-empty-result" initial={false} animate={{ opacity: 1, y: 0 }}><i /><b>{title}</b><span>{detail}</span></motion.div>; }

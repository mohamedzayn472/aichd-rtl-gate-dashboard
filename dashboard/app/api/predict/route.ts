import { NextResponse } from "next/server";
import { exec } from "child_process";
import fs from "fs";
import path from "path";
import util from "util";

const execPromise = util.promisify(exec);

type PredictResult = {
  error?: string;
  predicted_gate_count?: number;
  features?: Record<string, number>;
  shap_values?: unknown[];
  [key: string]: unknown;
};

function isPredictResult(value: unknown): value is PredictResult {
  return typeof value === "object" && value !== null;
}

function errorMessage(value: unknown): string {
  if (value instanceof Error) return value.message;
  if (typeof value === "object" && value !== null && "message" in value) {
    const message = (value as { message?: unknown }).message;
    if (typeof message === "string") return message;
  }
  return "Unknown error";
}

function errorStdout(value: unknown): string {
  if (typeof value === "object" && value !== null && "stdout" in value) {
    const stdout = (value as { stdout?: unknown }).stdout;
    if (typeof stdout === "string") return stdout;
  }
  return "";
}

function errorStderr(value: unknown): string {
  if (typeof value === "object" && value !== null && "stderr" in value) {
    const stderr = (value as { stderr?: unknown }).stderr;
    if (typeof stderr === "string") return stderr;
  }
  return errorMessage(value);
}

function parsePredictOutput(stdout: string): PredictResult | null {
  const trimmed = stdout.trim();
  if (!trimmed) return null;

  const candidates = [
    trimmed,
    trimmed.slice(trimmed.indexOf("{"), trimmed.lastIndexOf("}") + 1),
  ];
  for (const candidate of candidates) {
    if (!candidate || !candidate.startsWith("{") || !candidate.endsWith("}")) continue;
    try {
      const parsed: unknown = JSON.parse(candidate);
      if (isPredictResult(parsed)) return parsed;
    } catch {
      // Try the next candidate.
    }
  }
  return null;
}

/**
 * Detect the best available Python interpreter.
 * Priority: project venv → python3 → python
 */
async function findPythonInterpreter(rootDir: string): Promise<string> {
  // Check for project venv (Windows and Unix paths)
  const venvCandidates = [
    path.join(rootDir, ".venv", "Scripts", "python.exe"), // Windows venv
    path.join(rootDir, ".venv", "bin", "python"),          // Unix venv
    path.join(rootDir, "venv", "Scripts", "python.exe"),   // Windows venv alt
    path.join(rootDir, "venv", "bin", "python"),            // Unix venv alt
    path.join(rootDir, "rtl_gate_estimator", ".venv", "Scripts", "python.exe"),
    path.join(rootDir, "rtl_gate_estimator", ".venv", "bin", "python"),
  ];

  for (const venvPython of venvCandidates) {
    if (fs.existsSync(venvPython)) {
      return `"${venvPython}"`;
    }
  }

  // Try python3 first (works on macOS/Linux)
  try {
    await execPromise("python3 --version");
    return "python3";
  } catch {
    // python3 not found
  }

  // Fall back to python
  try {
    await execPromise("python --version");
    return "python";
  } catch {
    // python not found either
  }

  throw new Error(
    "No Python interpreter found. Install Python 3.8+ and ensure it is on PATH, " +
    "or create a virtual environment at .venv/ in the project root."
  );
}

export async function POST(req: Request) {
  try {
    const { code, target = "asic" } = await req.json();

    if (!code || typeof code !== "string" || !code.trim()) {
      return NextResponse.json({ success: false, error: "No Verilog code provided" }, { status: 400 });
    }

    // Browser file uploads can retain a UTF-8 BOM, which Yosys interprets as
    // an invalid first Verilog token. Strip the three-byte signature at the
    // byte boundary so serialization cannot reintroduce it downstream.
    const sourceBytes = Buffer.from(code, "utf-8");
    const normalizedBytes = sourceBytes[0] === 0xef && sourceBytes[1] === 0xbb && sourceBytes[2] === 0xbf
      ? sourceBytes.subarray(3)
      : sourceBytes;

    const tempDir = path.join(process.cwd(), "temp");
    if (!fs.existsSync(tempDir)) {
      fs.mkdirSync(tempDir, { recursive: true });
    }

    const tempFile = path.join(tempDir, `input_${Date.now()}.v`);
    fs.writeFileSync(tempFile, normalizedBytes);

    const rootDir = path.join(process.cwd(), "..");
    const backendDir = path.join(rootDir, "rtl_gate_estimator");
    const predictScript = path.join(backendDir, "scripts", "optimize_rtl.py");

    if (!fs.existsSync(predictScript)) {
      if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);
      return NextResponse.json({
        success: false,
        error: `optimize_rtl.py not found at ${predictScript}. Ensure the rtl_gate_estimator directory is present.`,
      });
    }

    let pythonCmd: string;
    try {
      const pythonInterpreter = await findPythonInterpreter(rootDir);
      pythonCmd = `${pythonInterpreter} -m scripts.optimize_rtl --input "${tempFile}" --target ${target}`;
    } catch (interpreterErr: unknown) {
      if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);
      return NextResponse.json({
        success: false,
        error: errorMessage(interpreterErr),
      });
    }

    try {
      const { stdout, stderr } = await execPromise(pythonCmd, {
        cwd: backendDir,
        timeout: 120000, // 120s timeout
      });

      // Cleanup temp file
      if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);

      // optimize_rtl.py emits JSON. Parse the complete output
      const result = parsePredictOutput(stdout);
      if (result) {
        if (result.error) {
          return NextResponse.json({ success: false, error: result.error }, { status: 400 });
        }
        
        // Ensure backwards compatibility with old structure for now
        // while also passing the new fields
        const ml_prediction = (result.ml_prediction as Record<string, unknown>) || {};
        
        return NextResponse.json({
          success: true,
          gateCount: Math.max(0, Math.round((ml_prediction.gate_count as number) || 0)),
          features: ml_prediction.features || {},
          shapValues: ml_prediction.shap_values || [],
          optimization_status: result.optimization_status,
          optimizable: result.optimizable,
          optimized_code: result.optimized_code,
          diff: result.diff,
          functional_equivalence: result.functional_equivalence,
          impact: result.impact,
          transformations_applied: result.transformations_applied,
          warnings: result.warnings,
          synthesisDiagnostics: result.synthesis_diagnostics,
          boundedVerification: result.bounded_verification,
          syntax_error: result.syntax_error,
          raw: result,
        });
      }

      // If Python ran but produced no JSON, report that honestly
      return NextResponse.json({
        success: false,
        error: `Python script ran but produced no JSON output. ${stderr.slice(0, 500) || stdout.slice(0, 500)}`,
      }, { status: 502 });
    } catch (execErr: unknown) {
      if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);

      // predict.py returns structured validation errors on stdout before
      // exiting nonzero. Preserve that client-facing 400 instead of masking
      // it as a generic server failure.
      const structuredError = parsePredictOutput(errorStdout(execErr));
      if (structuredError?.error) {
        return NextResponse.json(
          { success: false, error: structuredError.error },
          { status: 400 },
        );
      }

      // Real execution error — do not fabricate fake data.
      const errorDetail = errorStderr(execErr);
      return NextResponse.json({
        success: false,
        error: `Python inference failed: ${errorDetail.slice(0, 500)}`,
      });
    }
  } catch (err: unknown) {
    return NextResponse.json({ success: false, error: errorMessage(err) }, { status: 500 });
  }
}

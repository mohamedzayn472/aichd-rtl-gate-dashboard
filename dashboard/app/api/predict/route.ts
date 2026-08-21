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
    const { code } = await req.json();

    if (!code || typeof code !== "string" || !code.trim()) {
      return NextResponse.json({ success: false, error: "No Verilog code provided" }, { status: 400 });
    }

    const tempDir = path.join(process.cwd(), "temp");
    if (!fs.existsSync(tempDir)) {
      fs.mkdirSync(tempDir, { recursive: true });
    }

    const tempFile = path.join(tempDir, `input_${Date.now()}.v`);
    fs.writeFileSync(tempFile, code, "utf-8");

    const rootDir = path.join(process.cwd(), "..");
    const backendDir = path.join(rootDir, "rtl_gate_estimator");
    const predictScript = path.join(backendDir, "scripts", "predict.py");
    const configPath = path.join(backendDir, "config", "config.yaml");
    const modelPath = path.join(backendDir, "models", "model.pkl");

    if (!fs.existsSync(predictScript)) {
      if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);
      return NextResponse.json({
        success: false,
        error: `predict.py not found at ${predictScript}. Ensure the rtl_gate_estimator directory is present.`,
      });
    }

    let pythonCmd: string;
    try {
      const pythonInterpreter = await findPythonInterpreter(rootDir);
      pythonCmd = `${pythonInterpreter} "${predictScript}" --input "${tempFile}" --config "${configPath}" --model "${modelPath}" --json`;
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

      // predict.py emits indented multi-line JSON. Parse the complete output
      // first, then fall back to the JSON object boundaries if a wrapper adds
      // harmless stdout noise.
      const result = parsePredictOutput(stdout);
      if (result) {
        if (result.error) {
          return NextResponse.json({ success: false, error: result.error }, { status: 400 });
        }
        return NextResponse.json({
          success: true,
          gateCount: Math.max(0, Math.round(result.predicted_gate_count || 0)),
          features: result.features || {},
          shapValues: result.shap_values || [],
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

import os
import json
import subprocess
from pathlib import Path

# Known-bad RTL examples
UNOPTIMIZED_1 = """
module constant_fold_test (
    input wire a,
    input wire b,
    output wire c,
    output wire d
);
    // Constant folding opportunities
    assign c = a & 1'b0; // should be 0
    assign d = b | 1'b1; // should be 1
endmodule
"""

UNOPTIMIZED_2 = """
module identity_test (
    input wire [3:0] x,
    output wire [3:0] y,
    output wire [3:0] z
);
    // Identity operations
    assign y = x ^ x; // should be 0
    assign z = x + 0; // should be x
endmodule
"""

def run_test(name, rtl_code, top_module):
    print(f"--- Running Test: {name} ---")
    test_file = Path(f"temp/test_{name}.v")
    test_file.parent.mkdir(parents=True, exist_ok=True)
    with open(test_file, "w") as f:
        f.write(rtl_code)

    cmd = [
        os.path.join(".venv", "Scripts", "python.exe"),
        "-m", "scripts.optimize_rtl",
        "--input", str(test_file),
        "--top", top_module
    ]
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    if result.returncode != 0:
        print(f"Error executing pipeline:\n{result.stderr}")
        return False

    try:
        data = json.loads(result.stdout)
    except json.JSONDecodeError:
        print(f"Invalid JSON output:\n{result.stdout}")
        return False

    print(json.dumps(data, indent=2))
    
    if not data.get("optimizable"):
        print(f"FAIL: {name} was not optimized")
        return False
        
    if data.get("functional_equivalence") != "PASS":
        print(f"FAIL: {name} failed functional equivalence")
        return False
        
    print(f"PASS: {name} optimized and formally verified successfully!\n")
    return True

if __name__ == "__main__":
    success = True
    success &= run_test("constant_fold", UNOPTIMIZED_1, "constant_fold_test")
    success &= run_test("identity", UNOPTIMIZED_2, "identity_test")
    
    if success:
        print("All verification tests passed!")
    else:
        print("Some tests failed.")

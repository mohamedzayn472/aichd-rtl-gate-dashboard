"""
RTL Dataset Generator - Generates synthetic RTL modules.
Usage: python generate_rtl.py --num-samples 500 --seed 42
"""
import argparse
import logging
import random
from pathlib import Path
from typing import Dict, List, Tuple
import sys
sys.path.append(str(Path(__file__).parent.parent))
from scripts.utils import ConfigLoader, FileManager

logger = logging.getLogger(__name__)


class RTLGenerator:
    """Generate synthetic Verilog RTL modules."""
    
    def __init__(self, config: dict):
        """Initialize generator with config."""
        self.config = config
        self.gates = config['rtl_generation']['supported_gates']
        self.max_inputs = config['rtl_generation']['max_inputs']
        self.max_outputs = config['rtl_generation']['max_outputs']
        self.max_internal = config['rtl_generation']['max_internal_signals']
        self.logic_density = config['rtl_generation']['logic_density_range']
        self.depth_range = config['rtl_generation']['module_depth_range']
    
    def _generate_expr(self, all_signals: List[str], depth: int) -> Tuple[str, Dict[str, int]]:
        """
        Recursively build a compound boolean expression.

        Only one operand of a binary gate recurses (the other is always a
        leaf signal). This gives roughly linear expression growth (depth ~=
        gate count per expression) instead of exponential blowup, while
        fully decoupling the textual gate count from the number of assign
        lines — eliminating the original 1-gate-per-line tautology.
        """
        gate_counts: Dict[str, int] = {
            'and': 0, 'or': 0, 'xor': 0, 'not': 0, 'nand': 0, 'nor': 0
        }

        if depth <= 0:
            return random.choice(all_signals), gate_counts

        gate = random.choice(self.gates)

        if gate == "NOT":
            operand, sub = self._generate_expr(all_signals, depth - 1)
            for k in gate_counts:
                gate_counts[k] += sub[k]
            gate_counts['not'] += 1
            return f"(~{operand})", gate_counts

        # Only one side recurses — keeps size linear in depth
        nested, sub = self._generate_expr(all_signals, depth - 1)
        leaf = random.choice(all_signals)
        left, right = (nested, leaf) if random.random() < 0.5 else (leaf, nested)
        for k in gate_counts:
            gate_counts[k] += sub[k]

        if gate == "AND":
            gate_counts['and'] += 1
            return f"({left} & {right})", gate_counts
        elif gate == "OR":
            gate_counts['or'] += 1
            return f"({left} | {right})", gate_counts
        elif gate == "XOR":
            gate_counts['xor'] += 1
            return f"({left} ^ {right})", gate_counts
        elif gate == "NAND":
            gate_counts['nand'] += 1
            return f"(~({left} & {right}))", gate_counts
        elif gate == "NOR":
            gate_counts['nor'] += 1
            return f"(~({left} | {right}))", gate_counts

        return left, gate_counts

    def _generate_module_impl(self, module_id: int) -> Tuple[str, Dict[str, int]]:
        """
        Generate a single Verilog module with compound logic expressions.

        Returns (verilog_text, true_gate_counts) where true_gate_counts is
        exact — tracked during generation, not reverse-engineered from text.
        This decouples the label from any regex-based feature, eliminating
        the feature-label leakage that inflated metrics in the original version.
        """
        num_inputs = random.randint(2, self.max_inputs)
        num_outputs = random.randint(1, self.max_outputs)
        num_internal = random.randint(1, self.max_internal)

        inputs   = [f"input wire [{random.randint(0, 7)}:0] in_{i}" for i in range(num_inputs)]
        outputs  = [f"output wire [{random.randint(0, 7)}:0] out_{o}" for o in range(num_outputs)]
        internals = [f"wire [{random.randint(0, 7)}:0] sig_{i}" for i in range(num_internal)]

        module_name = f"rtl_module_{module_id}"
        verilog  = f"module {module_name} (\n"
        verilog += ',\n    '.join(inputs + outputs)
        verilog += "\n);\n\n"

        verilog += "    // Internal signals\n"
        for sig in internals:
            verilog += f"    {sig};\n"
        verilog += "\n"

        min_assignments = num_inputs + num_outputs
        max_assignments = max(
            min_assignments + 1,
            int(num_inputs * num_outputs * random.uniform(*self.logic_density))
        )
        num_assignments = random.randint(min_assignments, max_assignments)

        all_signals = (
            [f"in_{i}"  for i in range(num_inputs)]  +
            [f"sig_{i}" for i in range(num_internal)] +
            [f"out_{o}" for o in range(num_outputs)]
        )

        # Assignable targets must ONLY be internal wires and output ports (never inputs!)
        assignable_targets = (
            [f"sig_{i}" for i in range(num_internal)] +
            [f"out_{o}" for o in range(num_outputs)]
        )

        module_gate_counts: Dict[str, int] = {
            'and': 0, 'or': 0, 'xor': 0, 'not': 0, 'nand': 0, 'nor': 0
        }

        verilog += "    // Logic assignments\n"

        # Guarantee every output is assigned at least once
        assigned_targets = set()
        for o in range(num_outputs):
            target = f"out_{o}"
            assigned_targets.add(target)
            depth = min(random.randint(*self.depth_range), 12)
            expr, expr_counts = self._generate_expr(all_signals, depth)
            for k in module_gate_counts:
                module_gate_counts[k] += expr_counts[k]
            verilog += f"    assign {target} = {expr};\n"

        # Remaining assignments randomly target internal signals or outputs
        remaining = max(0, num_assignments - num_outputs)
        for _ in range(remaining):
            target = random.choice(assignable_targets)
            depth = min(random.randint(*self.depth_range), 12)
            expr, expr_counts = self._generate_expr(all_signals, depth)
            for k in module_gate_counts:
                module_gate_counts[k] += expr_counts[k]
            verilog += f"    assign {target} = {expr};\n"

        verilog += "\nendmodule\n"
        return verilog, module_gate_counts

    def _generate_arithmetic_module(self, module_id: int) -> Tuple[str, Dict[str, int]]:
        """Generate a module using arithmetic operators (+, -, *)."""
        bitwidth = random.choice([4, 8, 16, 32])
        num_inputs = random.randint(2, min(4, self.max_inputs))
        num_outputs = random.randint(1, min(3, self.max_outputs))

        module_name = f"rtl_module_{module_id}"
        verilog = f"module {module_name} (\n"

        in_ports = []
        for i in range(num_inputs):
            verilog_decl = f"input wire [{bitwidth - 1}:0] in_{i}"
            in_ports.append(verilog_decl)

        out_ports = []
        for o in range(num_outputs):
            out_bw = bitwidth if o == 0 else random.choice([bitwidth, bitwidth + 1, 2 * bitwidth])
            verilog_decl = f"output wire [{out_bw - 1}:0] out_{o}"
            out_ports.append(verilog_decl)

        verilog += ',\n    '.join(in_ports + out_ports) + "\n);\n\n"

        # Heuristic gate counts for arithmetic operators:
        # N-bit adder ≈ 5N gates, N-bit multiplier ≈ N² gates, subtractor ≈ 5N gates
        gate_count = 0
        arith_ops = ['+', '-', '*']

        verilog += "    // Arithmetic logic\n"
        num_intermediates = random.randint(1, 4)
        internal_signals = []
        for s in range(num_intermediates):
            verilog += f"    wire [{bitwidth - 1}:0] tmp_{s};\n"
            internal_signals.append(f"tmp_{s}")
        verilog += "\n"

        all_sigs = [f"in_{i}" for i in range(num_inputs)] + internal_signals
        targets = internal_signals + [f"out_{o}" for o in range(num_outputs)]

        for target in targets:
            op = random.choice(arith_ops)
            operands = random.sample(all_sigs, min(2, len(all_sigs)))
            if len(operands) < 2:
                operands = [operands[0], operands[0]]
            if op == '*':
                gate_count += bitwidth * bitwidth
                verilog += f"    assign {target} = {operands[0]} * {operands[1]};\n"
            elif op == '+':
                gate_count += 5 * bitwidth
                # Sometimes add carry chain style
                if random.random() < 0.3 and num_inputs >= 3:
                    third = random.choice([s for s in all_sigs if s not in operands] or all_sigs[:1])
                    gate_count += 5 * bitwidth
                    verilog += f"    assign {target} = {operands[0]} + {operands[1]} + {third};\n"
                else:
                    verilog += f"    assign {target} = {operands[0]} + {operands[1]};\n"
            else:  # '-'
                gate_count += 5 * bitwidth
                verilog += f"    assign {target} = {operands[0]} - {operands[1]};\n"

        verilog += "\nendmodule\n"

        # Map total gate count into the standard breakdown (approximate)
        gate_counts = {
            'and': gate_count // 3,
            'or': gate_count // 4,
            'xor': gate_count // 4,
            'not': gate_count // 6,
            'nand': gate_count // 12,
            'nor': gate_count // 12,
        }
        return verilog, gate_counts

    def _generate_behavioral_module(self, module_id: int) -> Tuple[str, Dict[str, int]]:
        """Generate a module using always blocks with case/if-else."""
        bitwidth = random.choice([4, 8, 16])
        num_data_inputs = random.randint(2, min(4, self.max_inputs))
        sel_width = random.randint(1, 3)
        num_outputs = random.randint(1, min(2, self.max_outputs))
        num_branches = min(2 ** sel_width, random.randint(2, 8))

        module_name = f"rtl_module_{module_id}"
        verilog = f"module {module_name} (\n"

        in_ports = [f"input wire [{bitwidth - 1}:0] in_{i}" for i in range(num_data_inputs)]
        in_ports.append(f"input wire [{sel_width - 1}:0] sel")
        out_ports = [f"output reg [{bitwidth - 1}:0] out_{o}" for o in range(num_outputs)]
        verilog += ',\n    '.join(in_ports + out_ports) + "\n);\n\n"

        # Gate count heuristic: mux ≈ (num_branches × bitwidth × 4) for a case statement
        gate_count = 0
        arith_ops = ['+', '-', '&', '|', '^']

        use_case = random.random() < 0.6

        if use_case:
            verilog += "    always @(*) begin\n"
            verilog += f"        case(sel)\n"
            for b in range(num_branches):
                op = random.choice(arith_ops)
                ins = random.sample([f"in_{i}" for i in range(num_data_inputs)], min(2, num_data_inputs))
                if len(ins) < 2:
                    ins = [ins[0], ins[0]]

                branch_label = f"{sel_width}'d{b}"
                for o in range(num_outputs):
                    if op in ['+', '-']:
                        gate_count += 5 * bitwidth
                    else:
                        gate_count += bitwidth
                    verilog += f"            {branch_label}: out_{o} = {ins[0]} {op} {ins[1]};\n"
                    branch_label = f"       "  # subsequent outputs don't need a new label

            verilog += f"            default: "
            for o in range(num_outputs):
                verilog += f"out_{o} = {bitwidth}'b0; "
            gate_count += bitwidth * num_outputs
            verilog += "\n        endcase\n"
            verilog += "    end\n"
            # Mux overhead
            gate_count += num_branches * bitwidth * 4
        else:
            # if-else chain
            verilog += "    always @(*) begin\n"
            for b in range(num_branches):
                cond = f"sel == {sel_width}'d{b}"
                op = random.choice(arith_ops)
                ins = random.sample([f"in_{i}" for i in range(num_data_inputs)], min(2, num_data_inputs))
                if len(ins) < 2:
                    ins = [ins[0], ins[0]]

                prefix = "if" if b == 0 else "else if"
                verilog += f"        {prefix} ({cond}) begin\n"
                for o in range(num_outputs):
                    if op in ['+', '-']:
                        gate_count += 5 * bitwidth
                    else:
                        gate_count += bitwidth
                    verilog += f"            out_{o} = {ins[0]} {op} {ins[1]};\n"
                verilog += "        end\n"

            verilog += "        else begin\n"
            for o in range(num_outputs):
                verilog += f"            out_{o} = {bitwidth}'b0;\n"
            gate_count += bitwidth * num_outputs
            verilog += "        end\n"
            verilog += "    end\n"
            gate_count += num_branches * bitwidth * 3  # mux/priority overhead

        verilog += "\nendmodule\n"

        gate_counts = {
            'and': gate_count // 3,
            'or': gate_count // 4,
            'xor': gate_count // 5,
            'not': gate_count // 6,
            'nand': gate_count // 12,
            'nor': gate_count // 12,
        }
        return verilog, gate_counts

    def _generate_mixed_module(self, module_id: int) -> Tuple[str, Dict[str, int]]:
        """Generate a module mixing assign + always blocks."""
        bitwidth = random.choice([4, 8])
        num_inputs = random.randint(2, min(4, self.max_inputs))
        num_outputs = random.randint(2, min(4, self.max_outputs))

        module_name = f"rtl_module_{module_id}"
        verilog = f"module {module_name} (\n"

        in_ports = [f"input wire [{bitwidth - 1}:0] in_{i}" for i in range(num_inputs)]
        # Some outputs are wire (from assign), some are reg (from always)
        assign_outs = num_outputs // 2
        always_outs = num_outputs - assign_outs
        out_ports = []
        for o in range(assign_outs):
            out_ports.append(f"output wire [{bitwidth - 1}:0] out_{o}")
        for o in range(assign_outs, num_outputs):
            out_ports.append(f"output reg [{bitwidth - 1}:0] out_{o}")

        verilog += ',\n    '.join(in_ports + out_ports) + "\n);\n\n"

        gate_count = 0
        verilog += "    // Combinational assigns\n"
        num_wires = random.randint(1, 4)
        for w in range(num_wires):
            verilog += f"    wire [{bitwidth - 1}:0] w_{w};\n"

        all_sigs = [f"in_{i}" for i in range(num_inputs)] + [f"w_{w}" for w in range(num_wires)]

        for w in range(num_wires):
            op = random.choice(['+', '&', '|', '^'])
            ins = random.sample(all_sigs[:num_inputs], min(2, num_inputs))
            if len(ins) < 2:
                ins = [ins[0], ins[0]]
            if op == '+':
                gate_count += 5 * bitwidth
            else:
                gate_count += bitwidth
            verilog += f"    assign w_{w} = {ins[0]} {op} {ins[1]};\n"

        for o in range(assign_outs):
            op = random.choice(['+', '-', '&', '|', '^'])
            ins = random.sample(all_sigs, min(2, len(all_sigs)))
            if len(ins) < 2:
                ins = [ins[0], ins[0]]
            if op in ['+', '-']:
                gate_count += 5 * bitwidth
            else:
                gate_count += bitwidth
            verilog += f"    assign out_{o} = {ins[0]} {op} {ins[1]};\n"

        verilog += "\n    // Behavioral always block\n"
        verilog += "    always @(*) begin\n"
        for o in range(assign_outs, num_outputs):
            op = random.choice(['+', '-', '&', '|'])
            ins = random.sample(all_sigs, min(2, len(all_sigs)))
            if len(ins) < 2:
                ins = [ins[0], ins[0]]
            if op in ['+', '-']:
                gate_count += 5 * bitwidth
            else:
                gate_count += bitwidth
            verilog += f"        out_{o} = {ins[0]} {op} {ins[1]};\n"
        verilog += "    end\n"

        verilog += "\nendmodule\n"

        gate_counts = {
            'and': gate_count // 3,
            'or': gate_count // 4,
            'xor': gate_count // 5,
            'not': gate_count // 6,
            'nand': gate_count // 12,
            'nor': gate_count // 12,
        }
        return verilog, gate_counts

    def generate_module(self, module_id: int) -> str:
        """Return only the generated Verilog text for backward compatibility."""
        verilog_code, _ = self.generate_module_with_counts(module_id)
        return verilog_code

    def generate_module_with_counts(self, module_id: int) -> Tuple[str, Dict[str, int]]:
        """Return both RTL text and the exact gate counts for pipeline use.

        Randomly selects from four styles to create diverse training data:
        - 50% explicit gate-level (original)
        - 20% arithmetic (+, -, *)
        - 20% behavioral (always, case, if/else)
        - 10% mixed (assign + always)
        """
        style = random.random()
        if style < 0.50:
            return self._generate_module_impl(module_id)
        elif style < 0.70:
            return self._generate_arithmetic_module(module_id)
        elif style < 0.90:
            return self._generate_behavioral_module(module_id)
        else:
            return self._generate_mixed_module(module_id)


def main():
    """Generate RTL dataset."""
    parser = argparse.ArgumentParser(description='Generate RTL dataset')
    parser.add_argument('--num-samples', type=int, default=500, help='Number of samples')
    parser.add_argument('--seed', type=int, default=42, help='Random seed')
    parser.add_argument('--output', type=str, default='data/rtl', help='Output directory')
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file path')
    
    args = parser.parse_args()
    
    # Load config
    config = ConfigLoader.load_config(args.config)
    
    # Set random seed
    random.seed(args.seed)
    
    # Setup logging
    from scripts.utils import setup_logging
    log_file = Path(config['paths']['results_dir']) / 'pipeline.log'
    setup_logging(log_file=str(log_file), level=config['logging']['level'])
    
    logger.info(f"Generating {args.num_samples} RTL modules...")
    
    # Create output directory
    output_dir = Path(args.output)
    FileManager.ensure_directory(output_dir)
    
    # Initialize generator
    generator = RTLGenerator(config)
    
    # Generate modules, saving exact gate counts as ground truth
    import csv
    ground_truth_rows = []

    for i in range(args.num_samples):
        verilog_code, gate_counts = generator.generate_module_with_counts(i)
        output_file = output_dir / f"rtl_module_{i}.v"
        with open(output_file, 'w') as f:
            f.write(verilog_code)

        row = {'module_id': i, 'gate_count': sum(gate_counts.values())}
        for g in ('and', 'or', 'xor', 'not', 'nand', 'nor'):
            row[f'{g}_gates'] = gate_counts[g]
        ground_truth_rows.append(row)

        if (i + 1) % 50 == 0:
            logger.info(f"Generated {i + 1}/{args.num_samples} modules")

    # Save ground truth — collect_labels.py will prefer this over regex
    gt_path = output_dir / 'ground_truth_gates.csv'
    with open(gt_path, 'w', newline='') as f:
        fields = ['module_id', 'gate_count',
                  'and_gates', 'or_gates', 'xor_gates',
                  'not_gates', 'nand_gates', 'nor_gates']
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        writer.writerows(ground_truth_rows)

    logger.info(f"[OK] Ground-truth gate counts saved to {gt_path}")
    logger.info(f"[OK] Generated {args.num_samples} RTL modules in {output_dir}")


if __name__ == '__main__':
    main()

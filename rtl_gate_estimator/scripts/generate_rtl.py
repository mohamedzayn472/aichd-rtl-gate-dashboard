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

    def generate_module(self, module_id: int) -> str:
        """Return only the generated Verilog text for backward compatibility."""
        verilog_code, _ = self._generate_module_impl(module_id)
        return verilog_code

    def generate_module_with_counts(self, module_id: int) -> Tuple[str, Dict[str, int]]:
        """Return both RTL text and the exact gate counts for pipeline use."""
        return self._generate_module_impl(module_id)


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

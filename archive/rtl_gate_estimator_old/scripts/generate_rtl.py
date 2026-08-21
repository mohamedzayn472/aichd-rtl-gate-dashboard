"""
RTL Dataset Generator - Generates synthetic RTL modules.
Usage: python generate_rtl.py --num-samples 500 --seed 42
"""
import argparse
import logging
import random
from pathlib import Path
from typing import List, Tuple
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
    
    def generate_module(self, module_id: int) -> str:
        """Generate a single Verilog module."""
        num_inputs = random.randint(2, self.max_inputs)
        num_outputs = random.randint(1, self.max_outputs)
        num_internal = random.randint(1, self.max_internal)
        
        # Generate port declarations
        inputs = [f"input wire [{random.randint(0, 7)}:0] in_{i}" for i in range(num_inputs)]
        outputs = [f"output wire [{random.randint(0, 7)}:0] out_{o}" for o in range(num_outputs)]
        internals = [f"wire [{random.randint(0, 7)}:0] sig_{i}" for i in range(num_internal)]
        
        # Generate module header
        module_name = f"rtl_module_{module_id}"
        ports = ', '.join(inputs + outputs)
        
        verilog = f"module {module_name} (\n"
        verilog += ',\n    '.join(inputs + outputs)
        verilog += "\n);\n\n"
        
        # Add internal signal declarations
        verilog += "    // Internal signals\n"
        for sig in internals:
            verilog += f"    {sig};\n"
        verilog += "\n"
        
        # Generate random logic assignments
        min_assignments = num_inputs + num_outputs
        max_assignments = max(min_assignments + 1, int(num_inputs * num_outputs * random.uniform(*self.logic_density)))
        num_assignments = random.randint(min_assignments, max_assignments)
        
        all_signals = [f"in_{i}" for i in range(num_inputs)] + \
                      [f"sig_{i}" for i in range(num_internal)] + \
                      [f"out_{o}" for o in range(num_outputs)]
        
        verilog += "    // Logic assignments\n"
        for _ in range(num_assignments):
            gate = random.choice(self.gates)
            target = random.choice(all_signals)
            src1 = random.choice(all_signals)
            src2 = random.choice(all_signals) if gate != "NOT" else None
            
            if gate == "NOT":
                verilog += f"    assign {target} = ~{src1};\n"
            elif gate == "AND":
                verilog += f"    assign {target} = {src1} & {src2};\n"
            elif gate == "OR":
                verilog += f"    assign {target} = {src1} | {src2};\n"
            elif gate == "XOR":
                verilog += f"    assign {target} = {src1} ^ {src2};\n"
            elif gate == "NAND":
                verilog += f"    assign {target} = ~({src1} & {src2});\n"
            elif gate == "NOR":
                verilog += f"    assign {target} = ~({src1} | {src2});\n"
        
        verilog += "\nendmodule\n"
        return verilog


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
    
    # Generate modules
    for i in range(args.num_samples):
        verilog_code = generator.generate_module(i)
        output_file = output_dir / f"rtl_module_{i}.v"
        
        with open(output_file, 'w') as f:
            f.write(verilog_code)
        
        if (i + 1) % 50 == 0:
            logger.info(f"Generated {i + 1}/{args.num_samples} modules")
    
    logger.info(f"[OK] Generated {args.num_samples} RTL modules in {output_dir}")


if __name__ == '__main__':
    main()

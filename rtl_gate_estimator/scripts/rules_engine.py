"""
Rules Engine for RTL Code Optimization Pipeline.
Applies static analysis and safe source-level transformations to unoptimized RTL.
"""
import re
from typing import Dict, Any, List, Tuple

class Rule:
    def __init__(self, name: str, pattern: str, replacement: str, rationale: str):
        self.name = name
        self.pattern = re.compile(pattern, re.MULTILINE)
        self.replacement = replacement
        self.rationale = rationale

    def apply(self, code: str) -> Tuple[str, List[Dict[str, str]]]:
        transformations = []
        
        # Simple match tracking
        def repl_func(match):
            original = match.group(0)
            # Some replacements might use group references
            replaced = match.expand(self.replacement)
            if original != replaced:
                # Find line number (approximate)
                idx = match.start()
                line_no = code.count('\n', 0, idx) + 1
                transformations.append({
                    "rule": self.name,
                    "location": f"line {line_no}",
                    "rationale": f"Replaced '{original.strip()}' with '{replaced.strip()}': {self.rationale}"
                })
            return replaced

        optimized_code = self.pattern.sub(repl_func, code)
        return optimized_code, transformations

class RulesEngine:
    def __init__(self):
        # Define a basic catalog of rules
        self.rules = [
            # Constant Folding
            Rule("Constant Folding (AND 0)", r'(\w+)\s*&\s*1\'b0', r"1'b0", "ANDing with 0 is always 0."),
            Rule("Constant Folding (0 AND)", r'1\'b0\s*&\s*(\w+)', r"1'b0", "ANDing with 0 is always 0."),
            Rule("Constant Folding (OR 1)", r'(\w+)\s*\|\s*1\'b1', r"1'b1", "ORing with 1 is always 1."),
            Rule("Constant Folding (1 OR)", r'1\'b1\s*\|\s*(\w+)', r"1'b1", "ORing with 1 is always 1."),
            
            # Identity Rules
            Rule("Identity (XOR Self)", r'(\w+)\s*\^\s*\1(?!\w)', r"1'b0", "XORing a signal with itself is always 0."),
            Rule("Identity (ADD 0)", r'(\w+)\s*\+\s*0(?!\d)', r"\1", "Adding 0 is a no-op."),
            Rule("Identity (SUB 0)", r'(\w+)\s*-\s*0(?!\d)', r"\1", "Subtracting 0 is a no-op."),
            
            # Redundant Parens (Simple)
            Rule("Redundant Parentheses", r'\(\s*([a-zA-Z0-9_]+)\s*\)', r"\1", "Removed unnecessary parentheses around a single signal.")
        ]

    def optimize(self, code: str) -> Tuple[str, List[Dict[str, str]]]:
        current_code = code
        all_transformations = []
        
        # Iteratively apply rules until fixpoint (or max passes)
        for _ in range(5):
            changed_in_pass = False
            for rule in self.rules:
                new_code, transformations = rule.apply(current_code)
                if new_code != current_code:
                    current_code = new_code
                    all_transformations.extend(transformations)
                    changed_in_pass = True
            
            if not changed_in_pass:
                break
                
        return current_code, all_transformations

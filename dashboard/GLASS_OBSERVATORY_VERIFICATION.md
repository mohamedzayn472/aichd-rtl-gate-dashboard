# Glass Observatory Local Verification

The rebuilt local dashboard rendered a new full-width Observatory shell with compact global navigation, a command trigger, motion preference control, an Observation Deck, and real project metrics.

The Inference Workbench loaded the example Verilog source and successfully called the existing live prediction route. The returned observation displayed **19** estimated NAND2-equivalent gates, `complex_chars` as the leading returned influence, and structural evidence of **3** inputs, **2** outputs, and **6** internal wires. The completed observation was retained in local history.

The evidence tab rendered the returned SHAP contribution chart, and the history tab showed the completed result with a restore control. Both surfaces therefore reflect real response data and retained local observation state rather than preview placeholders.

The compact top-level command trigger opened the Observatory command palette with direct routes for Overview, Inference, Analysis, Validation, and Methods. This confirms the replacement navigation model is operational independently of the prior sidebar interface.

Selecting Analysis from the command palette opened the existing data-rich analysis route inside the new Observatory shell. The persistent motion preference also changed from “Motion on” to “Motion off”, confirming the accessible decorative-motion control is live.

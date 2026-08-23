# AICHD Glass Observatory: Production Rebuild

The approved Glass Observatory concept is implemented as a **new application grammar**, not a palette applied to the prior dashboard. The experience is organized around a top-level observation deck, an immersive inference workbench, and evidence panels that expose live model output.

| Surface | Production behavior |
| --- | --- |
| Observation deck | Replaces the sidebar/right-rail frame with a compact global navigation bar, command palette, and a responsive full-width workspace. |
| Inference workbench | Places source input, live gate estimate, feature contribution, and trust evidence inside one interactive Observatory surface. |
| Results history | Stores completed local inference summaries in the browser and lets users restore a recent source module. |
| Motion controls | Provides a persistent motion preference that suppresses decorative Observatory motion without affecting core interactions. |

The visual vocabulary uses navy space, spectral cyan, transparent optical panels, a restrained star field, orbital rings, and readable evidence-first typography. Existing `/api/predict` behavior remains the only source of live estimation data.

# Circuit Canvas Design Specification

## Design Movement

**Technical drafting and contemporary PCB interface design.** The dashboard becomes a working circuit board: dense but legible, precise without becoming sterile, and animated like signals travelling through an instrument rather than like a marketing site.

## Core Principles

The interface uses a dark carbon canvas with a restrained graph-paper grid. Information surfaces are represented as physical board modules: clipped corners, copper edge traces, solder-pad markers, and clear subsystem labels. The source editor remains the input block, while results become a connected analysis module so the user can read the workflow spatially. Every decorative line stays behind or beside actionable controls and never obstructs text, clicks, scrolling, or keyboard focus.

## Color Philosophy

The primary canvas is charcoal rather than blue-black, to suggest a prototyping desk and make the technical data feel grounded. **Copper `#F0A94B`** is the signature trace color: it identifies progression and primary actions. Signal mint `#83E6BC` denotes verified/healthy states, while ultraviolet blue is reserved for active selection and analytical emphasis. Amber and coral retain their existing semantic roles for no-improvement and withheld candidates. High-contrast parchment text protects readability across translucent board layers.

## Layout Paradigm

The prediction page uses an **asymmetric signal path**: a source module on the left feeds an evidence module on the right through a visible, non-interactive trace seam. On compact screens, this resolves into a vertical signal path with a short connector between panels. The existing tabs remain in their current logical location inside the evidence module, preventing the current workflow from changing.

## Signature Elements

Three motifs recur throughout the interface: copper traces terminating at circular vias, clipped-corner board panels with registration marks, and a faint Cartesian schematic grid. The estimated gate count becomes an octagonal chip readout instead of a glass orb, and status controls use small LED indicators instead of celestial dots.

## Interaction and Animation

Hover states brighten edge traces and lift panels by at most two pixels. A live inference animates a thin signal pulse from the source module toward the evidence module; tabs use an instant, high-contrast active trace. Motion is limited to opacity and transforms, stays under 300 ms for common interactions, and obeys the existing motion toggle and reduced-motion preference. Keyboard interactions remain immediate.

## Typography and Voice

`Rebels` is used only for large, compact display titles; `Roboto Mono` remains the annotation and code font, while a system sans-serif supports readable explanatory prose. Headlines are concise and operational: “Route RTL into evidence” rather than generic welcome text. Labels use engineering-oriented microcopy such as “source node,” “verification path,” and “signal retained.”

## Preservation Contract

This redesign changes only visual hierarchy, copy presentation, layout styling, and decorative motion. It must preserve the existing API request and response flow, source upload and drag/drop handling, target selector, live inference states, tab navigation, optimization actions, reports, downloads, copy actions, history persistence, keyboard command palette, and reduced-motion behavior.

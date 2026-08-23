# Selected Animation Patterns for AICHD

The Watermelon reference’s animation catalog exposes categories including **Action**, **Buttons**, **Cards**, **Carousel**, **Choice-chips**, **Dialog**, **Disclosure**, and **Dropdown**. AICHD will adapt only the following interaction ideas, implemented independently with its existing motion library and original AICHD visuals.

| Pattern | AICHD application | Reason |
| --- | --- | --- |
| Card interaction | Metric cards and model evidence cards receive short hover lift and focused outline states. | Improves scanability without altering page structure. |
| Action button feedback | The inference button shifts through idle, parsing, success, and validation-error states. | Gives the live model request clear feedback. |
| Progressive disclosure | Returned structural features and SHAP evidence use compact expandable sections. | Keeps the inference view focused while retaining full results. |
| Choice chips | Result tabs use animated selection chips for Summary, Evidence, and History. | Supports switching result views without a redesign. |
| List transition | Saved local inference history expands and collapses with staggered rows. | Makes restored source runs easy to browse. |

The sidebar/template layout, Watermelon brand assets, page structure, wordmark, and mascot are explicitly excluded from the AICHD implementation.

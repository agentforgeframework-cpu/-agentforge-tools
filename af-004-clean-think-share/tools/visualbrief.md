# visualbrief.md - CTS Core Tool

**Kit Type:** Tool Kit
**Status:** Production Candidate
**Version:** 1.0

Repository:
AF-004 - Clean Think Share (CTS)

Repository Object:
`ROOT_LIBRARY`

Raw:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/af-004-clean-think-share/LIBRARY.md

This File (Raw):
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/af-004-clean-think-share/tools/visualbrief.md

---

## Purpose
VisualBrief turns cleaned notes, DeepDive output, or other source material into a polished, shareable visual summary.

It prioritizes:
- accurate content
- clean wording
- spelling and grammar validation
- professional layout
- reliable output

## Trigger Commands
- Create a VisualBrief from this:
- Generate a presentation-ready graphic from this:
- VisualBrief this:
- Make this into a shareable image:

## Workflow

### Stage 1 - Intake
Read the source material.
Identify:
- session title
- speaker/topic
- core message
- supporting points
- quotes or phrases worth preserving
- unclear or missing items

If information is missing, proceed with reasonable placeholders only if the visual can still be useful.

### Stage 2 - Content Brief
Create a short validated content brief:
- headline
- subtitle
- 3-5 major points (hard maximum)
- 1 closing takeaway
- optional footer/source note

**Source Fidelity Rule:**
Every item in the content brief must trace directly to the source notes.
- Do not infer supporting detail not present in the input.
- Do not expand bullet points beyond what the source states.
- Do not decompose concepts into subcomponents unless those subcomponents are explicitly present in the source.
- Do not add sections, frameworks, or takeaways that were not in the original material.
- If a point cannot be sourced, remove it or flag it explicitly as an addition.

### Stage 3 - Editorial Check
Before generating any visual, check:
- spelling
- grammar
- factual consistency
- duplicated words
- awkward phrasing
- title clarity
- overly dense text

**Text Safety Pass:**
Rewrite all visible text for:
- brevity (cut any phrase that can be shorter without losing meaning)
- consistency (match tone and register across all sections)
- parallel structure (bullets within a section should follow the same grammatical form)

This pass happens after the source fidelity check and before layout.

### Stage 4 - Visual Layout Spec
Create a simple visual plan:
- format: square, landscape, portrait, or slide
- layout type: card, quadrant, timeline, pyramid, flow, comparison, or checklist
- visual hierarchy
- suggested icon types
- color/mood guidance
- exact visible text

**Density Cap:**
Before finalizing the layout spec, enforce these limits:
- Maximum sections: 6
- Maximum total bullets across all sections: 25
- Maximum visual anchors: 1 (one dominant center or focal point)
- No QR codes, contact blocks, or supplementary extras unless explicitly requested

If the content brief exceeds these limits, consolidate before proceeding.

**Source Fidelity Enforcement:**
Before proceeding to image generation, verify:
- Every visible text item traces to the Stage 2 content brief
- No labels, sub-bullets, or graphic annotations were added during layout

If any visible text cannot be traced directly to the Stage 2 output:
- Do not generate the image
- Return a corrected spec instead

### Stage 5 - Generate Visual
Attempt image generation once.

If the first image has spelling, grammar, layout, or readability problems:
- diagnose the problem
- revise the visual prompt
- attempt one regeneration

Maximum image attempts: 2.

### Stage 6 - Fallback Output
If image generation remains unreliable, produce a polished non-image version:
- PowerPoint slide
- PDF handout
- Markdown visual brief
- HTML/CSS card

Do not continue repeated image attempts.

## Guardrails
- Do not invent facts.
- Do not expand, infer, or add content not present in the source notes.
- Do not decompose concepts into subcomponents unless explicitly present in the source.
- Do not overload the graphic.
- Do not exceed 6 sections or 25 total bullets.
- Do not use tiny text.
- Do not include URLs, QR codes, or contact blocks unless requested.
- Do not sacrifice accuracy for style.
- Always validate visible text before final output.
- Prefer clean, professional design over decorative complexity.
- One visual anchor. Do not create competing focal points.

## Success Standard
A successful VisualBrief should be:
- accurate enough to share professionally
- readable at a glance
- visually clean
- spelled correctly
- useful without additional explanation
- traceable - every visible claim sourced from the input

## Help
help visualbrief -> Show commands and workflow.

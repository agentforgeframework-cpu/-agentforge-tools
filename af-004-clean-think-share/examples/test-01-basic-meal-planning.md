# test-01-basic-meal-planning.md - CTS Example

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
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/af-004-clean-think-share/examples/test-01-basic-meal-planning.md

---

## Purpose
Validate that CTS can take simple messy input and produce clear, usable output.

## Input
Paste this:

need to plan dinners this week
trying to eat healthier
kid picky no strong flavors
have chicken and beef
busy tuesday
don't want complicated meals

## Run Sequence
1. Run NoteCleanup
2. (Optional) Run DeepDive
3. Run VisualBrief

## Expected Behavior
- Input becomes structured
- Key constraints identified
- Simple plan or framework emerges

## Pass Criteria
- Output is clearer than input
- Constraints are preserved
- Result is usable for decision-making

## Watch For
- Overcomplication
- Missing constraints
- Added assumptions

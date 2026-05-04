# QUICKSTART.md — AgentForge Standards

## Purpose

Quickly show how to start using AgentForge Standards.

AgentForge Standards are submission standards for consistent and reliable AI output.

You cannot control the model.
You can control the input.

---

## Fast Start

1. Load the standards package using LOAD_STANDARDS.md.
2. Pick the standard that matches your need.
3. Use the standard command or submission pattern.
4. Review the output.
5. Export or refine as needed.

---

## Core Standards

- math.md — structured calculation submissions
- diag.md — structured diagnostic submissions
- override.md — explicit user intent and temporary exceptions
- rules.md — visible rule identification and reporting
- chatexport.md — condensed conversation export

---

## Examples

Use these to see how each standard works:

- math example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/math_example.md
- diag example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/diag_example.md
- override example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/override_example.md
- rules example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/rules_example.md
- chatexport example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/chatexport_example.md

Examples are optional. They are for learning and validation.

---

## Suggested First Test

After loading the package, run:

```text
Run standards self-check
```

Expected result:

- Required files loaded
- Standards understood
- Optional examples listed if loaded
- System waits for next command

---

## Common Uses

### Calculation

Use math.md when arithmetic must be structured and reliable.

### Diagnostic Review

Use diag.md when something seems inconsistent, incomplete, or unclear.

### User Intent Control

Use override.md when a user needs to temporarily adjust project-defined behavior.

### Rule Visibility

Use rules.md when visible rules need to be listed, clarified, or referenced.

### Conversation Export

Use chatexport.md when a discussion needs to be preserved as a clean, condensed export.

---

## One-Line Summary

> Better input structure creates more reliable AI output.

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-04

Notes:
- Created for the AgentForge Standards package.
- Uses explicit GitHub example links for cross-model compatibility.

---

# License

Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

This material is provided as-is, without warranty.

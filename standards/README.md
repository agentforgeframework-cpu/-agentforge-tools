# AgentForge Standards

## Purpose

Submission standards for consistent and reliable AI output.

You cannot control the model.  
You can control the input.

These standards help users submit clearer, more structured requests so AI systems can produce more predictable, usable results.

---

## Core Principle

> Better inputs. Better outputs. Predictable results.

---

## What This Is

AgentForge Standards is a lightweight set of reusable submission standards.

It is not a software platform.  
It is not a replacement for model safety rules.  
It does not control the model itself.

It provides practical structure for how users ask, test, guide, and preserve AI output.

---

## Package Structure

```text
standards/
  README.md
  QUICKSTART.md
  HELP.md
  USER_GUIDE.md
  LOAD_STANDARDS.md
  CHANGELOG.md

  core/
    math.md
    diag.md
    override.md
    rules.md
    chatexport.md

  examples/
    math_example.md
    diag_example.md
    override_example.md
    rules_example.md
    chatexport_example.md

  media/
```

---

## Core Standards

| File | Name | Purpose |
|---|---|---|
| core/math.md | RUNMATH | Structured calculation submissions |
| core/diag.md | DIAG | Structured diagnostic submissions |
| core/override.md | OVERRIDE | Explicit user intent and temporary exceptions |
| core/rules.md | RULES | Visible rule identification and reporting |
| core/chatexport.md | CHATEXPORT | Condensed conversation export |

---

## Start Here

For human use:

https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/QUICKSTART.md

For AI loading:

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/LOAD_STANDARDS.md

---

## Examples

Examples are optional and are provided for learning, validation, and onboarding.

https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/

---

## One-Line Summary

> AgentForge Standards helps users ask better so AI can answer more reliably.

---

## File Reference

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/README.md

Raw Loading Location:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/README.md

Related Blog Article:  
https://agentforgeframework.blogspot.com/2026/05/chatbot-standard-tools.html

AgentForge Blog:  
https://agentforgeframework.blogspot.com/

Version:  
v2.0

Last Updated:  
2026-05-04

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-04

Notes:
- Revised as part of AgentForge Standards packaging and cross-model loading tests.
- Clarifies that AgentForge Standards are submission standards, not model behavior control.

- Updated to clarify that the package defines submission standards, not AI behavior control.
- Updated to reflect core/examples/media folder layout.
---

# License

Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to:
- Use this material for any purpose
- Share it freely
- Modify it as you see fit

Under these conditions:
- Keep this notice with any copies or substantial portions
- Give credit to Paul McDonald where reasonable
- Do not sell this material by itself as a standalone product

This material is provided "as is", without warranty of any kind.


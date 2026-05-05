# HELP.md — AgentForge Standards

## What This Is

A lightweight set of submission standards to improve AI output consistency.

AgentForge Standards help users structure requests so AI systems can produce clearer, more predictable, and more usable output.

You cannot control the model.  
You can control the input.

---

## Core Standards

### math.md

Use math.md for structured calculation submissions.

Primary command:

```text
RUNMATH <expression>
```

---

### diag.md

Use diag.md for diagnostic visibility.

Common commands:

```text
DIAG ON
DIAG OFF
DIAG VERBOSE
```

---

### override.md

Use override.md for explicit user intent and temporary exceptions to eligible visible project rules.

Common commands:

```text
OVERRIDE ON <RULE_ID>
OVERRIDE LIST
OVERRIDE CLEAR
```

---

### rules.md

Use rules.md to identify, clarify, and report visible user, project, and package rules.

Common commands:

```text
RULES
RULES ALL
RULE ADD
RULE REFINE <RULE_ID>
```

---

### chatexport.md

Use chatexport.md to create a condensed, portable export of a conversation.

Common command:

```text
CHATEXPORT
```

---

## Human Start

Use QUICKSTART.md:

https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/QUICKSTART.md

---

## AI Loading

Use LOAD_STANDARDS.md:

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/LOAD_STANDARDS.md

---

## One-Line Summary

> Standardize inputs to stabilize outputs.

---

## File Reference

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/HELP.md

Raw Loading Location:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/HELP.md

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

- Updated to include rules.md and chatexport.md.
- Updated to reflect submission standards positioning.
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


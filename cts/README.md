# README.md — CTS

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/README.md

Raw GitHub URL:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/README.md

---

## What This Is

Clean–Think–Share (CTS) is an AgentForge Kit for turning messy, imperfect input into clear, actionable understanding.

CTS follows a simple workflow:

**Clean → Think → Share**

The kit is intentionally built from small, focused tools that work together without merging responsibilities.

---

## The Workflow

### 1. Clean — NoteCleanup

Use NoteCleanup to:
- organize messy notes
- stabilize incomplete input
- extract signal from noise
- create reusable structured output

---

### 2. Think — DeepDive

Use DeepDive to:
- analyze ideas and decisions
- identify risks and assumptions
- apply structured thinking models
- improve clarity and direction

DeepDive is optional. Use it when decision quality, strategy, risk, or structured thinking matters.

---

### 3. Share — VisualBrief

Use VisualBrief to:
- create visual summaries
- generate presentation-ready outputs
- communicate findings clearly
- create professional artifacts

---

## Included Core Tools

| Tool | Purpose |
|---|---|
| NoteIntake | Rapid information gathering |
| NoteCleanup | Stabilize messy input |
| DeepDive | Structured analysis |
| VisualBrief | Shareable visual communication |

Core tools are located in:

```text
/core-tools/
```

---

## Key Files

| File | Purpose |
|---|---|
| README.md | Main kit overview |
| QUICKSTART_CTS.md | Human fast-start guide |
| SETUP_CTS.md | AI-assisted kit setup and orchestration |
| KIT_MANIFEST_CTS.md | Example kit manifest for the canonical CTS kit |

---

## Directory Structure

```text
/cts/
  README.md
  QUICKSTART_CTS.md
  SETUP_CTS.md
  KIT_MANIFEST_CTS.md

  /core-tools/
    NoteIntake.md
    NoteCleanup.md
    DeepDive.md
    VisualBrief.md

  /examples/
    test-*.md

  /validation/
    optional

  /governance/
    optional, only when kit-specific governance is required
```

---

## Examples

The `/examples/` directory is required for production kits.

Examples may include runnable usage tests such as:
- `test-01-*.md`
- `test-02-*.md`
- `test-03-*.md`

These are practical examples, not formal validation artifacts.

---

## Validation

The `/validation/` directory is optional.

Use `/validation/` only when formal validation, regression testing, deployment checks, or production readiness evidence is required.

---

## Governance

CTS inherits governance from the central AgentForge governance repository.

Do not duplicate central governance documents inside this kit.

Use a local `/governance/` directory only when the kit requires additional kit-specific governance.

Example:
- only a licensed physician may use a cardiac decision-support kit

---

## Core Principle

> Accept imperfect input. Produce reliable output.

---

## 2 AM Engineer Test

If a tired engineer cannot understand how to set up and use this kit at 2 AM, the kit is not clear enough.

CTS should remain:
- readable
- operational
- traceable
- maintainable
- simple to load
- simple to explain

---

## Design Philosophy

- small tools
- clear purpose
- no unnecessary overlap
- composable workflow
- no hidden logic
- traceable output
- human-in-command operation

---

## Related Files

- QUICKSTART_CTS.md
- SETUP_CTS.md
- KIT_MANIFEST_CTS.md

---

## Related Blog Article

https://agentforgeframework.blogspot.com/2026/05/cts-clean-think-share.html

AgentForge Blog:  
https://agentforgeframework.blogspot.com/

---

## Development & Test Environment

- Platform: ChatGPT (Web)
- Model: GPT-5.5 Thinking
- Date: 2026-05-07

Notes:
- CTS serves as the first canonical AgentForge Kit conversion.
- This file reflects the Step 2 conversion to canonical kit structure.

---

## License

This project is released under a permissive, MIT-style license.

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

# KIT_MANIFEST_CTS.md — CTS


Repository Path:
-agentforge-tools/cts/KIT_MANIFEST_CTS.md

GitHub URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/KIT_MANIFEST_CTS.md

---


GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/KIT_MANIFEST_CTS.md

Raw GitHub URL:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/KIT_MANIFEST_CTS.md

---

## Kit Information

| Field | Value |
|---|---|
| Kit Name | Clean–Think–Share |
| Short Name | CTS |
| Status | Production |
| Version | 1.1.0 |
| Owner | Paul McDonald |
| Kit Type | Operational Workflow Kit |
| Canonical Role | First AgentForge canonical kit conversion |

---

## Purpose

CTS converts messy, imperfect input into:
- structured understanding
- tested insight
- clear communication

---

## Workflow

```text
Clean → Think → Share
```

---

## Included Core Tools

| Tool | Location | Purpose |
|---|---|---|
| NoteIntake | /core-tools/NoteIntake.md | Rapid information capture |
| NoteCleanup | /core-tools/NoteCleanup.md | Input stabilization |
| DeepDive | /core-tools/DeepDive.md | Structured analysis |
| VisualBrief | /core-tools/VisualBrief.md | Shareable communication output |

---

## Required Files

| File | Required | Purpose |
|---|---:|---|
| README.md | Yes | Main kit overview |
| QUICKSTART_CTS.md | Yes | Human fast-start guide |
| SETUP_CTS.md | Yes | AI-assisted setup and orchestration |
| KIT_MANIFEST_CTS.md | No | Included here as a canonical example |

---

## Directory Rules

| Directory | Required | Purpose |
|---|---:|---|
| /core-tools/ | Yes | Primary operational tools |
| /examples/ | Yes | Runnable examples and usage tests |
| /validation/ | No | Formal validation, regression, or deployment checks |
| /governance/ | Conditional | Additional kit-specific governance only |
| /media/ | Optional | Images or supporting media |

---

## Governance Inheritance

CTS inherits governance from the central AgentForge governance repository.

Do not copy central governance documents into this kit.

A local `/governance/` directory is only used when the kit requires additional governance beyond the central AgentForge governance layer.

Example:
- a cardiac kit may require a rule that only a licensed physician may use it

CTS does not currently require additional kit-specific governance.

---

## Examples vs. Validation

The `/examples/` directory may contain runnable files named like:

```text
test-01-*.md
test-02-*.md
test-03-*.md
```

These are practical usage tests and demonstrations.

The `/validation/` directory is reserved for formal validation artifacts.

This distinction prevents the word “tests” from carrying two different meanings.

---

## Upgrade Note

`Converge.md` is intentionally not included in this canonical conversion.

It is being held out as the first CTS upgrade-process test.

This allows AgentForge to test how a production kit evolves after canonical structure is established.

---

## 2 AM Engineer Test

CTS must remain understandable to a tired engineer at 2 AM.

This means:
- setup must be clear
- file names must be obvious
- tool boundaries must be visible
- governance must not sprawl
- examples must be runnable
- recovery instructions must be direct

---

## Design Principles

- small tools
- composable workflow
- visible structure
- human-in-command
- operational clarity
- reproducible setup
- no unnecessary abstraction

---

## Canonical Status

CTS serves as the first canonical AgentForge Kit conversion and reference implementation.

This manifest is included as an example of how a kit manifest may be structured.

A `KIT_MANIFEST_*.md` file is not required for every kit unless the kit owner decides it is needed.

---

## Development & Test Environment

- Platform: ChatGPT (Web)
- Model: GPT-5.5 Thinking
- Date: 2026-05-07

Notes:
- Created during the CTS canonical kit conversion.
- Reflects the decision to use `/core-tools/`, `SETUP_CTS.md`, `QUICKSTART_CTS.md`, and optional `/validation/`.

---

## License

This project is released under a permissive, MIT-style license.

Paul McDonald Open Use License (MIT-style)
# SETUP_CTS.md — CTS


Repository Path:
-agentforge-tools/cts/SETUP_CTS.md

GitHub URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/SETUP_CTS.md

---


GitHub Location:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/SETUP_CTS.md

Raw GitHub URL:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/SETUP_CTS.md

---

## If You Are Human

This file is primarily designed for AI-assisted setup.

You are welcome to read it directly, but the easiest approach is usually to ask your AI assistant to follow the instructions in this file.

If your AI cannot access or read this file, use:

https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/QUICKSTART_CTS.md

for a more human-oriented setup process.

Suggested prompt:

> Please read and follow the instructions in:
>
> https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/SETUP_CTS.md
>
> to set up this kit for use together.
>
> If you cannot access or read that file, please let me know.

**Claude users:** Paste the raw URL above as plain text directly into the chat message. Claude may not fetch URLs that arrive only through uploaded files or images. The URL should appear directly in the human chat message itself.

---

## Purpose

CTS is a composable AgentForge Kit for:
- stabilizing messy input
- structured thinking
- clear communication

Workflow:

**Clean → Think → Share**

---

## Required Load Order

Load and read these files in order:

README:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/README.md

QUICKSTART:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/QUICKSTART_CTS.md

NoteIntake:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/core-tools/NoteIntake.md

NoteCleanup:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/core-tools/NoteCleanup.md

DeepDive:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/core-tools/DeepDive.md

VisualBrief:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/core-tools/VisualBrief.md

Optional reference:

KIT_MANIFEST_CTS.md:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/KIT_MANIFEST_CTS.md

Example test files should also use explicit raw URLs whenever possible.

---

## Do Not Do

- Do not merge the tools.
- Do not skip NoteCleanup for messy input.
- Do not run DeepDive automatically unless the user requests it or the workflow clearly requires deeper analysis.
- Do not auto-advance past DeepDive stage pauses.
- Do not generate VisualBrief outputs without source fidelity checks.
- Do not invent facts, constraints, source details, or user intent.
- Do not duplicate central AgentForge governance inside this kit.
- Do not assume inferred file paths.

---

## Explicit File Loading Rule

- Do not assume directory navigation or inferred paths.
- All required files are listed with explicit raw-accessible URLs to improve compatibility across AI systems.
- Do not substitute GitHub blob URLs for raw URLs.
- Machine-readable setup files must prefer raw-accessible URLs over human navigation URLs whenever possible.

---

## Operational Behavior

CTS is intentionally modular.

Each tool has its own role:

| Tool | Role |
|---|---|
| NoteIntake | Capture information rapidly |
| NoteCleanup | Clean and stabilize messy input |
| DeepDive | Analyze when deeper thinking is needed |
| VisualBrief | Create shareable output |

Preserve tool boundaries.

---

## Workflow Guidance

### NoteIntake

Use when the user wants to capture information rapidly before organizing it.

Do not summarize or interpret while NoteIntake is active.

---

### NoteCleanup

Use when the input is messy, incomplete, noisy, or unstructured.

This is the normal first operational step for CTS.

---

### DeepDive

Use when the user needs deeper analysis.

DeepDive is especially useful for:
- strategic questions
- decisions
- risk analysis
- unclear tradeoffs
- mixed signals

Respect DeepDive stage control.

---

### VisualBrief

Use when the user needs a shareable visual summary or presentation-ready output.

Preserve source fidelity.

Visible claims must trace to source material.

---

## Examples and Usage Tests

Examples are located in:

/examples/

These files may include runnable tests such as:

- test-01-*.md
- test-02-*.md
- test-03-*.md

These are practical usage tests and demonstrations.

They are not formal validation tests.

---

## Validation

Formal validation materials, if needed, belong in:

/validation/

Do not create /validation/ unless formal validation, regression testing, or production readiness evidence is needed.

---

## Governance

CTS inherits governance from the central AgentForge governance repository.

Use a local /governance/ directory only when additional kit-specific governance is required.

Example:
- a cardiac kit may require a rule that only a licensed physician may use it

CTS does not currently require additional kit-specific governance.

---

## 2 AM Engineer Test

If a tired engineer cannot understand how to load, operate, and troubleshoot this kit at 2 AM, the setup is not clear enough.

This setup file should remain:
- direct
- readable
- operational
- non-mystical
- easy to follow
- easy to recover from

---

## Link Access Failure Protocol

If any required file cannot be accessed:

1. Stop.
2. Do not guess or reconstruct the missing file.
3. Report exactly which file or link could not be accessed.
4. Tell the human that CTS was not fully loaded.
5. Ask the human to upload the missing file, paste its content, provide corrected links, or use a local package.

Required failure message:

> CTS could not be fully loaded because one or more required files were not accessible. I should not proceed as if the system is loaded. Please upload the missing files, paste their contents, or provide corrected links.

Then list the missing files.

---

## Setup Confirmation

After setup, confirm:

1. CTS workflow understood.
2. Core tools loaded.
3. Tool boundaries preserved.
4. Examples available if needed.
5. Ready for user input.

Do not run CTS until the user provides input or asks for a test.

---

## Self-Check Command

If the user says:

> Run CTS self-check

Confirm:
- required files loaded
- workflow understood
- tool boundaries preserved
- DeepDive stage pause understood
- VisualBrief source fidelity understood
- ready to execute

Do not run the workflow during self-check.

---

## One-Line Summary

> Load CTS → Preserve tool boundaries → Follow Clean → Think → Share → Produce clear output.

---

## Development & Test Environment

- Platform: ChatGPT (Web)
- Model: GPT-5.5 Thinking
- Date: 2026-05-07

Notes:
- SETUP_CTS.md replaces LOAD_CTS.md as the canonical AI/hybrid setup pattern for CTS.
- Created during the CTS canonical kit conversion.

---

## License

This project is released under a permissive, MIT-style license.

Paul McDonald Open Use License (MIT-style)
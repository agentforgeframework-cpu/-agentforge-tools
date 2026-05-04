# LOAD_CTS.md — CTS

## Purpose

Provide a single, reliable entry point for AI tools to load and execute the CTS (Clean → Think → Share) system from GitHub.

Use this file when your AI tool can read external links. If it cannot, follow the fallback instructions below.

---

## Repository Links 

Core docs:
- README: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/README.md
- QUICKSTART: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/QUICKSTART.md
- USER_GUIDE: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/USER_GUIDE.md
- HELP: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/HELP.md
- LOAD_CTS (this file): https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/LOAD_CTS.md

Core tools:
- NoteCleanup: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/core/NoteCleanup.md
- DeepDive: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/core/DeepDive.md
- VisualBrief: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/core/VisualBrief.md
- NoteIntake (optional): https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/core/NoteIntake.md

Examples:
- Example 1: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/examples/test-01-basic-meal-planning.md
- Example 2: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/examples/test-02-event-planning-with-constraints.md
- Example 3: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/examples/test-03-ai-modernization-decision-quality.md

Media:
- Sample image: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/media/cts-visualbrief-clean-think-share.png

---

## Required Load Order

Load and read the following in order:

1) README.md  
2) QUICKSTART.md  
3) HELP.md  
4) USER_GUIDE.md  
5) core/NoteCleanup.md  
6) core/DeepDive.md  
7) core/VisualBrief.md  
8) core/NoteIntake.md (optional)
9) examples/*.md (optional, for validation and reference)
10) media/*.png (optional)


Do not skip files. Do not summarize during loading.

---

## Execution Rules

- Do not summarize the system during load.
- Confirm readiness after loading.
- Wait for user input before executing.

---

## Workflow

Follow this exact workflow:

Clean → Think → Share

- Step 1: NoteCleanup  
- Step 2: DeepDive (optional unless user specifies or decision quality matters)  
- Step 3: VisualBrief  

---

## Stage Control (DeepDive)

- Respect stage boundaries.
- STOP at Stage 3 Pause unless the user explicitly says continue.
- Do not auto-advance past the pause.

---

## Expected Behavior

- Preserve meaning from input.
- Do not invent facts or constraints.
- Maintain constraint fidelity.
- Produce structured, usable output.

---

## Link Access Failure Protocol

If you cannot access one or more linked CTS files:

1. Stop.
2. Do not guess or reconstruct the missing file.
3. Report exactly which file or link could not be accessed.
4. Tell the human that CTS was not fully loaded.
5. Provide next suggested actions.

### Next Suggested Actions

The human may:

- upload the missing files directly
- paste the missing file contents into the chat
- provide corrected GitHub links
- switch to a model or tool that can read external links
- use the local file package instead of URL loading

### Required Failure Message

> CTS could not be fully loaded because one or more required files were not accessible. I should not proceed as if the system is loaded. Please upload the missing files, paste their contents, or provide corrected links.

Then list the missing files.

---

## Self-Check (Optional)

If the user says: "Run CTS self-check"

You should:

- Confirm all required files were loaded
- Confirm understanding of the workflow
- Confirm readiness to execute
- Do not run the workflow

---

## One-Line Summary

> Load CTS → Follow Clean → Think → Share → Produce clear output

---

# Development & Test Environment

- Platform: ChatGPT (Web)
- Model: GPT-5.3
- Date: 2026-05-02

Notes:
- v1.1 adds cross-model reliability features
- Includes failure protocol and stage control

---

## File Reference

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/LOAD_CTS.md

Related Blog Article:  
https://agentforgeframework.blogspot.com/2026/05/cts-clean-think-share.html

AgentForge Blog:  
https://agentforgeframework.blogspot.com/

Version:  
v1.0 (Published)

Last Updated:  
2026-05-04

---

# Development & Test Environment

- Platform: ChatGPT (Web)
- Model: GPT-5.3
- Date: 2026-05-04

Notes:
- Developed and tested as part of the AgentForge / CTS workflow.
- This block is for record-keeping and future development. It may appear in outputs but is not user-facing.

---

# License

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

---

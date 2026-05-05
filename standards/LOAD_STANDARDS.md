# LOAD_STANDARDS.md — AgentForge Standards

## Purpose

This file is for AI systems.

Provide a single, reliable entry point for AI tools to load and use the AgentForge Standards package from GitHub.

Use this file when your AI tool can read external links. If it cannot, follow the fallback instructions below.

For human-readable instructions, use QUICKSTART.md.

AgentForge Standards are submission standards for consistent and reliable AI output.

You cannot control the model.  
You can control the input.

---

## Link Policy

LOAD_STANDARDS.md uses raw GitHub links for loading.

Raw links are preferred for AI loading because they provide file content without GitHub page chrome.

Human-readable GitHub page links are provided later as references.

---

## Required Repository Links — Raw Loading Links

Core docs:

- README: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/README.md
- QUICKSTART: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/QUICKSTART.md
- HELP: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/HELP.md
- USER_GUIDE: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/USER_GUIDE.md
- CHANGELOG: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/CHANGELOG.md
- LOAD_STANDARDS: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/LOAD_STANDARDS.md

Core standards:

- math: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/core/math.md
- diag: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/core/diag.md
- override: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/core/override.md
- rules: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/core/rules.md
- chatexport: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/core/chatexport.md

Optional examples:

- math_example: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/examples/math_example.md
- diag_example: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/examples/diag_example.md
- override_example: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/examples/override_example.md
- rules_example: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/examples/rules_example.md
- chatexport_example: https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/examples/chatexport_example.md

---

## Human Reference Links — GitHub Page Links

Core docs:

- README: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/README.md
- QUICKSTART: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/QUICKSTART.md
- HELP: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/HELP.md
- USER_GUIDE: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/USER_GUIDE.md
- CHANGELOG: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/CHANGELOG.md
- LOAD_STANDARDS: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/LOAD_STANDARDS.md

Core standards:

- math: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/math.md
- diag: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/diag.md
- override: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/override.md
- rules: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/rules.md
- chatexport: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/chatexport.md

Optional examples:

- math_example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/math_example.md
- diag_example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/diag_example.md
- override_example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/override_example.md
- rules_example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/rules_example.md
- chatexport_example: https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/examples/chatexport_example.md

---

## Required Load Order

Load and read the following in order:

1) README.md  
2) QUICKSTART.md  
3) HELP.md  
4) USER_GUIDE.md  
5) core/math.md  
6) core/diag.md  
7) core/override.md  
8) core/rules.md  
9) core/chatexport.md  
10) CHANGELOG.md  

Do not skip required files.  
Do not summarize during loading.

---

## Optional Load Order

Examples are optional and are used for learning, validation, and onboarding.

11) examples/math_example.md  
12) examples/diag_example.md  
13) examples/override_example.md  
14) examples/rules_example.md  
15) examples/chatexport_example.md  

Examples are not required for operation.

---

## Execution Rules

- Do not summarize the system during load.
- Confirm readiness after loading.
- Wait for user input before executing.
- Do not invent missing files or reconstruct inaccessible files.
- Treat this package as submission standards, not model behavior control.
- Do not proceed as if the standards package is loaded if any required file cannot be accessed.

---

## Expected Behavior

After loading, the AI tool should understand:

- math.md standardizes calculation submissions.
- diag.md standardizes diagnostic submissions.
- override.md standardizes explicit user intent and temporary exception handling.
- rules.md standardizes visible rule identification and reporting.
- chatexport.md standardizes condensed export output.
- HELP.md provides local package help.
- QUICKSTART.md provides fast human onboarding.
- USER_GUIDE.md provides practical usage guidance.
- CHANGELOG.md records package changes.

---

## Link Access Failure Protocol

If one or more required linked standards files cannot be accessed:

1. Stop.
2. Do not guess or reconstruct the missing file.
3. Report exactly which file or link could not be accessed.
4. Tell the human that AgentForge Standards were not fully loaded.
5. Provide next suggested actions.

### Next Suggested Actions

The human may:

- upload the missing files directly
- paste the missing file contents into the chat
- provide corrected GitHub links
- switch to a model or tool that can read external links
- use the local file package instead of URL loading

### Required Failure Message

> AgentForge Standards could not be fully loaded because one or more required files were not accessible. I should not proceed as if the standards package is loaded. Please upload the missing files, paste their contents, or provide corrected links.

Then list the missing files.

---

## Success Confirmation

When loading succeeds, return:

```text
STANDARD LOAD COMPLETE

Files loaded:
README.md
QUICKSTART.md
HELP.md
USER_GUIDE.md
core/math.md
core/diag.md
core/override.md
core/rules.md
core/chatexport.md
CHANGELOG.md

Optional examples loaded:
<list examples loaded, or none>

STATUS: OK
```

---

## Self-Check

If the user says:

```text
Run standards self-check
```

You should:

- Confirm all required files were loaded.
- Confirm understanding of each standard.
- Confirm whether optional examples were loaded.
- Confirm readiness to execute.
- Do not run any standard unless requested.

---

## One-Line Summary

> Load AgentForge Standards → Use structured submissions → Produce more reliable AI output

---

## File Reference

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/LOAD_STANDARDS.md

Raw Loading Location:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/LOAD_STANDARDS.md

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

- Uses raw GitHub links for loading and GitHub page links for human reference.
- Examples are optional and not required for operation.
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


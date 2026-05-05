# LOAD_STANDARDS.md — AgentForge Standards

## Purpose

This file is for AI systems.

Provide a single, reliable entry point for AI tools to load and use the AgentForge Standards package from GitHub.

Use this file when your AI tool can read external links.  
If it cannot, follow the fallback instructions below.

For human-readable instructions, use QUICKSTART.md.

AgentForge Standards are submission standards for consistent and reliable AI output.

You cannot control the model.  
You can control the input.

---

## Link Policy

LOAD_STANDARDS.md uses RAW GitHub links for loading.

RAW links are required for AI systems because they provide clean file content without GitHub page UI elements.

Human-readable GitHub page links are provided later for reference.

---

## Required Repository Links — RAW Loading Links

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

Examples are optional:

11) examples/math_example.md  
12) examples/diag_example.md  
13) examples/override_example.md  
14) examples/rules_example.md  
15) examples/chatexport_example.md  

---

## Execution Rules

- Do not summarize the system during load.
- Confirm readiness after loading.
- Wait for user input before executing.
- Do not invent or reconstruct missing files.
- Treat this package as submission standards, not model behavior control.
- Do not proceed if required files are missing.

---

## Expected Behavior

After loading, the AI should recognize:

Commands:
- RUNMATH

Modes:
- DIAG
- OVERRIDE

Standards:
- RULES
- CHATEXPORT

---

## Troubleshooting — File Access Issues

If a file fails to load, do not assume success. Verify the following:

1. Confirm the file exists at the exact expected path in the repository:
   - Core standards are located under: `/standards/core/`
   - Example: `/standards/core/rules.md`

2. Confirm the RAW link is correct and accessible.

3. Confirm the RAW link resolves to readable markdown (not a single compressed line).

4. If the file appears outdated or inconsistent, retry with a cache-buster:
   - Example:
     https://raw.githubusercontent.com/.../rules.md?v=20260504

Notes:

- Some AI platforms may cache results within a session.
- Others (like Claude) do not cache between sessions.
- Always verify file existence and path first before assuming caching issues.

---

## Link Access Failure Protocol

If any required file cannot be accessed:

1. Stop.
2. Do not guess or reconstruct.
3. Report missing files clearly.
4. Inform the user the system is not fully loaded.

Required message:

AgentForge Standards could not be fully loaded because one or more required files were not accessible. I should not proceed as if the standards package is loaded.

---

## Success Confirmation

Return exactly:

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

STATUS: OK


---

## Self-Check

If the user says:

Run standards self-check

Then:

- Confirm all required files loaded
- Confirm recognition of all tools
- Confirm readiness

---

## One-Line Summary

Load → Structure input → Improve output reliability

---

## File Reference

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/LOAD_STANDARDS.md

Raw Loading Location:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/LOAD_STANDARDS.md

Related Blog Article:  
https://agentforgeframework.blogspot.com/2026/05/chatbot-standard-tools.html

---

## Development & Test Environment

- Platform: ChatGPT Web  
- Model: GPT-5.5 Thinking  
- Date: 2026-05-04  

Notes:
- Updated after cross-model validation (Claude)
- Added structured troubleshooting protocol
- Clarified submission standards positioning

---

## License

Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

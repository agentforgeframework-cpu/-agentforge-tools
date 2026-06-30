# SETUP.md

**Kit Type:** Tool Kit
**Status:** Production 
**Date:** 2026-06-28
**Version:** 1.0

Repository:
AF-004 — Clean Think Share (CTS)

Repository Object:
`ROOT_LIBRARY`

Raw:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/af-004-clean-think-share/LIBRARY.md

This File (Raw):
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/af-004-clean-think-share/SETUP.md

---

# Purpose

This document prepares the Clean Think Share (CTS) Tool Kit for operation.

CTS is a modular Tool Kit. Load only the repository objects required for the current task.

---

# Required Repository Objects

Always load:

* `ROOT_README`
* `ROOT_LIBRARY`

Then load the operational tool or tools needed to satisfy the user's request.

Examples include:

* `NOTE_INTAKE`
* `NOTE_CLEANUP`
* `DEEP_DIVE`
* `VISUAL_BRIEF`

Examples may be loaded when needed for reference or validation.

---

# Operational Rules

* Do not infer repository locations or filenames.
* Use the explicit raw locations defined in `ROOT_LIBRARY`.
* Do not combine independent tools into a single workflow unless requested or clearly required.
* Preserve the intended purpose of each tool.
* Do not invent facts, evidence, user intent, or source material.

---

# Link Access Failure

If any required repository object cannot be loaded:

1. Stop.
2. Report the missing repository object.
3. Do not reconstruct or guess missing content.
4. Ask the user to provide the missing repository object or a corrected raw location.

---

# Setup Confirmation

After setup, confirm:

* Repository loaded.
* Required repository objects loaded.
* Requested tool(s) ready.
* Ready for user input.

Do not execute CTS until requested by the user.

---

End of Setup

# SETUP — Foundation Tools

Repository Path:
-agentforge-tools/foundation-tools/SETUP_FOUNDATION-TOOLS.md

GitHub URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation-tools/SETUP_FOUNDATION-TOOLS.md

Raw Loading Location:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/SETUP_FOUNDATION-TOOLS.md

## Purpose

This document provides AI/system bootstrap instructions for loading AgentForge Foundation Tools into an AI session.

Foundation Tools provide reusable operational support utilities for AgentForge kits and workflows.

This file is intended for AI/system loading.

Human users should normally begin with:

QUICKSTART_FOUNDATION-TOOLS.md

---

# AI/System Setup Instructions

## Step 1 — Load Required Files

Load the following files in order using the exact raw GitHub URLs shown below.

Do not infer URLs.

Do not convert GitHub page URLs into raw URLs unless explicitly instructed by the human.

If any file cannot be loaded, stop and report the failed file.

---

## Required Foundation Tool Files

### 1. README.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/README.md

Purpose:
Provides the Foundation Tools overview and folder orientation.

---

### 2. QUICKSTART_FOUNDATION-TOOLS.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/QUICKSTART_FOUNDATION-TOOLS.md

Purpose:
Provides human-facing onboarding context.

---

### 3. HELP.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/HELP.md

Purpose:
Provides user-facing help and command orientation.

---

### 4. USER_GUIDE.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/USER_GUIDE.md

Purpose:
Provides expanded operational guidance.

---

## Required Core Tool Files

Load each available file from:

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/core/

Expected core files:

### math.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/core/math.md

### diag.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/core/diag.md

### override.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/core/override.md

### rules.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/core/rules.md

### chatexport.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/core/chatexport.md

---

## Optional Support Files

Load these only if needed for the current task or if the human requests a fuller environment.

### CHANGELOG.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/CHANGELOG.md

### RELEASE_NOTES.md

https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation-tools/RELEASE_NOTES.md

---

## Optional Folders

The following folders may contain useful operational references.

### examples

https://github.com/agentforgeframework-cpu/-agentforge-tools/tree/main/foundation-tools/examples

Use examples when the human asks for demonstrations, validation, or practical usage.

### media

https://github.com/agentforgeframework-cpu/-agentforge-tools/tree/main/foundation-tools/media

Use media only when relevant.

---

# Step 2 — Confirm Successful Loading

After loading, confirm:

- Foundation Tools README loaded.
- QUICKSTART_FOUNDATION-TOOLS.md loaded.
- HELP.md loaded.
- USER_GUIDE.md loaded.
- Required core tools loaded or clearly reported as unavailable.
- No missing file was silently ignored.
- No URL was inferred.

If any required file fails to load:

1. Stop.
2. Report the failed file and URL.
3. Do not guess at contents.
4. Ask the human to provide the file or confirm the path.

---

# Step 3 — Perform Self-Check

After setup, respond with a concise setup confirmation.

Suggested confirmation:

Foundation Tools setup check:
- Orientation loaded: yes/no
- Human onboarding loaded: yes/no
- Help/user guidance loaded: yes/no
- Core tools loaded: list loaded files
- Missing files: list missing files or “none”
- Operational status: ready / partial / failed

If status is partial or failed, explain what is missing.

---

# Behavioral Failure Guidance

A successful load does not guarantee continued operational integrity throughout a long session.

If the AI confirmed load but behavior later looks wrong, such as:

- outputs become generic
- Foundation Tools behavior is not followed
- expected commands are ignored
- workflow steps are skipped
- formatting or reasoning discipline degrades
- the AI appears to rely on memory instead of loaded files

Then:

1. Run the self-check.
2. Reload this SETUP file if needed.
3. Reload the missing or degraded files.
4. Restart the session if behavior does not recover.
5. Do not assume a confirmed load means instructions remain active for the full session.

When in doubt, reload. It is faster than debugging a degraded session.

---

# Human Guidance

Human users should normally begin with:

QUICKSTART_FOUNDATION-TOOLS.md

SETUP documents are primarily intended for:

- AI bootstrap
- system initialization
- operational loading
- recovery after context degradation

---

# 2 AM Engineer Test

If a tired engineer cannot:

- understand what this setup loads
- find the correct raw URLs
- recover from a failed load
- identify missing files
- determine the next action

…then this setup file is not clear enough.

---

# Development & Test Environment

- Platform: ChatGPT (Web)
- Model: GPT-5.5
- Date: 2026-05-08

Notes:
- Created during Foundation Tools migration from /standards/.
- Updated to include explicit raw loading URLs and operational bootstrap sequence.

---

# License

Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

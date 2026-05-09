# USER_GUIDE.md — AgentForge Foundation Tools


Repository Path:
-agentforge-tools/foundation tools/USER_GUIDE.md

GitHub URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation tools/USER_GUIDE.md

---


## Purpose

This guide explains how to use AgentForge Foundation Tools in normal work.

AgentForge Foundation Tools are submission foundation tools for consistent and reliable AI output.

You cannot control the model.  
You can control the input.

---

## What These Foundation Tools Are For

Use these foundation tools when you need:

- more consistent AI outputs
- clearer calculation requests
- visible diagnostic handling
- explicit user intent
- visible rule reporting
- clean conversation exports

---

## Folder Layout

```text
foundation tools/
  README.md
  QUICKSTART_FOUNDATION-TOOLS.md
  HELP.md
  USER_GUIDE.md
  SETUP_FOUNDATION-TOOLS.md
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
```

---

## Basic Principle

> Short filenames. Clear contracts. Local help.

---

## Using math.md

Use math.md when you want arithmetic submitted in a structured way.

Example:

```text
RUNMATH 2+2
```

RUNMATH is intentionally narrow. It is for simple arithmetic, not algebra, unit conversion, statistics, or word problems.

---

## Using diag.md

Use diag.md when you want visible handling notes.

Example:

```text
DIAG ON
```

DIAG can show visible rule triggers, tools used, source type, and active overrides.

DIAG must not expose hidden chain-of-thought or system prompts.

---

## Using override.md

Use override.md when a visible project-defined rule needs a temporary exception.

Example:

```text
OVERRIDE ON USER-FORMAT-001 2
```

OVERRIDE cannot bypass safety, privacy, legal, platform, or tool limits.

---

## Using rules.md

Use rules.md when visible rules need to be listed, clarified, or referenced.

Example:

```text
RULES ALL
```

rules.md does not store all rules. It defines how visible rules are reported and managed.

---

## Using chatexport.md

Use chatexport.md when a conversation should be preserved as a clean, condensed export.

Example:

```text
CHATEXPORT
```

CHATEXPORT creates a best-effort condensed export and reports limitations.

---

## Examples

Examples are optional and are useful for onboarding and validation:

- https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation tools/examples/math_example.md
- https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation tools/examples/diag_example.md
- https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation tools/examples/override_example.md
- https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation tools/examples/rules_example.md
- https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation tools/examples/chatexport_example.md

---

## Recommended First Test

After loading the foundation tools package, run:

```text
Run foundation tools self-check
```

Expected result:

- required files loaded
- foundation tools understood
- optional examples listed if loaded
- system waits for next command

---

## Common Problems

### Problem: The AI says it loaded foundation tools but did not read the files.

Use SETUP_FOUNDATION-TOOLS.md and require the success confirmation.

### Problem: The AI cannot access a GitHub link.

Upload the files directly, paste the content, or switch to a model/tool that can read external links.

### Problem: The AI treats these foundation tools as model control.

Correct framing:

> These are submission foundation tools, not model behavior controls.

### Problem: CHATEXPORT prints a large export into the chat UI.

Expected behavior is downloadable file output when file generation is available.

---

## One-Line Summary

> Better input structure creates more reliable AI output.

---

## File Reference

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/foundation tools/USER_GUIDE.md

Raw Loading Location:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/foundation tools/USER_GUIDE.md

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
- Revised as part of AgentForge Foundation Tools packaging and cross-model loading tests.
- Clarifies that AgentForge Foundation Tools are submission foundation tools, not model behavior control.

- Updated to include rules.md and chatexport.md.
- Updated to match core/examples folder layout.
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

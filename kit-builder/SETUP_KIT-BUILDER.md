# SETUP_KIT-BUILDER

Purpose:
Provide machine-readable and machine-driven setup orientation for kit-builder.

This file is intended to be processed as silently as practical by an AI assistant or other setup process.

For human quick-start use, read:

```text
QUICKSTART_KIT-BUILDER.md
```

For browse/discovery context, read:

```text
README.md
```

---

# Scope

kit-builder supports the creation, stabilization, validation, and improvement of survivable AgentForge-style kits.

During the architecture stabilization freeze, do not expand kit-builder architecture unless a real operational break requires it.

Current priority:

- survivability
- onboarding clarity
- deployment readiness
- usability
- maintainability
- portability
- completion

---

# Required Read Order

Process these files in order:

```text
README.md
core/MINIMUM_SURVIVABLE_WORKFLOW.md
QUICKSTART_KIT-BUILDER.md
```

Optional context:

```text
lessons-learned/file-reference-check-v0.1.md
examples/example-operational-kit/README.md
```

---

# Current Naming Convention

Use scoped setup and quickstart files.

Pattern:

```text
SETUP_<scope>.md
QUICKSTART_<scope>.md
```

For this folder:

```text
SETUP_KIT-BUILDER.md
QUICKSTART_KIT-BUILDER.md
```

Do not create generic setup or quickstart files such as:

```text
SETUP.md
QUICKSTART.md
```

---

# Minimum Survivable Kit Artifacts

A minimum survivable operational kit begins with:

```text
STORY.md
DECISION_GUIDE.md
CONSTRAINTS.md
STEPS.md
RECOVERY_STORY.md
KNOWN_GAPS.md
```

These are the operational core.

Additional files require operational justification.

---

# Legacy Scaffold Clarification

Do not assume older AgentForge scaffold files are required.

Legacy or non-default files include:

```text
LOAD_*.md
HELP.md
USER_GUIDE.md
QUICKSTART.md
SETUP.md
```

Use them only when explicitly justified by current operational need and scoped naming rules.

---

# Human-in-Command Requirement

AI may assist with setup, diagnosis, review, troubleshooting, and drafting.

AI must not silently replace human judgment.

The human remains responsible for operational approval and deployment.

---

# Development & Test Environment

Platform:
ChatGPT Web

Model:
GPT-5.5

Date:
2026-05-10

Notes:
Created during kit-builder alignment with clarified AgentForge governance naming conventions.

---

# File Reference Information

Repository path:
```text
kit-builder/SETUP_KIT-BUILDER.md
```

Human URL:
```text
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/kit-builder/SETUP_KIT-BUILDER.md
```

Raw URL:
```text
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/kit-builder/SETUP_KIT-BUILDER.md
```

Git domain:
```text
github.com/agentforgeframework-cpu/-agentforge-tools
```

Purpose:
These references support human review, raw-file retrieval, and repository-domain validation without relying on hidden context.

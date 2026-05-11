# QUICKSTART_KIT-BUILDER

Purpose:
Provide the shortest human-readable path for using kit-builder during the stabilization freeze.

Use this file when a human wants to begin quickly.

For machine-readable or machine-driven setup, use:

```text
SETUP_KIT-BUILDER.md
```

For browse/discovery context, use:

```text
README.md
```

---

# Quick Start

## 1. Start With the Workflow

Read:

```text
core/MINIMUM_SURVIVABLE_WORKFLOW.md
```

The central idea is:

> A workflow is a story.

Do not begin with folders, templates, automation, or scaffolds.

---

## 2. Capture the Minimum Survivable Kit

For a new operational kit, create the minimum survivability artifacts:

```text
STORY.md
DECISION_GUIDE.md
CONSTRAINTS.md
STEPS.md
RECOVERY_STORY.md
KNOWN_GAPS.md
```

These files capture:

- what the human is trying to do
- where decisions happen
- what constraints exist
- how to perform the workflow
- how recovery works
- what is still missing

---

## 3. Add Support Files Only When Needed

Additional files may be added only when operationally justified.

Examples:

- scripts
- examples
- validation notes
- support stacks
- release notes
- scoped setup or quickstart files

Do not add files only because an older scaffold used them.

---

## 4. Preserve Human-in-Command

AI may assist with:

- drafting
- review
- troubleshooting
- interpretation
- recovery planning

But the human remains responsible for:

- approval
- judgment
- execution
- deployment

---

## 5. Test With a Stranger

Run the kit once with someone who did not create it.

Watch for:

- hesitation
- confusion
- missing assumptions
- unclear decisions
- unclear recovery

Treat confusion as a survivability defect.

---

# During Stabilization Freeze

Do not expand architecture unless something is operationally broken.

Focus on:

- survivability
- onboarding clarity
- portability
- maintainability
- deployment readiness
- understandable operation at 2 AM

Finished and survivable beats theoretically perfect.

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

# kit-builder

AgentForge kit-builder is a meta-project focused on the creation, stabilization, validation, and survivability of AgentForge-style kits.

This project exists because repeated operational work revealed that building survivable kits requires repeatable philosophy, workflows, validation patterns, onboarding patterns, and operational behaviors.

kit-builder was not designed fully in advance.

It emerged through:
- real tool construction
- operational validation
- troubleshooting
- onboarding failures
- compatibility issues
- Human-in-Command testing
- AI-assisted recovery workflows

The first major experimental platform contributing to kit-builder development was:

```text
file-reference-check
```

which exposed numerous reusable lessons about:
- operational survivability
- environment friction
- preflight checks
- validation workflows
- visible diagnostics
- AI involvement around tools
- compatibility stabilization
- human trust
- restartability

---

# Core Philosophy

kit-builder follows several emerging principles.

## Human-in-Command

The human remains the authority.

AI may:
- assist
- interpret
- suggest
- troubleshoot
- accelerate recovery

But:
- humans decide
- humans review
- humans approve
- humans deploy

---

## Survivability First

The project prioritizes:
- understandable operation
- restartability
- compatibility
- visible operational state
- recoverable workflows
- portability
- bounded failure

before:
- optimization
- orchestration
- automation complexity
- advanced integrations

---

## Roots Before Leaves

A major development metaphor emerged during operational validation:

> tree branches and leaves grow last.

kit-builder intentionally prioritizes:
- foundations
- operational clarity
- stable workflows
- repeatable structure
- validation discipline

before:
- advanced features
- automation layering
- ecosystem expansion

---

## AI Around Kits

One major operational lesson:

AI involvement around kits may often be superior to embedding AI into kits.

Observed successful pattern:

1. local tool produces visible evidence
2. human reviews output
3. human optionally shares evidence with AI
4. AI assists interpretation/recovery
5. human decides next action

This preserves:
- transparency
- trust
- portability
- local operation
- Human-in-Command behavior

while still gaining substantial AI assistance.

---

# Entry Points

Use these files according to purpose:

```text
README.md
```

Browse/discovery layer for humans using GitHub or a file browser.

```text
SETUP_KIT-BUILDER.md
```

Machine-readable and machine-driven setup process. It should be processed as silently as practical.

```text
QUICKSTART_KIT-BUILDER.md
```

Human-readable quick operational path.

```text
core/MINIMUM_SURVIVABLE_WORKFLOW.md
```

Workflow-first guide for turning an operational idea into a survivable kit.

Generic setup or quickstart names such as `SETUP.md` and `QUICKSTART.md` are not used for kit-builder. Scoped names preserve operational clarity.

---

# Current Scope

kit-builder currently focuses on:
- operational tool kits
- validation kits
- lightweight workflow systems
- support tooling
- survivability-oriented structures

Educational/training kit creation is expected to evolve separately through:

```text
training-builder/
```

while sharing common philosophy and operational standards.

---

# Structure

Current structure:

```text
kit-builder/
    README.md
    SETUP_KIT-BUILDER.md
    QUICKSTART_KIT-BUILDER.md
    CHANGELOG.md
    RELEASE_NOTES.md

    core/
    lessons-learned/
    governance/
    validation/
    examples/

    tool-builder/
    training-builder/

    experiments/
```

Not all folders may contain complete documentation during early development phases.

This is intentional.

Operational learning and validated workflow patterns take precedence over premature completeness.

---

# Development Philosophy

kit-builder currently resembles:

```text
Mythbusters
```

more than:

```text
Apollo 13
```

Meaning:
- experimentation is encouraged
- recoverable failure is acceptable
- operational reality is intentionally exposed
- iterative refinement is expected

The goal is not early perfection.

The goal is:
- survivable systems
- operational understanding
- repeatable workflows
- trustworthy tooling

---

# Status

kit-builder is in active formative development.

Architecture, standards, workflows, and philosophies are still emerging through real operational use.

This is intentional.

The project values:
- observed reality
- operational evidence
- validated workflow behavior

over:
- speculative architecture
- premature abstraction
- artificial completeness

---

# Development & Test Environment

Platform:
ChatGPT Web

Model:
GPT-5.5

Date:
2026-05-10

Notes:
Initial README drafted after operational stabilization work on file-reference-check v0.1/v0.1.1.

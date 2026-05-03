# HELP.md

## AgentForge Standards Help

This file provides quick help for the AgentForge standards package.

## What This Package Does
The standards package defines reusable command and mode behavior.

It currently includes:

- `RUNMATH` — deterministic arithmetic
- `DIAG` — visible diagnostic trace
- `OVERRIDE` — controlled project-rule override

## Quick Commands

### RUNMATH
Use RUNMATH when arithmetic must be computed by a tool, not guessed by a language model.

```text
RUNMATH 2+2
RUNMATH (3+4)*5
RUNMATH 2**10
```

RUNMATH supports only simple real-number arithmetic.

It does not solve equations, convert units, interpret word problems, or use functions.

### DIAG
Use DIAG when you want visible behavior tracing.

```text
DIAG ON
DIAG OFF
DIAG 3
DIAG VERBOSE
DIAG BRIEF
```

Diagnostic mode does not reveal hidden chain-of-thought or system prompts.

### OVERRIDE
Use OVERRIDE when temporarily bypassing project-defined rules for testing or exploration.

```text
OVERRIDE ON <RULE_ID> 2
OVERRIDE LIST
OVERRIDE CLEAR
OVERRIDE TEMP <RULE_ID>
```

Override mode cannot bypass model safety, platform restrictions, privacy rules, or tool limits.

## What Not To Do
Do not use these standards to:

- Replace local project documentation
- Bypass safety rules
- Hide behavior changes
- Expand RUNMATH beyond arithmetic
- Treat overrides as permanent fixes
- Use diagnostics as a chain-of-thought dump

## Where To Look

| Need | File |
|---|---|
| Deterministic arithmetic | `math.md` |
| Diagnostic trace behavior | `diag.md` |
| Temporary rule override | `override.md` |
| Loading instructions | `LOAD_STANDARDS.md` |
| Fuller usage examples | `USER_GUIDE.md` |
| Version history | `CHANGELOG.md` |

## Local Help Rule
Each package owns its own `HELP.md`.

This file explains the standards package only.

Other packages, such as CTS, should have their own local `HELP.md` suited to their own tools and workflows.

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Generated for the AgentForge standards package intended for `/standards/` in `agentforgeframework-cpu/-agentforge-tools`.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to use, share, and modify this material, provided this notice is retained with substantial copies or derived versions. This material is provided as-is, without warranty.

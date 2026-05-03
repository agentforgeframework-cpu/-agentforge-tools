# AgentForge Standards

## What This Is
The AgentForge standards package defines shared command and mode behavior used by AgentForge projects.

These standards are not a full workflow system. They are small, reusable behavior contracts that other packages can adopt.

## Current Standards

| File | Name | Type | Purpose |
|---|---|---|---|
| `math.md` | RUNMATH | Command | Deterministic arithmetic through a computation engine |
| `diag.md` | DIAGNOSTIC | Mode | Lightweight decision trace without hidden reasoning |
| `override.md` | OVERRIDE | Mode | Controlled temporary override of project-defined rules |
| `HELP.md` | HELP | Local help | Human-facing help for this standards package |
| `LOAD_STANDARD.md` | LOAD_STANDARD | Loader | Instructions for loading and verifying this package |
| `USER_GUIDE.md` | USER_GUIDE | Guide | Practical usage guide for humans |
| `CHANGELOG.md` | CHANGELOG | Log | Version history for the standards package |

## Design Principle

> Keep filenames short. Put precision inside the file.

These files are named for human recall:

```text
math.md
diag.md
override.md
HELP.md
```

The full command name, purpose, type, scope, and behavior live inside each file.

## Core Behavior Model

AgentForge standards are separated into two basic kinds:

### Commands
Commands perform a specific action.

Example:

```text
RUNMATH 2+2
```

### Modes
Modes temporarily change how the system behaves.

Examples:

```text
DIAG ON
OVERRIDE ON OFFTOPIC-001 2
```

## Package Boundary
This package defines shared behavior. It does not replace local project rules.

Each project or package may still have its own:

- `README.md`
- `HELP.md`
- `USER_GUIDE.md`
- `CHANGELOG.md`
- local tools and workflows

For example, CTS owns its own help and workflow behavior. The standards package only provides shared command/mode conventions.

## Recommended Folder Location
Repository target:

```text
/standards/
```

Expected GitHub location:

```text
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/
```

## Loading Order
Use `LOAD_STANDARD.md` for formal loading.

Recommended order:

1. `README.md`
2. `HELP.md`
3. `math.md`
4. `diag.md`
5. `override.md`
6. `USER_GUIDE.md`
7. `CHANGELOG.md`

## Human Usage
Use `HELP.md` for quick command help.

Use `USER_GUIDE.md` for fuller examples and operating guidance.

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Generated for the AgentForge standards package intended for `/standards/` in `agentforgeframework-cpu/-agentforge-tools`.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to use, share, and modify this material, provided this notice is retained with substantial copies or derived versions. This material is provided as-is, without warranty.

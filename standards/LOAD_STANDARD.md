# LOAD_STANDARD.md

## Purpose
LOAD_STANDARD defines how to load and verify the AgentForge standards package.

Use this file when initializing the `/standards/` folder in a project or AI workspace.

## Package Location
Recommended repository path:

```text
/standards/
```

Expected GitHub location:

```text
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/
```

## Required Files
The standards package is considered complete when these files are present:

```text
README.md
HELP.md
math.md
diag.md
override.md
USER_GUIDE.md
CHANGELOG.md
LOAD_STANDARD.md
```

## Load Order
Load files in this order:

1. `README.md`
2. `HELP.md`
3. `math.md`
4. `diag.md`
5. `override.md`
6. `USER_GUIDE.md`
7. `CHANGELOG.md`
8. `LOAD_STANDARD.md`

## Required Understanding After Load
After loading, the environment should understand:

- RUNMATH is a deterministic arithmetic command.
- DIAG is a diagnostic visibility mode.
- OVERRIDE is a controlled project-rule override mode.
- HELP.md is local to this standards package.
- These standards do not replace local package rules.
- Commands and modes must not bypass safety, privacy, or platform restrictions.

## Standard Activation Checks
After load, test the package with these prompts.

### Help Check
```text
HELP
```

Expected behavior:

- Provide short help for RUNMATH, DIAG, and OVERRIDE.
- Do not provide unrelated package help.

### RUNMATH Check
```text
RUNMATH 2+2
```

Expected behavior:

- Route expression to computation engine if available.
- Return fixed RUNMATH output.
- Do not add commentary.

### Diagnostic Check
```text
DIAG ON
RUNMATH 2+2
DIAG OFF
```

Expected behavior:

- Diagnostic block appears while DIAG is active.
- RUNMATH output remains fixed.
- DIAG OFF terminates diagnostic output.

### Override Check
```text
OVERRIDE LIST
OVERRIDE TEMP TEST-RULE-001
OVERRIDE LIST
OVERRIDE CLEAR
```

Expected behavior:

- Active overrides are visible.
- Temporary override applies for one turn if supported.
- Clear removes active overrides.

## Failure Protocol
If any required file is missing:

```text
STANDARD LOAD FAILED
Missing file: <filename>
STATUS: FAILED
```

If a file is present but unreadable:

```text
STANDARD LOAD FAILED
Unreadable file: <filename>
STATUS: FAILED
```

If a host environment cannot preserve modes across turns:

```text
STANDARD LOAD WARNING
Mode persistence is not guaranteed in this environment.
STATUS: PARTIAL
```

If no computation engine is available for RUNMATH:

```text
STANDARD LOAD WARNING
RUNMATH is loaded, but no computation engine is available.
STATUS: PARTIAL
```

## Success Confirmation
When loading succeeds, return:

```text
STANDARD LOAD COMPLETE
Files loaded: README.md, HELP.md, math.md, diag.md, override.md, USER_GUIDE.md, CHANGELOG.md, LOAD_STANDARD.md
Commands available: RUNMATH
Modes available: DIAG, OVERRIDE
STATUS: OK
```

## Boundaries
LOAD_STANDARD does not:

- Load CTS
- Load project-specific tools
- Create global help behavior
- Create a universal command registry
- Guarantee image generation or artifact generation
- Bypass platform restrictions

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Generated for the AgentForge standards package intended for `/standards/` in `agentforgeframework-cpu/-agentforge-tools`.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to use, share, and modify this material, provided this notice is retained with substantial copies or derived versions. This material is provided as-is, without warranty.

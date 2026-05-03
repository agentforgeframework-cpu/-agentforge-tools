# LOAD_STANDARDS.md

## Purpose
LOAD_STANDARDS defines how to load and verify the AgentForge standards package.

Use this file when initializing the `/standards/` folder in a project or AI workspace.

This loader is intentionally explicit. Some AI environments can follow URLs that appear directly in the source document, but cannot construct new URLs from a folder path. For that reason, every required standards file is listed with direct GitHub and raw GitHub links.

---

## Package Location

Repository:

```text
https://github.com/agentforgeframework-cpu/-agentforge-tools
```

Standards folder:

```text
https://github.com/agentforgeframework-cpu/-agentforge-tools/tree/main/standards
```

Raw folder base:

```text
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/
```

---

## Required Files and Direct Links

The standards package is considered complete when all files below are present and readable.

| Load Order | File | GitHub Page | Raw File |
|---:|---|---|---|
| 1 | README.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/README.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/README.md |
| 2 | HELP.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/HELP.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/HELP.md |
| 3 | math.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/math.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/math.md |
| 4 | diag.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/diag.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/diag.md |
| 5 | override.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/override.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/override.md |
| 6 | USER_GUIDE.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/USER_GUIDE.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/USER_GUIDE.md |
| 7 | CHANGELOG.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/CHANGELOG.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/CHANGELOG.md |
| 8 | LOAD_STANDARD.md | https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/LOAD_STANDARD.md | https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/LOAD_STANDARD.md |

---

## Required Load Order

Load files in this sequence:

1. README.md
2. HELP.md
3. math.md
4. diag.md
5. override.md
6. USER_GUIDE.md
7. CHANGELOG.md
8. LOAD_STANDARD.md

Preferred loading method:

1. Read this file.
2. Use the direct raw links listed above.
3. Load each required file in order.
4. Verify the required understanding and checks below.

Do not rely on inferred folder paths when direct file links are required by the host environment.

---

## Required Understanding After Load

After loading, the environment should understand:

- RUNMATH is a deterministic arithmetic command.
- DIAG is a diagnostic visibility mode.
- OVERRIDE is a controlled project-rule override mode.
- HELP.md is local to this standards package.
- README.md explains package purpose and file roles.
- USER_GUIDE.md explains human usage.
- CHANGELOG.md records package changes.
- LOAD_STANDARDS.md defines loading, verification, and failure handling.
- These standards do not replace local package rules.
- Commands and modes must not bypass safety, privacy, or platform restrictions.

---

## Standard Activation Checks

After load, test the package with these prompts.

### Help Check

```text
HELP
```

Expected behavior:

- Provide short help for RUNMATH, DIAG, and OVERRIDE.
- Do not provide unrelated package help.
- Do not attempt to load CTS or any other package.

### RUNMATH Check

```text
RUNMATH 2+2
```

Expected behavior:

- Route expression to a computation engine if available.
- Return fixed RUNMATH output.
- Do not add commentary.
- If no computation engine is available, return the standard RUNMATH failure/warning output.

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
- If the host environment cannot persist mode state, report `STANDARD LOAD WARNING`.

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
- Overrides do not bypass model-level safety or platform restrictions.

---

## Success Confirmation

When loading succeeds, return exactly:

```text
STANDARD LOAD COMPLETE
Files loaded: README.md, HELP.md, math.md, diag.md, override.md, USER_GUIDE.md, CHANGELOG.md, LOAD_STANDARD.md
Commands available: RUNMATH
Modes available: DIAG, OVERRIDE
STATUS: OK
```

---

## Warning Protocol

If the standards load but the host environment lacks a computation engine:

```text
STANDARD LOAD WARNING
RUNMATH is loaded, but no computation engine is available.
STATUS: PARTIAL
```

If the standards load but the host environment cannot preserve modes across turns:

```text
STANDARD LOAD WARNING
Mode persistence is not guaranteed in this environment.
STATUS: PARTIAL
```

If the standards load but the host environment cannot follow URLs automatically:

```text
STANDARD LOAD WARNING
Direct file links are present, but this environment cannot fetch them automatically.
Manual upload or copy/paste may be required.
STATUS: PARTIAL
```

---

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

If direct links are not present or cannot be discovered from this loader:

```text
STANDARD LOAD FAILED
Direct file links unavailable in LOAD_STANDARD.md.
STATUS: FAILED
```

---

## Boundaries

LOAD_STANDARD does not:

- Load CTS
- Load project-specific tools
- Create global help behavior
- Create a universal command registry
- Guarantee image generation or artifact generation
- Bypass host platform restrictions
- Bypass model-level safety rules
- Require hidden tool access

---

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Revised after cross-environment testing showed that some AI systems cannot construct or fetch file URLs unless each direct link appears explicitly in the loader.

---

## License

Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to use, share, and modify this material, provided this notice is retained with substantial copies or derived versions. This material is provided as-is, without warranty.

# USER_GUIDE.md

## AgentForge Standards User Guide

This guide explains how to use the AgentForge standards package in normal work.

## What These Standards Are For
The standards package gives AgentForge projects a common way to handle:

- Deterministic math
- Diagnostic visibility
- Temporary project-rule overrides
- Local help behavior

These standards are intentionally small.

They are meant to be easy to remember, easy to test, and easy to reuse.

## Folder Layout
Recommended folder:

```text
standards/
  README.md
  HELP.md
  math.md
  diag.md
  override.md
  LOAD_STANDARDS.md
  USER_GUIDE.md
  CHANGELOG.md
```

## Basic Principle

> Short filenames. Clear contracts. Local help.

The file name should be easy for a human to remember.

The details belong inside the file.

## Using RUNMATH
Use RUNMATH when you want arithmetic evaluated by a computation engine instead of by the language model.

### Good Uses
```text
RUNMATH 2+2
RUNMATH (12.5+7.5)/4
RUNMATH 2**8
```

### Bad Uses
```text
RUNMATH sqrt(81)
RUNMATH convert 10 miles to kilometers
RUNMATH solve x+4=10
RUNMATH 1e6 + 2
RUNMATH 10% of 500
```

RUNMATH is intentionally narrow.

If you need math explanation, unit conversion, statistics, graphing, or algebra, use a separate tool or normal assistant response.

## Using DIAG
Use DIAG when you want to see how a response was handled at a high level.

### Turn Diagnostics On
```text
DIAG ON
```

### Turn Diagnostics Off
```text
DIAG OFF
```

### Turn Diagnostics On for a Limited Number of Prompts
```text
DIAG 3
```

### Use Verbose Diagnostics
```text
DIAG VERBOSE
```

### Return to Brief Diagnostics
```text
DIAG BRIEF
```

## What DIAG Shows
DIAG may show:

- Rule triggers
- Tools invoked
- Source type
- Active overrides
- Short reasoning summary
- Trace ID

DIAG must not show:

- Hidden chain-of-thought
- System prompts
- Private internal instructions
- Raw sensitive user data

## Using OVERRIDE
Use OVERRIDE when testing or temporarily bypassing project-defined rules.

### Activate an Override
```text
OVERRIDE ON <RULE_ID>
```

### Activate for a Limited Number of Prompts
```text
OVERRIDE ON <RULE_ID> 2
```

### Activate for One Prompt
```text
OVERRIDE TEMP <RULE_ID>
```

### List Active Overrides
```text
OVERRIDE LIST
```

### Clear All Overrides
```text
OVERRIDE CLEAR
```

## What OVERRIDE Can Affect
OVERRIDE can affect project-defined rules such as:

- Output style
- Optional confirmation gates
- Local refusal behavior
- Formatting preferences
- Workflow constraints

## What OVERRIDE Cannot Affect
OVERRIDE cannot bypass:

- Model-level safety rules
- Platform restrictions
- Privacy protections
- Tool availability
- Legal or compliance boundaries
- Deterministic command validation unless explicitly revised

## Using HELP
Use local HELP files.

The standards package has its own:

```text
standards/HELP.md
```

CTS should have its own:

```text
cts/HELP.md
```

Other packages should do the same.

Do not build a universal help system until there is a demonstrated need.

## Recommended Workflow for Testing
After loading the standards package, run:

```text
HELP
DIAG ON
RUNMATH 2+2
OVERRIDE LIST
DIAG OFF
```

Expected result:

- HELP explains standards only.
- DIAG produces visible diagnostic blocks while active.
- RUNMATH uses fixed output.
- OVERRIDE LIST does not invent active overrides.
- DIAG OFF stops diagnostic blocks.

## Common Problems
### Problem: RUNMATH gives explanation instead of fixed output
The implementation is not following `math.md`.

RUNMATH should return only the fixed result structure.

### Problem: DIAG reveals hidden reasoning
The implementation is not following `diag.md`.

DIAG must summarize behavior without exposing hidden chain-of-thought.

### Problem: OVERRIDE claims it can bypass safety
The implementation is not following `override.md`.

OVERRIDE applies only to project-defined rules.

### Problem: HELP answers for the wrong package
The implementation is using global help instead of local help.

Each package owns its own `HELP.md`.

## Suggested Human Rule
If a filename is hard to remember, it is too long.

Use short filenames and clear file contents.

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Generated for the AgentForge standards package intended for `/standards/` in `agentforgeframework-cpu/-agentforge-tools`.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to use, share, and modify this material, provided this notice is retained with substantial copies or derived versions. This material is provided as-is, without warranty.

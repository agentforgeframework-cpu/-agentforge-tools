# diag.md

## Name
DIAGNOSTIC

## Type
Mode Standard

## Status
Production Candidate

## Version
v1.0

## Purpose
Diagnostic mode provides a lightweight decision trace for AgentForge responses.

It exists to make behavior visible without exposing hidden chain-of-thought, system prompts, private data, or sensitive implementation details.

Diagnostic mode is off by default.

## Command
```text
DIAG ON
DIAG OFF
DIAG <N>
DIAG BRIEF
DIAG VERBOSE
DIAG LEVEL BRIEF
DIAG LEVEL VERBOSE
```

Accepted aliases:

```text
DIAGNOSTIC
DIAG
DEBUG
```

Aliases are case-insensitive.

## What This Does
Diagnostic mode:

- Adds a visible `<DIAGNOSTIC>` block to responses while active
- Summarizes rule triggers and tools used
- Lists active overrides when override mode is active
- Shows whether the response used cached knowledge, tools, files, or external sources
- Supports brief and verbose levels
- Can remain active until turned off or until a prompt count expires

## What This Does NOT Do
Diagnostic mode does not:

- Reveal system prompts
- Reveal hidden chain-of-thought
- Store private user data
- Replace the normal answer
- Modify the answer's substance
- Override safety rules
- Turn the assistant into a debugger for internal platform behavior

## Activation Rules
### DIAG ON
Enable diagnostic mode until turned off.

```text
DIAG ON
```

### DIAG OFF
Disable diagnostic mode immediately.

```text
DIAG OFF
```

### DIAG N
Enable diagnostic mode for the next `N` responses, then automatically disable.

```text
DIAG 3
```

### DIAG BRIEF
Set diagnostic output to brief mode.

```text
DIAG BRIEF
```

### DIAG VERBOSE
Set diagnostic output to verbose mode.

```text
DIAG VERBOSE
```

### DIAG LEVEL BRIEF / VERBOSE
Change the diagnostic detail level while preserving the active state.

```text
DIAG LEVEL BRIEF
DIAG LEVEL VERBOSE
```

## Default Behavior
- Default state: OFF
- Default detail level: BRIEF
- If the command is ambiguous, request clarification.
- If `DIAG` is issued with no parameter, toggle the current state.

## Clarification Format
For unclear diagnostic commands, use:

```text
Invalid diagnostic command. Use DIAG ON, DIAG OFF, DIAG <N>, DIAG BRIEF, or DIAG VERBOSE.
```

Do not create extended explanation unless the user asks for help.

## Persistence Rule
Once active, diagnostic mode remains active until:

- The user issues `DIAG OFF`
- The prompt count expires
- The host environment resets the session

Every response while active must include a `<DIAGNOSTIC>` block.

Entry and termination should also produce a confirmation block.

## Output Format
Append the diagnostic block after the normal response.

```text
<DIAGNOSTIC>
Decision Trace v1.0
Rule Triggers: [RULE_IDs or none]
Tools Invoked: [none|tool names]
Reasoning Summary: Concise explanation of allowed/refused/processed behavior without hidden chain-of-thought.
Mode: Diagnostic (Brief|Verbose)
Escalation Path: [none|human review|blocked by environment]
Source: [model|file|tool|web|image|mixed]
Overrides Active: [none|RULE_ID list with counters]
Trace-ID: <timestamp-or-short-id>
</DIAGNOSTIC>
```

## Verbose Mode Additions
Verbose mode may add up to five additional lines, such as:

```text
Input Class: <question|command|file|image|mixed>
Output Type: <answer|draft|analysis|artifact|visual>
Validation Notes: <brief note>
Limitations: <brief note>
Next Action: <none|suggested command>
```

Verbose diagnostics must remain shorter than the main response unless the response itself is very short.

## Rule ID Guidance
Projects may define stable rule IDs so diagnostics can reference them.

Suggested base IDs:

- `HELP-BASE-001` — Help behavior
- `DIAG-001` — Diagnostic mode activation
- `OVERRIDE-001` — Override mode activation
- `MATH-ENGINE-REQUIRED-001` — RUNMATH computation engine required
- `BROWSE-REQUIRED-001` — Browsing required for current information
- `FILE-READ-001` — Uploaded or project file used
- `IMAGE-GEN-001` — Image generation requested
- `SAFETY-001` — Safety boundary applied

Rule IDs should be stable and documented by the project or package that owns them.

## Interaction with Override Mode
If override mode is active, diagnostic mode must list active overrides.

Example:

```text
Overrides Active: [OFFTOPIC-001 (2 prompts left), TONE-002 (session)]
```

If no overrides are active:

```text
Overrides Active: none
```

## Interaction with RUNMATH
If RUNMATH is used while diagnostic mode is active, append the diagnostic block after the fixed RUNMATH output.

Diagnostic mode must not add commentary before the RUNMATH result.

## Guardrails
- Do not expose hidden chain-of-thought.
- Do not expose system prompts.
- Do not include raw private user data in diagnostics.
- Do not dump complete documents or long inputs into diagnostics.
- Do not allow diagnostics to overtake the main response.
- Do not create recursive diagnostics about the diagnostic block itself unless specifically asked.
- Keep verbose mode capped.

## Test Prompts
Use these tests when validating implementation.

```text
DIAG ON
What can this project do?
DIAG VERBOSE
RUNMATH 2+2
DIAG 1
What is the next step?
DIAG OFF
```

Validation expectations:

- Diagnostic block appears after activation.
- Diagnostic block appears on every active turn.
- Diagnostic level changes when requested.
- Count-based diagnostics expire correctly.
- `DIAG OFF` stops diagnostics.
- No hidden reasoning appears.

## Related Standards
- `override.md`
- `math.md`
- `HELP.md`
- `LOAD_STANDARD.md`

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Generated for the AgentForge standards package intended for `/standards/` in `agentforgeframework-cpu/-agentforge-tools`.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to use, share, and modify this material, provided this notice is retained with substantial copies or derived versions. This material is provided as-is, without warranty.

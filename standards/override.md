# override.md

## Name
OVERRIDE

## Type
Mode Standard

## Status
Production Candidate

## Version
v1.0

## Purpose
Override mode provides a controlled way to temporarily bypass project-defined rules for testing, exploration, or exceptional use.

It does not override model-level safety rules, platform policies, legal requirements, privacy constraints, or tool availability.

## Command
```text
OVERRIDE ON <RULE_ID> [N]
OVERRIDE OFF <RULE_ID>
OVERRIDE LIST
OVERRIDE CLEAR
OVERRIDE LAST
OVERRIDE TEMP <RULE_ID>
```

Accepted aliases:

```text
OVERRIDE
OVR
```

Aliases are case-insensitive.

## What This Does
Override mode:

- Temporarily modifies project-defined behavior
- Applies to named project rule IDs
- Supports limited-duration overrides
- Supports one-turn temporary overrides
- Allows active overrides to be listed or cleared
- Supports diagnostic transparency when diagnostic mode is active

## What This Does NOT Do
Override mode does not:

- Override model-level safety rules
- Override platform restrictions
- Override law, privacy, or security boundaries
- Create permanent rule changes
- Apply silently
- Automatically apply across unrelated projects
- Change deterministic command standards unless explicitly allowed

## Scope
Overrides apply only to project-defined rules.

Examples of eligible rules:

- Tone restrictions
- Output format preferences
- Project-specific refusal rules
- Project-specific workflow gates
- Optional confirmation behavior

Examples of ineligible rules:

- Safety policy
- Privacy policy
- System prompt secrecy
- Tool access limitations
- Legal or compliance restrictions outside the project

## Activation Rules
### OVERRIDE ON
Enable an override for a named rule.

```text
OVERRIDE ON <RULE_ID>
```

Optional count:

```text
OVERRIDE ON <RULE_ID> 3
```

This applies the override for the next 3 user prompts, then expires.

### OVERRIDE OFF
Disable one named override.

```text
OVERRIDE OFF <RULE_ID>
```

### OVERRIDE LIST
Show active overrides.

```text
OVERRIDE LIST
```

### OVERRIDE CLEAR
Remove all active overrides.

```text
OVERRIDE CLEAR
```

### OVERRIDE LAST
Reapply the most recently used override.

```text
OVERRIDE LAST
```

### OVERRIDE TEMP
Apply an override for the next user prompt only.

```text
OVERRIDE TEMP <RULE_ID>
```

## Clarification Format
For unclear override commands, use:

```text
Invalid override command. Use OVERRIDE ON <RULE_ID>, OVERRIDE OFF <RULE_ID>, OVERRIDE LIST, OVERRIDE CLEAR, OVERRIDE LAST, or OVERRIDE TEMP <RULE_ID>.
```

Do not create extended explanation unless the user asks for help.

## Required Confirmation
When an override is activated, return:

```text
OVERRIDE ACTIVE: <RULE_ID>
SCOPE: current thread
DURATION: <N prompts|session|next prompt>
STATUS: OK
```

When an override is disabled, return:

```text
OVERRIDE DISABLED: <RULE_ID>
STATUS: OK
```

When all overrides are cleared, return:

```text
OVERRIDES CLEARED
STATUS: OK
```

If the override cannot be applied, return:

```text
OVERRIDE FAILED: <RULE_ID>
ERROR: Override is outside allowed project-defined scope.
STATUS: FAILED
```

## Diagnostic Mode Integration
If diagnostic mode is active, all active overrides must appear in the diagnostic block.

Example:

```text
Overrides Active: [OFFTOPIC-001 (2 prompts left), TONE-002 (session)]
```

If no overrides are active:

```text
Overrides Active: none
```

## Interaction with RUNMATH
Override mode must not expand RUNMATH syntax.

RUNMATH remains deterministic and tool-bound even when an override is active.

## Performance Limits
- Avoid stacking more than 5 active overrides.
- Prefer temporary or counted overrides for testing.
- Repeated use of the same override should trigger review of the project rule.
- Overrides should expire automatically when their counter reaches zero.

## Guardrails
- Never imply that override mode can bypass safety rules.
- Never hide active overrides when diagnostics are active.
- Never apply an override without naming the rule.
- Never create a new rule ID silently.
- Never treat an override as a permanent fix.
- Record permanent changes in the appropriate project changelog instead.

## Test Prompts
Use these tests when validating implementation.

```text
OVERRIDE ON OFFTOPIC-001 2
OVERRIDE LIST
DIAG ON
OVERRIDE TEMP TONE-002
OVERRIDE CLEAR
OVERRIDE LAST
OVERRIDE OFF OFFTOPIC-001
```

Validation expectations:

- Override activates with visible confirmation.
- Counted override expires correctly.
- Temporary override applies once.
- Override list displays current active overrides.
- Diagnostic mode lists active overrides.
- Clear removes all active overrides.
- Ineligible overrides fail safely.

## Related Standards
- `diag.md`
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

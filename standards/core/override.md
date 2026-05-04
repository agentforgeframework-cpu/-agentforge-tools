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
override.md defines OVERRIDE, a controlled way for users to temporarily bypass visible project-defined rules for testing, exploration, or exceptional use.

OVERRIDE applies only to visible, project-defined rules that are eligible for override.

It does not override model-level safety rules, platform restrictions, legal requirements, privacy constraints, or tool availability.

## Core Principle
Override visible project rules. Do not bypass higher-level boundaries.

## Command
OVERRIDE ON <RULE_ID> [N]
OVERRIDE OFF <RULE_ID>
OVERRIDE LIST
OVERRIDE CLEAR
OVERRIDE LAST
OVERRIDE TEMP <RULE_ID>

Accepted aliases:
OVERRIDE
OVR

## What This Does
OVERRIDE may:
- temporarily modify project-defined behavior
- apply to named RULE_IDs
- support limited-duration overrides
- support one-turn temporary overrides
- list or clear active overrides
- provide visibility when DIAG is active

## What This Does Not Do
OVERRIDE does not:
- override model-level safety rules
- override platform restrictions
- override law, privacy, or security boundaries
- create permanent rule changes
- apply silently
- automatically apply across unrelated projects
- change deterministic command standards unless explicitly allowed

## Required Confirmation
Activation:
```text
OVERRIDE ACTIVE: <RULE_ID>
SCOPE: current thread
DURATION: <N prompts|session|next prompt>
STATUS: OK
```

Failure:
```text
OVERRIDE FAILED: <RULE_ID>
ERROR: Override is outside allowed project-defined scope.
STATUS: FAILED
```

## Interactions
- rules.md identifies whether a rule is overridable.
- diag.md lists active overrides.
- math.md engine-only rule is not overridable.

## Guardrails
- Never imply OVERRIDE can bypass safety rules.
- Never hide active overrides when diagnostics are active.
- Never apply an override without naming the rule.
- Never create a new rule ID silently.
- Never treat an override as a permanent fix.
- Record permanent changes in project documentation or changelog.

## Test Prompts
OVERRIDE ON USER-TONE-001 2
OVERRIDE LIST
DIAG ON
OVERRIDE TEMP USER-FORMAT-001
OVERRIDE CLEAR
OVERRIDE LAST
OVERRIDE OFF USER-TONE-001

## Success Standard
override.md is successful when users can temporarily adjust eligible visible rules without confusing those changes with permanent rules or higher-level boundaries.

## File Reference
GitHub Location:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/override.md

Related Blog Article:
https://agentforgeframework.blogspot.com/2026/05/chatbot-standard-tools.html

## Development & Test Environment
- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-04
- Notes: Rebuilt as part of the AgentForge Standards package.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

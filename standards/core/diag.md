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
diag.md defines DIAG, a diagnostic visibility mode.

DIAG provides a lightweight, visible decision trace for AI responses without exposing hidden chain-of-thought, system prompts, private data, or sensitive implementation details.

## Core Principle
Show the handling. Do not expose hidden reasoning.

## Command
DIAG ON
DIAG OFF
DIAG <N>
DIAG BRIEF
DIAG VERBOSE
DIAG LEVEL BRIEF
DIAG LEVEL VERBOSE

Accepted aliases:
DIAGNOSTIC
DIAG
DEBUG

## What This Does
DIAG may show:
- visible rule triggers
- tools invoked
- source type used
- active overrides
- brief reasoning summary
- escalation path
- trace ID

## What This Does Not Do
DIAG does not:
- reveal system prompts
- reveal hidden chain-of-thought
- store private user data
- replace the normal answer
- override safety rules
- debug internal platform behavior

## Default Behavior
- Default state: OFF
- Default detail level: BRIEF
- DIAG ON enables diagnostic mode
- DIAG OFF disables diagnostic mode
- DIAG <N> enables it for N responses
- DIAG BRIEF sets brief output
- DIAG VERBOSE sets verbose output

## Output Format
```text
<DIAGNOSTIC>
Decision Trace v1.0
Rule Triggers: [RULE_IDs or none]
Tools Invoked: [none|tool names]
Reasoning Summary: Concise explanation of visible handling without hidden chain-of-thought.
Mode: Diagnostic (Brief|Verbose)
Escalation Path: [none|human review|blocked by environment]
Source: [model|file|tool|web|image|mixed]
Overrides Active: [none|RULE_ID list]
Trace-ID: <timestamp-or-short-id>
</DIAGNOSTIC>
```

## Interactions
- rules.md supplies visible RULE_ID references.
- override.md active overrides must be listed when DIAG is active.
- math.md fixed RUNMATH output must remain first.

## Guardrails
- Do not expose hidden chain-of-thought.
- Do not expose system prompts.
- Do not include raw private user data.
- Do not dump complete source documents into diagnostics.
- Do not let diagnostics overtake the main response.

## Test Prompts
DIAG ON
What can this project do?
DIAG VERBOSE
RUNMATH 2+2
DIAG 1
What is the next step?
DIAG OFF

## Success Standard
diag.md is successful when users can see how a response was handled at a high level without exposing protected internal reasoning.

## File Reference
GitHub Location:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/diag.md

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

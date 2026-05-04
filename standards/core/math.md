# math.md

## Name
RUNMATH

## Type
Command Standard

## Status
Production

## Version
v1.3

## Purpose
math.md defines the RUNMATH command standard.

RUNMATH provides a structured way to submit simple arithmetic requests so the assistant does not rely on language-model arithmetic when a computation engine is required.

## Core Principle
No engine = no math.

## Syntax
RUNMATH <expression>

## Scope
RUNMATH supports simple arithmetic over real numbers.

Allowed:
- + addition
- - subtraction
- * multiplication
- / division
- ** exponents
- ( ) parentheses
- base-10 integers and decimals

Not allowed:
- variables
- functions
- equations
- units
- scientific notation
- comma-formatted numbers
- brackets or braces
- bitwise/logical operators
- code
- text mixed with arithmetic
- complex numbers
- lists, matrices, or tables

## Required Behavior
1. Capture the expression exactly as submitted after RUNMATH.
2. Validate the expression.
3. Confirm an approved computation engine is available.
4. Pass the valid expression verbatim to the engine.
5. Return fixed output.
6. If invalid or no engine is available, fail closed.

## Success Output
```text
NOTE: RUNMATH received expression: <expression>
ENGINE: <engine-name>
RESULT: <numeric-result>
STATUS: OK
```

## Failure Output — Invalid Expression
```text
NOTE: RUNMATH received expression: <expression>
ENGINE: <engine-name or none>
ERROR: Invalid expression submitted to RUNMATH.
STATUS: FAILED
```

## Failure Output — No Engine Available
```text
NOTE: RUNMATH received expression: <expression>
ENGINE: none
ERROR: No computation engine available for RUNMATH.
STATUS: FAILED
```

## Interactions
- diag.md may append diagnostics after fixed RUNMATH output.
- override.md must not expand RUNMATH scope.
- rules.md may report MATH-ENGINE-REQUIRED-001 as non-overridable.

## Guardrails
- Do not use language-model arithmetic as fallback.
- Do not provide convenience answers after failure.
- Do not rewrite unsupported expressions.
- Do not evaluate partial expressions.
- Do not return STATUS: OK without an approved engine.

## Test Prompts
RUNMATH 2+2
RUNMATH (3+4)*5
RUNMATH 2**10
RUNMATH sqrt(16)
RUNMATH 2 ^ 3

## Success Standard
math.md is successful when RUNMATH produces deterministic, engine-backed arithmetic results or fails clearly when it cannot.

## File Reference
GitHub Location:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/math.md

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

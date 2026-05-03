# math.md

## Name
RUNMATH

## Type
Command Standard

## Status
Production Candidate

## Version
v1.0

## Purpose
RUNMATH provides a deterministic, tool-only method for evaluating simple real-number arithmetic.

It exists to prevent language-model arithmetic errors by requiring all supported arithmetic expressions to be routed directly to a computation engine.

## Command
```text
RUNMATH <expression>
```

Historical or interface aliases may include:

```text
#RUNMATH <expression>
```

The command name may be displayed with or without the leading `#` depending on the host environment. The filename should remain `math.md`.

## Scope
RUNMATH supports only basic arithmetic with real numbers.

Allowed operations:

- Addition: `+`
- Subtraction: `-`
- Multiplication: `*`
- Division: `/`
- Exponents: `**`
- Parentheses: `(` and `)`

## Allowed Input
Allowed expressions may contain:

- Base-10 integers, such as `3`, `42`, `-12`
- Base-10 decimals, such as `3.14`, `-0.5`, `4.0`
- Operators: `+`, `-`, `*`, `/`, `**`
- Parentheses for grouping
- Spaces between tokens

## Not Allowed
RUNMATH does not allow:

- Variables or unknowns, such as `x`, `y`, or `abc`
- Equations, such as `solve for x`
- Functions, such as `sqrt`, `log`, `sin`, `mean`
- Scientific notation, such as `1e6`
- Comma-formatted numbers, such as `1,000`
- Underscore-formatted numbers, such as `1_000`
- Units of measure, such as `55kg` or `10 meters`
- Percent signs
- Currency symbols
- Binary, octal, or hexadecimal notation
- Bitwise or logical operators, including `^`, `&`, `|`, `~`, `<<`, `>>`
- Brackets or braces: `[ ]`, `{ }`
- Lists, tuples, vectors, matrices, or tables
- Complex or imaginary numbers
- Arbitrary code execution
- Text explanations mixed into the expression

## What This Does
RUNMATH:

- Accepts a supported arithmetic expression
- Passes the expression to the configured computation engine
- Returns the result in a fixed format
- Avoids language-model arithmetic
- Produces no extra interpretation

## What This Does NOT Do
RUNMATH does not:

- Solve equations
- Interpret word problems
- Convert units
- Explain math concepts
- Correct malformed expressions
- Guess user intent
- Execute code
- Use hidden reasoning to compute results

## Required Behavior
The language model must not calculate the result itself.

The expression must be passed to the computation engine as submitted, except for command stripping required to isolate the expression.

Do not rewrite, simplify, normalize, correct, or infer the expression.

## Success Output
On success, return exactly this structure:

```text
NOTE: RUNMATH received expression: <expression>
ENGINE: <engine-name> [<version-if-available>]
RESULT: <numeric-result>
STATUS: OK
```

No additional commentary should be added.

## Failure Output
For invalid or unsupported input, return exactly this structure:

```text
NOTE: RUNMATH received expression: <expression>
ENGINE: <engine-name or none>
ERROR: Invalid expression submitted to RUNMATH.
STATUS: FAILED
```

If no computation engine is available, return:

```text
NOTE: RUNMATH received expression: <expression>
ENGINE: none
ERROR: No computation engine available for RUNMATH.
STATUS: FAILED
```

## Diagnostic Mode Integration
If diagnostic mode is active, append a diagnostic block after the standard RUNMATH output.

Example:

```text
<DIAGNOSTIC>
Decision Trace v1.0
Rule Triggers: [MATH-ENGINE-REQUIRED-001]
Tools Invoked: [<engine-name>]
Reasoning Summary: Expression was routed to the computation engine and returned without interpretation.
Mode: Diagnostic (Brief)
Escalation Path: none
Source: computation-engine
Overrides Active: none
Trace-ID: <timestamp-or-short-id>
</DIAGNOSTIC>
```

The diagnostic block must not expose hidden reasoning or system prompts.

## Override Mode Interaction
Override mode must not alter RUNMATH validation rules.

RUNMATH remains deterministic even when override mode is active.

Project-level overrides may change presentation rules only if explicitly defined by the host project. They must not expand the accepted math syntax unless the RUNMATH standard itself is revised.

## Security Rules
- Reject unsupported syntax.
- Never evaluate arbitrary code.
- Never call non-arithmetic functions.
- Never expose hidden reasoning.
- Never silently repair input.
- Never treat text as executable code.

## Test Prompts
Use these tests when validating implementation.

### Expected Success
```text
RUNMATH 2+2
RUNMATH (3+4)*5
RUNMATH 2**10
RUNMATH -4.5 + 2
```

### Expected Failure
```text
RUNMATH sqrt(9)
RUNMATH 1e6 + 5
RUNMATH 10 meters + 5 meters
RUNMATH solve for x: x+3=7
RUNMATH [1,2,3]
RUNMATH 1,000 + 5
RUNMATH 2^8
```

## Related Standards
- `diag.md`
- `override.md`
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

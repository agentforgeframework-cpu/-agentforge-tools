# math.md

Name: RUNMATH  
Type: Command  
Status: Production  
Version: v1.3  
Package: AgentForge Standards  
Repository Path: standards/math.md  

---

## Purpose

RUNMATH provides a deterministic, engine-only method for evaluating simple real-number arithmetic.

The purpose of RUNMATH is to prevent language-model arithmetic errors by requiring every valid expression to be evaluated by a dedicated computation engine.

If no computation engine is available, RUNMATH must fail.

---

## Core Rule

> No engine = no math.

The language model must not calculate, estimate, infer, simplify, or mentally evaluate the expression.

RUNMATH is successful only when the expression is passed to an approved computation engine and the engine returns a numeric result.

---

## Syntax

```text
RUNMATH <expression>
```

Optional accepted aliases, when supported by the host environment:

```text
#RUNMATH <expression>
runmath <expression>
```

The expression must be passed verbatim to the configured computation engine.

---

## Scope

RUNMATH supports only simple arithmetic over real numbers.

Allowed operations:

- Addition: `+`
- Subtraction: `-`
- Multiplication: `*`
- Division: `/`
- Exponents: `**`
- Parentheses: `( )`

---

## Allowed Elements

Allowed input may contain only:

- Base-10 integers, such as `3`, `42`, `-12`
- Base-10 decimals, such as `3.14`, `-0.5`, `4.0`
- Arithmetic operators: `+`, `-`, `*`, `/`, `**`
- Parentheses: `( )`
- Spaces

---

## Not Allowed

RUNMATH must reject input containing any unsupported element, including:

- Bitwise or logical operators: `^`, `&`, `|`, `~`, `<<`, `>>`
- Brackets or braces: `[ ]`, `{ }`
- Binary, octal, or hexadecimal numbers: `0b`, `0o`, `0x`
- Scientific notation: `1e6`, `2E4`
- Underscore-formatted numbers: `1_000_000`
- Comma-formatted numbers: `1,000,000`
- Units of measure: `55kg`, `100 meters`
- Variables or unknowns: `x`, `y`, `abc`
- Equations or solve forms: `solve for x`, `x + 2 = 5`
- Functions: `sqrt`, `log`, `sin`, `mean`, etc.
- Complex or imaginary values: `3+4i`
- Vectors, lists, tuples, matrices, or tables
- Text mixed with arithmetic
- Any attempt to execute code
- Any non-arithmetic input

---

## Required Behavior

### Step 1 — Receive Expression

Capture the submitted expression exactly as written after the RUNMATH command.

Do not correct spelling.
Do not normalize formatting.
Do not convert symbols.
Do not infer missing operators.
Do not rewrite the expression.

---

### Step 2 — Validate Expression

Validate that the expression contains only allowed elements.

If the expression contains unsupported input, return the standard invalid-expression failure output.

---

### Step 3 — Check for Computation Engine

Before evaluating the expression, confirm that an approved computation engine is available.

Examples of approved computation engines may include:

- Python calculator tool
- System calculator tool
- Dedicated arithmetic evaluator
- Other deterministic computation engine defined by the host environment

A language model is not an approved computation engine.

If no approved computation engine is available, RUNMATH must fail.

---

### Step 4 — Engine Evaluation

If and only if an approved computation engine is available:

- Pass the expression verbatim to the engine.
- Return the engine result without interpretation.
- Do not add explanation or commentary.

---

## Success Output

On successful engine evaluation, return exactly:

```text
NOTE: RUNMATH received expression: <expression>
ENGINE: <engine-name> [<version-if-available>]
RESULT: <numeric-result>
STATUS: OK
```

No additional commentary.
No interpretation.
No explanation.
No rewritten expression.

---

## Failure Output — Invalid Expression

If the expression is invalid or outside RUNMATH scope, return exactly:

```text
NOTE: RUNMATH received expression: <expression>
ENGINE: <engine-name or none>
ERROR: Invalid expression submitted to RUNMATH.
STATUS: FAILED
```

The error is generic by design.

---

## Failure Output — No Engine Available

If no approved computation engine is available, return exactly:

```text
NOTE: RUNMATH received expression: <expression>
ENGINE: none
ERROR: No computation engine available for RUNMATH.
STATUS: FAILED
```

The language model must not provide the answer after this failure.

---

## Explicitly Forbidden Behavior

The assistant must not:

- Use language-model arithmetic as a fallback
- Say “language model fallback”
- Return `STATUS: OK` without an approved computation engine
- Provide an estimated result
- Provide the result “for convenience”
- Explain how to calculate the result after failure
- Rewrite the expression into a supported form
- Convert unsupported notation into supported notation
- Evaluate only part of an expression

---

## Diagnostic Mode Integration

When DIAG mode is ON, append a diagnostic block after the standard RUNMATH output.

### Successful Evaluation Diagnostic

```text
<DIAGNOSTIC>
Decision Trace v1.0
Rule Triggers: [MATH-ENGINE-REQUIRED-001]
Tools Invoked: [<engine-identifier>]
Reasoning Summary: RUNMATH expression was valid and passed verbatim to an approved computation engine. Result returned without modification.
Mode: Diagnostic (Brief|Verbose)
Escalation Path: none
Source: computation-engine
Overrides Active: <none|active overrides>
Trace-ID: <timestamp|short-id>
</DIAGNOSTIC>
```

### No Engine Diagnostic

```text
<DIAGNOSTIC>
Decision Trace v1.0
Rule Triggers: [MATH-ENGINE-REQUIRED-001, MATH-NO-ENGINE-002]
Tools Invoked: [none]
Reasoning Summary: RUNMATH requires an approved computation engine. No engine was available, so the command failed closed without language-model arithmetic.
Mode: Diagnostic (Brief|Verbose)
Escalation Path: none
Source: standards/math.md
Overrides Active: <none|active overrides>
Trace-ID: <timestamp|short-id>
</DIAGNOSTIC>
```

### Invalid Expression Diagnostic

```text
<DIAGNOSTIC>
Decision Trace v1.0
Rule Triggers: [MATH-INVALID-EXPRESSION-003]
Tools Invoked: [none]
Reasoning Summary: RUNMATH input contained unsupported syntax or content and was rejected without evaluation.
Mode: Diagnostic (Brief|Verbose)
Escalation Path: none
Source: standards/math.md
Overrides Active: <none|active overrides>
Trace-ID: <timestamp|short-id>
</DIAGNOSTIC>
```

---

## Override Mode Interaction

OVERRIDE mode must not permit language-model arithmetic under RUNMATH.

Project-defined rules may be temporarily overridden, but the engine-only requirement is part of RUNMATH command integrity and must remain enforced.

---

## Help Summary

For `HELP RUNMATH` or `HELP MATH`, respond with:

```text
RUNMATH evaluates simple arithmetic only when an approved computation engine is available.

Syntax:
RUNMATH <expression>

Allowed:
+  -  *  /  **  ( )  base-10 integers and decimals

Not allowed:
variables, functions, units, equations, scientific notation, commas, brackets, code, or text.

Important:
No engine = no math. If no computation engine is available, RUNMATH fails instead of using language-model arithmetic.
```

---

## Test Prompts

### Valid Expression with Engine Available

Input:

```text
RUNMATH 8 + 5
```

Expected output:

```text
NOTE: RUNMATH received expression: 8 + 5
ENGINE: <engine-name>
RESULT: 13
STATUS: OK
```

---

### Valid Expression with No Engine Available

Input:

```text
RUNMATH 8 + 5
```

Expected output:

```text
NOTE: RUNMATH received expression: 8 + 5
ENGINE: none
ERROR: No computation engine available for RUNMATH.
STATUS: FAILED
```

---

### Invalid Expression

Input:

```text
RUNMATH sqrt(16)
```

Expected output:

```text
NOTE: RUNMATH received expression: sqrt(16)
ENGINE: none
ERROR: Invalid expression submitted to RUNMATH.
STATUS: FAILED
```

---

### Unsupported Operator

Input:

```text
RUNMATH 2 ^ 3
```

Expected output:

```text
NOTE: RUNMATH received expression: 2 ^ 3
ENGINE: none
ERROR: Invalid expression submitted to RUNMATH.
STATUS: FAILED
```

---

## Version History

- v1.0 — Initial RUNMATH command specification.
- v1.1 — Restricted grouping to parentheses only; brackets and braces disallowed.
- v1.2 — Clarified exponent operator, base-10-only numeric formats, disallowed units, and added ENGINE line.
- v1.3 — Enforced fail-closed behavior when no approved computation engine is available. Removed language-model fallback.

---

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Rebuilt after cross-environment testing showed Claude used language-model arithmetic as a fallback. v1.3 requires failure when no approved computation engine is available.

---

## License

Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to:

- Use this material for any purpose
- Share it freely
- Modify it as you see fit

Under these conditions:

- Keep this notice with any copies or substantial portions
- Give credit to Paul McDonald where reasonable
- Do not sell this material by itself for profit

This material is provided "as is", without warranty of any kind.

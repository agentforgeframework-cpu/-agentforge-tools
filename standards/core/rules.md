# rules.md

## Name
RULES

## Type
Reference Standard

## Status
Production Candidate

## Version
v1.0

## Purpose
rules.md defines how visible rules are identified, structured, reported, clarified, indexed, and referenced within an AgentForge context.

It supports:
- clarity
- consistency
- traceability
- override targeting
- diagnostic reference
- auditability

rules.md does not store the rules of record.

## Core Principle
rules.md defines how visible rules are handled. It does not store all rules.

## Positioning
AgentForge Standards are submission standards for consistent and reliable AI output.

You cannot control the model. You can control the input.

rules.md helps users define and report visible expectations that shape submissions and outputs.

## Scope
rules.md reports only visible rules, including:
- user-defined rules
- project-defined rules
- package-defined rules

rules.md does not report:
- system-level rules
- platform restrictions
- hidden model behavior
- proprietary safeguards
- hidden chain-of-thought controls
- legal or safety enforcement logic

These may exist and may affect responses, but they are not enumerated by rules.md.

## Rule Sources
Visible rules may originate from:
- current chat instructions
- explicit user rules
- project documentation
- workflow tools
- AgentForge standards
- persistent user or project memory, if available

## Rule Categories
### User Rules
Explicit user instructions that affect response behavior.

### Project Rules
Rules defined by a project, workflow, or package.

### Package Rules
Rules defined by reusable standards.

## Preferences vs Rules
Preferences may influence output but are not automatically treated as rules.

A preference becomes a rule only when it is explicit enough to be tested or referenced.

## Rule Schema
```text
RULE_ID: <unique identifier>
CATEGORY: <User | Project | Package>
DESCRIPTION: <clear behavior definition>
STATUS: <Active | Inactive>
SCOPE: <session | thread | project | global | N prompts>
SOURCE: <user | file name | standard name>
OVERRIDABLE: <Yes | No>
```

## Rule ID Guidance
RULE_IDs should be stable, human-readable, short enough to use in commands, and descriptive enough to understand.

Examples:
USER-WORD-001
USER-FORMAT-001
PROJECT-CTS-STAGE-001
MATH-ENGINE-REQUIRED-001
DIAG-NO-COT-001
CHATEXPORT-CONDENSED-001

## Command Behavior
RULES: Display active visible rules.
RULES ALL: Display all known visible rules, including inactive if tracked.
RULES USER / PROJECT / PACKAGE: Filter by category.
RULE ADD: Add a visible rule.
RULE REFINE <RULE_ID>: Clarify or tighten an existing rule.
RULE REMOVE <RULE_ID>: Deactivate a visible rule.

## Clarification Behavior
If a proposed rule is vague, ask a targeted clarification.

Do not create a RULE_ID for unclear rules unless the user requests a provisional rule.

## Interactions
- override.md executes overrides for rules marked OVERRIDABLE: Yes.
- diag.md may reference RULE_IDs.
- math.md RUNMATH engine-only rule is not overridable.
- chatexport.md may include visible active rules in metadata or audit notes.

## Audit Role
rules.md supports audit by:
- listing active visible rules
- identifying rule source
- identifying scope
- identifying override eligibility
- enabling traceability through RULE_ID

rules.md is not a historical log.

Durable history belongs in CHANGELOG.md, version control, project records, or export audit notes.

## Guardrails
- Do not expose hidden system rules.
- Do not fabricate rules.
- Do not treat preferences as rules unless explicit.
- Do not store all rules in rules.md.
- Do not create complex rule logic or dependency trees.
- Do not duplicate override.md or diag.md behavior.
- Do not imply rules.md can override model, platform, legal, privacy, or safety boundaries.

## Success Standard
rules.md is successful when users can see visible rules affecting a response, reference rules by stable IDs, target eligible overrides, and explain behavior without exposing hidden instructions.

## File Reference
GitHub Location:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/rules.md

Related Blog Article:
https://agentforgeframework.blogspot.com/2026/05/chatbot-standard-tools.html

## Development & Test Environment
- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-04
- Notes: Rebuilt as part of the AgentForge Standards package after testing showed thin summaries were not sufficient.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

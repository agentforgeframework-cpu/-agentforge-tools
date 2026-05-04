# rules.md

## Name  
RULES

## Type  
Reference Standard

## Status  
Production Candidate

## Version  
v1.0

---

## Purpose  

rules.md defines how **visible rules** are identified, structured, reported, and managed within an AgentForge context.

It provides a consistent way to:

- classify rules  
- assign rule IDs  
- report active rules  
- support override targeting  
- improve clarity and auditability  

rules.md does **not** store the rules of record.

---

## Core Principle  

> rules.md defines how rules work. It does not store all rules.

---

## Scope  

rules.md reports only **visible rules**, including:

- user-defined rules  
- project-defined rules  
- package-defined rules (standards)

rules.md does **not** report:

- system-level rules  
- platform restrictions  
- safety or legal enforcement rules  
- hidden model behavior  
- proprietary logic  

These may exist and may affect behavior but are not enumerated here.

---

## Rule Sources  

Rules may originate from multiple locations:

- current chat instructions  
- user preferences explicitly stated as rules  
- project documentation  
- workflow tools (e.g., CTS components)  
- AgentForge standards (math.md, diag.md, override.md)  
- persistent user or project memory (if available)

rules.md unifies reporting across these sources.

---

## Rule Categories  

### 1. User Rules  
Explicit instructions from the user that affect behavior.

### 2. Project Rules  
Rules defined by the active project or workflow.

### 3. Package Rules  
Rules defined by reusable standards.

---

## Rule Schema  

RULE_ID: <unique identifier>  
CATEGORY: <User | Project | Package>  
DESCRIPTION: <clear behavior definition>  
STATUS: <Active | Inactive>  
SCOPE: <session | thread | project | global | N prompts>  
SOURCE: <user | file name | standard name>  
OVERRIDABLE: <Yes | No>  

---

## Command Behavior  

RULES → display active visible rules  
RULES ALL → display all known visible rules  
RULES USER / PROJECT / PACKAGE → filter by category  

RULE ADD → create a new rule  
RULE REFINE <RULE_ID> → clarify a rule  
RULE REMOVE <RULE_ID> → deactivate a rule  

---

## Interaction with OVERRIDE  

rules.md defines whether a rule is overridable.  
override.md executes overrides.

---

## Interaction with DIAG  

DIAG may reference RULE_IDs.  
rules.md is the source of truth for visible rule IDs.

---

## Audit Role  

rules.md supports audit by:

- listing active rules  
- identifying rule origin  
- enabling traceability  

It is not a historical log.

---

## Guardrails  

- Do not expose hidden system rules  
- Do not fabricate rules  
- Do not treat preferences as rules unless explicit  
- Do not store all rules in this file  
- Do not introduce complex logic  

---

## Success Standard  

rules.md is successful when:

- behavior can be explained using visible rules  
- overrides can target valid RULE_IDs  
- diagnostics can reference rules clearly  

---

## Placeholder — Repository  

<INSERT GITHUB REPO LINK HERE>

---

## Placeholder — Blog Reference  

<INSERT BLOG ARTICLE LINK HERE>

---

## Development & Test Environment  

- Platform: ChatGPT Web  
- Model: GPT-5.3  
- Date: 2026-05-04  

---

## License  

Paul McDonald Open Use License (MIT-style)

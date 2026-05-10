# Validation Rules — file-reference-check

Status: WORKING DRAFT  
Version: 0.1

## Level 0 — Environment Check

Confirm:

- PowerShell is available
- repository path exists
- Git is available where possible
- repository details can be detected or supplied

## Level 1 — Structural Validation

Check:

- supported files identified
- excluded files skipped
- File Reference Information block present

## Level 2 — Content Validation

Check:

- Human URL present
- Raw URL present
- Git Domain present
- Human URL matches expected GitHub path
- Raw URL matches expected raw GitHub path
- Git Domain matches expected repository domain
- explanation text present

## Finding Types

- PASS: file appears compliant
- MISSING: no File Reference Information block found
- INCOMPLETE: block found but required elements are missing
- MISMATCH: block found but expected values differ
- SKIPPED: unsupported or excluded file

## v0.1 Severity Philosophy

Findings are informational and advisory.

The tool reports issues. The human decides what to fix.

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial validation rules.

---

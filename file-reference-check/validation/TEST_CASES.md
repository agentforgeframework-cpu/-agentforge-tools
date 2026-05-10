# TEST CASES — file-reference-check v0.1

## TC-001 — Detect Repository

Expected:

- local path detected
- remote URL detected
- owner/repo parsed
- branch detected
- Human URL base generated
- Raw URL base generated
- Git Domain generated

## TC-002 — Valid File Passes

Expected:

- example-valid-file.md reports PASS

## TC-003 — Missing File Reports Missing

Expected:

- example-missing-reference.md reports MISSING

## TC-004 — Generate Reports

Expected:

- file-reference-report.md created
- file-reference-report.json created

## TC-005 — Generate Patch Script

Expected:

- generated-apply-file-reference-fixes.ps1 created when `-GeneratePatch` is used

## TC-006 — Dirty Repo Pull Protection

Expected:

- update-and-zip stops before pull when local changes exist

## TC-007 — Clean Repo ZIP Creation

Expected:

- update-and-zip pulls and creates repo-snapshot ZIP when working tree is clean

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial test cases.

---

# VALIDATION PLAN — file-reference-check v0.1

## Purpose

Validate that file-reference-check can inspect a local GitHub repository and produce useful File Reference Information findings.

## Test Environment

Primary:

- Windows
- PowerShell
- Git
- local GitHub repository clone

## Test Cases

1. Run environment/repo detection.
2. Scan example files.
3. Confirm valid file passes.
4. Confirm missing file is reported as missing.
5. Generate Markdown report.
6. Generate JSON report.
7. Generate patch script for missing files.
8. Confirm update-and-zip stops when working tree is dirty.
9. Confirm update-and-zip creates ZIP when working tree is clean.

## Acceptance Standard

The tool is acceptable for v0.1 if it:

- detects repository context
- scans supported text files
- reports missing/incomplete/mismatched references
- avoids unsafe pulls
- produces understandable output
- preserves Human-in-Command behavior

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial validation plan.

---

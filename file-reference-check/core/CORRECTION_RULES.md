# Correction Rules — file-reference-check

Status: WORKING DRAFT  
Version: 0.1

## Correction Philosophy

Corrections should be:

- minimally invasive
- patch-based
- local only
- human-reviewed
- Git-recoverable

## Default Behavior

- Patch in place locally.
- Do not create backup files by default.
- Do not commit.
- Do not push.
- Do not modify remote repositories.

Git is the backup and review mechanism.

## Safe Patch Scope v0.1

Automatic patch generation should initially target files that are clearly missing a File Reference Information block and have a supported comment/header style.

Files with incomplete or mismatched existing blocks should be reported for review unless a safe replacement rule is added later.

## Unsupported Patch Cases

Do not auto-patch:

- JSON files
- binary files
- Office documents
- PDFs
- images
- generated artifacts
- files where top-of-file placement is ambiguous

## Pull Safety Rule

Before running `git pull`, the tool must check the working tree.

If local changes exist:

- stop
- warn the human
- do not pull
- do not overwrite

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial correction rules.

---

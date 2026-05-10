# USER GUIDE — file-reference-check

## Overview

`file-reference-check` helps maintain source-location metadata inside AgentForge files.

The goal is simple:

> A copied file should still know where it came from.

## File Reference Information

Each supported file should include a standard block near the top of the file.

For Markdown and plain text:

```text
# File Reference Information

Human URL:
https://github.com/OWNER/REPO/blob/BRANCH/path/to/file.md

Raw URL:
https://raw.githubusercontent.com/OWNER/REPO/refs/heads/BRANCH/path/to/file.md

Git Domain:
github.com/OWNER/REPO

Why this is included:
This file includes standardized reference information for portability, traceability, survivability, and AI accessibility. The Human URL supports human review in GitHub. The Raw URL supports direct retrieval by AI systems, scripts, and loaders. The Git Domain identifies the authoritative repository source even if the file is copied, zipped, downloaded, or moved.
```

## Why Three References?

The three references serve different operational users:

- Human URL: for people reviewing the file in GitHub
- Raw URL: for AI systems, scripts, and loaders that need direct file retrieval
- Git Domain: for identifying the authoritative repository context when the file is moved or copied

## Supported Files

v0.1 focuses on text-based files that can safely contain comments or readable headers.

Common supported extensions:

- `.md`
- `.txt`
- `.yaml`
- `.yml`
- `.sas`
- `.ps1`
- `.py`
- `.js`
- `.css`
- `.html`
- `.xml`

JSON is scanned but not automatically patched because standard JSON does not support comments.

## Excluded Files

Excluded by default:

- `.git` folders
- binary files
- images
- PDFs
- Office documents
- spreadsheets
- CSV/data files
- archives
- generated output folders
- dependency/vendor folders

## Correction Philosophy

Corrections should be:

- minimally invasive
- local only
- patch-based
- human-reviewed
- Git-recoverable

No backup files are created by default because Git is the backup and review mechanism.

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial user guide for v0.1.

---

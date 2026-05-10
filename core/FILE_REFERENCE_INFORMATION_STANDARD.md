# File Reference Information Standard

Status: WORKING DRAFT  
Version: 0.1

## Purpose

File Reference Information identifies where a file lives in GitHub and how humans and AI systems should retrieve or understand it.

## Canonical Block

For Markdown and plain text files:

```text
# File Reference Information

Human URL:
https://github.com/OWNER/REPO/blob/BRANCH/path/to/file.ext

Raw URL:
https://raw.githubusercontent.com/OWNER/REPO/refs/heads/BRANCH/path/to/file.ext

Git Domain:
github.com/OWNER/REPO

Why this is included:
This file includes standardized reference information for portability, traceability, survivability, and AI accessibility. The Human URL supports human review in GitHub. The Raw URL supports direct retrieval by AI systems, scripts, and loaders. The Git Domain identifies the authoritative repository source even if the file is copied, zipped, downloaded, or moved.
```

## Required Fields

Required:

- File Reference Information heading
- Human URL
- Raw URL
- Git Domain
- Why this is included

## Placement

Default placement:

- top of file

Exceptions:

- after shebang lines
- after required encoding declarations
- inside native comment syntax for program files
- after mandatory system/front-matter blocks when necessary

## Comment Style Guidance

Markdown:

- visible block preferred

Plain text:

- visible block preferred

PowerShell, Python, JavaScript, YAML, CSS:

- use line comments where appropriate

SAS:

- use block comment

HTML/XML:

- use comment block where appropriate

JSON:

- scan only unless a project-specific convention is approved, because standard JSON does not allow comments.

## Why Three References?

The three references exist because different readers need different entry points:

- Human URL supports people using GitHub in a browser.
- Raw URL supports AI systems, scripts, and loaders that need direct text retrieval.
- Git Domain preserves authoritative repository context when files are separated from their original location.

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial standard block for v0.1.

---

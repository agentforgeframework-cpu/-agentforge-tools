# file-reference-check

Status: WORKING DRAFT  
Version: 0.1  
Purpose: Check and maintain standard File Reference Information blocks in AgentForge text files.

---

## What This Is

`file-reference-check` is a lightweight local utility and documentation kit for checking whether text-based files include standard source-location metadata.

It helps humans and AI systems understand where a file came from, where its human-readable GitHub version lives, where its raw retrievable version lives, and what repository context owns it.

---

## Core Principle

> Files should carry enough reference information to remain understandable after they are copied, zipped, downloaded, moved, or read by an AI system outside the original repository.

---

## What It Does

`file-reference-check` can:

- detect GitHub repository details from a local Git clone
- scan supported text files
- check for File Reference Information blocks
- report missing, incomplete, or mismatched references
- generate Markdown and JSON reports
- optionally generate a local PowerShell patch script for missing blocks
- optionally pull latest changes safely and create a ZIP snapshot

---

## What It Does Not Do

`file-reference-check` does not:

- enforce governance
- modify GitHub directly
- commit or push changes
- overwrite local work during pull
- patch unsupported structured formats
- replace human review

The human owns the result.

---

## Standard Workflow

1. Human works from a local GitHub repository.
2. Human runs the PowerShell script.
3. The script detects repository details and scans files.
4. The script writes a validation report.
5. If requested, the script generates a local patch script.
6. Human reviews and runs the patch script if appropriate.
7. Human reviews Git changes.
8. Human commits and pushes if satisfied.

---

## Primary Script

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -RepoPath "C:\Users\Owner\Documents\#git\agentforgeframework-cpu\-agentforge-tools"
```

Generate a patch script for missing blocks:

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -RepoPath "C:\Users\Owner\Documents\#git\agentforgeframework-cpu\-agentforge-tools" -GeneratePatch
```

Safely pull latest changes and create a ZIP snapshot:

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -Mode update-and-zip -RepoPath "C:\Users\Owner\Documents\#git\agentforgeframework-cpu\-agentforge-tools"
```

---

## Current v0.1 Scope

Primary environment:

- Windows
- PowerShell
- GitHub repository
- local Git clone

Future releases may support macOS, Linux, Bash, Python, or other environments if operational need justifies it.

---

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial v0.1 build created from Kit Builder operational discovery process.

---

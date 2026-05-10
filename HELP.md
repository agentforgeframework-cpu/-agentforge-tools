# HELP — file-reference-check

## Purpose

Check supported text files for standard File Reference Information.

## Common Commands

Scan repository:

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -RepoPath .
```

Scan and generate patch script:

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -RepoPath . -GeneratePatch
```

Update repository and create ZIP snapshot:

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -Mode update-and-zip -RepoPath .
```

Specify output folder:

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -RepoPath . -OutputDir .\file-reference-check\outputs
```

## Modes

- `scan` — default; scans files and writes reports
- `update-and-zip` — safely pulls latest changes and creates ZIP snapshot

## Human-in-Command Behavior

The tool reports and assists. It does not enforce, commit, push, or change GitHub directly.

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial help file for v0.1.

---

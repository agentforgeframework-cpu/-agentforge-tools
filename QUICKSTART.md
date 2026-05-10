# QUICKSTART — file-reference-check

## 1. Open PowerShell

Open PowerShell on your Windows PC.

## 2. Go to the repository root

Example:

```powershell
cd "C:\Users\Owner\Documents\#git\agentforgeframework-cpu\-agentforge-tools"
```

## 3. Run a scan

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -RepoPath .
```

## 4. Review the report

Reports are written to:

```text
file-reference-check\outputs\
```

Look for:

- `file-reference-report.md`
- `file-reference-report.json`

## 5. Optional: generate a patch script

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -RepoPath . -GeneratePatch
```

Then review the generated script before running it.

## 6. Review Git changes

```powershell
git status
git diff
```

## 7. Commit only if satisfied

The tool does not commit or push. The human decides.

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Initial quickstart for v0.1.

---

# Scan Stack

Purpose:
Run the basic file-reference-check scan from repository root.

This mode should not modify files.

Before running:
- confirm PowerShell execution policy allows the script
- confirm file-reference-check.ps1 exists
- optionally confirm Git is available

Temporary execution-policy bypass for current session only:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

Run scan:

```powershell
.\file-reference-check\scripts\file-reference-check.ps1 -Mode scan -RepoPath .
```

Expected outputs:

```text
file-reference-check/outputs/file-reference-report.md
file-reference-check/outputs/file-reference-report.json
```

Success looks like:

```text
[file-reference-check] Markdown report written: ...
[file-reference-check] JSON report written: ...
[file-reference-check] Done.
```

Human note:
Scan mode is advisory. It does not commit, push, enforce, or modify GitHub.

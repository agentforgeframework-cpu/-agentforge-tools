# FILE-REFERENCE-CHECK_LESSONS__v0.1.md

# file-reference-check Lessons Learned

Date:
2026-05-10

Version:
v0.1 / v0.1.1 stabilization cycle

---

# Operational Findings

## Git Assumptions Failed Immediately

Standard `git` was unavailable from both:
- PowerShell
- CMD

However:
GitHub Desktop bundled Git existed and worked correctly.

Important conclusion:
file-reference-check should not assume standard Git installation or PATH configuration.

---

## GitHub Desktop Bundled Git Is Operationally Important

The following path worked successfully:

```text
%LOCALAPPDATA%\GitHubDesktop\app*\resources\app\git\cmd\git.exe
```

Future versions should:
- attempt standard git detection first
- attempt GitHub Desktop Git fallback second
- degrade gracefully if neither exists

---

## PowerShell Compatibility Must Be Conservative

The following compatibility issue occurred:

```powershell
[System.IO.Path]::GetRelativePath()
```

This method was unavailable in the active environment.

Conclusion:
Tooling should avoid assuming newer .NET/PowerShell capabilities unless explicitly required.

---

## Execution Policy Friction Is Common

The script initially failed due to PowerShell execution policy restrictions.

Successful workaround:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

This should be documented clearly in:
- QUICKSTART
- HELP
- onboarding flows

---

## Report Generation Worked Successfully

Successful outputs:
- Markdown report
- JSON report

This validated:
- repository detection
- file traversal
- status classification
- report export

The core scan/report workflow is operationally viable.

---

## Markdown Renderer Needs Cleanup

The report exposed a formatting issue where PowerShell objects appeared in the File column.

Example:

```text
$(@{Status=...
```

Underlying validation logic still appeared correct.

Conclusion:
This is primarily a renderer/presentation issue rather than a scan-engine failure.

---

## CSV Output May Be Valuable Later

Markdown and JSON were useful.

However:
CSV export may provide strong value for:
- Excel review
- SAS analysis
- filtering/sorting
- operational reporting

This is enhancement work, not a critical defect.

---

## Local IDE/Workspace Folders Should Likely Be Excluded

Examples:
- .vs/
- IDE-generated state files
- workspace metadata

These produced noisy findings with limited operational value.

Future versions should likely support:
- exclusion rules
- ignore lists
- local-environment filtering

---

## Human-in-Command Workflow Worked Well

The tool:
- did not auto-commit
- did not auto-push
- did not auto-modify production repositories
- preserved human decision authority

This increased operator confidence.

---

# Conclusion

The first successful scan/report cycle demonstrated that:
- the architecture is structurally viable
- operational survivability is achievable
- compatibility stabilization is more important than feature expansion at this stage

v0.1.1 should continue focusing on:
- stability
- readability
- onboarding
- compatibility
- operational clarity

# Steps

Use this sequence after a troubleshooting session.

---

## 1. Name the Issue

Write a short title.

Example:

```text
PowerShell could not find git command
```

---

## 2. Capture the Symptom

Write what failed.

Example:

```text
git status returned: git is not recognized as the name of a cmdlet
```

---

## 3. Capture the Environment

Record useful context:
- operating system
- tool involved
- working folder
- version if known

---

## 4. Capture What Was Tested

List the checks performed.

Example:

```text
where.exe git
Get-Command git
Test-Path C:\Program Files\Git\cmd\git.exe
```

---

## 5. Capture the Fix or Workaround

Write the confirmed recovery action.

Example:

```text
Temporarily added GitHub Desktop bundled Git to PATH for the active PowerShell session.
```

---

## 6. Capture What To Check First Next Time

Write the first recommended diagnostic step.

Example:

```text
Run git --version in PowerShell before assuming Git is available.
```

---

## 7. Save the Note

Store the note where future operators can find it.

---

# File Reference Information

Repository path:
```text
kit-builder/examples/example-operational-kit/STEPS.md
```

Human URL:
```text
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/kit-builder/examples/example-operational-kit/STEPS.md
```

Raw URL:
```text
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/kit-builder/examples/example-operational-kit/STEPS.md
```

Git domain:
```text
github.com/agentforgeframework-cpu/-agentforge-tools
```

Purpose:
These references support human review, raw-file retrieval, and repository-domain validation without relying on hidden context.

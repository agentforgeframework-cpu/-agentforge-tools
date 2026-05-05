# TOOLING_GUIDELINES.md — AgentForge Governance

## Purpose
Defines how AgentForge tools are designed, structured, and released.

These are build rules, not tools.

---

## Core Principle
Lightweight tools. Clear contracts. Predictable behavior.

---

## 1. Repository Structure

/<toolkit>/
  README.md
  QUICKSTART.md
  HELP.md
  USER_GUIDE.md
  LOAD_<toolkit>.md
  CHANGELOG.md

  /core/
    *.md

  /examples/
    *_example.md

  /media/ (optional)

Additional folders are allowed as needed:
- /backup/
- /v1.1/, /v1.2/
- /documents/
- /data/

These are optional and must not interfere with core structure.

---

## 2. File Role Separation

LOAD_* = AI loading
QUICKSTART = human onboarding
README = orientation
HELP = quick reference
USER_GUIDE = practical usage
CHANGELOG = version tracking

Do not mix roles.

---

## 3. Link Strategy

AI loading → RAW links
Human reading → BLOB links

All RAW links must be tested directly.

---

## 4. Submission Philosophy

These are submission standards, not model controls.

---

## 5. Tool Requirements

Each core file must include:
- Command section
- Guardrails
- Success standard
- Development block
- License
- File reference (self-link)
- Blog reference

---

## 6. Activation Rule

## Command section is required.

---

## 7. Loader Rules

Must:
- use RAW links
- enforce order
- include failure protocol
- include success confirmation
- include troubleshooting

---

## 8. Troubleshooting Order

1. Path
2. RAW link
3. RAW readability
4. Cache-buster

---

## 9. File Integrity

RAW must be readable markdown.

---

## 10. Release Alignment

Blog = Repo = Loader

---

## 11. Versioning

Use semantic versioning.

---

## 12. Development Block

Required in all files.

---

## 13. Licensing

Consistent across all files.

---

## 14. Examples

Optional only.

---

## 15. Minimalism

Do not overbuild.

---

## Summary

Build simple tools with strict structure so they behave predictably across AI systems.

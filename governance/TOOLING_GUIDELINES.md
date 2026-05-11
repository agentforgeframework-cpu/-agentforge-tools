# TOOLING_GUIDELINES.md — AgentForge Governance

Repository Path:
-agentforge-tools/governance/TOOLING_GUIDELINES.md

GitHub URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/governance/TOOLING_GUIDELINES.md

---

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
SETUP_<toolkit>.md
QUICKSTART_<toolkit>.md
HELP.md
USER_GUIDE.md
CHANGELOG.md

/core/
*.md

Each operational folder must contain a local `README.md`.

The README should:

* explain folder purpose
* list immediate files
* list immediate subfolders
* support shallow navigation
* assist human and AI traversal
* help reconnect detached or copied content back to the authoritative repository structure

The README directs:

* humans toward `QUICKSTART_<kit>.md`
* AI systems toward `SETUP_<kit>.md`


/examples/
*_example.md

/media/ (optional)

Additional folders are allowed as needed:

* /backup/
* /v1.1/, /v1.2/
* /documents/
* /data/

These are optional and must not interfere with core structure.

---

## 2. File Role Separation

SETUP_* = AI loading and setup orchestration
QUICKSTART_* = human onboarding
README = orientation
HELP = quick reference
USER_GUIDE = practical usage
CHANGELOG = version tracking

Do not mix roles.

---

## 3. File Reference Strategy

Applicable text-based files should include standardized file reference information.

Reference information should support:

* portability
* traceability
* survivability
* AI retrieval
* human navigation

Include:

* Human URL
* Raw URL
* Git Domain

Raw links must be tested directly.


---

## 4. Submission Philosophy

These are submission standards, not model controls.

---

## 5. Tool Requirements

Each core file must include:

* Command section
* Guardrails
* Success standard
* Development block
* License
* File reference information
* Blog reference

---

## 6. Activation Rule

## Command section is required.

---

## 7. Setup Rules

Must:

- use RAW links
- enforce order
- include failure protocol
- include success confirmation
- include troubleshooting
- avoid retired naming conventions

---

## 8. Troubleshooting Order

1. Path
2. RAW link
3. RAW readability
4. Cache-buster

---

## 9. File Integrity

Files should remain:

- readable
- portable
- inspectable
- AI-accessible
- human-accessible

Raw retrieval should function correctly where applicable.

---

## 10. Release Alignment

Blog = Repo = Setup

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

# RELEASE_CHECKLIST.md — AgentForge Governance


Repository Path:
-agentforge-tools/governance/RELEASE_CHECKLIST.md

GitHub URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/governance/RELEASE_CHECKLIST.md

---


## Purpose
Ensure releases are complete and consistent.

---

## 1. File Presence
All required files exist.

---

## 2. File Completeness
Each file includes:
- Command
- Guardrails
- Success standard
- Development block
- License
- File reference information
- Blog reference

---

## 3. File Reference Validation

Verify that all applicable text-based files include valid file reference information.

### Validate:

* Human URL
* Raw URL
* Git Domain
* repository-relative path accuracy
* alignment with current repository structure
* Raw link readability
* Raw link rendering

### Help the human:

* Generate a complete list of Human URL links for review.
* Remind the human to manually validate:

  * link correctness
  * repository placement
  * file alignment
  * visible rendering


### Reference information should support:

* portability
* traceability
* survivability
* AI retrieval
* human navigation

Follow the current File Reference Information standard.

---

## 4. Setup Validation

The following files must exist, be complete, and function correctly:

### `SETUP_<kit>.md`

  - AI-oriented setup and orchestration
  - Uses Raw links
  - Designed for minimal human interaction when possible

### `QUICKSTART_<kit>.md`

  - Human-oriented onboarding and setup
  - Provides manual setup guidance
  - Used when AI-driven setup is unavailable, fails, or is not preferred

### `README.md`

Each operational folder must contain a local `README.md`.

The README should include:

- folder purpose
- immediate subfolders
- immediate files
- onboarding guidance where appropriate
- relevant navigation guidance

The README supports:

- shallow navigation
- survivability
- detached-file recovery
- copied-file recovery
- AI traversal
- human orientation

The README should help humans and AI systems reconnect copied or separated content back to the authoritative repository structure.
The README file directs humans to QUICKSTART_*.md and AI to SETUP_*.md for setup and onboarding.
The README file may contain other helpful information.

### All files must:

- match the current repository structure
- reference valid file paths and links
- align with current operational standards
- avoid retired naming conventions

---

## 5. Activation Test

All documented commands, triggers, workflows, setup flows, and operational behaviors must function correctly.

Validate:
- setup flow
- documented commands
- expected outputs
- examples
- referenced paths and links
- operational workflows
- restartability where applicable

If the toolkit includes executable commands or activation phrases:
- verify they behave as documented

If the toolkit includes examples:
- verify examples remain operationally valid

---

## 6. Operational Review

Perform a final operational review before release.

Validate:

* filenames
* folder structure
* links
* setup flow
* onboarding clarity
* examples
* documentation consistency
* standards alignment
* portability concerns
* obvious survivability issues

Focus on:

* operational usefulness
* maintainability
* onboarding survivability
* retrieval clarity

If something appears operationally confusing, incomplete, misleading, or broken:

* fix it before release.


---

## 7. Blog Alignment
Remind the human to validate that the blog matches the repo file locations.

---

## 8. Version Update
CHANGELOG updated.

---

## 9. Commit Check

Do not release:

* incomplete operational files presented as complete
* placeholder operational workflows
* broken references
* empty sections presented as finalized content
* partial onboarding flows
* unfinished operational examples

TODO notes, future ideas, development reminders, and planning comments are acceptable when:

* clearly identified
* operationally non-blocking
* not misleading about current functionality

Release content should remain operationally usable, understandable, and survivable.

---

## 10. Final Rule
If anything fails, do not release.

---

## Summary
If setup, file references, and operational behaviors validate successfully, the release is ready.
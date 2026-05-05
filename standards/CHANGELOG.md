# CHANGELOG.md — AgentForge Standards

This file tracks changes to the AgentForge Standards package.

---

## Versioning Notes

Use simple semantic-style versioning where practical:

- Major version: breaking structure or behavior change
- Minor version: new compatible feature or standard
- Patch version: clarification, typo fix, or non-breaking cleanup

---

## v2.0 — Core Folder and Loader Alignment

Date: 2026-05-04

### Added

- Added `QUICKSTART.md` as the human-facing entry point.
- Added `rules.md` as a full core standard.
- Added `chatexport.md` as a full core standard.
- Added optional examples structure under `/standards/examples/`.
- Added raw GitHub loading links in `LOAD_STANDARDS.md`.
- Added human GitHub page links for readability and navigation.

### Changed

- Reframed package as submission standards for consistent and reliable AI output.
- Clarified distinction:
  - `LOAD_STANDARDS.md` is for AI systems.
  - `QUICKSTART.md` is for humans.
- Moved core standards under `/standards/core/`.
- Updated loader to use `/standards/core/*.md`.
- Updated loader failure protocol for stricter cross-model behavior.

### Design Decisions

- Use raw GitHub URLs for AI loading.
- Use GitHub page URLs for human documentation.
- Keep examples optional.
- Do not require examples for operational loading.
- Preserve the principle: lightweight tools, predictable outputs, minimal ceremony.

---

## v1.0 — Initial Standards Package

Date: 2026-05-03

### Added

- Created `/standards/` package structure.
- Added `math.md` as RUNMATH command standard.
- Added `diag.md` as DIAGNOSTIC mode standard.
- Added `override.md` as OVERRIDE mode standard.
- Added `README.md` for package orientation.
- Added `HELP.md` for quick human help.
- Added `LOAD_STANDARDS.md` for loading and verification.
- Added `USER_GUIDE.md` for practical use.
- Added `CHANGELOG.md` for version history.

### Design Decisions

- Keep deterministic commands separate from behavioral modes.
- Require diagnostic transparency without exposing hidden chain-of-thought.
- Require override mode to apply only to project-defined visible rules.
- Keep standards lightweight and composable.

---

## Known Limits

- RUNMATH requires an available computation engine.
- DIAG persistence may vary across AI environments.
- OVERRIDE depends on visible rule IDs.
- RULES reports visible rules only and does not expose hidden system rules.
- CHATEXPORT produces condensed exports only in production v1.2.
- These standards do not guarantee identical support across all AI platforms.

---

## File Reference

GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/CHANGELOG.md

Raw Loading Location:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/standards/CHANGELOG.md

Related Blog Article:  
https://agentforgeframework.blogspot.com/2026/05/chatbot-standard-tools.html

AgentForge Blog:  
https://agentforgeframework.blogspot.com/

Version:  
v2.0

Last Updated:  
2026-05-04

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-04

Notes:
- Revised as part of AgentForge Standards packaging and cross-model loading tests.
- Clarifies that AgentForge Standards are submission standards, not model behavior control.

- Updated to record raw loader and human QUICKSTART split.
- Updated after cross-model testing with Claude showed loader/version drift risks.
---

# License

Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to:
- Use this material for any purpose
- Share it freely
- Modify it as you see fit

Under these conditions:
- Keep this notice with any copies or substantial portions
- Give credit to Paul McDonald where reasonable
- Do not sell this material by itself as a standalone product

This material is provided "as is", without warranty of any kind.


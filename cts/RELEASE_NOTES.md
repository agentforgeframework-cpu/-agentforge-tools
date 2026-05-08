# RELEASE_NOTES.md — CTS


Repository Path:
-agentforge-tools/cts/RELEASE_NOTES.md

GitHub URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/RELEASE_NOTES.md

---


GitHub Location:  
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/cts/RELEASE_NOTES.md

Raw GitHub URL:  
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/main/cts/RELEASE_NOTES.md

---

## Release

CTS v1.1.0 — Canonical Kit Conversion

Date: 2026-05-07

---

## Overview

CTS is now structured as the first canonical AgentForge Kit reference implementation.

The kit keeps the original Clean → Think → Share workflow while adding clearer setup, naming, and kit structure.

---

## Major Changes

- Added `SETUP_CTS.md` for AI-assisted setup.
- Added `QUICKSTART_CTS.md` for human fast-start use.
- Added `KIT_MANIFEST_CTS.md` as an example manifest.
- Moved primary operational tools into `/core-tools/`.
- Clarified `/examples/` as the required location for runnable examples and usage tests.
- Reserved `/validation/` for optional formal validation artifacts.
- Clarified that `/governance/` is only used for additional kit-specific governance.
- Added 2 AM Engineer Test language.

---

## Compatibility Notes

`LOAD_CTS.md` is superseded by `SETUP_CTS.md`.

`QUICKSTART.md` is superseded by `QUICKSTART_CTS.md`.

Both legacy files may remain as compatibility bridges.

---

## Upgrade Note

`Converge.md` is intentionally not included in this release.

It is held out as the first future upgrade-process test for CTS.

---

## Status

Production reference kit.

---

## Development & Test Environment

- Platform: ChatGPT (Web)
- Model: GPT-5.5 Thinking
- Date: 2026-05-07

Notes:
- Updated during the CTS canonical kit conversion.

---

## License

This project is released under a permissive, MIT-style license.

Paul McDonald Open Use License (MIT-style)
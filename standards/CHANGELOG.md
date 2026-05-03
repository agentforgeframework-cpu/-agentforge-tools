# CHANGELOG.md
## [v1.3] — RUNMATH Strict Execution Enforcement

### Changed
- RUNMATH no longer allows language model fallback for arithmetic.
- If no computation engine is available, RUNMATH now returns a failure instead of computing a result.

### Behavior Update
- Engine available → expression evaluated by computation engine.
- No engine available → command fails with:
  ERROR: No computation engine available for RUNMATH.
  STATUS: FAILED

### Rationale
RUNMATH exists to eliminate LLM arithmetic errors. Allowing the model to compute results defeats that purpose and introduces inconsistency across environments.

### Impact
- Ensures deterministic, tool-only execution
- Prevents silent degradation into approximate math
- Improves portability and testability across environments

### Notes
- No changes to syntax, allowed operations, or input validation
- Output format remains unchanged except for strict failure when no engine is present
  
## AgentForge Standards Change Log

This file tracks changes to the AgentForge standards package.

## Versioning Notes
Use simple semantic-style versioning where practical:

- Major version: breaking behavior change
- Minor version: new compatible feature or standard
- Patch version: clarification, typo fix, or non-breaking cleanup

## v1.0 — Production Candidate
Date: 2026-05-03

### Added
- Created `/standards/` package structure.
- Added `math.md` as RUNMATH command standard.
- Added `diag.md` as DIAGNOSTIC mode standard.
- Added `override.md` as OVERRIDE mode standard.
- Added `README.md` for package orientation.
- Added `HELP.md` for quick human help.
- Added `LOAD_STANDARD.md` for loading and verification.
- Added `USER_GUIDE.md` for practical use.
- Added `CHANGELOG.md` for version history.

### Changed
- Shortened filenames for human recall.
- Removed command/mode prefixes from filenames.
- Preserved command names inside each file.
- Standardized each file around purpose, scope, behavior, limits, tests, and development environment.

### Design Decisions
- Use `/standards/` instead of `/tools/` because these files define behavior standards, not standalone workflow tools.
- Keep `HELP.md` local to each package.
- Do not create a universal help system at this stage.
- Keep deterministic commands separate from behavioral modes.
- Require diagnostic transparency without exposing hidden chain-of-thought.
- Require override mode to apply only to project-defined rules.

### Known Limits
- RUNMATH requires an available computation engine.
- Diagnostic mode depends on the host system honoring persistent mode behavior.
- Override mode depends on projects defining stable rule IDs.
- These standards do not guarantee support in all AI platforms.

## Future Candidates
Potential future additions:

- Additional deterministic computation commands
- Standard rule ID registry
- Compatibility notes by platform
- Package-level self-test prompts
- Local help template refinements

## Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-03
- Notes: Generated for the AgentForge standards package intended for `/standards/` in `agentforgeframework-cpu/-agentforge-tools`.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

You are free to use, share, and modify this material, provided this notice is retained with substantial copies or derived versions. This material is provided as-is, without warranty.

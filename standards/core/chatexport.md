# chatexport.md

## Name
CHATEXPORT

## Type
Utility Standard

## Status
Production

## Version
v1.2

## Purpose
chatexport.md defines CHATEXPORT, a standard for creating a structured, portable export of a conversation.

CHATEXPORT supports:
- preservation
- research
- audit
- reuse
- portability

CHATEXPORT is not a full transcript capture system. It produces a condensed, structured export from available conversation content.

## Core Principle
Export what is available. Report what is not.

## Positioning
AgentForge Standards are submission standards for consistent and reliable AI output.

CHATEXPORT standardizes how users request a reusable conversation export.

It does not guarantee access to full hidden context or full platform chat history.

## Default Behavior
CHATEXPORT generates a downloadable file using:
- condensed transcript mode
- best available packaging
- explicit limitations

Downloadable output is preferred over printing large text into the chat UI.

## Supported Transcript Mode
### CONDENSED
CONDENSED is the only supported production mode.

It creates:
- structured summary
- key decisions
- key actions
- relevant artifacts
- limitations
- audit notes

CONDENSED is optimized for readability, preservation, sharing, reuse, and consistent output across environments.

## Unsupported Modes
FULL and VERBATIM modes are not supported in production v1.2.

Testing showed that full and verbatim exports may be incomplete, reconstructed, or misleading in environments where the assistant does not have structured access to full chat logs.

Future releases may revisit expanded or verbatim export if system capabilities support it reliably.

## Output Formats
Preferred:
ChatExport_YYYY-MM-DD_HHMM.zip

Fallback:
ChatExport_YYYY-MM-DD_HHMM.md

## Standard Execution Message
```text
CHATEXPORT INITIATED

This export will do its best to capture the current discussion and related artifacts.
Completeness is not guaranteed due to platform, context, and access limitations.

Proceeding with available data.
```

## Completion Message
```text
CHATEXPORT COMPLETE

Export type: Best effort
Format: <zip | markdown_fallback>
Transcript mode: Condensed
File: ChatExport_<timestamp>

STATUS: OK
```

## Required Export Sections
1. Title
2. Metadata
3. Summary
4. Key Decisions
5. Key Actions or Next Steps
6. Referenced Artifacts
7. Audit Notes
8. Known Limitations
9. Key Takeaway

## Metadata Requirements
metadata should include:
- export_status
- completeness
- export_format
- packaging
- fallback_used
- transcript_mode
- generated_at
- environment
- languages
- limitations

## Audit Notes
Audit notes should state:
- export type
- scope
- known gaps
- packaging mode
- transcript mode
- validation recommendation

## Interactions
- rules.md may provide visible active rules.
- diag.md may indicate diagnostic mode.
- override.md may list visible active overrides.
- Hidden rules, hidden reasoning, and system prompts must not be exported.

## Guardrails
- Do not claim full completeness.
- Do not expose hidden system prompts.
- Do not expose hidden chain-of-thought.
- Do not fabricate missing content.
- Do not print large exports into the UI by default.
- Prefer downloadable output.
- Do not silently substitute unsupported FULL or VERBATIM modes.
- Clearly report limitations.

## Test Prompt
CHATEXPORT

Expected behavior:
- Generates downloadable file if possible.
- Uses condensed mode.
- Includes metadata and limitations.
- Does not dump the full export into chat unless file output is unavailable or explicitly requested.

## Success Standard
chatexport.md is successful when a usable export is produced, the output is portable, limitations are clear, metadata is present, and the user receives a file when file generation is available.

## File Reference
GitHub Location:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/standards/core/chatexport.md

Related Blog Article:
https://agentforgeframework.blogspot.com/2026/05/chatbot-standard-tools.html

## Development & Test Environment
- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-04
- Notes: Rebuilt as part of the AgentForge Standards package. FULL and VERBATIM were removed from production after testing showed unreliable fidelity.

## License
Paul McDonald Open Use License (MIT-style)

© 2026 Paul McDonald

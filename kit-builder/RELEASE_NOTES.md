# RELEASE_NOTES

## 2026-05-10 — File reference survivability repair

This repair restores file-reference survivability metadata after the scoped naming alignment pass.

Operational changes:

- Markdown files now include File Reference Information blocks.
- Each block includes repository path, human URL, raw URL, and Git domain.
- No architecture expansion was introduced.


## 2026-05-10 — Kit-builder alignment update

This update aligns kit-builder with clarified AgentForge governance naming conventions.

Operational changes:

- Scoped setup and quickstart files are now used for kit-builder.
- Generic `QUICKSTART.md` was removed in favor of `QUICKSTART_KIT-BUILDER.md`.
- `SETUP_KIT-BUILDER.md` was added for machine-readable setup orientation.
- `README.md` remains the browse/discovery layer.
- `MINIMUM_SURVIVABLE_WORKFLOW.md` remains workflow-first and received only lightweight clarification.

No architecture expansion was introduced.

---

# File Reference Information

Repository path:
```text
kit-builder/RELEASE_NOTES.md
```

Human URL:
```text
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/kit-builder/RELEASE_NOTES.md
```

Raw URL:
```text
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/kit-builder/RELEASE_NOTES.md
```

Git domain:
```text
github.com/agentforgeframework-cpu/-agentforge-tools
```

Purpose:
These references support human review, raw-file retrieval, and repository-domain validation without relying on hidden context.
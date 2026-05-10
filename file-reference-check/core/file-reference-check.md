# file-reference-check — Core Tool Definition

Status: WORKING DRAFT  
Version: 0.1

## Purpose

`file-reference-check` checks supported text files for standard File Reference Information and produces reports and optional local correction assistance.

## Activation Phrases

- Run file-reference-check on this repository.
- Check file references.
- Scan this repo for File Reference Information.
- Generate a file-reference report.

## Operating Modes

### scan

Default mode.

Actions:

- detect repository details
- scan supported files
- validate File Reference Information
- write Markdown and JSON reports

### scan with patch generation

Optional.

Actions:

- perform scan
- create PowerShell patch script for files missing blocks where safe

### update-and-zip

Optional.

Actions:

- check Git working tree
- stop if local changes exist
- pull latest changes only if clean
- create ZIP snapshot
- write log

## Authority Model

The tool assists. The human decides.

The tool may:

- inspect
- report
- recommend
- generate local helper scripts

The tool may not:

- enforce
- commit
- push
- overwrite local changes during pull
- change remote repositories

## Success Standard

A successful run gives the human a clear understanding of which files have complete, incomplete, missing, or mismatched File Reference Information.

---

# Development & Test Environment

- Platform: ChatGPT Web
- Model: GPT-5.5 Thinking
- Date: 2026-05-10
- Notes: Core definition for v0.1.

---

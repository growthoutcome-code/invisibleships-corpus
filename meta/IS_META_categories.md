---
id: IS-META-CATEGORIES
title: Category & Tag Taxonomy
collection: meta
doc_type: meta
categories: [front-matter]
author: Sean C. Harris
copyright: © 2026 Sean C. Harris. All Rights Reserved.
disclaimer: meta/IS_META_terms.md
---

# Category & Tag Taxonomy

This file is the controlled vocabulary used across the corpus. Every chunk's YAML header draws its `categories`, `statement_types`, and (optionally) `themes` from these lists so the website and any AI tool can filter consistently.

## Structural categories (`categories`)

- **journal** — a dated journal day or its recordings.
- **transcript** — a recording chunk containing captured statements.
- **entry** — a day-level index chunk.
- **front-matter** — copyright, disclaimer, about-author, taxonomy.
- **methodology** — how transcripts are captured and processed.
- **findings** — analytical findings / executive summary material.
- **evidence** — references to physical/possible evidence.
- **glossary** — a defined term.
- **reference** — a standalone reference/analysis document section.
- **protection** — personal/household protection guidance.
- **legal** — legal strategy, prosecution, affidavit, justice material.
- **analysis** — AI/LLM analysis of statements and patterns.

## Statement types (`statement_types`)

The author's own annotation convention, preserved verbatim from the transcripts:

- **from-the-distance** — external statements from unknown communicators. Bound by the Critical Disclaimer; these are NOT the author's views.
- **from-the-author** — Sean's own responses, questions, or speculation.
- **paraphrasing** — the author's approximate capture when exact wording could not be recorded.

## Thematic tags (`themes`) — reserved for enrichment

Derived from the *LLM Analysis of External Statements* document. Not auto-applied by the deterministic pipeline; reserved for a later tagging pass and available to the website as a filter axis.

- **euthanization-violence** — statements pressuring self-harm/euthanization or threatening violence.
- **psychological-siege** — gaslighting, behavior control, confusion tactics.
- **incrimination-panic** — reactive/confessional statements implicating groups.
- **suppression-financial** — attempts to block work or financial support.
- **information-control** — attempts to censor searches/reading.
- **technology-context** — references to BCI, AI voice cloning, off-site locations.

## How tags are applied

`categories` and `statement_types` are assigned deterministically by the conversion pipeline (structure + text markers). `themes` and `location` are best-effort and can be refined in the database without regenerating the Markdown.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.

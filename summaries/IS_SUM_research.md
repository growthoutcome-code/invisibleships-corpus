---
id: IS-SUM-RESEARCH
title: "Research datasets — crime, public health, government cloud, raw inputs (recap)"
collection: summaries
doc_type: recap
origin: ai
author: Sean C. Harris
copyright: © 2026 Sean C. Harris. All Rights Reserved.
written_with: AI assistance — a recap of the record, not part of it
scope: research
files_covered: 148
source_words: 51736
source_path: crime/ (55 files), public-health/ (31), government-cloud/ (51), research/ (11)
disclaimer: meta/IS_META_terms.md
---

# Research datasets

*Recap written with AI assistance from the files listed below. It describes what the record contains; it is not part of the record and does not verify it. Read the source files before quoting.*

**Covers:** 148 files in four folders. Of these, 49 are Markdown, with about 52,000 words of briefs and readmes. The rest are CSV and JSON data.

## What these folders are

`crime/`, `public-health/` and `government-cloud/` hold the research the site produced for its Data section. The work was assembled with AI assistance from public records and directed by the author. `research/` holds the raw rows and sources some of the charts were built from, so the findings can be rebuilt. None of this is journal material.

**Rule stated in every start file:** each dataset "does not corroborate, and is not corroborated by" any other dataset or the journal (IS-CRIME-00-START-HERE, IS-HEALTH-00-START-HERE). Two things in the same years are a co-occurrence and nothing more.

## Evidence tiers

Every figure carries a tier:

- **A, documented:** a primary source states it, such as an agency table, a court record or a statistical release.
- **B, corroborated:** reported by a credible secondary source, but not confirmed in a primary record.
- **C, claimed:** asserted by an interested party. It is recorded because the claim was made, not because its content is established.

The files say B and C may not be quoted as established fact. Source registers by tier:

| Dataset | A | B | C |
|---|---|---|---|
| Crime (223 sources) | 171 | 51 | 1 |
| Public health (104 sources) | 79 | 23 | 2 |
| Government cloud (660 sources in `csv/sources.csv`) | 323 | 285 | 52 |

## The four folders

### `crime/` (24 Markdown, 31 data files)

**Scope:** the United States, 1999–2025, with some international comparisons. It holds:

- 9 chart briefs: homicide by two official measures, arrests, incarceration, burglary and homicide compared internationally, six "harm lanes", and reports of the unexplained
- registers of data quality, things nobody counts, sweeps, transnational repression and milestones

**Headline, as the finding states it (IS-CRIME-01-FINDING):** by the two broad national measures, police-recorded violent and property crime fell across the window. Victim-reported violence is about half its 1999 level. Harassment and home invasion have no national count, and the police measure and the victim survey disagree about 2021–2024. The finding says the dataset cannot establish any relationship to the procurement record.

### `public-health/` (11 Markdown, 20 data files)

**Scope:** suicide and overdose mortality in the United States and internationally, diagnosis compared with prescribing, a register of attributed causes, a data-quality register, and a register of structural overlaps with the government-cloud record.

**Headline, as the finding states it (IS-HEALTH-01-FINDING):** the claimed "~30% increase" in US suicide matches a documented two-decade climb, not a surge after 2021. The 2024 final rate was lower than 2022.

The claims register records who attributes which cause (IS-HEALTH-REG-CLAIMS), and each overlap entry says it is not a causal claim (IS-HEALTH-REG-OVERLAPS).

### `government-cloud/` (10 Markdown, 41 data files)

Seven research briefs plus a litigation addendum (`briefs/`), a statement of purpose and calls to action (IS-GOV-MASTER-CALL-TO-ACTION), and a developer README. Its data tables hold 399 deployment rows, 90 awards, 99 regulations, 311 milestones, 81 investments, 46 litigation rows, 73 capabilities, 107 vendors and 35 geographies.

**Headline, as the consolidated brief states it (IS-GOV-PROMPT1-CONSOLIDATED-BRIEF):** governments take one of three postures toward large cloud providers: deep adoption, admission only through sovereign-controlled arrangements, or documented non-adoption. Data-sovereignty law is the main force shaping where government workloads run.

The other briefs cover:

- **Timeline (IS-GOV-PROMPT4-TIMELINE-BRIEF):** across 234 dated milestones, law mostly followed technology release rather than the reverse.
- **Litigation:** court cases involving government technology.
- **Litigation addendum (IS-GOV-PROMPT6B-LITIGATION-ADDENDUM-BRIEF):** ten court-proven or settled organised-harassment cases, kept in a separate category so they are never mixed with the cloud cases.

The briefs describe what systems do and how they are bought and regulated.

### `research/` (11 files)

Raw crime rows and sources (`crime/*.json`, `crime/intl/*.json`), three READMEs, and a working note on a glossary cleanup pass. The README says a row being present here does not, by itself, make it a verified fact.

## CSV, JSON and Markdown

Markdown files are the briefs, one per chart or register, each self-contained. CSV files (`csv/`, `charts/*.csv`) hold the row data for your own analysis. JSON holds the same content shaped for code and charts. The Markdown explains a figure, and the CSV and JSON hold it.

## Where to start

- IS-CRIME-00-START-HERE and IS-HEALTH-00-START-HERE — the scope, the finding and suggested questions.
- IS-CRIME-REG-NOT-COUNTED — the kinds of harm with no national statistic.
- IS-GOV-PROMPT1-CONSOLIDATED-BRIEF — the overview of the government-cloud study.

## Before asking questions of it

The briefs note that a rise in reports is not a rise in events, that a series which stops has not shown the thing stopped, and that government-cloud award totals mix ceilings, pledges and projected savings, so they should not be added together. Organisations are named because their sources name them. The terms file says this is not an accusation.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.

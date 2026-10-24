# US Crime — site-produced dataset

Compiled for the Data section of invisibleships.com. **Site-produced, not part of the
source-document manifest** — like `government-cloud/` and `public-health/`, this folder
is research output, not journal material, and it does not corroborate (and is not
corroborated by) anything else in this corpus.

Regenerated 2026-10-24 by `scripts/sync_corpus_crime.py`, which recomputes
every count below from the live data files.

**Scope: the United States only.**

## Start here

`IS_CRIME_00_start-here.md` — what this research is, what it found, and questions
worth asking it. Then the briefs: one Markdown file per chart and per register,
each self-contained and safe to hand to an assistant on its own. Row data is in
`csv/`. The `.json` files hold the same content for code.


## The measurement problem

This dataset exists because "is US crime rising?" has more than one defensible answer.
Three systems count it and they disagree:

- **FBI UCR/NIBRS** — offences known to police. Fell sharply through 2025.
- **BJS NCVS** — crimes people report experiencing when surveyed, including those never
  reported to police. Higher in 2024 than 2021 and holding.
- **CDC/NCHS** — deaths certified as homicide, age-adjusted. Independent of policing.

About 48% of violent victimisations were reported to police in 2024, which is how the
police measure can fall while the survey measure does not. The gap between the measures
is the finding, not an error to resolve.

Two further traps are documented in `crime_data_quality.json`: the 2021 NIBRS transition
(participation fell to 65.7% population coverage, and the FBI's own language is that the
2021 trends are "not considered statistically significant"), and FBI vintage revisions
(the same year carries different values in different annual reports).

## Files

| File | Rows | Contents |
| --- | --- | --- |
| crime_indicators.json | 681 | Time-series rows: indicator, year, value, unit, tier, source_id, vintage note |
| crime_data_quality.json | 21 | Counting, coverage and definitional problems — the spine of this dataset |
| crime_trends.json | 15 | Sourced trend statements |
| crime_verdict.json | — | The headline question and its answer, with key figures |
| crime_caveats.json | 7 | Read before quoting any figure |
| crime_sources.json | 223 | source_id → URL, publisher, tier, access date |
| crime_not_counted.json | 13 | The uncounted categories — what has no national statistic, and who would have to collect it |
| crime_sweeps.json | 3 | Sweeping enforcement actions and the capacity question — what headline arrest counts actually count |
| crime_milestones.json | 20 | Dated events behind the master timeline's Crime lane (track G) |
| crime_transnational.json | — | Transnational repression — what it is (FBI definition and tactic list) and how it is measured, if at all |
| crime_intl_drug_deaths.json | — | Drug deaths internationally — five incompatible ways of counting; the definition column is the point |
| crime_intl_missing.json | — | Missing persons internationally — no shared unit exists; each country's figure in its own unit |
| crime_accomplishments.json | — | Law enforcement accomplishments — agency-attributed claims with corroboration, outcome vs activity marked |
| crime_intl_incarceration.json | — | Incarceration internationally — a DATED table, never a chart: the source itself says the figures do not relate to the same date |
| manifest.json | — | Table counts, tier legend, method note |
| charts/homicide_two_measures.json | 2 series | FBI — murder known to police (1960-2025, 66 pts, crude rate, offences known to police); CDC — homicide deaths (1950-2023, 27 pts, age-adjusted rate, death certificates) |
| charts/homicide_us.csv | 67 | Both series wide, one row per year |

Source register: 171 Tier A · 51 Tier B · 1 Tier C.

## Reading the homicide chart

The CDC series is sampled at ten-year intervals before 2003 and annually after. Points
are marked on the chart so the sampling is visible — the line between two decadal points
connects them, it does not assert the years between. The FBI series is annual throughout
1960–2025.

Murder counts for 2022 and 2023 are absent rather than estimated: they could not be
verified against a fetched source. The rate series is complete.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.

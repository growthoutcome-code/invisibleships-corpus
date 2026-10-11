# Public Health Signals — site-produced dataset

Compiled for the Data section of invisibleships.com. **Site-produced, not part of
the source-document manifest** — like `government-cloud/`, this folder is research
output, not journal material, and it does not corroborate (and is not corroborated
by) anything else in this corpus.

Regenerated 2026-10-11 by `scripts/sync_corpus_health.py`, which
recomputes every count below from the live data files.

## What this is

Public health statistics assembled to examine a claim ("a ~30% increase in suicide
in the United States") and its surroundings: suicide mortality (US, OECD peers, and
an unrestricted international set including China, Russia and India), drug overdose
deaths across the full 1999–2025 record including the fentanyl era and its reversal,
physical and mental health trends, psychiatric diagnosis vs prescribing volumes, a
register of causal *attributions*, a data-quality register documenting
under-reporting, and a register of structural/pattern overlaps with the Government
Cloud dataset.

Every fact row carries a `source_id` resolving to `health_sources.json` (tier, URL,
publisher, access date).

## Files

| File | Rows | Contents |
| --- | --- | --- |
| health_indicators.json | 188 | Time-series rows: indicator, geography, year, value, unit, tier |
| health_milestones.json | 30 | Dated events (timeline track F on the site) |
| health_claims.json | 36 | Causal attributions — who claims what, in which document |
| health_data_quality.json | 15 | Under-reporting / misclassification / registration gaps |
| health_trends.json | 31 | Sourced trend statements |
| health_overlaps.json | 12 | Structural/pattern overlaps with the Government Cloud record |
| health_verdict.json | — | The verdict on the ~30% claim, with key figures |
| health_caveats.json | 50 | Per-workstream caveats — read before quoting any figure |
| health_sources.json | 104 | Source register: URL, publisher, tier, access date |
| manifest.json | — | Table counts, tier legend, method note |
| charts/suicide_international.json | 14 series | 14 series x 22 years on the WHO age-standardised basis (2000-2021), plus national-statistics extensions for 5 countries running to 2025 on each country's own method |
| charts/suicide_international.csv | — | The same series as a wide CSV, one row per country |
| charts/overdose_us.csv | 27 | US overdose deaths by year, with rate and final/provisional status |

Source register: 79 Tier A · 23 Tier B · 2 Tier C.

## The suicide comparison chart

`charts/suicide_international.json` holds every line behind the site's suicide
visualization — 14 series including Israel and West Bank & Gaza, plus
per-country method, source, tier and caveats, and dated COVID-19 markers.

The 2000–2021 segment is ONE comparable basis (WHO estimates
age-standardised to the world standard population, retrieved from the World Bank's
open API). Over that period the world rate fell 27% and most countries fell with it
— Russia −60%, China −42%, Japan −28%, India −21% — while the United States rose
40% in a steady climb. South Korea rose further but peaked around 2011.

The post-2021 extensions are **each country's own national statistics on its
own method** — different standard populations, and in three cases crude rather than
age-standardised rates. They are stored separately, marked per country, and drawn
dotted on the site precisely because they are not cross-country comparable. Do not
splice them into the WHO segment without rebasing.

## The overdose series

`charts/overdose_us.csv` runs 27 years. The rise is the larger half of it:
16,849 deaths in 1999 to 107,941 in 2022, then a steep reversal to 79,384 (2024,
final) and a provisional 69,973 (2025).

Two vintages are mixed at the recent end and the distinction changes the headline:
CDC's May 2026 release compares provisional 2025 against a *provisional* 2024
estimate of 81,313 and reports "almost 14%". Against the *final* 2024 count of
79,384 the same 2025 figure is a fall of about 11.9%. Provisional counts revise
upward. `health_data_quality.json` carries this as row `hq015`.

## Safe reporting

Rates and counts only; no method detail. Crisis resources: US 988 Suicide & Crisis Lifeline (call/text 988); international directory at https://findahelpline.com.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.

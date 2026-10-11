# Government Cloud Research — Web Data Package (Next.js + d3.js)

Drop this folder into your Next.js app at `public/data/` and fetch the JSON, or `import` it directly.

## Layout
- `tables/*.json` — the 11 dataset tables as record arrays (mirror the Supabase schema; see `../03-dataset/sql/migration.sql`).
- `charts/*.json` — pre-shaped, d3-ready datasets so charts need no client-side aggregation.
- `types.ts` — TypeScript interfaces for every table and chart shape. Copy into `lib/` or `types/`.
- `manifest.json` — index + row counts + paths.

## Two ways to use
1. **Static (simplest):** copy to `public/data/`, then `const d = await fetch('/data/charts/timeline.json').then(r=>r.json())`.
2. **Supabase (live):** apply `../03-dataset/sql/migration.sql` + `seed.sql`, then query via `@supabase/supabase-js`. The `*_sourced` SQL views expose the source URL + tier on every fact row. Regenerate these JSONs any time from the CSVs.

## d3 chart → data file map
- Master timeline (5 tracks) → `charts/timeline.json` (each point has numeric `year` for the x-scale; `track` A–E for the lane; `certainty` for hollow/filled).
- Geo × domain heatmap → `charts/geo_domain_matrix.json`.
- Vendor ranking (bar) → `charts/vendor_deploy_rank.json`.
- Funding → vendor → geography **Sankey** → `charts/sankey_funding.json` (`{nodes,links}`, ready for `d3-sankey`).
- Award value by geography / by year / re-compete → `charts/awards_*.json`, `charts/recompete.json`.
- Capital flows (disclosed vs pledge), market size, thesis → `charts/capital_flows.json`, `market_size_by_domain.json`, `investment_thesis.json`.
- Litigation by vendor/status/jurisdiction + register → `charts/litigation_*.json`.
- Capabilities by category/vendor + register → `charts/capabilities_*.json`.

## Evidence-tier rule (important)
Every fact carries a `tier` (A/B/C). For any public-facing view, filter or visibly mark Tier C
(claimed/theoretical). Keep documented (A) separate from alleged (C) — this is what the report's
credibility rests on.

## Palette (matches the delivered dashboard, validated for light+dark, CVD-safe)
series-1 `#2a78d6` · series-2 `#eb6834` · series-3 `#1baf7a` · series-4 `#eda100` · series-5 `#4a3aa7`
(dark: `#3987e5 #d95926 #199e70 #c98500 #9085e9`). Timeline tracks: A=2, B=1, C=3, D=4, E=5.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.

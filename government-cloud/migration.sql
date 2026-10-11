-- Government Cloud Research — shared schema migration
-- Target: Supabase / Postgres 15+
-- Run once in the SQL Editor of the target project, then import the CSVs
-- (Table Editor → Import data via CSV) in this order:
-- geographies, vendors, domains, sources, then the fact tables.
-- Matches prompt pack v2.4, standing requirements 3 and 5.

create extension if not exists "pgcrypto";  -- for gen_random_uuid()

-- ---------- dimensions ----------

create table if not exists geographies (
  id      text primary key,             -- ISO 3166-1 alpha-2, 'EU', or 'US-CO' style
  name    text not null,
  region  text not null check (region in ('americas','europe','africa','mena','apac','global')),
  tier    smallint not null default 2 check (tier in (1,2))
);

create table if not exists vendors (
  id           text primary key,        -- 'aws','azure','gcp',...
  name         text not null,
  hq_country   text,
  vendor_class text not null check (vendor_class in ('hyperscaler','local','isv'))
);

create table if not exists domains (
  id           text primary key,        -- 'law-enforcement','neurotech-bci',...
  name         text not null,
  domain_class text not null check (domain_class in ('established','emerging'))
);

create table if not exists sources (
  id            text primary key,       -- stable slug, e.g. 'gao-21-501'
  url           text not null check (url ~ '^https?://'),  -- REQUIRED for every source
  title         text not null,
  publisher     text,
  published_on  date,
  evidence_tier char(1) not null check (evidence_tier in ('A','B','C')),
  archived_url  text check (archived_url is null or archived_url ~ '^https?://'),
  local_copy    text                    -- path under 05-sources/, when kept
);
-- Every fact table references sources(id) with source_id NOT NULL, so a working
-- URL is guaranteed reachable from every row in the dataset. A document with no
-- public URL must be deposited (05-sources/ + an archive upload) and cited by its
-- archive URL — there is no sourceless or URL-less row in this schema.

-- ---------- facts ----------

create table if not exists deployments (          -- Prompt 1
  id             uuid primary key default gen_random_uuid(),
  geography_id   text not null references geographies(id),
  vendor_id      text not null references vendors(id),
  domain_id      text not null references domains(id),
  workload       text not null,
  status         text not null check (status in ('accredited','production','announced','decommissioned')),
  accreditation  text,
  adoption_stage text check (adoption_stage in
                   ('innovator','early-adopter','early-majority','late-majority','laggard')),
  maturity_score smallint check (maturity_score between 1 and 5),
  trl            smallint check (trl between 1 and 9),
  source_id      text not null references sources(id)
);

create table if not exists awards (               -- Prompt 2
  id              uuid primary key default gen_random_uuid(),
  geography_id    text not null references geographies(id),
  vendor_id       text not null references vendors(id),
  buyer           text not null,
  vehicle         text,
  scope           text,
  value_usd       numeric,
  value_basis     text,                 -- disclosed | estimated:<method> | converted:<rate>
  awarded_on      date,
  ends_on         date,
  recompete_on    date,
  funding_statute text,
  emergency       boolean not null default false,
  source_id       text not null references sources(id)
);

create table if not exists regulations (          -- Prompt 3
  id               uuid primary key default gen_random_uuid(),
  geography_id     text not null references geographies(id),
  instrument       text not null,
  instrument_type  text,                -- statute | regulation | certification | soft-law | court
  status           text,                -- proposed | enacted | in-force | amended | sunset
  enacted_on       date,
  applies_from     date,
  domains_affected text[],
  neural_data      boolean not null default false,
  localisation     boolean not null default false,
  source_id        text not null references sources(id)
);

create table if not exists milestones (           -- Prompt 4
  id                  uuid primary key default gen_random_uuid(),
  occurred_on         date not null,
  track               char(1) not null check (track in ('A','B','C','D','E')), -- law|release|deploy|litigation|investment
  geography_id        text not null references geographies(id),
  vendor_id           text references vendors(id),
  domain_id           text not null references domains(id),
  title               text not null,
  description         text,
  linked_milestone_id uuid references milestones(id),
  lag_days            integer,
  relationship        text check (relationship in
                        ('law-follows','capability-follows','coevolution','decoupled')),
  date_certainty      text not null default 'fixed'
                        check (date_certainty in ('fixed','projected','contested')),
  source_id           text not null references sources(id)
);

create table if not exists findings (             -- all prompts
  id            uuid primary key default gen_random_uuid(),
  prompt        smallint not null check (prompt between 1 and 4),
  geography_id  text references geographies(id),
  domain_id     text references domains(id),
  claim         text not null,
  evidence_tier char(1) not null check (evidence_tier in ('A','B','C')),
  confidence    text check (confidence in ('low','moderate','high')),
  source_id     text not null references sources(id)
);

create table if not exists investments (          -- Prompt 5 (investment & market, per domain)
  id            uuid primary key default gen_random_uuid(),
  domain_id     text not null references domains(id),
  geography_id  text references geographies(id),   -- NULL = global
  kind          text not null check (kind in ('market-size','capital-flow','thesis')),
  headline      text not null,
  value_usd     numeric,
  period        text,
  investor      text,
  note          text,
  confidence    text check (confidence in ('low','moderate','high')),
  source_id     text not null references sources(id)
);

create table if not exists litigation (           -- Prompt 6 (litigation layer)
  id            uuid primary key default gen_random_uuid(),
  case_name     text not null,
  parties       text,
  jurisdiction  text,
  court         text,
  claim         text,
  status        text check (status in ('filed','ongoing','settled','decided','dismissed','appeal','withdrawn')),
  outcome       text,
  filed_on      date,
  decided_on    date,
  vendor_id     text references vendors(id),
  domain_id     text references domains(id),
  geography_id  text references geographies(id),
  category      text default 'gov-cloud',      -- 'gov-cloud' | 'organized-harassment'
  actor_type    text,                          -- corporate | state | other
  source_id     text not null references sources(id)
);

create table if not exists capabilities (        -- Prompt 7 (platform functionality)
  id           uuid primary key default gen_random_uuid(),
  vendor_id    text references vendors(id),
  platform     text,
  capability   text not null,
  category     text,                            -- compute|storage|ai-ml|identity-biometric|data-fusion|...
  description  text,                            -- what it technically does
  mission_use  text,                            -- government mission use
  source_id    text not null references sources(id)
);

-- ---------- convenience views (every fact row with its source URL inline) ----------

create or replace view deployments_sourced as
  select d.*, s.url as source_url, s.archived_url as source_archived_url,
         s.evidence_tier as source_tier
  from deployments d join sources s on s.id = d.source_id;

create or replace view awards_sourced as
  select a.*, s.url as source_url, s.archived_url as source_archived_url,
         s.evidence_tier as source_tier
  from awards a join sources s on s.id = a.source_id;

create or replace view regulations_sourced as
  select r.*, s.url as source_url, s.archived_url as source_archived_url,
         s.evidence_tier as source_tier
  from regulations r join sources s on s.id = r.source_id;

create or replace view milestones_sourced as
  select m.*, s.url as source_url, s.archived_url as source_archived_url,
         s.evidence_tier as source_tier
  from milestones m join sources s on s.id = m.source_id;

create or replace view findings_sourced as
  select f.*, s.url as source_url, s.archived_url as source_archived_url,
         s.evidence_tier as source_tier
  from findings f join sources s on s.id = f.source_id;

-- ---------- indexes ----------

create index if not exists idx_deployments_geo_dom on deployments (geography_id, domain_id);
create index if not exists idx_awards_recompete    on awards (recompete_on);
create index if not exists idx_milestones_date     on milestones (occurred_on, track);
create index if not exists idx_findings_tier       on findings (evidence_tier);

-- ---------- row level security ----------
-- Writes happen via the service role (bypasses RLS). Public/anon gets read-only,
-- and Tier C findings are excluded from anonymous reads by default, per the
-- prompt pack's last-mile rule. Adjust to taste.

alter table geographies  enable row level security;
alter table vendors      enable row level security;
alter table domains      enable row level security;
alter table sources      enable row level security;
alter table deployments  enable row level security;
alter table awards       enable row level security;
alter table regulations  enable row level security;
alter table milestones   enable row level security;
alter table findings     enable row level security;

create policy anon_read_geographies on geographies for select using (true);
create policy anon_read_vendors     on vendors     for select using (true);
create policy anon_read_domains     on domains     for select using (true);
create policy anon_read_sources     on sources     for select using (true);
create policy anon_read_deployments on deployments for select using (true);
create policy anon_read_awards      on awards      for select using (true);
create policy anon_read_regulations on regulations for select using (true);
create policy anon_read_milestones  on milestones  for select using (true);
create policy anon_read_findings    on findings    for select
  using (evidence_tier in ('A','B'));   -- Tier C hidden from public views by default

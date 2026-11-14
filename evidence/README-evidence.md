# Evidence — README

*Each News item's article, captured as it appeared on the day it was collected,
so that a later edit, redaction or removal can be seen. **The articles belong to
their publishers.** This archive did not write them and takes no credit for them:
every file opens with the publisher, the original link and an Internet Archive
copy. The website does not show these files; it summarises each article and links
to the original. See `meta/IS_META_terms.md`.*

## Why this exists

Publishers edit, redact and remove articles, and even the Internet Archive can
lose a page. These files keep each article as it was when collected, complete
and self-contained, so anyone who downloads the corpus (a reader, a journalist,
an investigator, law enforcement) can see what was published and check whether
it has changed, without relying on any other site. The fingerprint lets them
confirm the text is exactly what was captured.

## What is here

- 381 files, one per News item (`IS_EVD_<slug>.md`, matching `news/IS_NEWS_<slug>.md`).
- 381 captured in full; 0 could not be captured (paywall, block or
  error), and say why. The Internet Archive copy is the record for those.
- 131 are U.S. federal government pages (public domain).
- 0 have changed since capture, and 0 are no longer available. Each
  change is in that file's change log.

## How a file is built

1. **Credit:** publisher, the article's author and publication date as the page
   states them, the original link, an Internet Archive copy, the capture date.
2. **Captured text:** extracted by code from the page (trafilatura) or PDF (pypdf),
   not written or edited by AI. Its SHA-256 fingerprint is in the header, so
   anyone can confirm the text has not been altered since capture. Every link in
   the article is listed, and every image with its description and caption (the
   images themselves are listed, not copied). The full page as fetched is kept as
   the raw record in the archive's database.
3. **Change log:** every 14 days the page is fetched again. The captured
   text is never edited; a change adds a dated entry quoting what is no longer on
   the page and what is new, with a fresh Internet Archive copy. A page that is
   gone is recorded as gone.

## Removal

A publisher who asks for its article text to be removed will have it removed. The
credit, the links and the change log stay.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.

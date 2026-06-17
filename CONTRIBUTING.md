# Contributing to RSE Award Research

This repository collects research for the [RSE Award](https://rse.gi.de/rse-award). Some contributors will be comfortable with git and pull requests; others will have no programming or git experience at all and will work entirely through the GitHub website. This guide explains both paths wherever they differ.

## Table of contents

- [Two ways to contribute](#two-ways-to-contribute)
- [Ground rules](#ground-rules)
- [Ways to contribute](#ways-to-contribute)
- [Before you start: avoid duplicate findings](#before-you-start-avoid-duplicate-findings)
- [Adding a new raw research file](#adding-a-new-raw-research-file)
- [Adding or editing a row in a results table](#adding-or-editing-a-row-in-a-results-table)
- [Results table columns](#results-table-columns)
- [File and naming conventions](#file-and-naming-conventions)
- [Reporting an error or suggesting a change](#reporting-an-error-or-suggesting-a-change)
- [Licensing of your contributions](#licensing-of-your-contributions)
- [Getting help](#getting-help)

## Two ways to contribute

**Browser only, no git required.** If you've been added as a collaborator on this repository, you can edit files directly on the GitHub website: open a file, click the pencil icon, make your change, and click "Commit changes." GitHub will ask whether to commit straight to the `main` branch or to create a new branch and open a pull request instead — either is fine for this project; commit straight to `main` if you're confident in the change, or open a pull request if you'd like someone to look it over first. Uploading a new file works the same way, via **Add file → Upload files**. Nothing here requires installing anything or using a terminal.

**Using git locally, with a pull request.** Clone the repository, create a branch for your change, commit it, push the branch, and open a pull request on GitHub comparing your branch to `main`. This is the expected path if you prefer working in your own editor, want to batch up several changes before committing, or simply find that workflow more natural. A typical sequence looks like:

```bash
git checkout -b add-newcomer-research
# make your changes
git add .
git commit -m "Add manual research on XYZ newcomer program"
git push origin add-newcomer-research
```

Then open a pull request from that branch into `main` on GitHub. If you haven't been added as a collaborator and don't have push access, fork the repository first and open the pull request from your fork instead — everything else is the same.

Whichever path you use, the conventions in the rest of this document (naming, duplicate-checking, table columns) apply equally.

## Ground rules

Please only add information you can point back to a source for, link to the page or document you found it on whenever possible, and be respectful and constructive in any issue, commit message, or pull request discussion. For pull requests specifically, a short description of what changed and why is appreciated — it makes review faster for everyone. There's no formal code of conduct beyond that.

## Ways to contribute

There are four main ways to help:

1. **Add raw research** — manual notes from your own research, or the full output of an automated research tool run.
2. **Add or correct rows in a results table** — turning raw research into the structured, citable table for a pillar.
3. **Report an error** — outdated information, a broken link, or a mistake you've spotted.
4. **Suggest a structural change** — a new column, a new pillar, or a change to how something is organized.

## Before you start: avoid duplicate findings

Before adding anything to a results table, search the existing CSV for the artefact-tracks, newcomer, or scientifics-societies category/pillar you're about to add. It's common for the same conference to turn up in both manual and automated research — for example, in `artefact-tracks/results/artefact_tracks_results.csv`, both methods - run in parallel - found DELFI and ICSE. When that happens, keep only one row for that entry rather than listing it twice. Prefer keeping whichever version has more complete information.

## Adding a new raw research file

This applies to either a set of manual notes or the full output (prompt included) from an automated research tool.

**Browser:**
1. Open the relevant pillar's `research/manual/` or `research/automated/` folder.
2. Click **Add file → Upload files**, and upload your `.md` file, named according to the [naming convention](#file-and-naming-conventions) below.
3. Write a short, descriptive commit message (e.g. "Add manual research on BTW conference") and either commit directly to `main` or open a pull request, as described [above](#two-ways-to-contribute).

**Git:**
1. Create a branch, add your `.md` file to the relevant `research/manual/` or `research/automated/` folder, following the naming convention below.
2. Commit, push your branch, and open a pull request describing what the research covers.

Raw research files are never edited after the fact — if you find new information later, add a new dated file rather than changing an old one. The point of `research/` is to preserve exactly what was found and when.

## Adding or editing a row in a results table

**Browser:**
1. Open the relevant `results/*.csv` file. GitHub renders it as a readable table automatically.
2. For a single small correction, you can click the pencil icon to edit the file directly — but note this opens the raw comma-separated text, not a spreadsheet grid, so type carefully and match the existing column order exactly.
3. For adding one or more new rows, it's safer to download the file, open it in Excel or Google Sheets, add your row(s) there, then re-upload it via **Add file → Upload files** (selecting the existing file so it gets replaced). This avoids formatting mistakes that are easy to make typing raw CSV text by hand.
4. If you're using a German-locale Excel, double-check the delimiter when saving — it defaults to semicolons, which won't match this repository's comma-separated files unless you set the delimiter explicitly during export.

**Git:**
1. Create a branch, open the CSV in Excel, Google Sheets, or any spreadsheet-aware editor, add or correct your row(s), and save it back as comma-delimited.
2. Commit, push, and open a pull request — this is a good moment to mention in the description which rows you added or changed, since CSV diffs can be hard to read at a glance.

Either way, fill in every column for your new row, including the metadata columns described below — an incomplete row is harder for everyone else to trust and reuse.

## Results table columns

Every results table includes a set of metadata columns, in addition to whatever content columns make sense for that pillar's research question (e.g. `artefact-tracks` uses `Conference/Journal`, `Year`, `Artifact Track URL`, `Discipline`, `Badge System`, `Artifact Types`, `Notes`):

- **Region** — e.g. `DACH` or `International`, or whatever regional split is relevant for that pillar.
- **Data Collection Type** — `Manual` or `Automated`.
- **LLM** — for automated rows, which model was used (e.g. `Claude Sonnet 4.6`); `N/A` for manual rows.
- **Tool Use** — for automated rows, which tool ran the research (e.g. `Research tool`); `N/A` for manual rows.
- **Prompt** — for automated rows, a link to the raw research file containing the exact prompt used; `N/A` for manual rows.
- **Data Collection Date** — the date the research was conducted, in `YYYY-MM-DD` format, for every row regardless of method.


## File and naming conventions

- **Folders** use lowercase letters and hyphens: `scientific-societies`, `artefact-tracks`, `newcomer`, `research`, `results`, `manual`, `automated`.
- **Files** use lowercase letters and underscores: `claude_research_2026-06-15.md`, `artefact_tracks_results.csv`.
- **Raw research files** follow the pattern `<method>_research_<YYYY-MM-DD>.md`, e.g. `manual_research_2026-06-15.md` or `claude_research_2026-06-15.md`. The method prefix identifies how the research was done (`manual`, or the name of the automated tool/model); the date is when the research was conducted, not when the file was uploaded or committed.
- **Results files** follow the pattern `<pillar>_results.csv`, one canonical file per pillar — e.g. `artefact_tracks_results.csv`. Don't create a second results file for the same pillar; add rows to the existing one instead.
- Avoid spaces and umlauts in any file or folder name, so links and paths stay simple to type and share.

## Reporting an error or suggesting a change

If you've spotted incorrect or outdated information and you're confident about the fix, you can correct it directly using either path above — that's faster than a back-and-forth for small, clear-cut fixes. If you're unsure, or the change is bigger than a single row (a new pillar, a new column applied retroactively, restructuring folders), open an issue first so it can be discussed before anyone does the work. This avoids two people accidentally reorganizing the same thing in different directions at once, and is good practice regardless of whether you'd implement the change via a direct commit or a pull request.

## Licensing of your contributions

This project's content is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) (see [`LICENSE`](LICENSE)). By contributing research, notes, or corrections to this repository — whether by direct commit or pull request — you agree that your contribution is provided under that same license.

## Getting help

If anything in this guide is unclear, or you're not sure where something belongs, open an issue describing what you're trying to do, or reach out to the project maintainer directly.
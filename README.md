# RSE Award Research


> Documents research on the state of scientific societies (*Fachgesellschaften*), conference artefact evaluation tracks, and newcomer categories — in Germany/DACH and internationally — gathered as part of the [RSE Award](https://rse.gi.de/rse-award).

This repository is a documentation project, not a code project. There is no software to install or run here. Everything in it is meant to be readable and editable directly on GitHub, so people with and without git experience can contribute.

## Table of contents

- [About this project](#about-this-project)
- [The three categories](#the-three-categories)
- [Repository structure](#repository-structure)
- [Contributing](#contributing)
- [Data formats and naming](#data-formats-and-naming)
- [License](#license)
- [Contributors](#contributors)
- [Questions](#questions)

## About this project

The goal of this repository is to collect, document, and structure research findings that inform the RSE Award. Research is gathered through two complementary methods: manual research and automated research (using an AI research tool with a documented prompt). Both kinds of raw findings are preserved as-is for traceability, and are periodically reconciled into a single structured results table per topic.

The project is organized around three independent categories, each tracked separately since they have different scopes, sources, and contributors.

## The three categories

- **Artefact evaluation tracks** — conferences and journals (in the DACH region and internationally) that run an artefact (software, data, models, etc.) evaluation track, including which badge or evaluation system each one uses (e.g. ACM Artifact Review and Badging).
- **Newcomer category** — programs, tracks, or award categories aimed specifically at newcomers.
- **Scientific societies (*Fachgesellschaften*)** — the landscape of discipline-specific scientific/professional societies in Germany. 

## Repository structure

```
rse-award-research/
├── artefact-tracks/
│   ├── research/
│   │   ├── automated/                 # raw prompt + output from AI research tools
│   │   │   └── claude_research_2026-06-15.md
│   │   └── manual/                    # raw notes from manual research
│   │       └── manual_research_2026-06-15.md
│   └── results/
│       └── artefact_tracks_results.csv
├── docs/
│   ├── glossary.md                    # terms used across all three pillars (e.g. Fachgesellschaft, badge systems) -> currently empty
│   └── methodology.md                 # shared research methodology, definitions, scope -> currently empty
├── newcomer/
│   ├── research/
│   │   ├── automated/
│   │   └── manual/
│   └── results/
│       └── newcomer_results.csv
├── scientific-societies/
│   ├── research/
│   │   ├── automated/
│   │   └── manual/
│   └── results/
│       └── scientific_societies_results.csv
├── CONTRIBUTING.md
├── LICENSE
└── README.md
```

Each of the three category folders is self-contained: everything related to that topic — raw research and the finished results table — lives in one place. Methodology and terminology that apply across all three pillars live once, at the root, in `docs/`.

The two folder types inside each category serve different purposes:

- **`research/`** holds raw, unedited research output — manual notes or full automated-tool output (prompt included). Nothing here needs to be polished; it's kept for traceability, so anyone can check where a result came from.
- **`results/`** holds exactly one canonical, structured table per category. This is the file that gets reconciled by hand from whatever's in `research/`, and it's the one most people will actually want to read or cite.

## Contributing

Contributions are welcome both through git and pull requests, and entirely through the browser with no git or programming experience required — whichever suits you. The full step-by-step guide for both paths, including naming conventions, how to avoid duplicate entries, and what columns a results table should have, lives in [`CONTRIBUTING.md`](CONTRIBUTING.md). Start there before adding anything.




## Data formats and naming

Research results are kept in plain-text formats on purpose, so they're easy to read, diff, and edit without specialized software: Markdown (`.md`) for raw research notes, and CSV (`.csv`) for the structured results tables.

Folder names use lowercase letters and hyphens (e.g. `artefact-tracks`); file names use lowercase letters and underscores (e.g. `artefact_tracks_results.csv`). The full naming rules, including the date-stamped pattern for raw research files, are documented in [`CONTRIBUTING.md`](CONTRIBUTING.md#file-and-naming-conventions).

## License

This project's content is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) — you're free to share and adapt the material, as long as you give appropriate credit. See [`LICENSE`](LICENSE) for the full text. By contributing to this repository, you agree your contribution is provided under the same license (see [`CONTRIBUTING.md`](CONTRIBUTING.md#licensing-of-your-contributions)).

## Contributors

This project is maintained by Fabian Lochner, Julian Dehne and Stella Drebber with research contributions from colleagues credited in the commit history of this repository.

## Questions

Open an issue in this repository, or reach out to the project maintainers directly.

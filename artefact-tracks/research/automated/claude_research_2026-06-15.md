
- claude sonnet 4.6, research tool

### 1) Prompt

Your task is to perform a thorough, systematic research regarding the existence of artefact (evaluation) tracks of scientific conferences or journal articles both in the so-called DACH Raum (Germany, Austria, Switzerland) and internationally. Two examples of existing conferences having such an artefact evaluation track are DELFI 2026 (https://delfi-tagung.de/2026/artefakte; for the DACH Raum) and ICSE 2026 (https://conf.researchr.org/track/icse-2026/icse-2026-artifact-evaluation; internationally).

DELFI, e.g., list the following artefact types: software, data, models, open educational resources and others. The research should primarily focus on software artefact (evaluation) tracks, but tracks with other artefact types can also be included in the results.

As you can read in the two provided links, both DELFI and ICSE use the ACM Artifact Review and Badging System (https://www.acm.org/publications/policies/artifact-review-and-badging-current) to evaluate the artefacts. For all found artefact tracks I would also like to know which evaluation/badge system is used.

The goal of the research is to find all or as many as possible of all existing artefacts tracks from scientific conferences and journal articles. It should not be limited to certain scientific disciplines (e.g., computer science or natural sciences), but as open as possible, i.e. accompany as many disciplines as possible (where artefact tracks exist).

To fully understand the context, please thoroughly read the DELFI 2026 and ICSE 2026 provided links before starting your research.

Ideally the results are provided in a structured format, e.g., a table for the DACH RAUM and international area accompanied by a markdown document describing the results.


### 2) Claude Output

# Artifact Evaluation Tracks Across Conferences and Journals: DACH and International Landscape

## TL;DR

- Artifact evaluation (AE) tracks are now mainstream across computing — software engineering, programming languages, systems, security, databases, HPC, and HCI — overwhelmingly built on the **ACM Artifact Review and Badging** scheme (Available / Evaluated–Functional / Evaluated–Reusable / Results Reproduced / Results Replicated) or its USENIX/IEEE/NISO equivalents; outside CS, equivalent "open practices" badges and data/code-availability policies dominate (Psychology's COS badges, economics' AEA Data Editor, life sciences' FAIR mandates).
- In the **DACH region**, formal _badged_ artifact tracks are still rare and GI/LNI-centered: **DELFI** (educational technology, FAIR4EDTECH) and **BTW** (databases, SIGMOD-style Reproducibility Track) are the two confirmed examples, with the **NFDIxCS/RDMxSE** workshop at the GI _Software Engineering_ conference now building artifact-evaluation infrastructure for the German SE community.
	- [Working Workshop on Research Data Management for and in Software Engineering (RDMxSE)](https://nfdixcs.org/event/working-workshop-on-research-data-management-for-and-in-software-engineering-rdmxse)
- The clear trend is from voluntary, post-acceptance "reward" tracks toward **mandatory availability** (USENIX Security '26 Phase-1, OSDI '26), archival hosting with DOIs (Zenodo/Software Heritage; GitHub alone insufficient), and discipline-specific reproducibility checks.

## Key Findings

1. The **ACM Artifact Review and Badging System** (current v1.1, 20 Aug 2020) is the dominant standard in CS. It defines three independent badge families: Artifacts Available; Artifacts Evaluated (Functional / Reusable); and Results Validated (Reproduced / Replicated).
2. **USENIX** runs a parallel three-badge scheme (Available, Functional, Reproduced) across Security, OSDI, ATC, and NSDI. USENIX Security '26 makes Phase-1 availability **mandatory** — per secartifacts.github.io/usenixsec2026/instructions: "Phase-1 AE is mandatory for all papers that get accepted to USENIX Security '26. Accepted papers that registered for any form of artifact evaluation… but fail their availability verification, including because artifacts aren't submitted on time, will have their acceptance rescinded." OSDI '26 evaluates only the Available badge.
3. **SIGPLAN** (PLDI, POPL, OOPSLA, ECOOP) pioneered AE from 2011–2015 and remains a model; **formal methods** (TACAS, FM, FormaliSE) use EAPLS guidelines with Functional/Reusable/Available badges and mandatory artifacts for tool papers.
4. **Databases** (SIGMOD ARI, VLDB, and DACH's BTW) emphasize independent _reproducibility_ checks; **security**conferences are catalogued comprehensively at secartifacts.github.io.
5. Outside CS: **Psychological Science** (COS Open Data/Open Materials/Preregistered badges since January 2014), **AEA** economics (Data Editor pre-publication reproducibility verification, DCAS standard), **GigaScience** (FAIR + mandatory open source/data, reviewer-tested reproducibility), and **NeurIPS** (mandatory Paper Checklist, code-submission policy) represent the major non-CS models.
6. **NISO RP-31-2021** provides a cross-publisher standard (used by IEEE) harmonizing badge vocabulary and iconography (approved 15 Jan 2021; DOI 10.3789/niso-rp-31-2021).

## Details

### Badge / evaluation systems in use

- **ACM Artifact Review and Badging (current v1.1):** Available; Evaluated–Functional; Evaluated–Reusable; Results Reproduced; Results Replicated. URL: https://www.acm.org/publications/policies/artifact-review-and-badging-current
- **USENIX badges:** Available, Functional, Reproduced.
- **IEEE / NISO RP-31-2021 Reproducibility Badging:** ROR (Research Object Reviewed), ORO (Open Research Object), with Results Reproduced modifier (ROR-R).
- **EAPLS guidelines:** Functional/Reusable/Available, used by TACAS, FM, FormaliSE.
- **Center for Open Science (COS) badges:** Open Data, Open Materials, Preregistered — "over 100 journals offer Open Science Badges" (cos.io/initiatives/badges).
- **FAIR-based / custom:** DELFI's FAIR4EDTECH; EMSE single "Open Science" badge.

### DACH Region table

|Conference/Journal|Year|Artifact Track URL|Discipline|Badge System|Artifact Types|Notes|
|---|---|---|---|---|---|---|
|DELFI (Fachtagung Bildungstechnologien, GI)|2025/2026|https://delfi-tagung.de/2026/artefakte|Educational technology|FAIR4EDTECH; FAIR badges adapted from ACM (Available/Verfügbar, Functional/Funktionsfähig, Reusable/Wiederverwendbar)|Software, Data, Models, OERs, Others|"FAIR4EDTECH: Towards an Artifact Evaluation Track" (Bernoth et al., DELFI 2025, LNI P-369); German/English|
|BTW – Datenbanksysteme für Business, Technologie und Web (GI/DBIS)|2025 (Bamberg)|https://btw2025.gi.de/calls/reproducibility|Databases|Reproducibility label following SIGMOD guidelines|Code, experimental setups, scripts|Second edition of Reproducibility Initiative; LNI P-361 proceedings|
|Software Engineering (SE) conference (GI Fachbereich Softwaretechnik)|2026 (Bern)|https://se2026.inf.unibe.ch/de/tracks/scientific-program/|Software engineering|None (open-data availability expectation only; Zenodo/Figshare/arXiv)|Papers + data|Scientific program re-presents already-published papers; no badge track|
|RDMxSE workshop (NFDIxCS) @ SE 2026|2026 (Bern)|https://se2026.inf.unibe.ch/de/workshops/rdmxse/|Software engineering / research data management|None yet (building "Artefakt-Evaluation" service)|Software, RDM containers, reusable execution environments|NFDIxCS-driven artifact-evaluation infrastructure for German SE community|
|Datenbank-Spektrum (Springer; GI Fachgruppe DBIS)|current|https://link.springer.com/journal/13222|Databases|Standard Springer research-data policy (no badges)|Data availability statements|Reproducibility a community theme (TU Dresden 2022 workshop), no formal badge|

**DACH negative findings (no dedicated badged artifact track found):** **SICHERHEIT** (GI security; double-blind reviews, LNI proceedings, no AE), **KONVENS** (German NLP; ACL Anthology, data-heavy but no AE track), **Mensch und Computer (MuC)** (reproducibility only a review criterion; "Artifact-Design" is a research-_contribution_ type, not artifact evaluation), and **INFORMATIK** (GI festival; 2025 theme "The Wide Open – Offenheit von Source bis Science," but no badge mechanism).

### International table

|Conference/Journal|Year|Artifact Track URL|Discipline|Badge System|Artifact Types|Notes|
|---|---|---|---|---|---|---|
|ICSE|2026|https://conf.researchr.org/track/icse-2026/icse-2026-artifact-evaluation|Software engineering|ACM (Available, Functional, Reusable, Results Reproduced, Results Replicated)|Software, data, models|GitHub alone not archival; Software Heritage/Zenodo required|
|FSE/ESEC|2026|https://conf.researchr.org/track/fse-2026/fse-2026-artifacts|Software engineering|ACM (Functional, Reusable, Available)|Software, data repositories|Artifacts on Zenodo with DOI|
|ASE|2026|https://conf.researchr.org/track/ase-2026/ase-2026-artifact-evaluation|Software engineering|ACM|Software, data|IEEE/ACM, Munich Oct 2026|
|SEAMS|2026|https://conf.researchr.org/track/seams-2026/seams-2026-artifact-track|Self-adaptive systems|ACM-style|Dedicated artifacts|≥3 PC reviewers per artifact|
|ICSA|2026|https://conf.researchr.org/track/icsa-2026/icsaartifacts+evaluation+track2026|Software architecture|IEEE (ROR, ORO, ROR-R, RER)|Software, data repositories|Based on ICSE 2025/ACM policy; Best Artifact Award|
|FormaliSE|2026|https://2026.formalise.org/track/Formalise-2026-artifact-track|Formal methods in SE|Available/Functional/Reusable|Software, proofs, data|Single-anonymous, concurrent with paper review|
|TACAS|2020–2025|https://tacas.info/artifacts-25.php|Formal methods / verification|EAPLS (Functional, Reusable, Available)|Software, datasets, machine-checkable proofs|Mandatory for tool papers; two rounds; DOI required for Available|
|FM|2026|https://conf.researchr.org/track/fm-2026/fm-2026-artifact-evaluation|Formal methods|EAPLS (functional, reusable, available)|Software, data, proofs|DOI required for reusable|
|PLDI|2014–2023|https://pldi23.sigplan.org/track/pldi-2023-pldi-research-artifacts|Programming languages|ACM/SIGPLAN|Software, proofs, benchmarks|AE pioneer since 2014|
|POPL|2015–2025|https://popl25.sigplan.org/track/POPL-2025-artifact-evaluation|Programming languages|ACM/SIGPLAN|Software, mechanized proofs, benchmarks|Two-phase; grad-student-heavy AEC|
|USENIX Security|2026|https://secartifacts.github.io/usenixsec2026/instructions|Security|USENIX (Available, Functional, Reproduced)|Software, data, proofs|Phase-1 availability MANDATORY; acceptance rescinded if fails|
|OSDI|2026|https://www.usenix.org/conference/osdi26/call-for-artifacts|Operating systems|USENIX (Available only in '26)|Software, data|Combined with USENIX ATC; Zenodo recommended|
|USENIX ATC|2025|https://www.usenix.org/conference/atc25/call-for-artifacts|Systems|USENIX (Available, Functional, Reproduced)|Software, data|"Last year, 64% of accepted USENIX ATC papers participated in the artifact evaluation process" (ATC '25 CfA)|
|NSDI|2026|https://www.usenix.org/conference/nsdi26/call-for-artifacts|Networking|USENIX (Available, Functional, Reproduced)|Software, data, proofs|Open to all accepted papers|
|ACM CCS|2025|https://www.sigsac.org/ccs/CCS2025/call-for-artifacts/|Security|ACM (Available, Evaluated, Reproduced)|Software, data|Continuation of CCS 2023/24; inspired by USENIX/SOSP/SIGPLAN|
|NDSS|2026|https://secartifacts.github.io/ndss2026/call|Security|ACM-style; kick-the-tires|Software, data|Distinguished Evaluator Awards|
|ACSAC|since 2017|https://secartifacts.github.io/acsac|Security|ACM-style|Software, data|Catalogued at secartifacts.github.io|
|CHES|since 2021|https://secartifacts.github.io/ches|Crypto hardware|ACM-style|Software, hardware|Introduced AE in 2021|
|SIGMOD (ARI)|2025|https://reproducibility.sigmod.org/|Databases|ACM (Available, Reusable, Results Reproduced)|Data, scripts, code|Independent reproducibility reviewer; Best Artifact award|
|VLDB|2021+|https://dl.acm.org/doi/10.1145/3552490.3552511|Databases|ACM (Available, Reproducibility)|Code, scripts, data|Availability required at review stage|
|SIGIR / CHIIR / ICTIR|current|https://sigir.org/general-information/acm-sigir-artifact-badging/|Information retrieval|ACM (v1.1)|Software, datasets|Open review; asynchronous via OpenReview; ≤3 yrs post-publication|
|MMSys|2025|https://2025.acmmmsys.org/reproducibility.html|Multimedia systems|ACM|Docker/VM, traces, code|First ACM SIGMM conf to adopt ACM badging; Docker-first|
|MobiSys|2025|https://www.sigmobile.org/mobisys/2025/artifact_evaluation/|Mobile systems|ACM|Hardware + software|Adapted from ASPLOS 2022|
|SIGSIM-PADS|2026|https://sigsim.acm.org/conf/pads/2026/blog/artifact-evaluation/|Simulation|ACM (Functional/Reusable)|Software, data|AERCR; TOMACS special issue|
|SC (Supercomputing)|2025/2026|https://sc25.supercomputing.org/program/papers/reproducibility-initiative/|HPC|ACM badges + AD/AE appendices|Software, data, workflows|AD appendix mandatory; AE optional; "Each AE Appendix is allocated an 8-hour review budget" (SC25); AE Reports published|
|FCCM|2025|https://www.fccm.org/artifact-evaluation-2025/|Reconfigurable computing|IEEE Reproducibility Badging|Code, data|Based on Reproducibility Badging at IEEE|
|CHI (SIGCHI)|2025|https://chi2025.acm.org/for-authors/publication-ready-author-instructions/|HCI|ACM Artifact Review and Badging (optional supplementary)|Survey material, code, data, video|Reproducibility a review criterion|
|Empirical Software Engineering (EMSE, Springer)|current|https://emsejournal.github.io/open_science|Software engineering|Single "Open Science" badge (OSI Open-data)|Data, code, models, non-code (UML, requirements)|First SE-journal open-science initiative; Open Science Review Board|
|NeurIPS|2025/2026|https://neurips.cc/public/guides/PaperChecklist|Machine learning|Mandatory Paper Checklist + code/data submission policy|Code, data, model weights|Checklist mandatory (desk reject if omitted); no formal badges|
|Psychological Science (APS)|since 2014|https://www.psychologicalscience.org/publications/badges|Psychology|COS Open Data / Open Materials / Preregistered|Data, materials, preregistration|Open-data reporting rose from <3% to 39% in the first half of 2015 (Kidwell et al. 2016, PLOS Biology, DOI 10.1371/journal.pbio.1002456)|
|AEA journals (economics)|current|https://www.aeaweb.org/journals/data/data-code-policy|Economics|AEA Data Editor verification; DCAS v1.0 standard|Data, code, replication packages|Pre-publication reproducibility checks; AEA Data & Code Repository at ICPSR|
|GigaScience (Oxford/BGI)|current|https://academic.oup.com/gigascience/pages/instructions_to_authors|Life sciences / bioinformatics|FAIR; mandatory open data + OSI-licensed source code|Data, code, workflows, containers|Reviewer-tested reproducibility; GigaDB, Code Ocean integration|

### Cross-disciplinary observations

- **Software engineering & PL** have the deepest, oldest, most standardized AE culture (SIGPLAN experiments from 2011; ESEC/FSE and ECOOP/OOPSLA shortly after; ACM badging since 2018; ICSE/FSE formally in the ACM scheme since July 2020).
- **Systems & security** trend toward mandatory availability (USENIX Security '26 Phase-1).
- **Databases** emphasize independent reproducibility with a dedicated reviewer (SIGMOD ARI, BTW).
- **HPC** uses a distinctive AD/AE appendix model embedded directly in the submission system, with a fixed per-artifact review budget.
- **Psychology** and **economics** lead the social sciences via COS badges and the AEA Data Editor model respectively.
- **Life sciences** rely chiefly on journal-level FAIR mandates and reviewer-tested reproducibility rather than per-paper AE committees.

### DACH vs. international approaches

- DACH artifact tracks are **fewer, newer, and bilingual** (German/English), concentrated in the GI/LNI ecosystem. They deliberately _reuse_ international vocabulary: DELFI adapts ACM badges into FAIR4EDTECH terms; BTW explicitly follows SIGMOD's reproducibility guidelines.
- International CS venues have **institutionalized** AE (standing committees, HotCRP workflows, Distinguished Artifact/Evaluator Awards, mandatory availability), whereas most DACH venues treat reproducibility as a _review criterion_ or _theme_ rather than a badged process.
- The emerging **NFDIxCS** national infrastructure (Reusable Execution Environments, an "Artefakt-Evaluation" platform) is the most likely catalyst to bring a standardized, badged artifact track to German CS venues.

## Recommendations

1. **For organizers building a new DACH artifact track:** adopt the ACM badging vocabulary (as DELFI's FAIR4EDTECH and BTW already do) for cross-venue comparability; require archival hosting with a DOI (Zenodo/Software Heritage), not GitHub alone.
2. **Stage the rollout:** begin with an optional, post-acceptance "Available" badge (low burden), then add Functional/Reusable and independent reproducibility as community capacity grows — mirroring USENIX's phased model and BTW's SIGMOD-derived process.
3. **Watch NFDIxCS/RDMxSE** as the likely seed of standardized German artifact-evaluation infrastructure; engage with its "Artefakt-Evaluation" service and Reusable Execution Environments.
4. **Benchmarks that would change approach:** if participation exceeds ~60% (as at OSDI/ATC, where 64% of ATC papers participated), consider making availability mandatory; if reviewer capacity is limited, adopt SC's fixed per-artifact review budget (8 hours) and a "kick-the-tires" early functionality check (as at NDSS/POPL).

## Caveats

- Several venue pages describe _future_ editions (2026) whose processes may still change.
- Non-CS "badges" (COS, AEA, FAIR) are not identical to ACM artifact evaluation — they certify open practices/data availability rather than independently _executing_ artifacts; the report distinguishes these.
- DACH negative findings reflect current CfPs as of early-to-mid 2026 and could change in future editions.
- This is a representative, not exhaustive, census. Additional ML (ICML, ICLR, AAAI, IJCAI), visualization (IEEE VIS, EuroVis), and SE (MSR, ISSTA, ICSME, SANER) tracks exist and largely follow the ACM model; my live search budget was exhausted before these could be individually confirmed, so they are noted rather than tabulated.
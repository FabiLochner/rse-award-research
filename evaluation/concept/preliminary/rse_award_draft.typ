//  Template with Chicago Author-Date Style

#set document(
  title: [Draft RSE Award (2026-08-19)],
  author: "Fabian Lochner",
  date: auto,
)

// Page setup - Word-like margins
#set page(
  paper: "a4",
  margin: 3cm,  // all around
  numbering: "1",
  number-align: center,
)

// Text formatting
#set text(
  font: "New Computer Modern",
  size: 12pt,
  lang: "en",
)

// Paragraph formatting
#set par(
  justify: true,
  leading: 0.65em,
  spacing: 1.5em,  // 1.5 line spacing
  first-line-indent: 0.2in,
)

// Heading styles
#set heading(numbering: "1.1")

#show heading.where(level: 1): set block(above: 24pt, below: 14pt)
#show heading.where(level: 2): set block(above: 18pt, below: 14pt)
#show heading.where(level: 3): set block(above: 14pt, below: 14pt)
#show heading.where(level: 4): it => block(
  above: 14pt,
  below:12pt,
  inset: (left: 1em),
  text(weight: "medium", emph(it.body))
)



#set table(
  stroke: 0.7pt + black,
  inset: (top: 4pt, bottom: 4pt, left: 6pt, right: 6pt),
  align: left
)
#show table.cell.where(y: 0): strong

#show link: it => text(fill: blue, it)

#set figure(placement: none)

#show figure.caption: set text(size: 10pt)

#set math.equation(numbering: "(1)")

// ============================================================
// TITLE
// ============================================================

#align(center)[
  #v(2cm)
  #text(size: 18pt, weight: "bold")[
    Draft RSE Award
  ]
  
  #text(size: 14pt)[
    Categories, evaluation criteria and indicators
  ]

  #v(0.5cm)
  #text(size: 11pt)[Fabian Lochner]
  #v(0.01cm)
  #text(size: 11pt, style: "oblique")[fabian.lochner\@gi.de]
  #v(0.01cm)
  #text(size: 11pt, style: "italic")[Gesellschaft für Informatik e.V.]
  #v(0.01cm)
  #text(size: 11pt)[#datetime.today().display()]
]

#v(1cm)

// ============================================================
// ABSTRACT
// ============================================================

#v(0.5cm)
#block(
  width: 100%,
  above: 1em,
  below: 1.5em,
)[
  #line(length: 100%, stroke: 0.5pt + black)
  #v(6pt)
  #text(size: 11pt, weight: "bold")[Abstract]
  #v(4pt)
  #par(first-line-indent: 0pt)[
    #text(size: 10pt)[ test abstract
    ]
  ]
  #v(6pt)
#par(first-line-indent: 0pt)[
  #text(size: 10pt)[#emph[Keywords:] keyword1; keyword2; keyword3; keyword4]
]
  #line(length: 100%, stroke: 0.5pt + black)
]

// ============================================================
// ABBREVIATIONS
// ============================================================

#v(15pt)
#text(size: 11pt, weight: "bold")[Abbreviations]
#v(4pt)
#text(size: 10pt)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 4em,
    row-gutter: 3pt,
    [*RS*], [Research Software],
    [*DACH*], [Germany, Austria, Switzerland],
    [*GI*], [Gesellschaft für Informatik],
    [*BTW*], [Datenbanksysteme für Business, Technologie und Web],
    [*deRSE*], [Annual German Conference for Research Software Engineering],
  )
]

#v(0.5cm)

// ============================================================
// CONTENT
// ============================================================

= RSE Award categories



#figure(
  table(
    columns: (auto, auto, auto, auto),
    rows: auto,
    align: horizon,
    fill: (x, y) => {
      if y == 0 { none }
      else if y == 1 { rgb("#90EE90") }
      else { rgb("#FFB5E5") }
    },
    table.header[Category][Sub-Category][Format][Eligibility],

    [(1) Scientific Excellence],
    grid(
      columns: 1,
      row-gutter: 0pt,
      inset: (x: 5pt, y: 8pt),
      [(1.1) Humanities and Social Sciences],
      grid.hline(),
      [(1.2) Life Sciences],
      grid.hline(),
      [(1.3) Natural Sciences and Engineering],
      grid.hline(),
      [(1.4) Computer Science and Contributions with Artefacts],
    ),
    [Open call],
    [
      + RS must be clearly associated with scientific peer-reviewed journal publications (substantial part of research)

      + Researchers must be affiliated with a German or DACH university/research institution

      + Only for (1.4) sub-category: RS must have an artefact badge from a German or DACH conference
    ],

    [(2) Newcomer],
    [-],
    [Open call],
    [+ PhD (and master) students from a German or DACH university/research institution

    + Submission of motivation letter],
  ),
  caption: [Award categories, format and eligibility criteria. RS = Research software],
)


= Process and timeline of RSE Award

#let timeline-diagram(stages, fill-color: white) = {
  let n = stages.len()
  let circle-radius = 0.5cm
  let stack-gap = 0.15cm
  let axis-y = 3cm
  box(width: 100%, height: 6cm)[
    #place(top + left, dx: 0pt, dy: axis-y)[
      #line(length: 100%, stroke: 1pt + black)
    ]
    #for (i, s) in stages.enumerate() [
      #let x = 100% * i / (n - 1)
      #let dates = s.dates
      #if dates.len() == 1 [
        #place(top + left, dx: x - circle-radius, dy: axis-y - circle-radius)[
          #circle(radius: circle-radius, fill: fill-color, stroke: 1pt + black)
        ]
        #place(top + left, dx: x - 2cm, dy: axis-y - circle-radius - 1.4cm)[
          #box(width: 4cm)[#align(center)[#text(size: 9pt, weight: "bold")[#s.label]]]
        ]
        #place(top + left, dx: x - 2cm, dy: axis-y + circle-radius + 0.3cm)[
          #box(width: 4cm)[#align(center)[#text(size: 8pt, style: "italic")[#dates.at(0)]]]
        ]
      ] else [
        #let top-dy = axis-y - 2 * circle-radius - stack-gap / 2
        #let bottom-dy = axis-y + stack-gap / 2
        #place(top + left, dx: x - circle-radius, dy: top-dy)[
          #circle(radius: circle-radius, fill: fill-color, stroke: 1pt + black)
        ]
        #place(top + left, dx: x - circle-radius, dy: bottom-dy)[
          #circle(radius: circle-radius, fill: fill-color, stroke: 1pt + black)
        ]
        #place(top + left, dx: x - 2cm, dy: top-dy - 1.4cm)[
          #box(width: 4cm)[#align(center)[#text(size: 9pt, weight: "bold")[#s.label]]]
        ]
        #place(top + left, dx: x - 2cm, dy: bottom-dy + 2 * circle-radius + 0.4cm)[
          #box(width: 4cm)[#align(center)[
            #stack(dir: ttb, spacing: 0.3cm)[
              #text(size: 8pt, style: "italic")[#dates.at(0)]
            ][
              #text(size: 8pt, style: "italic")[#dates.at(1)]
            ]
          ]]
        ]
      ]
    ]
  ]
}

== Scientific Excellence category

#let science-stages = (
  (label: "Conference/Public Call", dates: ([deRSE27 Poster\(2027-03)], [])),
  (label: "Filtering", dates: ([Scientific societies \ (Research impact)],)),
  (label: "Short-list", dates: ([],)),
  (label: "Jury", dates: ([],)),
  (label: "Award Event", dates: ([INFORMATIK 27 (2027-09)],)),
)

#figure(
  timeline-diagram(science-stages, fill-color: rgb("#90EE90")),
  caption: [Process timeline for the Scientific Excellence category],
)

#v(1cm)

== Newcomer category

#let newcomer-stages = (
  (label: "Conference/Public Call", dates: ([deRSE27 Poster\(2027-03)], [])),
  (label: "Filtering", dates: ([Motivation letter \ CV \ Repo statistics],)),
  (label: "Short-list", dates: ([],)),
  (label: "Jury", dates: ([],)),
  (label: "Award Event", dates: ([INFORMATIK 27 (2027-09)],)),
)

#figure(
  timeline-diagram(newcomer-stages, fill-color: rgb("#FFB5E5")),
  caption: [Process timeline for the Newcomer category],
)

= Filtering


#figure(
  table(
    columns: (auto, auto, auto),
    rows: (auto, auto, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm, 1cm),
    align: horizon,
    fill: (x, y) => {
      if y == 0 { none }
      else if y == 1 { rgb("ADD8E6") }
      else if y >= 2 and y <= 5 { rgb("#90EE90") }
      else { rgb("#FFB5E5") }
    },
    table.header[Category][Filter Criteria][Filter Indicators],

    [Artefact Track],
    [-],
    [-],

    table.cell(rowspan: 4)[Scientific Excellence],
    table.cell(rowspan: 2)[Scientific societies],
    [],
    [],
    table.cell(rowspan: 2)[Research impact],
    [Number of citations, \ Number of paper downloads],
    [Ranking of the journal],

    table.cell(rowspan: 5)[Newcomer],
    table.cell(rowspan: 2)[Motivation letter],
    [Relevance of RS for community],
    [CV],
    table.cell(rowspan: 3)[Community Engagement,\ Repo statistics],
    [Stars, Forks, Watch], [Contributor growth, Pull requests], [ Issues, Commit frequency],
    ),
  caption: [Filter system],
)

== Scientific societies 


The general idea for involving scientific societies is to get a high quality evaluation of the _research impact_ criterion by domain experts and to filter down the RS submissions. 

The #link("https://os.helmholtz.de/assets/open_science/user_upload/Software-Award-Criteria-2026.pdf")[Helmholtz Software Award (p. 2)] defines _scientific impact_ as: 

#quote[
  This criterion evaluates the scientific impact of the software. Research software is regarded
as high-impact if it demonstrably contributes substantial value to scientific research. A
software has scientific impact if it e. g. enhances the analytic capabilities of research, or
makes possible efficiency gains of research projects, or makes possible tackling new research
questions. This is demonstrated by citations in in high quality publications or awards.
]

And it uses the following indicators: _Narratives explaining impact, quality and number of citations demonstrating impact, awards._


#underline[Example questions we could address to the scientific societies to measure the _research impact_ of a RS:]

- *Does the RS solve an important problem that has not been solved before or it solves the problem in a new, innovative way?* 

- *Does the RS increase the existing knowledge within the research field?*

- *Does the RS make it possible to tackle new research questions?*

- *How high is the re-use potential of the RS for other researchers to make valuable contributions to the research field in the future?*

- *Does the RS make efficiency gains of research projects possible?*

Each question would be answered on an ordinal scale, eg from 1 (minimum) to 5 (outstanding). 

The scientific society gives a brief justification for each questions' score and an overall assessment for each evaluated RS in the form of a free text.

On top, the following quantitative indicators are also collected to measure the _research impact_:

-  _number of citations_
- _ranking of the journal_ 
- _number of paper downloads_

For each submitted RS the date of the collected indicators must be the same, eg the start of the awards' application period. These indicators could be provided (or not) to the scientific societies for the evaluation. 




= Jury composition & award ceremony

== Jury composition

- "Scientific Excellence" category: Probably 1 jury for each sub-category (4 in total) -> domain knowledge important 

- "Newcomer" category: a sample of the jury people from "Scientific Excellence" category

- How many people? Decision rules?

- Using evaluation system provided by us (see below)

#v(1cm)

#underline[List of relevant people for jury:]
- #link("https://fg-rse.gi.de/fachgruppe/leitungsgremium")[GI RSE Fachgruppe Leitungsgremium]

- deRSE conference orga team; see #link("https://events.hifis.net/event/2945/page/854-organizers")[deRSE26]

- #link("https://www.sub.uni-goettingen.de/en/research/projects/project-details/corses")[CORSES — Collaborative RSE Services project]

- #link("https://find-software.org/#acknowledgements")[find.software project]

- #link("https://dl.acm.org/profile/81387591102")[Ben Hermann], mentioned in a previous AK meeting

#v(1cm)

== Award ceremony 

- idea: INFORMATIK 27 (2027-09)
- invite someone from DFG; see #link("https://www.dfg.de/de/foerderung/foerdermoeglichkeiten/programme/infrastruktur/lis/lis-foerderangebote/forschungssoftwareinfrastrukturen")[DFG Förderprogramm "Forschungssoftwareinfrastrukturen"]

#pagebreak()

= Evaluation criteria and indicators

== Artefact Track and Scientific Excellence

#[
#show figure: set block(breakable: true)
#set text(size: 11pt)
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    rows: (auto, auto, auto),
    table.header([], [Software\ Engineering Level], [Research\ Impact], [Community\ Engagement], [FAIRness\ &\ (Reproducability)], [Maintainability\ &\ Sustainability]),
    [Definition], [This criterion evaluates the adherence to best practices of coding and software engineering principles.], [This criterion evaluates the scientific impact of the research software.], [This criterion evaluates the degree of community engagement to the research software.], [This criterion evalues the adherence to the #link("https://www.nature.com/articles/s41597-022-01710-x")[FAIR4RS] principles, which are part of the Open Science concept.], [This criterion evaluates the long-term stability and maintainability of the research software.], 
    [Indicators],
    [#text(font: "New Computer Modern", style: "italic")[
      Best SE practices (e.g., modularity, readability, efficiency); Software has tests (unit, integration, system tests); Software test coverage (code, branch, threshold, completeness);\ Human code review\ requirement (pull requests)
    ]],
    [#text(font: "New Computer Modern", style: "italic")[
      Number of citations; Ranking of the journal;\ Number of paper downloads
    ]],
    [#text(font: "New Computer Modern", style: "italic")[
      Repo contribution stats (guidelines, contributors, pull requests, commit frequency, issues);\ Repo popularity stats (stars, watch, forks, downloads); \ Active communication channels and documentation pages
    ]],
    [#text(font: "New Computer Modern", style: "italic")[
      CodeMeta completeness; descriptive metadata; license; persistent identifier; archived in Software Heritage/scholarly repo; uses citation; versioning standards; containerized
    ]],
    [#text(font: "New Computer Modern", style: "italic")[
      Repo is active; has releases; up-to-date metadata; has dependency management solution; uses issue tracking system; current phase in the Software Development Life Cycle 
    ]],
    [Sources],
    table.cell(colspan: 5)[Projektantrag, #link("https://everse.software/indicators/website/indicators.html")[EVERSE indicators], #link("https://os.helmholtz.de/assets/open_science/user_upload/Software-Award-Criteria-2026.pdf")[Helmholtz Software Award]],
  ),
  caption: [Evaluation criteria and indicators for the Artefact Track and Scientific Excellence category],
)
]

Each criterion is rated on an ordinal scale, from 1 (minimum) to 5 (outstanding).

#v(1cm)

== Newcomer

#figure(
  table(
    columns: (auto, auto, 1fr),
    rows: (auto, auto, auto),
    fill: rgb("#FFB5E5"),
    [], [Community\ Engagement], [],
    [Definition], [], [],
    [Indicators], [], [],
    [Sources], [], [],
  ),
  caption: [Evaluation criteria and indicators for the Newcomer category],
)

Each criterion is rated on an ordinal scale, from 1 (minimum) to 5 (outstanding). 










// Bibliography with Chicago Author-Date style
// #bibliography("references_adsl_v2.bib", title: "References", style: "chicago-author-date")



//Appendix

#heading(numbering: none)[Appendix]
#set heading(numbering: "A.1.")
#counter(heading).update(0)


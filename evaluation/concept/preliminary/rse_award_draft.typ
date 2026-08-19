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
  font: "New Computer Modern Math",
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
// CONTENT
// ============================================================

= Award categories



#figure(
  table(
    columns: (auto, auto, auto, auto),
    rows: (auto, auto, 1.8cm, 1.8cm, 1.8cm, 1.8cm, auto),
    align: horizon,
    fill: (x, y) => {
      if y == 0 { none }
      else if y == 1 { rgb("ADD8E6") }
      else if y >= 2 and y <= 5 { rgb("#90EE90") }
      else { rgb("#FFB5E5") }
    },
    table.header[Category][Sub-Category][Format][Eligibility],

    [Artefact Track],
    [-],
    [Open call],
    [RS must have an artefact badge from a German or DACH conference],

    table.cell(rowspan: 4)[Scientific Excellence],
    [Humanities and Social Sciences],
    table.cell(rowspan: 4)[Open call],
    table.cell(rowspan: 4)[
      + RS must be published in a scientific peer-reviewed journal

      + Researchers must be affiliated with a German or DACH university/research institution
    ],
    [Life Sciences],
    [Natural Sciences],
    [Engineering],

    [Newcomer],
    [-],
    [Open call],
    [+ PhD (and master) students from a German or DACH university/research institution
    
    + Submission of motivation letter],
  ),
  caption: [Award categories, format and eligibility criteria. RS = Research software],
)


*Open questions*:

- Keeping Artefact Track as a separate category or not? 
  - Could also be a requirement for the "Engineering" sub-category. 
  - From all > 100 GI-Fachgruppen only two German/DACH conferences were found with an artefact evaluation track (DELFI 2026, BTW 2025)


= Process/timeline

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

#let generic-stages = (
  (label: "Conference/Public Call", dates: ([deRSE27 Poster\(2027-03)], [])),
  (label: "Filtering", dates: ([],)),
  (label: "Short-list", dates: ([],)),
  (label: "Jury", dates: ([],)),
  (label: "Award Event", dates: ([INFORMATIK 27 (2027-09)],)),
)

#figure(
  timeline-diagram(generic-stages),
  caption: [Process timeline of the RSE Award, from public call to award event],
)

== Scientific Excellence category

#let science-stages = (
  (label: "Conference/Public Call", dates: ([deRSE27 Poster\(2027-03)], [])),
  (label: "Filtering", dates: ([Scientific societies \ Research impact],)),
  (label: "Short-list", dates: ([],)),
  (label: "Jury", dates: ([],)),
  (label: "Award Event", dates: ([INFORMATIK 27 (2027-09)],)),
)

#figure(
  timeline-diagram(science-stages, fill-color: rgb("#90EE90")),
  caption: [Process timeline for the Scientific Excellence category],
)

*Open questions*:

- Process with scientific societies unclear


== Newcomer category

#let newcomer-stages = (
  (label: "Conference/Public Call", dates: ([deRSE27 Poster\(2027-03)], [])),
  (label: "Filtering", dates: ([Motivation letter \ CV \ GitHub statistics],)),
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
    table.cell(rowspan: 3)[GitHub statistics],
    [Stars, Forks, Watch], [Contributor growth, Pull requests], [ Issues, Commit frequency],
    ),
  caption: [Filter system],
)




= Jury composition

- "Scientific Excellence" category: Probably 1 jury for each sub-category (4 in total) -> domain knowledge important 

- "Newcomer" category: a sample of the jury people from "Scientific Excellence" category

- How many people? Decision rules?

- Using evaluation system provided by us (see below)

= Evaluation criteria and indicators




// Bibliography with Chicago Author-Date style
// #bibliography("references_adsl_v2.bib", title: "References", style: "chicago-author-date")








//Appendix

#heading(numbering: none)[Appendix]
#set heading(numbering: "A.1.")
#counter(heading).update(0)


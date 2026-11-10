#import "@preview/typslides:1.3.4": *


#show: typslides.with(ratio: "16-9", theme: "purply", show-progress: true)


#set page(
  background: context {
    if here().page() == 1 {
      place(
        top + center,
        dy: 1cm,
        grid(
          columns: 3,
          column-gutter: 1cm,
          align: horizon,
          image("images/kts_logo.png", height: 2cm),
          image("images/GI_L.png", height: 2cm),
          image("images/deRSE_logo.png", height: 5cm),
        ),
      )
    }
  },
)

// The front slide is the first slide of your presentation
#front-slide(
  title: "RSE Award",
  subtitle: [Evaluation und Gütekriterien von Forschungssoftware],
  authors: "Fabian Lochner",
  info: "2026-11-11"
)


// Custom outline
#table-of-contents()

// Title slides create new sections
#title-slide[
   Theorie
]

// #slide(title: "1) Theorie", outlined: true)[

// 1. Zu meiner Person?
// 2. Eure Papervorträge (15min)
// 3. Was ist Forschungssoftware? Gruenpeter et al. 
// 4. Kategorisierung von Forschungssoftware:
//   1. EVERSE - #link("https://everse.software/RSQKit/three_tier_view")[three tier model diagram ]
//   2. EVERSE - #link("https://everse.software/RSQKit/life_cycle")[Research Software Lifecycle]
//   3. Hasselbring et al: Multi dimensional categorization of research software (Figure 2)

// 5. Evaluation von Forschungssoftware:
//   1. EVERSE research software quality dimensions and indicators -> obsidian table mapping of dimensions and number of indicators
//   2. nochmal in resqui dimensions/indicators reinschauen
//   3. RSE Award Kategorien
//   4. RSE Award Evaluationssystem

// 6. Lässt sich Evaluation automatisieren? EVERSE: resqui tool
// ]




#slide(title: "1) Theorie")[
  == 1.1) Eure Papervorträge (und Diskussion)
  == 1.2) Kategorisierung von Forschungssoftware
  == 1.3) Evaluation von Forschungssoftware
]

#slide(title: "1.1) Eure Papervorträge")[
  #image("images/literatur-liste.png")
]

#slide(title: "1.2) Kategorisierung von Forschungssoftware: EVERSE 3-tier model")[
  #image("images/everse-tier-model.png")
  #link("https://everse.software/RSQKit/three_tier_view")[Quelle]
]


#slide(title: "1.2.1) EVERSE 3-tier model")[
  #set text(size: 13pt, hyphenate:true)
  #set par(justify: false)

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: 6pt,
  align: left + horizon, 
  table.header(
    [*Tier*], [*Definition*], [*Use Cases*], [*Features*],[*Examples*], [*Quality \ Implications*],
  ),
  [Analysis code],
  [computational research processes \  and methodology],
  [simulation, \ data generation,  preparation, \ analysis and visualisation],
  [personal use, \ scripts, \ small scope],
  [#link("https://github.com/bhigy/discrete-repr")[Discrete representation in neural models]],
  [functionality, reproducability, basic documentation],
  [Prototype tools],
  [grew beyond the project in \ which it originated],
  [answer multiple research questions], 
  [developed and used by multiple people],
  [#link("https://nipype.readthedocs.io/en/latest/")[nipype: neuroimage python library]],
  [maintainability, testing, community interaction],
  [Research software infrastructure],
  [broadly applicable research software],
  [bigger researcher community],
  [large and possibly distributed development team],
  [Jupyter Notebooks/Jupyter Lab, SciPy, NumPy, TensorFlow],
  [security, scalability, sustainability]


)
#link("https://everse.software/RSQKit/three_tier_view")[Quelle]


]


#slide(title: "1.2.2) Research Software Lifecycle")[
  #align(center)[
    #image("images/everse-lifecycle.png", height: 90%)
    #v(-0.5em)  // optional: pulls the link closer to the image
    #text(size: 12pt)[#link("https://everse.software/RSQKit/life_cycle")[Quelle]]
  ]
]


#slide(title: "1.2.3) Quality Implications Across the Lifecycle")[
  #set text(size: 18pt, hyphenate: true)
  #set par(justify: false)

  Different lifecycle stages emphasise different quality dimensions:

  #table(
    columns: (1fr, 2fr),
    inset: 8pt,
    align: left + horizon,
    table.header(
      [*Lifecycle Phase*], [*Quality Focus*],
    ),

    [Planning / Design],
    [functional suitability, compatibility requirements],

    [Development],
    [maintainability, testability, security practices],

    [Release / Deployment],
    [reliability, performance efficiency, FAIR principles],

    [Maintenance / Evolution],
    [sustainability, community engagement],
  )

  #link("https://zenodo.org/records/18861872")[Quelle: EVERSE Reference Framework, Version 2.1]
]

#slide(title: "1.2.4) Kategorisierung nach Hasselbring et al. (2024)")[
  #align(center)[
      #image("images/hasselbring-kategorisierung.png")
    ]
  ]


#slide(title: "1.3) Evaluation von Forschungssoftware")[
  #framed[
    + Welche Dimensionen und Kriterien für die Evaluation?
    + Wie vergleicht man Forschungssoftware aus verschiedenen Tiers und disziplinenübergreifend?
    + ...
  ]
]



#title-slide[
   Praxis
]







// #slide(title: "RSE Award Kategorien", outlined: true)[
//   #set text(lang: "de", size: 14.5pt)
//   #set enum(spacing: 0.55em, indent: 0pt, body-indent: 0.6em)

//   #figure(
//     table(
//       columns: (1.05fr, 2fr, 0.9fr, 3.6fr),
//       align: (left + horizon, left + horizon, left + horizon, left + horizon),
//       inset: 7pt,
//       stroke: 0.8pt + black,

//       table.header[*Kategorie*][*Sub-Kategorie*][*Format*][*Teilnahmevoraussetzungen*],

//       [*Scientific Excellence*],
//       table.cell(inset: 0pt)[
//         #grid(
//           columns: 1fr,
//           inset: (x: 7pt, y: 6pt),
//           [1.1 Geistes- und Sozialwissenschaften],
//           grid.hline(stroke: 0.8pt),
//           [1.2 Lebenswissenschaften],
//           grid.hline(stroke: 0.8pt),
//           [1.3 Natur- und Ingenieurwissenschaften],
//           grid.hline(stroke: 0.8pt),
//           [1.4 Informatik und Beiträge mit Software-Artefakt Badge],
//         )
//       ],
//       [Open Call],
//       [
//         + Die Forschungssoftware muss klar mit einer wissenschaftlichen, peer-reviewed Journal-Publikation verknüpft sein
//         + Mindestens ein*e Forscher*in/Entwickler*in des Teams muss mit einer Universität oder Forschungsinstitution im DACH-Raum verknüpft sein
//         + Nur bei 1.4: Die Forschungssoftware muss einen Software-Artefakt Badge einer wissenschaftlichen Konferenz haben
//       ],

//       [*Newcomer*],
//       [],
//       [Open Call],
//       [
//         + PhD- und Masterstudierende einer DACH-Universität/Forschungsinstitution
//         + Einreichung eines Motivationsschreibens
//       ],
//     ),
//     caption: [RSE Award Kategorien, Format und Teilnahmevoraussetzungen],
//   )
// ]

// #title-slide[
//    Timeline
// ]



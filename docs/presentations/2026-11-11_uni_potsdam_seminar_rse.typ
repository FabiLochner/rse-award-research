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
// 3. Helmholtz Software Award Kategorien + Evaluationssystem
//   3. RSE Award Kategorien
//   4. RSE Award Evaluationssystem

// 6. Lässt sich Evaluation automatisieren? EVERSE: resqui tool
// ]




#slide(title: "1) Theorie")[
  == 1.1) Eure Papervorträge (und Diskussion)
  == 1.2) Kategorisierung von Forschungssoftware
  == 1.3) Evaluation von Forschungssoftware
]

#slide(title: "1.1) Eure Papervorträge", outlined: true)[
  #image("images/literatur-liste.png")
]

#slide(title: "1.2) Kategorisierung von Forschungssoftware", outlined: true)[
  #image("images/everse-tier-model.png")
  #link("https://everse.software/RSQKit/three_tier_view")[EVERSE 3-tier model]
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


#slide(title: "1.3) Evaluation von Forschungssoftware", outlined: true)[
  #framed[
    + Welche Dimensionen und Kriterien für die Evaluation?
    + Wie vergleicht man Forschungssoftware aus verschiedenen Tiers und disziplinenübergreifend?
    + ...
  ]
]

#slide(title: "1.3.1) EVERSE: Research Software Quality Dimensions and Indicators")[
  #set text(size: 13pt, hyphenate:true)
  #set par(justify: false)

#table(
  columns: (auto, auto, auto),
  inset: 6pt, 
  align: left + horizon,
  table.header(
    [*Dimension*], [*Description*], [*Number of Indicators*],
  ),
  // Counts = indicators on everse.software/indicators/website/indicators.html
  // whose "Quality Dimension" column lists the dimension (47 indicators in total;
  // one indicator can belong to several dimensions, so the column sums to 68).
  // Sorted by number of indicators (descending); ties in alphabetical order.
  [FAIRness], [Findable, Accessible, Interoperable, Reusable], [21],
  [Maintainability], [Modularity, Reusability, Analysability, Modifiability, Testability], [19],
  [Security], [Confidentiality, Integrity, Resistance etc.], [5],
  [Community],
  [active communities of contributors, users, and stakeholders],
  [4],
  [Functional suitability], [Functional completeness, correctness and appropriateness], [4],
  [Open Source Software], [Open source software], [4],
  // 3 indicators link "sustainability"; 1 more (container build file) links the misspelled "susatinability"
  [Sustainability], [The capacity of the software to endure], [4],
  [Flexibility], [Adaptability, Scalability, Installability, Replaceability], [2],
  [Reliability], [Faultlessness, Availability, Fault tolerance, Recoverability], [2],
  [Compatibility], [Co-existence, Interoperability], [1],
  [Interaction Capability], [Inclusivity, User assistance etc.], [1],
  [Safety], [Risk identification, Hazard warning etc.], [1],
  [Performance Efficiency], [Time behaviour, Resource utilization, Capacity], [0],
)

Quellen (abgerufen am 11.11.2026): \
#link("https://everse.software/indicators/website/dimensions.html")[EVERSE: Research Software Quality Dimensions] \
#link("https://everse.software/indicators/website/indicators.html")[EVERSE: Research Software Quality Indicators]

]



#slide(title: "1.3.2) Helmholtz Software Award")[
  #set text(size: 13pt, hyphenate:true)
  #set par(justify: false)

*Award Categories*:
Best Scientific Software, Sustainability, Newcomer 


#table(
  columns: (auto, auto, auto),
  inset: 6pt, 
  align: horizon,
  table.header(
    [*Criteria*], [*Definition*], [*Indicators*],
  ),
  [Scientific Impact],
  [Value of software to scientific research],
  [Quality and number of journal citations],
  [Use and Adoption within the Community],
  [The extent to which the software is used and adopted by the scientific target community],
  [references in papers, download statistics, GitHub stars],
  [Software Engineering Level],
  [High-quality engineering ensures maintainability, reproducibility, and reliability, long-term sustainability and ease of use],
  [Adherence to best practices, development proccess, test automation, continuous integration etc.],
  [Implementation of FAIR4RS and Open Science Principles],
  [The FAIR4RS principles ensure that scientific software and its reference data can be efficiently used, cited, and maintained],
  [Quality of metadata, continuity of release citations, re-use potential etc.],
  [Young Software with High Growth Rate],
  [Young but rapidly growing software may not yet have an extensive user base but shows strong momentum],
  [Git statistics, user feedback, community interest etc.]



)
]


#slide(title: "1.3.3) RSE Award Prototype 1: Kategorien")[
  #set text(lang: "de", size: 14.5pt)
  #set enum(spacing: 0.55em, indent: 0pt, body-indent: 0.6em)

  #figure(
    table(
      columns: (1.05fr, 2fr, 0.9fr, 3.6fr),
      align: (left + horizon, left + horizon, left + horizon, left + horizon),
      inset: 7pt,
      stroke: 0.8pt + black,

      table.header[*Kategorie*][*Sub-Kategorie*][*Format*][*Teilnahmevoraussetzungen*],

      [*Scientific Excellence*],
      table.cell(inset: 0pt)[
        #grid(
          columns: 1fr,
          inset: (x: 7pt, y: 6pt),
          [1.1 Geistes- und Sozialwissenschaften],
          grid.hline(stroke: 0.8pt),
          [1.2 Lebenswissenschaften],
          grid.hline(stroke: 0.8pt),
          [1.3 Natur- und Ingenieurwissenschaften],
          grid.hline(stroke: 0.8pt),
          [1.4 Informatik und Beiträge mit Software-Artefakt Badge],
          grid.hline(stroke: 0.8pt),
          [1.5 Interdisziplinäre Forschungssoftware/Software Paper]
        )
      ],
      [Open Call],
      [
        + Die Forschungssoftware muss klar mit einer wissenschaftlichen, peer-reviewed Journal-Publikation verknüpft sein
        + Mindestens ein*e Forscher*in/Entwickler*in des Teams muss mit einer Universität oder Forschungsinstitution im DACH-Raum verknüpft sein
        + Nur bei 1.4: Die Forschungssoftware muss einen Software-Artefakt Badge einer wissenschaftlichen Konferenz haben
      ],

      [*Newcomer*],
      [],
      [Open Call],
      [
        + PhD- und Masterstudierende einer DACH-Universität/Forschungsinstitution
        + Einreichung eines Motivationsschreibens
      ],
    ),
  )
]

#slide(title: "1.3.4) RSE Award Prototype 1: Jury - Bewertungssystem")[
  #set text(lang: "de", size: 11pt)
  #set par(justify: false)

  #figure(
    table(
      columns: (0.95fr, 1.45fr, 1.4fr, 1.7fr, 1.7fr, 1.7fr),
      align: left + top,
      inset: 5pt,
      stroke: 0.8pt + black,

      table.header(
        [],
        [*Software\ Engineering Level*],
        [*Research\ Impact*],
        [*Community\ Engagement*],
        [*FAIRness\ & (Reproducibility)*],
        [*Maintainability\ & Sustainability*],
      ),

      [*Definition*],
      [Dieses Kriterium bewertet die Einhaltung der Best Practices im Bereich des Software Engineerings],
      [Dieses Kriterium bewertet die wissenschaftliche Relevanz],
      [Dieses Kriterium bewertet den Grad des Engagements der Community für die Forschungssoftware],
      [Dieses Kriterium bewertet die Einhaltung der FAIR4RS-Prinzipien],
      [Dieses Kriterium bewertet die langfristige Stabilität und Wartbarkeit der Forschungssoftware],

      [*Indikatoren*],
      [Bewährte SE-Verfahren (z. B. Modularität, Lesbarkeit); Tests (Unit-, Integrations-, Systemtests); Testabdeckung; manuelle Codeüberprüfung (Pull-Requests)],
      [Bewertung durch Fachgesellschaften],
      [Repo-Beiträge (Mitwirkende, Pull-Anfragen, Commit-Häufigkeit, Issues); Repo-Beliebtheit (Stars, Forks, Downloads); Kommunikationskanäle und Dokumentation],
      [CodeMeta-Vollständigkeit; Lizenz; permanenter Identifikator; archiviert in Software Heritage bzw. wissenschaftlichem Repositorium; Zitierangaben; containerisiert],
      [Repo ist aktiv; Veröffentlichungen; aktuelle Metadaten; Abhängigkeitsverwaltung; Issue-Tracking-System; Phase im Software Development Life Cycle],

      [*Quellen*],
      table.cell(colspan: 5)[
        RSE Award Projektantrag,
        #link("https://everse.software/indicators/website/indicators.html")[EVERSE indicators],
        #link("https://os.helmholtz.de/assets/open_science/user_upload/Software-Award-Criteria-2026.pdf")[Helmholtz Software Award]
      ],
    ),
    caption: [
      Bewertungskriterien und Indikatoren. In der Kategorie *Scientific Excellence* gelten alle fünf Kriterien,
      in der Kategorie *Newcomer* nur #emph[Software Engineering Level], #emph[Community Engagement] und #emph[FAIRness].
    ],
  )
  #v(0.2em)
  #set text(size: 11pt)
  #list(
    spacing: 0.5em,
    [Jedes Kriterium wird auf einer Ordinalskala von *1* (minimal) bis *5* (hervorragend) bewertet.],
    [In jeder (Sub-)Kategorie erhält das Projekt mit der höchsten Gesamtpunktzahl den *Scientific Excellence* bzw. *Newcomer Award*.],
  )
]



#title-slide[
   Praxis
]


#slide(title: "2.1) EVERSE Software Quality Pipelines: resqui tool", outlined: true)[]




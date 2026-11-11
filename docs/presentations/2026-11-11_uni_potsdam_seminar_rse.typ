#import "@preview/typslides:1.3.4": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge


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

// "Zu meiner Person": dual structure (two jobs) drawn with fletcher
#let c-gi = rgb("#8b2a6e")   // job 1: GI / RSE Award (matches the purply theme)
#let c-uol = rgb("#1f6f8b")  // job 2: University of Oldenburg

// small rounded label ("chip") in the colour of its job
#let chip(color, body) = box(
  fill: color.lighten(85%),
  stroke: 0.6pt + color,
  radius: 4pt,
  inset: (x: 6pt, y: 3.5pt),
  body,
)

// one job card: coloured banner on top (= the focus), details below
#let job-card(color, focus, org, role, body, mail) = box(
  width: 120mm,
  radius: 6pt,
  stroke: 1.2pt + color,
  clip: true,
  // stack + fixed-height details box (a flexible 1fr grid row confuses fletcher's arrow routing)
  stack(
    // banner with the focus of the job
    box(width: 100%, fill: color, inset: (x: 10pt, y: 8pt))[
      #set text(fill: white)
      #text(size: 1.15em, weight: "bold")[#focus]
    ],
    // details
    box(width: 100%, height: 62mm, inset: 10pt)[  // fixed height: both cards equally tall
      #set align(left)
      #show link: set text(fill: color)
      *#org* \
      #role \
      #v(0.5em)
      #body
      #v(0.5em)
      #text(size: 0.9em)[E-Mail: #link("mailto:" + mail)[#text(fill: color)[#mail]]]
    ],
  ),
)

#title-slide[
   Zu meiner Person
]

#slide(title: "Zu meiner Person")[
#set text(size: 0.62em)

#align(center)[
#diagram(
  spacing: (14mm, 20mm),  // gap between the nodes (not between their centres)
  node-stroke: none,
  edge-stroke: 1.6pt,

  // top: the person
  node((0.5, 0), corner-radius: 8pt, fill: luma(95%), stroke: 1pt + luma(60%), inset: 10pt)[
    #text(size: 1.4em, weight: "bold")[Fabian Lochner] \
    M.Sc. Social Data Science (Kopenhagen) 
  ],

  // left: job 1 (evaluation of research software)
  node((0, 1))[
    #job-card(
      c-gi,
      [Evaluation von Forschungssoftware],
      [Gesellschaft für Informatik e.V., Berlin],
      [Projekt RSE Award],
      [
        Gute Praxis sichtbar machen und exzellente Forschungssoftware auszeichnen, gemeinsam mit de-RSE e.V., gefördert von der Klaus Tschira Stiftung
        #v(0.5em)
        #set text(size: 0.9em)
        #chip(c-gi)[Evaluation] #chip(c-gi)[RSE-Forschung]
      ],
      "fabian.lochner@gi.de",
    )
  ],

  // right: job 2 (development of research software)
  node((1, 1))[
    #job-card(
      c-uol,
      [Entwicklung von Forschungssoftware],
      [Universität Oldenburg, Digital Social Science],
      [Wiss. MA, Projekt RobustifAI],
      [
        Computational Social Science: Forschungssoftware an der Schnittstelle von
        #v(0.5em)
        #set text(size: 0.9em)
        #grid(
          columns: (auto, auto, auto, auto, auto),
          column-gutter: 4pt,
          align: center + horizon,
          chip(c-uol)[Textdaten], [+], chip(c-uol)[Knowledge Graphs/Ontologien], [+], chip(c-uol)[LLM-Agenten],
        )
      ],
      "fabian.lochner@uol.de",
    )
  ],

  // connections from the person to both jobs
  edge((0.5, 0), (0, 1), "-|>", stroke: 1.6pt + c-gi),
  edge((0.5, 0), (1, 1), "-|>", stroke: 1.6pt + c-uol),
)
]
]

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




#slide(title: "2) Theorie")[
  == 2.1) Eure Papervorträge (und Diskussion)
  == 2.2) Kategorisierung von Forschungssoftware
  == 2.3) Evaluation von Forschungssoftware
]

#slide(title: "2.1) Eure Papervorträge", outlined: true)[
  #image("images/literatur-liste.png")
]

#slide(title: "2.2) Kategorisierung von Forschungssoftware", outlined: true)[
  #image("images/everse-tier-model.png")
  #link("https://everse.software/RSQKit/three_tier_view")[EVERSE 3-tier model]
]


#slide(title: "2.2.1) EVERSE 3-tier model")[
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


#slide(title: "2.2.2) Research Software Lifecycle")[
  #align(center)[
    #image("images/everse-lifecycle.png", height: 90%)
    #v(-0.5em)  // optional: pulls the link closer to the image
    #text(size: 12pt)[#link("https://everse.software/RSQKit/life_cycle")[Quelle]]
  ]
]


#slide(title: "2.2.3) Quality Implications Across the Lifecycle")[
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

#slide(title: "2.2.4) Kategorisierung nach Hasselbring et al. (2024)")[
  #align(center)[
      #image("images/hasselbring-kategorisierung.png")
    ]
  ]


#slide(title: "2.3) Evaluation von Forschungssoftware", outlined: true)[
  #framed[
    + Welche Dimensionen und Kriterien für die Evaluation?
    + Wie vergleicht man Forschungssoftware aus verschiedenen Tiers und disziplinenübergreifend?
    + ...
  ]
]

#slide(title: "2.3.1) EVERSE: Research Software Quality Dimensions and Indicators")[
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



#slide(title: "2.3.2) Helmholtz Software Award")[
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


#slide(title: "2.3.3) RSE Award Prototype 1: Kategorien")[
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

#slide(title: "2.3.4) RSE Award Prototype 1: Jury - Bewertungssystem")[
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
   Praxis (resqui tool)
]


#slide(title: "3.1) EVERSE Software Quality Pipelines: resqui tool")[

#image("images/resqui.png", height: 80%)


#text(size: 0.7em)[
  Repository: #link("https://github.com/EVERSE-ResearchSoftware/QualityPipelines")[github.com/EVERSE-ResearchSoftware/QualityPipelines] \
  Dokumentation: #link("https://everse.software/QualityPipelines/")[everse.software/QualityPipelines]
]


]

#slide(title: "3.2) resqui: configuration files")[
  #image("images/resqui-configs.png", height: 90%)


  #text(size: 0.7em)[
    #link("https://github.com/EVERSE-ResearchSoftware/QualityPipelines/tree/main/configurations")
  ]
]

#slide(title: "3.3) resqui: Indicator coverage per dimension")[

#set text(size: 0.7em)
#table(
  columns: (1fr, auto, auto, auto, auto),
  inset: (x: 6pt, y: 3pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  table.header(
    [*Dimension*], [*Number of Indicators*], [*Implemented*], [*Not implemented*], [*Coverage*],
  ),
  [FAIRness], [21], [14], [7], [67%],
  [Maintainability], [19], [11], [8], [58%],
  [Security], [5], [5], [0], [100%],
  [Community], [4], [1], [3], [25%],
  [Functional suitability], [4], [1], [3], [25%],
  [Open Source Software], [4], [1], [3], [25%],
  [Sustainability], [4], [3], [1], [75%],
  [Flexibility], [2], [2], [0], [100%],
  [Reliability], [2], [1], [1], [50%],
  [Compatibility], [1], [1], [0], [100%],
  [Interaction Capability], [1], [1], [0], [100%],
  [Safety], [1], [1], [0], [100%],
  [Performance Efficiency], [0], [0], [0], [n/a],
  table.hline(stroke: 1.5pt),
  [*Sum of dimension tags*], [*68*], [*42*], [*26*], [*62%*],
)

Note: Some indicators are mapped to more than one dimension. \
Status: 11.11.2026, #link("https://github.com/EVERSE-ResearchSoftware/QualityPipelines/blob/main/configurations/complete.json")[resqui: complete.json]
]

#slide(title: "3.4) resqui: Not (yet) implemented indicators")[

#set text(size: 0.7em)
#table(
  columns: (auto, auto, 1fr),
  inset: (x: 6pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon),
  table.header(
    [*Dimension*], [*Count*], [*Indicators*],
  ),
  [Maintainability], [8],
  [code_churn_ok, code_smells_ok, lines_of_code_ok, code_documentation_coverage_ok, uses_tool_for_warnings_and_mistakes, metadata_is_up_to_date, has_active_communication_channels, support_issue_tracking],
  [FAIRness], [7],
  [archived_in_scholarly_repository, codemeta_completeness, software_has_license_for_file_types, metadata_is_up_to_date, passed_tests_ok, code_documentation_coverage_ok, uses_tool_for_warnings_and_mistakes],
  [Community], [3], [has_active_communication_channels, has_active_contributors, response_timeframe_ok],
  [Open Source Software], [3], [has_active_communication_channels, has_active_contributors, response_timeframe_ok],
  [Functional suitability], [3], [passed_tests_ok, functional_correctness, software_test_coverage],
  [Reliability], [1], [software_test_coverage],
  [Sustainability], [1], [software_test_coverage],
)

Note: An indicator can be mapped to more than one dimension. Status: 11.11.2026
]



#slide(title: "3.5) resqui: initial test (2026-09-09) - quantiative results")[
#set text(size: 0.85em)

#table(
  columns: (auto, auto, auto),
  inset: 10pt, 
  align: horizon,
  table.header(
    [*Config*], [*Repo*], [*Passed indicators*],
  ),
  [complete_deduplicated_nolint.json],
  [#link("https://github.com/FabiLochner/kg-digital-humanities")[kg-digital-humanities]],
  [14/32], 
  [complete_deduplicated_nolint.json],
  [#link("https://github.com/juliandehne/lni_study/tree/main")[lni_study]],
  [10/32],
  [complete_deduplicated_nolint.json],
  [#link("https://github.com/microsoft/graphrag")[graphrag]],
  [19/32],
  [complete_deduplicated_nolint.json],
  [#link("https://github.com/Deep-MI/FastSurfer")[FastSurfer]],
  [17/32],
  [complete_deduplicated_nolint.json],
  [#link("https://github.com/stair-lab/kg-gen")[kg-gen]],
  [13/32]

)

]

#slide(title: "3.6) resqui: initial test (2026-09-09) - qualitative results")[
#set text(size: 0.6em)
#set list(spacing: 0.4em)

#table(
  columns: (auto, 1fr, 1.5fr),
  inset: (x: 6pt, y: 3.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  table.header(
    [*Theme*], [*Finding*], [*Example*],
  ),

  [*1) Consistency*],
  [Same indicator, different plugins: contradicting results. Evidence quality varies (RSFC detailed, OEBFAIR only "Found ...")],
  [
    - descriptive_metadata: RSFC false vs. OEBFAIR true (correct one unclear)
    - persistent_and_unique_identifier: RSFC false vs. OEBFAIR true (RSFC correct)
    - has_package: OpenSSF Scorecard false vs. OEBFAIR true (OpenSSF correct)
    - Consistent: has_documentation, has_license, has_citation
  ],

  [*2) Validity*],
  [Proxy checks (file and folder names) instead of content analysis; only GitHub and GitLab],
  [
    - software_has_tests = true, only because of a notebook name and an empty "test" folder
    - has_contribution_guidelines: probably only checks that a file exists
    - version_control_use: Codeberg etc. not considered
  ],

  [*3) Strictness*],
  [All sub-checks must pass, some never succeed: false negatives],
  [descriptive_metadata = false for all four repos ("Languages", "Date Created" never found, although present in FastSurfer's pyproject.toml)],

  [*4) Verifiability*],
  [Verdicts hard to verify; identical results across repos],
  [Gitleaks "insecure" hard to verify; no_critical_vulnerability = false for all four repos],
)

Analysis based on own repo's (#link("https://github.com/FabiLochner/kg-digital-humanities")[kg-digital-humanities]) results
]



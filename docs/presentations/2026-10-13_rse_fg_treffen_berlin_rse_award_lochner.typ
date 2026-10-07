#import "@preview/typslides:1.3.4": *
#import "@preview/fletcher:0.5.8": diagram, node, edge
#import "@preview/tiaoma:0.3.0": qrcode   // oben bei den anderen Imports


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
 // subtitle: [Einführung in die Statistik mit Python],
  authors: "Fabian Lochner",
  info: "2026-10-13"
)


// Custom outline
#table-of-contents()

// // Title slides create new sections
// #title-slide[
//    Award Kategorien
// ]

#slide(title: "RSE Award Kategorien", outlined: true)[
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
    caption: [RSE Award Kategorien, Format und Teilnahmevoraussetzungen],
  )
]

// #title-slide[
//    Timeline
// ]


// Steps: (number, heading above, detail below)
#let steps = (
  ("1", "Public Call", "deRSE27 Poster\n(2027-02)"),
  ("2", "Filtering", "Fachgesellschaften\n(Wiss. Relevanz)"),
  ("3", "Jury", ""),
  ("4", "Award Event", "INFORMATIK 27\n(2027-09)"),
)

#let process-timeline(
  accent: rgb("#862A70"),                 // same purple as the purply theme
  light: rgb("#862A70").lighten(88%),     // pale fill for bubbles 1-3
  text-color: rgb("#2b1a27"),             // dark text with a slight purple tint
) = {
  let n = steps.len()
  let d = diagram(
    spacing: (2.5em, 3.2em),
    node-inset: 0pt,
    // connecting line (drawn first, so bubbles sit on top)
    ..range(n - 1).map(i => edge((i, 0), (i + 1, 0), "-|>", stroke: 2.5pt + accent.lighten(35%), mark-scale: 80%)),
    // bubbles with step number
    ..steps.enumerate().map(((i, s)) => node(
      (i, 0), shape: circle, inset: 0pt, width: 3.2em, height: 3.2em,
      fill: if i == n - 1 { accent } else { light },
      stroke: 2.5pt + accent,
      text(fill: if i == n - 1 { white } else { accent }, weight: "bold", size: 1.3em, s.at(0)),
    )),
    // headings above
    ..steps.enumerate().map(((i, s)) => node(
      (i, -1), stroke: none,
      align(center, box(width: 9em, text(weight: "bold", fill: text-color, size: 1.05em, s.at(1)))),
    )),
    // details below
    ..steps.enumerate().filter(((i, s)) => s.at(2) != "").map(((i, s)) => node(
      (i, 1), stroke: none,
      align(center, box(width: 9em, text(style: "italic", fill: text-color.lighten(25%), size: 0.85em, s.at(2)))),
    )),
  )
  layout(size => context {
    let w = measure(d).width
    if w > size.width * 0.94 { scale(size.width * 0.94 / w * 100%, reflow: true, d) } else { d }
  })
}


#slide(title: "Timeline", outlined: true)[
  === Kategorie 'Scientific Excellence'
  #v(1.2em)
  #align(center)[#process-timeline()]
]


// #title-slide[
//    Fachgesellschaften
// ]

#slide(title: "Fachgesellschaften", outlined: true)[
  #set text(lang: "de", size: 12.5pt)

  #figure(
    table(
      columns: (1.9fr, 1.75fr, 3.3fr, 1.5fr),
      align: left + horizon,
      inset: 6pt,
      stroke: 0.8pt + black,

      table.header[*Wissenschaftsbereich*][*Fachgebiet*][*Dachverband/Fachgesellschaft*][*Fach*],

      // Geistes- und Sozialwissenschaften
      table.cell(rowspan: 2)[*Geistes- und Sozialwissenschaften*],
      [Geisteswissenschaften],
      [#link("https://digitalhumanities.de/")[Verband "Digital Humanities im deutschsprachigen Raum"]],
      [Digital Humanities],

      [Sozial- und Verhaltenswissenschaften],
      [#link("https://www.dgps.de/")[Deutsche Gesellschaft für Psychologie e.V.]],
      [Psychologie],

      // Lebenswissenschaften
      table.cell(rowspan: 2)[*Lebenswissenschaften*],
      [Medizin],
      [#link("https://www.awmf.org/")[Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften e.V. (AWMF)]],
      [Medizin],

      [Medizin],
      [#link("https://nwg-info.de/de")[Neurowissenschaftliche Gesellschaft e.V. (NWG)]],
      [Neurowissenschaften],

      // Naturwissenschaften
      table.cell(rowspan: 2)[*Naturwissenschaften*],
      [Physik],
      [#link("https://www.dpg-physik.de/")[Deutsche Physikalische Gesellschaft e.V. (DPG)]],
      [Physik],

      [Mathematik],
      [#link("https://www.mathematik.de/")[Deutsche Mathematiker-Vereinigung e.V. (DMV)]],
      [Mathematik],

      // Ingenieurwissenschaften / Informatik
      table.cell(rowspan: 2)[*Ingenieurwissenschaften/ Informatik*],
      [Materialwissenschaft und Werkstofftechnik],
      [#link("https://dgm.de/")[Deutsche Gesellschaft für Materialkunde e.V. (DGM)]],
      [Materialwissenschaft],

      [Informatik, System- und Elektrotechnik],
      [#link("https://gi.de/")[Gesellschaft für Informatik e.V. (GI)]],
      [Informatik],
    ),
    caption: [
      Auswahl von Fachgesellschaften je #link("https://www.dfg.de/de/foerderung/antrag-foerderprozess/interdisziplinaritaet/faecherstruktur")[DFG-Wissenschaftsbereich]. Die vollständige Tabelle findet sich im 
      #link("https://github.com/FabiLochner/rse-award-research/blob/main/scientific-societies/results/scientific_societies_dachverb%C3%A4nde_fachgesellschaften_outreach.md")[GitHub-Repository].
    ],
  )
]


#slide(title: "Fachgesellschaften: Bewertung")[
  #set text(lang: "de", size: 16pt)
  #set enum(spacing: 0.6em, body-indent: 0.5em)

  #cols(columns: (2.1fr, 1fr), gutter: 0.6em)[
    #framed[
      Beispielfragen zur Messung der #emph[wissenschaftlichen Relevanz]:

      + Löst die Forschungssoftware ein wichtiges, bisher ungelöstes Problem oder löst sie ein bekanntes Problem auf neue, innovative Weise?
      + Erweitert die Forschungssoftware den bestehenden Wissensstand innerhalb des Forschungsgebiets?
      + Ermöglicht die Forschungssoftware die Auseinandersetzung mit neuen Forschungsfragen?
      + Wie hoch ist das Reuse-Potenzial der Forschungssoftware für andere Forscher?
      + Ermöglicht die Forschungssoftware Effizienzsteigerungen bei Forschungsprojekten?
    ]
  ][
    #framed(title: "Bewertung")[
      *Skala:* Ordinalskala je Frage von *1* (minimal) bis *5* (hervorragend)

      #v(0.3em)
      *Begründung:* kurze Begründung je Frage sowie Gesamtbewertung je Forschungssoftware als Freitext
    ]
  ]
]





// #title-slide[
//    Jury - Bewertungssystem
// ]


#slide(title: "Jury - Bewertungssystem", outlined: true)[
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

// #title-slide[
//    Jury - Zusammensetzung
// ]


// ---------- Farben (passend zum purply-Theme) ----------
#let accent = rgb("#862A70")
#let light = accent.lighten(88%)
#let ink = rgb("#2b1a27")

// Skaliert ein Diagramm bei Bedarf auf die verfügbare Breite
#let fit(d) = layout(size => context {
  let w = measure(d).width
  if w > size.width { scale(size.width / w * 100%, reflow: true, d) } else { d }
})

// Standard-Knoten
#let box-node(pos, body, filled: false, w: auto, inset: 6pt) = node(
  pos, if filled { text(fill: white, body) } else { body }, shape: rect, corner-radius: 5pt, width: w, inset: inset,
  fill: if filled { accent } else { light },
  stroke: 1.5pt + accent,
)

// Spaltenüberschrift ohne Rahmen
#let col-label(pos, body, color: accent) = node(pos, text(size: 10.5pt, weight: "bold", fill: color, body), stroke: none, fill: none)

// Pfeil-Stil
#let arrow = 1.5pt + accent.lighten(25%)

#slide(title: "Jury - Zusammensetzung (Offene Diskussion)", outlined: true)[
  #set text(lang: "de", size: 13pt, fill: ink)
  #set par(justify: false)

  // --- Spektrum: Fachexpertise <-> technische Expertise ---
  #align(center)[
    #fit(diagram(
      spacing: (13em, 0pt),
      node-inset: 6pt,
      box-node((0, 0), [*Fachexpertise* (Domain-Wissen)]),
      edge((0, 0), (1, 0), "<|-|>", stroke: 2.2pt + accent, label: text(size: 12pt, style: "italic")[Wie wichtig ist was?], label-side: left, label-sep: 0.3em),
      box-node((1, 0), [*Technische Expertise* (Software Engineering)]),
    ))
  ]

  #v(0.3em)

  // --- Zwei Varianten nebeneinander ---
  #grid(
    columns: (1.4fr, 1fr),
    column-gutter: 0.8em,

    // Variante 1
    block(width: 100%, height: 6.4cm, stroke: 1.2pt + accent, radius: 6pt, inset: 8pt)[
      #text(weight: "bold", fill: accent, size: 14pt)[Variante 1: Jury nach Disziplinen]
      #v(1fr)
      #fit(diagram(
        spacing: (2.2em, 0.8em),
        node-inset: 4pt,

        // Spaltenüberschriften
        col-label((0, -0.9), [Wissenschaftsbereich]),
        col-label((1, -0.9), [Scientific Excellence], color: black),

        // Wissenschaftsbereiche
        box-node((0, 0), text(size: 11pt)[1.1 Geistes- & Sozialwiss.], w: 11.5em, inset: 4pt),
        box-node((0, 1), text(size: 11pt)[1.2 Lebenswissenschaften], w: 11.5em, inset: 4pt),
        box-node((0, 2), text(size: 11pt)[1.3 Natur- & Ingenieurwiss.], w: 11.5em, inset: 4pt),
        box-node((0, 3), text(size: 11pt)[1.4 Informatik], w: 11.5em, inset: 4pt),

        // je ein Pfeil in eine eigene, schmale Jury-Box
        edge((0, 0), (1, 0), "-|>", stroke: arrow),
        edge((0, 1), (1, 1), "-|>", stroke: arrow),
        edge((0, 2), (1, 2), "-|>", stroke: arrow),
        edge((0, 3), (1, 3), "-|>", stroke: arrow),

        box-node((1, 0), text(size: 10.5pt)[Interdisziplinäre Jury], filled: true, w: 9em, inset: 4.5pt),
        box-node((1, 1), text(size: 10.5pt)[Interdisziplinäre Jury], filled: true, w: 9em, inset: 4.5pt),
        box-node((1, 2), text(size: 10.5pt)[Interdisziplinäre Jury], filled: true, w: 9em, inset: 4.5pt),
        box-node((1, 3), text(size: 10.5pt)[Interdisziplinäre Jury], filled: true, w: 9em, inset: 4.5pt),

        // von jeder der vier Juries ein Pfeil in den Newcomer-Kasten
        edge((1, 0), (2, 1.5), "--|>", stroke: (paint: accent, thickness: 1.5pt, dash: "dashed")),
        edge((1, 1), (2, 1.5), "--|>", stroke: (paint: accent, thickness: 1.5pt, dash: "dashed")),
        edge((1, 2), (2, 1.5), "--|>", stroke: (paint: accent, thickness: 1.5pt, dash: "dashed")),
        edge((1, 3), (2, 1.5), "--|>", stroke: (paint: accent, thickness: 1.5pt, dash: "dashed")),

        box-node((2, 1.5), text(size: 11pt)[*Newcomer*\ Sample aus 4 bestehenden Juries], w: 8em),
      ))
      #v(1fr)
    ],

    // Variante 2
    block(width: 100%, height: 6.4cm, stroke: 1.2pt + accent, radius: 6pt, inset: 8pt)[
      #text(weight: "bold", fill: accent, size: 14pt)[Variante 2: RSE-Jury]
      #v(1fr)
      #fit(diagram(
        spacing: (2.4em, 1.1em),
        node-inset: 5pt,
        box-node((0, 1), text(size: 12pt)[RSE-Fachleute mit hoher technischer Expertise], filled: true, w: 9.5em),
        edge((0, 1), (1, 0), "-|>", stroke: arrow),
        edge((0, 1), (1, 2), "-|>", stroke: arrow),
        box-node((1, 0), text(size: 12pt)[*Scientific Excellence*], w: 8.5em),
        box-node((1, 2), text(size: 12pt)[*Newcomer*], w: 8.5em),
      ))
      #v(1fr)
    ],
  )

  #v(0.4em)

  // --- Diskussionsfrage ---
  #block(width: 100%, fill: accent, radius: 6pt, inset: 8pt)[
    #set text(fill: white, size: 14pt)
    *Diskussion:* 
    
    Wie wichtig ist Fachexpertise vs. technische Expertise für die Evaluation der Forschungssoftware, insbesondere für die *Scientic Excellence* Awards?
  ]
]


#slide(title: "Eure Teilnahme (Google Docs)", outlined: true)[
  === RSE Award Konzept in Google Docs
  #v(2em)
  #set text(lang: "de", size: 18pt)
  #align(center + horizon)[
    #qrcode("https://docs.google.com/document/d/1EpxxsSj0-A9TplJfq0X0v54bgSwvzFEVAJ4CO7qamP8/edit?usp=sharing", width: 6cm)

    #v(0.5em)
    Scannen, um das Dokument in Google Docs zu öffnen

    #link("https://docs.google.com/document/d/1EpxxsSj0-A9TplJfq0X0v54bgSwvzFEVAJ4CO7qamP8/edit?usp=sharing")[Dokument in Google Docs öffnen]
  ]
]
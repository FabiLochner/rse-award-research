#import "@preview/typslides:1.3.4": *
#import "@preview/fletcher:0.5.8": diagram, node, edge

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

// #title-slide[
//    Jury - Zusammensetzung
// ]


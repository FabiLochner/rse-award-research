- model configurations:
	- llm: claude sonnet 5 (claude code)
	- thinking effort: extra high

# 1) Prompt

https://events.hifis.net/event/2945/timetable/#all

Deine Aufgabe ist es, das Programm der deRSE26 (vgl. Link oben) durchzugehen und für jedes einzelne Event den Vortragenden, seine/ihre Affiliation (zB Universität, Institution) und am wichtigsten: die Disziplin, wozu der Vortrag/Inhalt am besten passt (zB Physik, Ingenieurswissenschaften etc.) zusammenzutragen. Das Ziel ist einen Überblick über die disziplinäre Verteilung der Forschungssoftware auf der deRSE26 zu bekommen und abzugleichen, ob ich die wichtigsten Fachgesellschaften, siehe @scientific-societies/research/automated/claude/claude_research_output_fachgesellschaften_2026-08-04.csv und Dachverbände, siehe @scientific-societies/research/automated/claude/claude_research_output_dachverbände_2026-08-04.csv  pro DFG Wissenschaftsbereich bzw. Fachgebiet, siehe @scientific-societies/research/manual/manual_research_2026-08-02.md   unter dem Kapitel ### 1) [DFG Fächerstruktur](https://www.dfg.de/de/foerderung/antrag-foerderprozess/interdisziplinaritaet/faecherstruktur) bereits erfasst habe oder mir wesentliche Fachgesellschaften/Dachverbände fehlen. Da der allgemeine Kontext ein RSE Award ist und die deRSE26 die jährliche Konferenz für die deutsche RSE Community ist, sollte dies ein gute Datenquelle sein. 

In dem aufgeführten Link ist das Timetable pro Tag aufgeführt. Hier solltest du auf die einzelnen Events klicken können, um mehr Informationen über den Vortrag und die vortragende Person(en) herauszufinden. Falls dies nicht funktioniert, mache immer eine Web Search für die vortragende Person, die du direkt in dem Timetable finden kannst (ohne weiter draufklicken zu müssen). 

Falls eine Person oder der Inhalt eines Vortrags an einer Schnittstelle verschiedeneder Disziplinen/Fachgesellschaften liegt, nimm bitte alle der Disziplinen auf. 

Bitte gebe mir die Ergebnisse in einer struktuierten Form heraus, zB in Form einer Tabelle (in einer .md Datei) oder als csv Datei. Bitte hebe vor allem die Fachgesellschaften/Dachverbände hervor, die am häufigsten auf der deRSE26 implizit vertreten sind und die Fachgesellschaften/Dachverbände, die mir noch fehlen.

# 2) Claude Output

## 2.1) deRSE26-Programmanalyse: Disziplinäre Verteilung der Forschungssoftware

Quelle: [deRSE26 Timetable](https://events.hifis.net/event/2945/timetable/#all) (6th Conference for Research Software Engineering in Germany, 3.–5. März 2026, Universität Stuttgart) — vollständige Contribution List mit 192 Beiträgen (Talks, yRSE-Talks, Poster, Demos, Tutorials, Meet-Ups/BOFs, Workshops), programmatisch aus Indico extrahiert (Titel, Vortragende, Affiliation, Abstract).

**Methodik:** Für jeden der 192 Beiträge wurde aus Titel, Abstract und Affiliation die inhaltlich am besten passende DFG-Fachgebiet-Disziplin abgeleitet. Bei interdisziplinären Beiträgen wurden mehrere Disziplinen vergeben (daher Summe > 192). Beiträge, die RSE-Praxis/-Community/-Methodik selbst behandeln (Karriereentwicklung, Training, generische FAIR-/Metadaten-/Lizenz-/Testing-Themen, Community-Building) ohne Bezug zu einer spezifischen Fachdisziplin, wurden als **„RSE" (cross-cutting)** getaggt statt einem DFG-Fach zugeordnet.

---

## 2.2) Häufigkeit der Disziplinen am deRSE26 (Mehrfachzählung möglich)

| Rang | Disziplin (DFG-Fachgebiet) | Wissenschaftsbereich | Beiträge | Bereits erfasste Fachgesellschaft/Dachverband | Status |
|---|---|---|---|---|---|
| – | **RSE (cross-cutting, keine Fachdisziplin)** | – | **79** | *(keine – siehe Abschnitt 3)* | ⚠️ **größte Lücke** |
| 1 | **Informatik, System- u. Elektrotechnik** | Ingenieurwissenschaften | **64** | GI, VDE | ✅ gut abgedeckt |
| 2 | Geowissenschaften | Naturwissenschaften | 16 | DGGV, DGG, DMG (Mineral.), DVGeo, DMG (Meteorol.) | ✅ gut abgedeckt |
| 3 | Physik | Naturwissenschaften | 14 | DPG, Astronomische Gesellschaft | ✅ gut abgedeckt |
| 4 | Geisteswissenschaften | Geistes-/Sozialwiss. | 12 | DArV, VHD, DGfS, Germanistenverband, DGSKA, WGTh, DGPhil, Kunstgeschichte-Verband | ⚠️ **Lücke: Digital Humanities** (s. u.) |
| 5 | Biologie | Lebenswissenschaften | 11 | VBIO, DBG, DZG | ⚠️ **Lücke: Bioinformatik** (s. u.) |
| 5 | Medizin | Lebenswissenschaften | 11 | AWMF + DGIM, DGK, DGCH, DGGG, DRG, DGPPN, DOG | ⚠️ kleinere Lücke: Tropenmedizin/Global Health |
| 7 | Sozial- u. Verhaltenswissenschaften | Geistes-/Sozialwiss. | 9 | DGS, DVPW, Verein für Socialpolitik, DGPs/Föderation | ⚠️ Lücke: Informationswissenschaft/Wissenschaftsforschung |
| 8 | Ingenieurwissenschaften (allgemein) | Ingenieurwissenschaften | 8 | WGP, GAMM, VDI | ✅ abgedeckt |
| 9 | Chemie | Naturwissenschaften | 7 | GDCh, Bunsen-Gesellschaft | ✅ gut abgedeckt (DECHEMA passt zusätzlich für Katalyse) |
| 9 | Wärmetechnik/Verfahrenstechnik | Ingenieurwissenschaften | 7 | DECHEMA, DKV | ✅ gut abgedeckt |
| 9 | Materialwissenschaft u. Werkstofftechnik | Ingenieurwissenschaften | 7 | DGM | ✅ gut abgedeckt |
| 9 | Neurowissenschaften | Lebenswissenschaften | 7 | NWG | ✅ **sehr gut abgedeckt** |
| 13 | Mathematik | Naturwissenschaften | 5 | DMV, GAMM | ✅ gut abgedeckt (MaRDI-Projekt erscheint 2×) |
| 14 | Maschinenbau u. Produktionstechnik | Ingenieurwissenschaften | 4 | WGP, GAMM | ✅ abgedeckt |
| 15 | Bauwesen und Architektur | Ingenieurwissenschaften | 3 | DBV, DGGT | ✅ abgedeckt |
| 16 | Agrar-/Forstwiss. u. Tiermedizin | Lebenswissenschaften | 1 | DAF, GPZ, DVG | (zu geringe Fallzahl für Aussage) |

**Kernbefund:** Fast die Hälfte aller Beiträge (79/192 ≈ 41 %) ist RSE-Methodik/-Community-Inhalt ohne fachliche Verankerung — das ist erwartbar für eine RSE-Konferenz, zeigt aber auch, dass **die wichtigste "Fachgesellschaft" für den deRSE26-Kontext selbst noch nicht in euren Tabellen erfasst ist** (siehe Abschnitt 3). Von den fachlich verankerten Beiträgen dominiert **Informatik** klar (64), gefolgt von **Geowissenschaften** und **Physik** — beide bereits sehr gut durch DGGV/DVGeo bzw. DPG/AG abgedeckt.

---

## 2.3) Detailtabelle pro Disziplin (Vortragende, Affiliation, Beispielbeiträge)

### Physik — 14 Beiträge
| Vortragende(r) | Affiliation | Beitrag |
|---|---|---|
| Jean-Noël Grad | Uni Stuttgart | ESPResSo – Shared-memory parallelism (Physik/Chemie/Verfahrenstechnik) |
| Tim Schrader | KIT | M++ zu Ginkgo – HPC Lineare Algebra (Wellenausbreitung, Physik) |
| Christoph Conrads | Jülich Supercomputing Centre | RSE eines Quantum-Transport-Codes |
| Sven Berger | Hereon | TrixiParticles.jl – Partikelsimulationen (Julia) |
| Thibaut Oprinsen | Laboratoire d'Annecy de Physique Des Particules (LAPP) | Double back-end design (Teilchenphysik) |
| Felix Bartusch | Uni Tübingen | BinAC2-Cluster für Bioinformatik, **Astrophysik**, Geowissenschaften |
| Alperen Aksoy | Forschungszentrum Jülich (PGI-4) | Embedded ANNs (experimentelle Physik) |
| Alf Kohn-Seemann | Uni Stuttgart | FOCAL – Mikrowellen in magnetisierten Plasmen (Plasmaphysik) |
| Daniel Keßel, Klara Schnorrenberg | Forschungszentrum Jülich (PGI-4) | Messworkflows für Qubit-Messungen |
| Benjamin Papajewski | Forschungszentrum Jülich (PGI-4) | Sensor-Tuning für Quantenpunkte (Quantencomputing) |
| Felipe Donoso Aguirre | – | BenchTune/Kadi für Beschleunigerphysik (2×: Poster + Talk) |
| Oliver Knodel | HZDR | TeSSHub – u. a. für PaNOSC (Photon-/Neutronenforschung) |
| Elena Breitmoser, Faruk Diblen, Shraddha Bajare | Uni Edinburgh, eScience Center NL, **Square Kilometre Array Observatory** | EVERSE (Radioastronomie-Bezug) |

→ Bereits erfasste Fachgesellschaft: **DPG** (Deutsche Physikalische Gesellschaft), **Astronomische Gesellschaft**. Passt sehr gut zu Plasma-, Teilchen-, Quanten- und Astrophysik-Inhalten.

### Geowissenschaften — 16 Beiträge
| Vortragende(r) | Affiliation | Beitrag |
|---|---|---|
| Naseem Ali | Helmholtz-Zentrum Hereon | Digital-Twin für Offshore-Windenergie |
| Dominik Hezel | – | EPMA-Daten (Mineralogie) |
| Eirik Keilegavlen | Uni Bergen | Digital Twin poröse Medien (2×) |
| Michael Siccha Rojas | MARUM/Uni Bremen | Mikropaläontologie (Foraminiferen, µCT) |
| Florian Thiery | Research Squirrel Engineers / LEIZA | Klima-/Geoarchäologie, Geo-Knowledge-Graphs |
| Felix Bartusch | Uni Tübingen | BinAC2-Cluster |
| Matthias Volk | **GFZ Helmholtz-Zentrum für Geosysteme** | Geothermie-Exploration |
| Madeleine Heidl | MPI für Chemie | Erdsystemmodellierung (MESSy/JSBACH) |
| Marvin Stucke, Roman Krueckel | Institut für Navigation, Uni Stuttgart | Präzise Bahnbestimmung (Geodäsie) |
| Begatim Bytyqi | KIT | IFOS3D – seismische Vollwellenforminversion (Geophysik) |
| Inga Ulusoy u. a. | Uni Heidelberg | Klima-Gesundheits-Plattform |
| Amirhossein Nikfal | Forschungszentrum Jülich | WRFtailor (Wettermodell WRF) |
| Andreas Baer | KIT | auto-icon (Klimamodell ICON) |
| Ahmed Zegrar | Center of Spaces Technics (Algerien) | Post-Fire-Recovery via Satellitendaten (Fernerkundung) |

→ Bereits erfasst: **DVGeo** (Dachverband) mit **DGGV**, **DGG**, **DMG-Mineralogie**, **DMG-Meteorologie**. Sehr gute Deckung. Einzige feine Lücke: Fernerkundung/Photogrammetrie (Poster #179) — ggf. **DGPF** (Deutsche Gesellschaft für Photogrammetrie, Fernerkundung und Geoinformation) ergänzen, falls dieser Bereich strategisch relevant ist.

### Geisteswissenschaften — 12 Beiträge (starker Digital-Humanities-Schwerpunkt)
| Vortragende(r) | Affiliation | Beitrag |
|---|---|---|
| Sabina Mollenhauer | Uni Vechta | Ethnographische Methoden, FAIRness sensibler Interviewdaten |
| Eckhard Kadasch | zedif, Uni Jena | Interview-Transkription |
| Samuel Glowka | Uni Jena | HisQu – Historische Quellen (Ontologien) |
| **Florian Thiery** | **CAA – Computeranwendungen u. quantitative Methoden in der Archäologie e.V.** | RSE across NFDI (2×: Poster + Talk „chublets.software") |
| Florian Thiery | Leibniz-Zentrum für Archäologie (LEIZA) | Geo-/Archäologie-Knowledge-Graphs |
| Sebastian Sünkler, Tuhina Kumar | HAW Hamburg | RAT – Suchmaschinenforschung |
| Jan Kuester, Karsten Wolf | Uni Bremen | CAQDAS – Qualitative Datenanalyse |
| Frederike Neuber u. a. | Berlin-Brandenburgische Akademie der Wissenschaften | genderTagger (Digital Humanities) |
| Thomas Risse u. a. | Goethe-Uni Frankfurt, UB | Fachinformationsdienste (FID)-Netzwerk |
| Annabella Schmitz | Akademie der Wissenschaften Mainz | MerMEId – Digitale Musikwissenschaft |

→ **Auffällig:** Keine der bisher erfassten Geisteswissenschafts-Fachgesellschaften (DArV, VHD, Kunstgeschichte-Verband, DGfS, Germanistenverband, DGSKA, WGTh, DGPhil) deckt **Digital Humanities** explizit ab — obwohl das hier mit 4 von 12 Beiträgen der klar dominante Teilbereich ist. **CAA Deutschland e.V.** tritt sogar zweimal als **direkte institutionelle Affiliation** eines Vortragenden auf. → siehe Abschnitt 3.

### Biologie — 11 Beiträge (starker Bioinformatik-Schwerpunkt)
| Vortragende(r) | Affiliation | Beitrag |
|---|---|---|
| Anamaria Elek | Uni Heidelberg | Deep Learning für Alternative-Splicing-Analyse |
| Simon Christ | Leibniz Uni Hannover | OCTOPOS.jl – Codon-Optimierung |
| Christine Schulz | – | AlphaFold-basierte Strukturvorhersage |
| Marie Anne Lataretu | **Robert Koch-Institut** | Nextflow-Pipeline-Validierung (Bioinformatik) |
| Felix Bartusch | Uni Tübingen | BinAC2-Cluster (Bioinformatik) |
| Kai Riedmiller | Uni Heidelberg | KIMMDY – Molekulardynamik chem. Reaktionen |
| Luca Monari | Uni Heidelberg | pyFuRNAce – RNA-Origami |
| Charlotte Grunert | – | MetaCascabel – Metagenomik-Pipeline |

→ Bereits erfasst: **VBIO** (Dachverband), **DBG** (Botanik), **DZG** (Zoologie) — **keine davon ist bioinformatik-spezifisch**. Angesichts von 6+ genuin bioinformatischen Beiträgen (Splicing, Strukturvorhersage, Metagenomik, Sequenzierungs-Pipelines) fehlt die **Gesellschaft für Bioinformatik (GBI)** in eurer Liste. → siehe Abschnitt 3.

### Medizin — 11 Beiträge
Marie Luise Müller (TUD Dresden, Chirurgie) – Surgical Data Science; Jonathan Ströbele (**BNITM** – Bernhard-Nocht-Institut für Tropenmedizin) – Data Snack; Katrin Schoning-Stierand (Uni Hamburg) – Global-Health-KI für Mutter-Kind-Gesundheit; Marie Anne Lataretu (Robert Koch-Institut); u. a.

→ AWMF-Dachverband plus 6 Einzelgesellschaften bereits erfasst; passt für Chirurgie/Innere Medizin gut. Kleine Lücke: **Tropenmedizin/Global Health** (Deutsche Gesellschaft für Tropenmedizin, Reisemedizin und Globale Gesundheit, DTG) — nur 1 Beitrag, daher niedrige Priorität.

### Sozial- und Verhaltenswissenschaften — 9 Beiträge
Jun Sun (GESIS) – Datenqualität; Judith Hartstein (**DZHW** – Deutsches Zentrum für Hochschul- und Wissenschaftsforschung) – Wissenschaftsforschung/STS zu Research-Software-Praktiken; Sebastian Sünkler/Tuhina Kumar (HAW Hamburg) – Suchmaschinenforschung (2×); Vinicius Ferraz (KIT) – Spieltheorie/Geopolitik; u. a.

→ DGS, DVPW, Verein für Socialpolitik, DGPs/Föderation bereits erfasst. Lücke: **Informationswissenschaft** (kein Fachgebiet-Eintrag in eurer Tabelle bislang) und **Wissenschaftsforschung/STS** (z. B. Gesellschaft für Wissenschafts- und Technikforschung, GWTF, oder Rat für Sozial- und Wirtschaftsdaten, RatSWD, als Dachverband für die GESIS-nahen Themen).

### Neurowissenschaften — 7 Beiträge (sehr gute Abdeckung)
iBehave-Konsortium Uni Bonn (2 Beiträge, 5 Vortragende); junifer-Neuroimaging (Synchon Mandal); ESI Frankfurt/MPG-Neurowissenschaft (2 Beiträge: SLURM-VS-Code, NixOS); Salma Thalji (TU München/MPI Biologische Kybernetik) – Licht/zirkadiane Biologie; Manpa Barman (Uni Stuttgart) – LSLAutoBIDS.

→ **NWG** (Neurowissenschaftliche Gesellschaft) bereits erfasst — passt hervorragend, dies ist die am besten "durchdeckte" Disziplin im Verhältnis zur Beitragszahl.

### Chemie — 7 Beiträge
Jean-Noël Grad (ESPResSo); Christine Schulz (AlphaFold/Chemie-Nobelpreis-Bezug); Madeleine Heidl (MPI für Chemie); Volodymyr Kushnarenko (Katalyseforschung, Repo4Cat); Torsten Giess (Uni Stuttgart, molekulare heterogene Katalyse); Kai Riedmiller; Luca Monari.

→ **GDCh**, **Bunsen-Gesellschaft** erfasst. Für die Katalyse-Beiträge passt zusätzlich **DECHEMA** (bereits unter Wärmetechnik/Verfahrenstechnik erfasst) sehr gut.

### Mathematik — 5 Beiträge
Wolfgang Bangerth (Colorado State, deal.II) – Keynote; Max Sagebaum (RPTU) – algorithmische Differentiation; Ashwin Nayak & Dominik Kabanov – **MaRDI**-Projekt (2×, Mathematical Research Data Initiative); Dominik Göddeke – JoDaKISS.

→ **DMV**, **GAMM** erfasst — MaRDI ist ein direktes DMV-nahes NFDI-Konsortium, passt ideal.

### Materialwissenschaft und Werkstofftechnik — 7 Beiträge
Jan Janssen (MPI für Nachhaltige Materialien, 2×: executorlib, pyiron+KI); Sam Waseda (MPI für Nachhaltige Materialien); Joerg Schaarschmidt (KIT, SimStack); Jörg F. Unger (**BAM** – Bundesanstalt für Materialforschung und -prüfung).

→ **DGM** erfasst, passt gut.

### Wärmetechnik/Verfahrenstechnik, Maschinenbau, Bauwesen
Insgesamt 14 Beiträge (CFD, Multiphysik, Gebäudeautomation, Energiesysteme, Pedestrian-Dynamics), gut abgedeckt durch **DECHEMA/DKV**, **WGP/GAMM**, **DBV/DGGT**.

### Informatik — 64 Beiträge (mit Abstand größte Fachdisziplin)
Breite Themenpalette: HPC/Performance (waLBerla, xbat, Kieker, HPC-Carpentry), Software Engineering Research (Mining Software Repositories, Refactoring, Testing), KI/LLM-Anwendungen (mehrere Beiträge), NFDIxCS (Lars Meiendresch, Jan Bernoth — **Gesellschaft für Informatik** als direkte Affiliation), Visual Computing, Datenmanagement-Tools.

→ **GI** (Gesellschaft für Informatik) bereits erfasst und erscheint sogar **dreimal als direkte institutionelle Affiliation** von Vortragenden (Lars Meiendresch, Julian Dehne ×2) — die mit Abstand am häufigsten unter den bereits erfassten Fachgesellschaften direkt vertretene Organisation. Sehr gute Deckung.

---

## 2.4) Fachgesellschaften/Dachverbände: Was fehlt in euren Tabellen?

### 🔴 Top-Lücke: **de-RSE e.V. – Gesellschaft für Forschungssoftware**
Erscheint **dreimal als direkte Affiliation** von Vortragenden (Florian Mannseicher) und ist Gastgeber/Namensgeber des gesamten Beitragsblocks zu FutuRSI (geplantes deutsches Forschungssoftware-Institut) sowie der Podiumsdiskussion zur „Strukturierung des Forschungssoftware-Ökosystems in Deutschland" (mit DFG, Wissenschaftsrat, Uni Ulm, TU Braunschweig). **de-RSE e.V. taucht in keiner eurer beiden Tabellen (Fachgesellschaften/Dachverbände) auf**, obwohl es die zentrale deutsche Fachgesellschaft für exakt das Thema eures Awards ist. Da RSE quer zu allen vier DFG-Wissenschaftsbereichen liegt (ähnlich der Allianz „Wissenschaft verbindet"), empfiehlt sich eine eigene Zeile außerhalb der klassischen Wissenschaftsbereich-Spalte, oder als Cross-cutting-Eintrag analog zu „Wissenschaft verbindet". **Das ist mit 41 % aller Beiträge (79/192), die RSE-Praxis statt Fachinhalt behandeln, die klar größte und wichtigste Lücke.**

### 🟠 Digital Humanities: **Verband „Digital Humanities im deutschsprachigen Raum" (DHd)**
Bereits in eurem eigenen Kontaktaufnahme-Tracker ([manual_research_2026-08-30.md](manual_research_2026-08-30.md), Zeile Geisteswissenschaften) als Kandidat mit Status „nein" (noch nicht kontaktiert) vermerkt — die deRSE26-Daten **bestätigen die Relevanz unabhängig**: 4 von 12 geisteswissenschaftlichen Beiträgen sind explizit Digital-Humanities-Projekte (HisQu, genderTagger, MerMEId, chublets.software/CAA). Zusätzlich konkret zu ergänzen: **CAA Deutschland e.V.** (Computeranwendungen und quantitative Methoden in der Archäologie), die zweimal als direkte Affiliation eines Vortragenden (Florian Thiery) auftritt und eine reale, etablierte Fachgesellschaft ist.

### 🟠 Bioinformatik: **Gesellschaft für Bioinformatik (GBI)**
6+ Beiträge behandeln genuine Bioinformatik (Sequenzanalyse, Strukturvorhersage, Metagenomik, Pipeline-Validierung), aber keine der erfassten Lebenswissenschafts-Fachgesellschaften (VBIO, DBG, DZG) deckt Bioinformatik explizit ab. Die GBI ist die etablierte deutsche Fachgesellschaft hierfür und fehlt bislang komplett.

### 🟡 Kleinere Lücken (niedrigere Priorität, da nur 1 Beitrag)
- **Informationswissenschaft**: kein Fachgebiet-Eintrag in der DFG-Fächerstruktur-Tabelle vorhanden; Kandidat wäre die Deutsche Gesellschaft für Informationswissenschaft und Informationspraxis (DGI), relevant für FID-Netzwerk- und Suchmaschinenforschungs-Beiträge.
- **Wissenschaftsforschung/STS**: DZHW-Beitrag zu „Research Software Communism" legt einen Bezug zur Gesellschaft für Wissenschafts- und Technikforschung (GWTF) nahe.
- **Tropenmedizin/Global Health** (DTG) angesichts des BNITM-Beitrags.
- **Fernerkundung/Photogrammetrie** (DGPF) angesichts des Satellitenbild-Beitrags.

### ✅ Bereits sehr gut abgedeckte Bereiche (keine Handlungsnotwendigkeit)
Physik (DPG/AG), Geowissenschaften (DVGeo-Familie), Neurowissenschaften (NWG), Chemie/Verfahrenstechnik (GDCh/Bunsen/DECHEMA), Materialwissenschaft (DGM), Mathematik (DMV/GAMM), Informatik (GI) — die disziplinäre Verteilung von deRSE26 deckt sich hier gut mit den bereits recherchierten Fachgesellschaften.

---

## 2.4) Hinweis zu NFDI-Konsortien als paralleler Struktur

Auffällig oft treten **NFDI-Konsortien** (NFDI4ING, NFDIxCS, NFDI4Cat, Base4NFDI, MaRDI) sowie fachspezifische Infrastruktureinrichtungen (ZB MED, GESIS, FIZ Karlsruhe, HZDR/HIFIS) als Affiliationen auf. Diese sind keine klassischen Fachgesellschaften im Sinne der DFG-Fächerstruktur, fungieren aber zunehmend als deren funktionales Äquivalent im Bereich Forschungsdaten-/Forschungssoftware-Infrastruktur. Falls für den RSE Award auch diese Ebene relevant ist, wäre eine separate Tracking-Spalte "NFDI-Konsortium" sinnvoll — das würde aber den Rahmen der reinen Fachgesellschaften-Tabelle sprengen und ist daher hier nur als Beobachtung vermerkt, nicht als konkrete Ergänzung vorgeschlagen.

---

## 2.5) Vollständige Rohdaten

Die vollständige Aufschlüsselung aller 192 Beiträge (ID, Zeit, Typ, Titel, Vortragende mit Affiliation, zugeordnete Disziplin(en)) liegt als CSV vor:
[derse26_programm_disziplinen_2026-08-30.csv](derse26_programm_disziplinen_2026-08-30.csv)

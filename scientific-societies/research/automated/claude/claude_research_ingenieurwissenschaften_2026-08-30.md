

- model configurations:
	- llm: claude sonnet 5 (claude code)
	- thinking effort: extra high


### 1) Prompt

Gehe bitte nochmal die Rechercheergebnisse für die Ingenieurwissenschaften in claude_research_output_fachgesellschaften_2026-08-04.csv, claude_research_output_dachverbände_2026-08-04.csv und claude_research_output_derse26_programm_disziplinen_2026-08-30.csv durch. Hier ist vor allem wichtig zu unterscheiden, welche der Fachgesellschaften und Dachverbände wirklich eine wissenschaftliche Vertretung sind (die uns beim RSE Award hinsichtlich der Relevanz einer Forschungssoftware für die jeweilige Community helfen können; und die meistens in Fachbereiche und Arbeitskreise aufgeteilt sind; siehe zB bei der Gesellschaft für Informatik: https://gi.de/netzwerk/fachbereiche/) und welche eher eine allgemeine oder berufspolitische Vertretung sind (die sind nicht wirklich hilfreich für unseren Award). Und insbesondere checke nochmal bei den Ergebnissen des deRSE26 Disziplinen für Wärmetechnik und "allgemeine Ingenieurswissen." welche Fachgesellschaft/Dachverband da aus einer wissenschaftlichen Perspektive am besten passt.

Und berücksichtige nicht nur die Fachgesellschaften in claude_research_output_fachgesellschaften_2026-08-04.csv und die Dachverbände in claude_research_output_dachverbände_2026-08-04.csv, sondern betreibe auch nochmal Web Search, um zu überprüfen ob alle relevanten WISSENSCHAFTLICHEN Fachgesellschaften und Dachverbände für die Ingenieurswissenschaften abgedeckt sind.

### 2) Claude Output

## 2.1) Einordnung der bereits erfassten Ingenieurwissenschafts-Einträge: wissenschaftlich vs. berufspolitisch/praxisorientiert

Kriterium für "wissenschaftlich" (im Sinne des Award-Zwecks): aktive Fachbereichs-/Arbeitskreis-/Fachausschuss-Struktur, die von forschenden Personen getragen wird, eigene wissenschaftliche Tagungen/Publikationen — analog zum genannten GI-Beispiel (https://gi.de/netzwerk/fachbereiche/). Kriterium für "eher berufspolitisch/praxisorientiert": Fokus auf Weiterbildung, Zertifizierung, Interessenvertretung, Normung/Standardisierung oder Hochschulpolitik statt aktiver Forschungscommunity.

| Organisation | Fachgebiet | Einordnung | Begründung |
|---|---|---|---|
| **WGP** – Wissenschaftliche Gesellschaft für Produktionstechnik | Maschinenbau/Produktionstechnik | ✅ wissenschaftlich | 70 Professuren, 46 Institute, >2.000 Forschende; eigene wiss. Jahrestagung und Publikationsreihe ("WGP Annals"); Struktur aus Präsidium + Wissenschaftlichem Beirat. |
| **DGQ** – Deutsche Gesellschaft für Qualität | Maschinenbau/Produktionssystematik | ⚠️ eher berufspolitisch/praxisorientiert | Beschreibt sich selbst als "Fachgesellschaft", ist aber faktisch ein Weiterbildungs-/Zertifizierungs-/Beratungsnetzwerk (unter den 6.500 Mitgliedern u. a. 200 Trainer:innen, 100 Berater:innen); keine Fachbereichs-Struktur für aktive Forschung. Für die Relevanzeinschätzung von Forschungssoftware wenig hilfreich – niedrige Priorität. |
| **GAMM** – Gesellschaft für Angewandte Mathematik und Mechanik | Mechanik/Konstruktiver Maschinenbau | ✅ wissenschaftlich | Fachausschüsse zu math./mechanischen Teilgebieten, internationale Jahrestagung, >1.500 Mitglieder, überwiegend Forschende. |
| **DECHEMA** (organisiert über **ProcessNet**, gemeinsam mit VDI-GVC) | Verfahrenstechnik/Techn. Chemie | ✅ wissenschaftlich (mit Industrieanbindung) | Fachliche Arbeit läuft über ProcessNet in eigenen Fachgemeinschaften/-sektionen (u. a. Chemische Reaktionstechnik, Fluiddynamik und Trenntechnik, Partikeltechnologie, Sicherheitstechnik) – echte fachliche Forschungscommunities, wenn auch mit Anbindung an die ACHEMA-Industriemesse. |
| **DKV** – Deutscher Kälte- und Klimatechnischer Verein | aktuell zugeordnet zu Wärmetechnik/Verfahrenstechnik | ⚠️ wissenschaftlich, aber zu eng gefasst | Legitime Fachgesellschaft mit eigenem Forschungsrat Kältetechnik, ABER thematisch nur Kälte-/Klimatechnik – deckt nicht die breiteren deRSE26-Themen (Strömungsmechanik, Multiphysik, Energiesystemsimulation) ab, die zum DFG-Fachgebiet 4.22 gehören. → siehe 2.2. |
| **DGM** – Deutsche Gesellschaft für Materialkunde | Materialwissenschaft | ✅ wissenschaftlich | >2.300 persönliche Mitglieder, Fachausschüsse, eigene Fachzeitschrift. |
| **GI** – Gesellschaft für Informatik | Informatik | ✅ wissenschaftlich (Referenzbeispiel) | Klare Fachbereichsstruktur (https://gi.de/netzwerk/fachbereiche/), genau das im Prompt genannte Vorbild. |
| **DBV** – Deutscher Beton- und Bautechnik-Verein | Bauwesen | ✅ wissenschaftlich (verifiziert per Web-Recherche) | Trotz Baupraxis-Nähe laut Selbstbeschreibung ein "wissenschaftlich-technischer Verein", Mitglied bei AiF und DAfStb (Forschungsförderorganisationen), fördert und betreibt eigene Forschung – keine reine Industrie-/Normungsvertretung. |
| **DGGT** – Deutsche Gesellschaft für Geotechnik | Bauwesen (Geotechnik) | ✅ wissenschaftlich | Fachsektionen/Arbeitskreise, ca. 2.000 Mitglieder. |

### Dachverbände im Detail

| Dachverband | Charakter | Einordnung | Begründung |
|---|---|---|---|
| **VDI** – Verein Deutscher Ingenieure | Ingenieurwesen allgemein | 🟡 primär berufspolitisch/allgemein, ABER mit wissenschaftlichem Unterbau | ~125.000–135.000 Mitglieder; auf Verbandsebene breite berufsständische Vertretung (Normung/VDI-Richtlinien, Weiterbildung, Interessenvertretung). **Wichtig:** VDI gliedert sich intern in **12 VDI-Fachgesellschaften mit 42 Fachbereichen und ca. 600 Gremien** (Quelle: vdi.de) – u. a. VDI-GEU "Energie und Umwelt", VDI-GVC "Verfahrenstechnik und Chemieingenieurwesen", VDI-GPP "Produkt- und Prozessgestaltung". Diese Fachgesellschaften SIND die eigentliche wissenschaftlich-fachliche Ebene, strukturell vergleichbar mit den GI-Fachbereichen aus dem Prompt-Beispiel. → Empfehlung: nicht nur "VDI" pauschal als eine Zeile führen, sondern die einschlägigen VDI-Fachgesellschaften einzeln aufnehmen (analog zum AWMF + Einzelgesellschaften-Modell, das ihr bei der Medizin bereits anwendet). |
| **VDE** – Verband der Elektrotechnik Elektronik Informationstechnik | Informatik/Elektrotechnik | 🟡 Dachverband, ABER mit 5 echten Fachgesellschaften darunter | VDE selbst: breiter Verband/Normungsorganisation (~35.000 Mitglieder). Seine 5 Fachgesellschaften – **ITG** (Informationstechnik, älteste VDE-Fachgesellschaft, >80 Fachausschüsse in 9 Fachgebieten), **ETG** (Energietechnik), **GMA** (Mess- und Automatisierungstechnik, gemeinsam mit VDI), **GMM** (Mikroelektronik/Mikrosystemtechnik/Feinwerktechnik, gemeinsam mit VDI, >9.500 Mitglieder, 7 Fachbereiche, ~45 Fachausschüsse), **DGBMT** (Biomedizinische Technik, >2.600 Mitglieder, größte wiss.-techn. Gesellschaft der Medizintechnik in D) – sind jeweils genuine wissenschaftliche Gesellschaften. → Empfehlung: einzelne VDE-Fachgesellschaften separat listen statt nur "VDE" pauschal (siehe 2.3 für die konkrete deRSE26-Relevanz von GMA/GMM). |
| **DVT** – Deutscher Verband Technisch-Wissenschaftlicher Vereine | Ingenieurwissenschaften allgemein | ✅ echter Dachverband (Föderation von 36 Fachgesellschaften) | Bündelt WGP, GAMM, DGM u. a. – strukturell vergleichbar mit VBIO für die Biologie. Guter "Meta"-Ansprechpartner, aber selbst keine originär fachliche Community – als Dachverband korrekt eingeordnet. |
| **4ING** – Fakultätentag der Ingenieurwissenschaften | – | ❌ hochschulpolitisch, keine wissenschaftliche Fachcommunity | Dekanekonferenz/Interessenvertretung der Fakultäten – bereits in eurer Tabelle korrekt so gekennzeichnet ("hochschulpolitisch"); keine Änderung nötig. |

## 2.2) Konkrete Antwort: Was passt für "Wärmetechnik/Verfahrenstechnik" und "Ingenieurwissenschaften (allg.)" am besten?

**Wärmetechnik/Verfahrenstechnik (7 deRSE26-Beiträge):** Die aktuell zugeordnete DKV passt nur für Beiträge mit echtem Kälte-/Klimatechnik-Bezug – davon gibt es unter den 7 Beiträgen keinen einzigen. Die tatsächlichen 7 Beiträge sind: ESPResSo (Softmatter-Physik/Chemie/Verfahrenstechnik), FAIR-FLEXI (CFD), eCoSimHPC (Energiesystemanalyse), TrixiParticles.jl (Partikelsimulation/Fluiddynamik), Digital Twin poröse Medien, 4C Multiphysics, FAME (Energiesystem-Simulationsframework). Das ist ganz überwiegend Strömungsmechanik/Multiphysik/Energiesystemtechnik. Aus wissenschaftlicher Perspektive passt daher am besten:
- **ProcessNet/DECHEMA (bzw. VDI-GVC)** für Fluiddynamik, Partikeltechnologie, Multiphysik-Simulation (TrixiParticles.jl, 4C Multiphysics, Digital Twin poröse Medien) – bereits erfasst, gute Übereinstimmung, keine Änderung nötig.
- **VDI-Gesellschaft Energie und Umwelt (GEU)** zusätzlich aufnehmen für den Energiesystem-Anteil (eCoSimHPC, FAME) – diese Facette wird von DECHEMA/DKV nicht abgedeckt.
- **DKV** als das, was es ist, kennzeichnen: valide, aber thematisch eng (nur Kälte-/Klimatechnik) – aktuell kein einziger deRSE26-Beitrag dazu; niedrigere Priorität als Haupteintrag für dieses Fachgebiet.

**"Ingenieurwissenschaften (allg.)" (9 Beiträge, inkl. NFDI4ING):** SHOWME (Model-based Engineering Workflows), Simulation-Software-Engineering-Lehre, Reproduzierbarkeits-Framework (MPI für Dynamik komplexer technischer Systeme), BayesValidRox (Legacy-Software), FAME, **ATLAS/CRC 1667** (Stuttgart+DLR), Präzise Bahnbestimmung (Satellitennavigation), JuPedSim, NFDI4ING-Meeting. Auffällig: mehrere davon haben einen klaren **Luft-/Raumfahrt-Bezug**. Zur Verifikation per Web-Recherche nachgeschaut: **CRC 1667 "ATLAS"** ist offiziell der "Sonderforschungsbereich zu Advancing Technologies of Very Low Altitude Satellites" – ein DFG-Sonderforschungsbereich der Universität Stuttgart mit dem DLR-Institut für Technische Physik zur Entwicklung von Satellitentechnologie für sehr niedrige Erdumlaufbahnen (Quelle: sfb1667.uni-stuttgart.de). Für den generischen Methodik-Anteil passt am ehesten VDI (allgemein) oder GAMM (Mechanik/Simulation); für den Luft-/Raumfahrt-Anteil fehlt jedoch eine dedizierte Fachgesellschaft komplett:

→ **Beste fachliche Ergänzung: DGLR – Deutsche Gesellschaft für Luft- und Raumfahrt – Lilienthal-Oberth e.V.** Per Web-Recherche verifiziert: saubere Fachbereichs-/Fachausschuss-Struktur, gegliedert in Luftfahrt (L), Raumfahrt (R) und Querschnittsthemen (Q), mit den einzelnen Fachbereichen wiederum in Fachausschüsse unterteilt (Quelle: dglr.de/fachbereiche). Das ist der klar beste wissenschaftliche Match für den Luft-/Raumfahrt-Anteil dieser deRSE26-Beiträge (RSE4PhD bei DLR, DLR Inner-Source-Policy, Algorithmenentwicklung mit LLMs bei DLR, ATLAS/CRC1667, Präzise Bahnbestimmung) und fehlt aktuell komplett in euren Tabellen.

## 2.3) Neue Lücken (per Web-Recherche verifiziert)

1. **🔴 DGLR – Deutsche Gesellschaft für Luft- und Raumfahrt – Lilienthal-Oberth e.V.** Echte Fachbereichs-/Fachausschuss-Struktur (Luftfahrt/Raumfahrt/Querschnitt). Fehlt komplett in beiden Tabellen, obwohl mindestens 5 deRSE26-Beiträge einen klaren Luft-/Raumfahrt-Bezug haben (mehrfach DLR-affiliierte Vortragende, CRC1667 ATLAS zu Satellitentechnologie, Präzise Bahnbestimmung/Satellitennavigation). **Höchste Priorität dieser Nachrecherche.**
2. **🟠 VDI-Gesellschaft Energie und Umwelt (GEU)** als spezifischere Ergänzung für Wärmetechnik/Energietechnik, statt DKV als bisher einzigem (aber thematisch zu engem) Eintrag für dieses Fachgebiet.
3. **🟡 Einzelne VDE-Fachgesellschaften** – insb. **GMA** (Mess- und Automatisierungstechnik) und **GMM** (Mikroelektronik/Mikrosystemtechnik) – für die Jülich-PGI4-Beiträge (Qubit-Messworkflows, Sensor-Tuning für Quantenpunkte, Embedded ANNs) statt nur der VDE-Dachebene.

## 2.4) Kein Änderungsbedarf (bestätigt per Web-Recherche)

- **WGP, GAMM, DGM, DBV, DGGT, GI**: alle klar wissenschaftlich mit aktiver Fachbereichs-/Forschungscommunity-Struktur – Einordnung korrekt, keine Änderung nötig.
- **DGQ**: bestätigt eher berufspolitisch/praxisorientiert (Weiterbildung/Zertifizierung/Beratung) – niedrige Priorität für die Relevanzbewertung von Forschungssoftware für eine wissenschaftliche Community.
- **4ING**: bestätigt hochschulpolitisch (Dekanekonferenz) – bereits korrekt so gekennzeichnet.
- **DVT**: bestätigt als reiner Dachverband/Föderation von 36 Fachgesellschaften (analog VBIO) – keine Änderung nötig.
- **DECHEMA**: über ProcessNet mit echten fachlichen Fachgemeinschaften bestätigt – passt weiterhin gut für Verfahrenstechnik/Multiphysik.

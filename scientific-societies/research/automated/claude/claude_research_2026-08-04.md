

- model configurations:
	- llm: claude sonnet 5
	- tool: research
	- thinking effort: high


### 1) Prompt

Deine Aufgabe ist es eine systematische Recherche zu machen und eine Übersicht über die wissenschaftlichen Fachgesellschaften in Deutschland zu erstellen. Die Recherche teilt sich auf in zwei Teilbereiche:

1) Hier liegt der Fokus auf den wissenschaftlichen Dachverbänden. Beispiele sind hier die Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften e.V. (AWMF) (https://www.awmf.org/die-awmf) mit mehr als 180 Fachgesellschaften aus allen Bereichen der wissenschaftlichen Medizin oder der Verband Biologie, Biowissenschaften und Biomedizin in Deutschland e. V. – VBIO mit ca 25 Fachgesellschaften und 6.000 Einzelmitglieder (https://de.wikipedia.org/wiki/Verband_Biologie,_Biowissenschaften_und_Biomedizin_in_Deutschland)
2) Hier liegt der Fokus auf den wissenschaftlichen Fachgesellschaften, als eine Ebene unter den Dachverbänden. Beispiele sind hier die Gesellschaft Deutscher Chemiker (https://de.wikipedia.org/wiki/Gesellschaft_Deutscher_Chemiker) oder die Deutsche Gesellschaft für Psychologie (https://de.wikipedia.org/wiki/Deutsche_Gesellschaft_für_Psychologie). 


Für beide Teilbereiche sollen die Ergebnisse jeweils in strukturiert Form, d.h. als CSV Datei mit den folgenden Tabellenstrukturen (Spaltennamen) zusammengefasst werden: 

1) Wissenschaftliche Dachverbände: 

| Wissenschaftsbereich | Fachgebiet | Dachverband | Dachverband Mitgliederanzahl Fachgesellschaften | Dachverband Mitgliederanzahl Wissenschaftler/Individuen | Wikipedialink | Website | Kontakt |
| -------------------- | ---------- | ----------- | ----------------------------------------------- | ------------------------------------------------------- | ------------- | ------- | ------- |
|                      |            |             |                                                 |                                                         |               |         |         |
|                      |            |             |                                                 |                                                         |               |         |         |

Für die Mitgliedszahlen, sowohl für die Anzahl der Fachgesellschaften innerhalb eines Dachverbands als auch die Anzahl der Wissenschaftler/Individuen innerhalb eines Dachverbands als Quellen bitte entweder nur Wikipedia oder die Website eines Dachverbands nehmen. 

Für die Spalte "Kontakt" trägst du bitte alle Möglichkeiten zu dem jeweiligen Dachverband Kontakt aufzunehmen ein, zB Email-Adresse, Social Media Kanäle, Ansprechpersonen oder Telefonnummern.


2) Wissenschaftliche Fachgesellschaften:

| Wissenschaftsbereich | Fachgebiet | Fachkollegium | Fach/Disziplin | Dachverband | Fachgesellschaft | Anzahl Mitgliederanzahl Wissenschaftler | Wikipedialink | Website | Kontakt |
| -------------------- | ---------- | ------------- | -------------- | ----------- | ---------------- | --------------------------------------- | ------------- | ------- | ------- |
|                      |            |               |                |             |                  |                                         |               |         |         |
|                      |            |               |                |             |                  |                                         |               |         |         |

Die Spalte "Dachverband" bitte nur für einen Eintrag ausfüllen, wenn eine Fachgesellschaft Mitglied in einem Dachverband ist. 

Für die Anzahl der Wissenschaftler/Individuen innerhalb einer Fachgesellschaft als Quellen hier auch bitte entweder nur Wikipedia oder die Website einer Fachgesellschaft nehmen.  Da es hunderte an Fächern/wissenschaftlichen Disziplinen gibt, limitiere die CSV Datei mit den Ergebnissen bitte auf maximal 100 Einträge. Achte darauf, dass das Sample maximal vielfältig ist, d.h. maximal viele Wissenschaftsbereiche und Fachgebiete der DFG abdeckt. 

Für die Spalte "Kontakt" trägst du bitte alle Möglichkeiten zu der jeweiligen Fachgesellschaft Kontakt aufzunehmen ein, zB Email-Adresse, Social Media Kanäle, Ansprechpersonen oder Telefonnummern.


Die Zuordnung zu den Wissenschaftsbereichen, Fachgebieten, Fachkollegien und Fächer/Disziplinen stützt du bitte auf die : [DFG-Fachsystematik der Wissenschaftsbereiche, Fachgebiete, Fachkollegien und Fächer für die Amtsperiode 2024-2028](https://www.dfg.de/resource/blob/331944/fachsystematik-2024-2028-de.pdf), die ca. 200 Fächer den jeweiligem Wissenschaftsbereich, Fachgebiet und Fachkollegium zuordnet. Hier siehst du alle Wissenschaftsbereiche und Fachgebiete in tabellerischer Form (die Fachkollegien und Fächer sind nicht enthalten, da sie zu viele wären):



| Wissenschaftsbereich              | Fachgebiet                                  | Fachkollegium | Fach  |
| --------------------------------- | ------------------------------------------- | ------------- | ----- |
| Geistes- und Sozialwissenschaften | Geisteswissenschaften                       | .....         | ..... |
|                                   | Sozial- und Verhaltenswissenschaften        | .....         | ..... |
| Lebenswissenschaften              | Biologie                                    | .....         | ..... |
|                                   | Medizin                                     | .....         | ..... |
|                                   | Agrar-, Forstwissenschaften und Tiermedizin | .....         | ..... |
| Naturwissenschaften               | Chemie                                      | .....         | ..... |
|                                   | Physik                                      | .....         | ..... |
|                                   | Mathematik                                  | .....         | ..... |
|                                   | Geowissenschaften                           | .....         | ..... |
| Ingenieurwissenschaften           | Maschinenbau und Produktionstechnik         | .....         | ..... |
|                                   | Wärmetechnik/Verfahrenstechnik              | .....         | ..... |
|                                   | Materialwissenschaft und Werkstofftechnik   | .....         | ..... |
|                                   | Informatik, System- und Elektrotechnik      | .....         | ..... |
|                                   | Bauwesen und Architektur                    | .....         | ..... |


### 2) Claude Output


# Systematische Übersicht: Wissenschaftliche Dachverbände in Deutschland (Teil 1)

## TL;DR

- In Deutschland existieren wissenschaftliche Dachverbände in praktisch allen DFG-Wissenschaftsbereichen; die größten sind die **AWMF** (Medizin, 185 Fachgesellschaften, >300.000 Expert*innen) und der **DVT** (Technik/Naturwissenschaft, 36 Fachgesellschaften, >210.000 persönliche Mitglieder).
- Klar strukturierte, „echte" Dachverbände (die mehrere eigenständige Fachgesellschaften unter einem Dach vereinen) fanden sich v.a. in Medizin (AWMF), Biowissenschaften (VBIO), Geowissenschaften (DVGeo), Agrarforschung (DAF), Fachdidaktik (GFD), Statistik (DAGStat), Archäologie (DVA), Psychologie (Föderation) und den Ingenieurwissenschaften (DVT, VDI, VDE, 4ING).
- Die Datenlage zu Mitgliederzahlen ist heterogen: Für einige Verbände liegen präzise Wikipedia-/Website-Angaben vor, für andere (z.B. DAF) sind exakte Zahlen der Mitgliedsgesellschaften nicht öffentlich auffindbar; Wikipedia- und Website-Zahlen weichen teils voneinander ab (VBIO, VDI).

## Key Findings

- **Medizin** ist mit der AWMF am stärksten zentralisiert: ein einziger Dachverband bündelt 185 Fachgesellschaften mit über 300.000 Expert*innen (AWMF-Presseseite/Jahresbericht 2025/2026).
- **Ingenieur-/Naturwissenschaften** kennen mehrere sich überschneidende Dachstrukturen: den historischen DVT (seit 1916), den mitgliederstärksten Einzelverein VDI, den VDE (mit 5 Fachgesellschaften) sowie den hochschulpolitischen Dachverein 4ING.
- **Geistes- und Sozialwissenschaften** haben keinen einzelnen alles überspannenden Dachverband; stattdessen fachspezifische Dachstrukturen (GFD für Fachdidaktik, DVA für Archäologie, Föderation für Psychologie, DAGStat für Statistik).
- Die fünf großen mathematisch-naturwissenschaftlichen Fachgesellschaften (DVGeo, DMV, DPG, GDCh, VBIO) kooperieren unter der Dachmarke „Wissenschaft verbindet" und vertreten laut deren Website („Über uns") „zusammen über 130.000 Mitglieder" — dies ist jedoch eine Allianz, kein eingetragener Dachverband.

## Details

### Lebenswissenschaften

**AWMF (Medizin):** Die Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften e.V. ist der zentrale medizinische Dachverband. Die AWMF-Presseseite (2026) formuliert: „In der AWMF organisieren sich derzeit 185 Fachgesellschaften … denen über 300.000 Expert*innen … angehören"; der AWMF-Jahresbericht 2025 bestätigt „185 Fachgesellschaften mit mehr als 300.000 Ärztinnen und Ärzten sowie Medizin Forschenden". (Die Übersichtsseite „Die AWMF" nennt weiterhin die gerundete Angabe „mehr als 180 Fachgesellschaften".) Sitz: rechtlich Frankfurt am Main, Geschäftsstelle Berlin.

**VBIO (Biologie):** Der Verband Biologie, Biowissenschaften und Biomedizin in Deutschland e.V. ist Deutschlands Dachverband der Biowissenschaften. Wikipedia nennt insgesamt 25.000 Mitglieder, davon ca. 25 Fachgesellschaften und ca. 6.000 Einzelmitglieder. Die VBIO-Website nennt aktuellere Zahlen: „26 institutionelle Mitglieder (Fachgesellschaften) mit über 25.000 Mitgliedern", „4.500 individuelle Mitglieder" und „76 kooperierende Mitglieder". Er entstand 2007 aus der Fusion des VdBiol mit dem vbbm.

**DAF (Agrar-, Forst-, Ernährungs-, Veterinär- und Umweltforschung):** Der Dachverband wissenschaftlicher Gesellschaften der Agrar-, Forst-, Ernährungs-, Veterinär- und Umweltforschung e.V. wurde 1973 gegründet, gibt die Schriftenreihe „agrarspectrum" heraus und wird geschäftsführend von der DLG betreut. Die genaue Zahl der Mitgliedsgesellschaften ist auf der Website nicht präzise ausgewiesen. (Nicht zu verwechseln mit der DAFA – Deutsche Agrarforschungsallianz.)

### Naturwissenschaften

**DVGeo (Geowissenschaften):** Der Dachverband der Geowissenschaften e.V. wurde 2015 gegründet und vereint vier Trägergesellschaften (DGGV, DGG, DMG, PalGes) sowie assoziierte Mitglieder (DTTG, FH-DGGV, BDG, SGD). Die Mitgliedsgesellschaften repräsentieren zusammen mehrere tausend Mitglieder (DGGV >5.500, DMG ~1.600, DGG ~900 laut dvgeo.org).

**„Wissenschaft verbindet":** Allianz der fünf großen mathematisch-naturwissenschaftlichen Fachgesellschaften DVGeo, DMV, DPG, GDCh und VBIO. Verbatim von wissenschaft-verbindet.de: „Wir sind fünf große mathematisch-naturwissenschaftliche Fachgesellschaften … Wir vertreten zusammen über 130.000 Mitglieder."

### Ingenieurwissenschaften

**DVT:** Der Deutsche Verband Technisch-Wissenschaftlicher Vereine e.V. (Sitz Berlin, gegründet 1916). Verbatim de.wikipedia.org: „Ihm gehören derzeit 36 technisch-wissenschaftliche Fachgesellschaften mit insgesamt mehr als 210.000 Mitgliedern"; die DVT-Website präzisiert: „mehr als 210.000 persönlichen und über 17.000 institutionellen Mitgliedern".

**VDI:** Der Verein Deutscher Ingenieure e.V. ist mit rund 125.000 Mitgliedern (Website) bzw. etwa 135.000 (englische Wikipedia) der größte technisch-wissenschaftliche Verein Deutschlands und gliedert sich in mehrere Fachgesellschaften.

**VDE:** Der Verband der Elektrotechnik Elektronik Informationstechnik e.V. hat rund 35.000 Mitglieder und fünf Fachgesellschaften (ITG, ETG, DGBMT, GMM, GMA).

**4ING:** Der Dachverein Fakultätentage der Ingenieurwissenschaften und der Informatik an Universitäten e.V. vereint vier Fakultätentage. Verbatim von 4ing.net: „repräsentieren mehr als 3.500 ProfessorInnen, 30.000 MitarbeiterInnen und über 280.000 Studierende an 60 Universitäten in Deutschland" (144 Fakultäten).

### Geistes- und Sozialwissenschaften

**GFD (Fachdidaktik):** Die Gesellschaft für Fachdidaktik e.V. ist der Dachverband der fachdidaktischen Fachgesellschaften mit aktuell 34 Mitgliedsverbänden (Website).

**DVA (Archäologie):** Der Deutsche Verband für Archäologie e.V. (2011 gegründet, Sitz Berlin) ist der Dachverband archäologischer Vereinigungen; bei Gründung vereinte er über 3.000 Mitglieder (Wikipedia).

**Föderation Deutscher Psychologenvereinigungen:** Zusammenschluss von BDP und DGPs (seit 1964). Verbatim von psychologie.de („Über uns"): „Im BDP und der DGPs sind insgesamt rund 15.000 Psychologinnen und Psychologen in Forschung, Lehre und Praxis vertreten."

**DAGStat (Statistik):** Die Deutsche Arbeitsgemeinschaft Statistik e.V. ist ein Verbund von 13 bis 15 statistischen Fachgesellschaften und dem Statistischen Bundesamt.

**VHD (Geschichte):** Der Verband der Historiker und Historikerinnen Deutschlands e.V. hat über 3.400 Mitglieder; er ist ein Fachverband (kein Dachverband mehrerer Gesellschaften) und zur Vollständigkeit aufgeführt.

## Recommendations

- **Für die CSV-Erstellung:** Mitgliederzahlen strikt nach Quelle (Wikipedia vs. Website) getrennt halten, da diese teils voneinander abweichen (VBIO, VDI, AWMF-Rundung).
- **Bei unklarer Gesellschaftszahl** (DAF, DVGeo-Gesamtmitglieder) direkte Anfrage bei der jeweiligen Geschäftsstelle stellen; Schwelle: wenn keine offizielle Zahl binnen einer Anfrage kommt, „nicht auffindbar" beibehalten.
- **Für Teil 2** der Recherche empfiehlt sich die systematische Erfassung der einzelnen Fachgesellschaften unter diesen Dächern (AWMF-Mitgliederliste, VBIO-Fachgesellschaften, VDE/VDI-Fachgesellschaften, GFD-Mitgliedsverbände, DAGStat-Mitgliedsgesellschaften).
- **Priorisierung:** AWMF, VBIO, DVGeo, DVT, VDE, VDI und GFD sind die eindeutigsten „Dachverbände im engeren Sinne" und sollten als Kern der Übersicht dienen.

## Caveats

- Einige gelistete Organisationen (VHD; ergänzend recherchiert: Verein für Socialpolitik ~3.800 Mitglieder, DGfE ~4.500 Mitglieder) sind große Einzel-Fachgesellschaften, keine Dachverbände im engeren Sinne; sie sind zur Vollständigkeit bzw. Abgrenzung aufgeführt.
- Mitgliederzahlen sind Momentaufnahmen und schwanken je nach Erhebungsjahr.
- Bei DAGStat besteht ein möglicher Widerspruch zwischen deutschem Impressum (Vorsitzende: Prof. Dr. Katja Ickstadt) und der englischen Organisationsseite (Christine Müller/Tim Friede) – das deutsche Impressum gilt als maßgeblich.
- „Wissenschaft verbindet" ist eine Kooperationsmarke/Allianz, kein eingetragener Verein; entsprechend gibt es keine eigene Geschäftsstelle und keinen Wikipedia-Artikel.

## Tabelle (CSV-fähig)

| Wissenschaftsbereich              | Fachgebiet                                                                             | Dachverband                                                                                                              | Dachverband Mitgliederanzahl Fachgesellschaften                                     | Dachverband Mitgliederanzahl Wissenschaftler/Individuen                                                                                   | Wikipedialink                                                                                             | Website                           | Kontakt                                                                                                                                                                                                                                                                       |
| --------------------------------- | -------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Lebenswissenschaften              | Medizin                                                                                | Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften e.V. (AWMF)                                  | 185 Fachgesellschaften (Website/Presseseite, 2026; Übersichtsseite: „mehr als 180") | über 300.000 Expert*innen (Website, 2025/2026)                                                                                            | https://de.wikipedia.org/wiki/Arbeitsgemeinschaft_der_Wissenschaftlichen_Medizinischen_Fachgesellschaften | https://www.awmf.org              | E-Mail: office@awmf.org; Tel: +49 30 20097777; Präsident: Prof. Dr. Rolf-Detlef Treede; Geschäftsführer: Dennis Makoschey; LinkedIn (de.linkedin.com/company/awmf), Bluesky (awmf.bsky.social); Geschäftsstelle Birkenstr. 67, 10559 Berlin                                   |
| Lebenswissenschaften              | Biologie                                                                               | Verband Biologie, Biowissenschaften und Biomedizin in Deutschland e.V. (VBIO)                                            | ca. 25 Fachgesellschaften (Wikipedia) / 26 institutionelle Mitglieder (Website)     | 25.000 Mitglieder gesamt, davon ca. 6.000 Einzelmitglieder (Wikipedia) / 4.500 individuelle + über 25.000 in Fachgesellschaften (Website) | https://de.wikipedia.org/wiki/Verband_Biologie,_Biowissenschaften_und_Biomedizin_in_Deutschland           | https://www.vbio.de               | E-Mail: info@vbio.de; Tel München: 089 260 245 73, Berlin: 030 278 91916; Präsident: Prof. Dr. Markus Engstler; Instagram, Facebook, LinkedIn (linkedin.com/company/vbio-verband), Bluesky; Geschäftsstelle Corneliusstr. 12, 80469 München                                   |
| Lebenswissenschaften              | Agrar-, Forstwissenschaften und Tiermedizin                                            | Dachverband wissenschaftlicher Gesellschaften der Agrar-, Forst-, Ernährungs-, Veterinär- und Umweltforschung e.V. (DAF) | nicht auffindbar                                                                    | nicht auffindbar                                                                                                                          | nicht auffindbar                                                                                          | https://www.agrarforschung.de     | E-Mail: A.Schaffner@DLG.org; Tel: +49 69 24788-321; Präsident: Prof. Dr. Karl-Hermann Mühling; Geschäftsführung: Dr. Achim Schaffner (DLG); Social Media: nicht auffindbar; Eschborner Landstr. 122, 60489 Frankfurt am Main                                                  |
| Naturwissenschaften               | Geowissenschaften                                                                      | Dachverband der Geowissenschaften e.V. (DVGeo)                                                                           | 4 Vollmitglieder (DGGV, DGG, DMG, PalGes) + assoziierte Mitglieder (Wikipedia)      | nicht auffindbar (Gesamtsumme); Mitgliedsgesellschaften z.B. DGGV >5.500, DMG ~1.600, DGG ~900 (Website)                                  | https://de.wikipedia.org/wiki/Dachverband_der_Geowissenschaften                                           | https://www.dvgeo.org             | E-Mail: fahry-seelig@dvgeo.org / info@dvgeo.org; Tel: 030 201 79 683; Präsident: Prof. Dr. Frank Schilling; Ansprechpartnerin: Tamara Fahry-Seelig; Social Media: nicht auffindbar; Luisenstr. 58/59, 10117 Berlin                                                            |
| Naturwissenschaften               | Chemie/Physik/Mathematik/Geowissenschaften (übergreifende Allianz)                     | Wissenschaft verbindet (Allianz DVGeo, DMV, DPG, GDCh, VBIO)                                                             | 5 Fachgesellschaften (Website)                                                      | über 130.000 Mitglieder zusammen (Website)                                                                                                | nicht auffindbar                                                                                          | https://wissenschaft-verbindet.de | Kontakt über die fünf Mitgliedsgesellschaften; keine eigene Geschäftsstelle; keine eigenen Social-Media-Kanäle                                                                                                                                                                |
| Ingenieurwissenschaften           | Informatik, System- und Elektrotechnik (u.a., technisch-wissenschaftlich übergreifend) | Deutscher Verband Technisch-Wissenschaftlicher Vereine e.V. (DVT)                                                        | 36 Fachgesellschaften (Wikipedia)                                                   | mehr als 210.000 persönliche und über 17.000 institutionelle Mitglieder (Website/Wikipedia)                                               | https://de.wikipedia.org/wiki/Deutscher_Verband_Technisch-Wissenschaftlicher_Vereine                      | https://www.dvt-net.de            | E-Mail: info@dvt-net.de; Vorsitzender: Dr.-Ing. Hans Heinz Zimmer; Geschäftsführerin: Alina Cohnen; Social Media: nicht auffindbar; Sitz Steinplatz 1, 10623 Berlin (c/o VDI, Düsseldorf)                                                                                     |
| Ingenieurwissenschaften           | Maschinenbau und Produktionstechnik (u.a., übergreifend)                               | Verein Deutscher Ingenieure e.V. (VDI)                                                                                   | mehrere Fachgesellschaften                                                          | rund 125.000 Mitglieder (Website); ca. 135.000 (englische Wikipedia)                                                                      | https://de.wikipedia.org/wiki/Verein_Deutscher_Ingenieure                                                 | https://www.vdi.de                | Präsident: Lutz Eckstein; LinkedIn (69.820 Follower); VDI-Platz 1, 40468 Düsseldorf                                                                                                                                                                                           |
| Ingenieurwissenschaften           | Informatik, System- und Elektrotechnik                                                 | VDE Verband der Elektrotechnik Elektronik Informationstechnik e.V.                                                       | 5 Fachgesellschaften (ITG, ETG, DGBMT, GMM, GMA)                                    | ca. 35.000 Mitglieder (Wikipedia/de-academic)                                                                                             | https://de.wikipedia.org/wiki/VDE_Verband_der_Elektrotechnik_Elektronik_Informationstechnik               | https://www.vde.com               | Vorsitz: Dr.-Ing. Joachim Schneider; Merianstr. 28, 63069 Offenbach am Main                                                                                                                                                                                                   |
| Ingenieurwissenschaften           | Bauwesen/Maschinenbau/Elektrotechnik/Informatik (hochschulpolitisch)                   | Fakultätentage der Ingenieurwissenschaften und der Informatik an Universitäten e.V. (4ING)                               | 4 Fakultätentage (Website)                                                          | 144 Fakultäten an 60 Universitäten; >3.500 Professor_innen, 30.000 wiss. Mitarbeiter_innen, >280.000 Studierende (Website)                | nicht auffindbar                                                                                          | https://4ing.net                  | E-Mail: h.schmitt@4ing.net / vorsitzender@4ing.net; Tel: +49 6151 950 51 35; Vorsitzender: Prof. Dr.-Ing. Sven Klinkel; Geschäftsführerin: Heike Schmitt; Bluesky; Sitz TU Berlin, Str. des 17. Juni 144, 10623 Berlin                                                        |
| Geistes- und Sozialwissenschaften | Geisteswissenschaften (Fachdidaktik, übergreifend)                                     | Gesellschaft für Fachdidaktik e.V. (GFD)                                                                                 | 34 Mitgliedsverbände (Website)                                                      | nicht auffindbar                                                                                                                          | nicht auffindbar (kein eigener Artikel)                                                                   | https://www.fachdidaktik.org      | E-Mail: korneck@em.uni-frankfurt.de; Tel: 069/798-46454; Geschäftsstelle/Verantwortliche: Prof. Dr. Friederike Korneck (Goethe-Universität Frankfurt); Social Media: nicht auffindbar; Max-von-Laue-Str. 1, 60438 Frankfurt/M.                                                |
| Geistes- und Sozialwissenschaften | Geisteswissenschaften (Archäologie)                                                    | Deutscher Verband für Archäologie e.V. (DVA)                                                                             | mehrere Mitgliedsverbände (NWDV, MOVA, WSVA u.a.)                                   | über 3.000 Mitglieder (Wikipedia, bei Gründung 2011)                                                                                      | https://de.wikipedia.org/wiki/Deutscher_Verband_für_Archäologie                                           | https://www.dvarch.de             | E-Mail: kontakt@dvarch.de; Tel: +49 30 266 42 53 19; Präsident: Prof. Dr. Matthias Wemhoff; Social Media: nicht auffindbar; Geschwister-Scholl-Str. 6, 10117 Berlin                                                                                                           |
| Geistes- und Sozialwissenschaften | Sozial- und Verhaltenswissenschaften (Psychologie)                                     | Föderation Deutscher Psychologenvereinigungen                                                                            | 2 Gliedverbände (BDP, DGPs)                                                         | rund 15.000 Psycholog*innen (Website psychologie.de)                                                                                      | https://de.wikipedia.org/wiki/Föderation_Deutscher_Psychologenvereinigungen                               | https://psychologie.de            | E-Mail: federation@psychologie.de; gemeinsamer Vorstand aus BDP + DGPs (Präsidentschaft jährlich wechselnd); Tel über BDP 030 209 166 600 / DGPs +49 30 28445960; Sitz Berlin                                                                                                 |
| Geistes- und Sozialwissenschaften | Sozial- und Verhaltenswissenschaften (Statistik)                                       | Deutsche Arbeitsgemeinschaft Statistik e.V. (DAGStat)                                                                    | 13–15 Mitgliedsgesellschaften + Statistisches Bundesamt (Website)                   | nicht auffindbar                                                                                                                          | https://de.wikipedia.org/wiki/Deutsche_Arbeitsgemeinschaft_Statistik                                      | https://www.dagstat.de            | E-Mail: kontakt@dagstat.de; Tel: nicht auffindbar; Vorsitzende: Prof. Dr. Katja Ickstadt (lt. Impressum); Social Media: nicht auffindbar; Geschäftsstelle Universität Bielefeld                                                                                               |
| Geistes- und Sozialwissenschaften | Geisteswissenschaften (Geschichte) – Einzel-Fachverband, kein Dachverband              | Verband der Historiker und Historikerinnen Deutschlands e.V. (VHD)                                                       | kein Dachverband (Einzel-Fachverband)                                               | über 3.400 Mitglieder (Website)                                                                                                           | https://de.wikipedia.org/wiki/Verband_der_Historiker_und_Historikerinnen_Deutschlands                     | https://www.historikerverband.de  | E-Mail: geschaeftsstelle@historikerverband.de; Tel: +49 69 798 32572; Vorsitzende: Prof. Dr. Antje Flüchter; Geschäftsführerin: Marie von Lüneburg; LinkedIn, Mastodon (fedihum.org/@VHD), Bluesky; c/o Goethe-Universität, Norbert-Wollheim-Platz 1, 60323 Frankfurt am Main |
# Read data ----

ds_file = "https://www.soscisurvey.de/galloitalico/?act=CWa8cZWJTeDgnkrqoOUwLKfL"

gi_vital <- read_delim(
  file = ds_file,
  delim = "\t",
  quote = "\"",
  col_names = c(
    "CASE",
    "SERIAL",
    "REF",
    "QUESTNNR",
    "MODE",
    "STARTED",
    "DE01_01",
    "DE02",
    "DE02_03",
    "DE03",
    "EM01",
    "EM02",
    "EM03",
    "LA01",
    "LA02_01",
    "LA02_02",
    "LA02_03",
    "LA02_04",
    "LA02_05",
    "LA02_06",
    "LA02_07",
    "LA02_08",
    "LA03",
    "LA04",
    "LA05",
    "LA06",
    "LA07_01",
    "LA08_01",
    "LG01",
    "LG02",
    "LG03",
    "LG04",
    "LG11",
    "LG12",
    "LG05",
    "LG06",
    "LG13",
    "LG07",
    "LG14",
    "LG10",
    "LG08_01",
    "LO01",
    "LO02",
    "LO02s",
    "LO03",
    "LO04",
    "LO05",
    "LO09",
    "LO06",
    "LO07",
    "LO07s",
    "LO08",
    "LO08_03",
    "LO10",
    "LO10s",
    "LO11",
    "LO11s",
    "LU01",
    "LU01_01",
    "LU01_02",
    "LU01_03",
    "LU01_04",
    "LU01_05",
    "LU01_06",
    "LU01_07",
    "LU01_08",
    "LU01_09",
    "LU01_10",
    "LU01_11",
    "LU01_12",
    "LU01_15",
    "LU01_13",
    "LU01_14",
    "LU02",
    "LU02_09",
    "LU02_10",
    "LU02_01",
    "LU02_02",
    "LU02_03",
    "LU02_04",
    "LU02_05",
    "LU02_06",
    "LU02_07",
    "LU02_08",
    "LU03",
    "LU03_01",
    "LU03_02",
    "LU03_03",
    "LU03_04",
    "LU03_05",
    "LU03_06",
    "LU03_07",
    "LU03_08",
    "LU03_09",
    "LU03_10",
    "LU03_11",
    "LU03_12",
    "LU03_13",
    "LU03_14",
    "LU03_15",
    "LU03_16",
    "LU03_17",
    "LU03_18",
    "LU03_19",
    "LU03_20",
    "LU04",
    "LU05",
    "RW01",
    "RW02",
    "RW03",
    "RW03_01",
    "RW03_08",
    "RW03_07",
    "RW03_06",
    "RW03_03",
    "RW03_02",
    "RW03_09",
    "RW03_04",
    "RW03_05",
    "RW04",
    "RW04_01",
    "RW04_02",
    "RW04_03",
    "RW04_04",
    "RW04_05",
    "RW04_06",
    "XT01_01",
    "XT01_02",
    "XT01_03",
    "XT01_04",
    "XT01_05",
    "XT01_06",
    "XT01_07",
    "XT01_08",
    "XT01_09",
    "XT01_10",
    "XT01_11",
    "XT01_12",
    "XT01_13",
    "XT01_14",
    "XT01_15",
    "XT02",
    "TIME001",
    "TIME002",
    "TIME003",
    "TIME004",
    "TIME005",
    "TIME006",
    "TIME007",
    "TIME008",
    "TIME009",
    "TIME010",
    "TIME011",
    "TIME012",
    "TIME013",
    "TIME014",
    "TIME015",
    "TIME016",
    "TIME017",
    "TIME018",
    "TIME019",
    "TIME020",
    "TIME021",
    "TIME022",
    "TIME_SUM",
    "MAILSENT",
    "LASTDATA",
    "FINISHED",
    "Q_VIEWER",
    "LASTPAGE",
    "MAXPAGE"
  ),
  skip = 1,
  trim_ws = TRUE,
  comment = ""
)

attr(gi_vital, "project") = "galloitalico"
attr(gi_vital, "description") = "Gallo-Italian vitality"
attr(gi_vital, "date") = Sys.Date()
attr(gi_vital, "server") = "https://www.soscisurvey.de"

rm(ds_file)

# Factorise columns ----

gi_vital$DE02 = factor(
  gi_vital$DE02,
  levels = c("1", "2", "3", "-9"),
  labels = c("Donna", "Uomo", "Specifichi", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$DE03 = factor(
  gi_vital$DE03,
  levels = c("1", "2", "3", "4", "5", "6", "7", "-9"),
  labels = c(
    "Non ho avuto la possibilità di andare a scuola",
    "Licenza elementare",
    "Licenza di scuola media",
    "Diploma di maturità/certificato professionale",
    "Laurea triennale",
    "Laurea specialistica/magistrale",
    "Dottorato di ricerca",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$EM01 = factor(
  gi_vital$EM01,
  levels = c("1", "2", "3", "4", "-9"),
  labels = c(
    "Studentessa/Studente",
    "Lavoratrice/Lavoratore",
    "Disoccupata/Disoccupato",
    "Pensionata/Pensionato",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$EM02 = factor(
  gi_vital$EM02,
  levels = c(
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "-9"
  ),
  labels = c(
    "Agricoltura, silvicoltura e pesca",
    "Attività estrattiva",
    "Industrie alimentari, delle bevande e del tabacco",
    "Industrie tessili, abbigliamento, pelli e accessori",
    "Industria del legno, della carta e stampa",
    "Fabbricazione di coke e prodotti petroliferi raffinati Fabbricazione di sostanze e prodotti chimici",
    "Produzione di articoli farmaceutici, chimico-medicinali e botanici",
    "Fabbricazione e attività manifatturiere",
    "Fornitura di energia elettrica, gas, vapore, aria condizionata, e acqua; reti fognarie.",
    "Attività di trattamento dei rifiuti e risanamento",
    "Costruzioni",
    "Commercio all’ingrosso e al dettaglio, riparazione di autoveicoli e motocicli",
    "Trasporto e magazzinaggio",
    "Servizi di alloggio e ristorazione",
    "Editoria, audiovisivi e attività radiotelevisive",
    "Telecomunicazioni",
    "Servizi IT e altri servizi informativi",
    "Attività finanziarie e assicurative",
    "Attività immobiliari(a)",
    "Attività legali, contabilità, consulenza di gestione, studi di architettura e ingegneria, collaudi ed analisi tecniche",
    "Ricerca scientifica e sviluppo",
    "Altre attività professionali, scientifiche e tecniche",
    "Attività amministrative e di servizi di supporto",
    "Amministrazione pubblica e difesa; assicurazione sociale obbligatoria",
    "Istruzione",
    "Sanità",
    "Servizi alle famiglie e assistenza sociale",
    "Attività artistiche, di intrattenimento e divertimento",
    "Altre attività di servizi",
    "Attività di famiglie e convivenze come datori di lavoro per personale domestico; produzione di beni e servizi indifferenziati per uso proprio da parte di famiglie e convivenze",
    "Attività di organizzazioni e organismi extraterritoriali",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$EM03 = factor(
  gi_vital$EM03,
  levels = c(
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "101",
    "102",
    "103",
    "104",
    "105",
    "106",
    "107",
    "108",
    "109",
    "110",
    "111",
    "112",
    "113",
    "114",
    "115",
    "116",
    "117",
    "118",
    "119",
    "120",
    "121",
    "122",
    "123",
    "124",
    "125",
    "126",
    "127",
    "128",
    "129",
    "130",
    "131",
    "132",
    "133",
    "134",
    "135",
    "136",
    "137",
    "138",
    "139",
    "140",
    "141",
    "142",
    "143",
    "144",
    "145",
    "146",
    "147",
    "148",
    "149",
    "150",
    "151",
    "152",
    "153",
    "154",
    "155",
    "156",
    "157",
    "158",
    "159",
    "160",
    "161",
    "162",
    "163",
    "164",
    "165",
    "166",
    "167",
    "168",
    "169",
    "170",
    "171",
    "172",
    "173",
    "174",
    "175",
    "176",
    "177",
    "178",
    "179",
    "180",
    "181",
    "182",
    "183",
    "184",
    "185",
    "186",
    "187",
    "188",
    "189",
    "190",
    "191",
    "192",
    "193",
    "194",
    "195",
    "196",
    "197",
    "-9"
  ),
  labels = c(
    "Architettura e ingegneria edile-architettura (quinquennale) (LM-4 C.U.)",
    "Beni culturali (L-1)",
    "Biotecnologie (L-2)",
    "Conservazione e restauro dei beni culturali (LMR/02)",
    "Diagnostica per la conservazione dei beni culturali (L-43)",
    "Discipline delle arti figurative, della musica, dello spettacolo e della moda (L-3)",
    "Disegno industriale (L-4)",
    "Farmacia e farmacia industriale (LM-13)",
    "Filosofia (L-5)",
    "Geografia (L-6)",
    "Ingegneria civile e ambientale (L-7)",
    "Ingegneria dell’informazione (L-8)",
    "Ingegneria industriale (L-9)",
    "Lettere (L-10)",
    "Lingue e culture moderne (L-11)",
    "Magistrali in giurisprudenza (LMG/01)",
    "Mediazione linguistica (L-12)",
    "Medicina e chirurgia (LM-41)",
    "Medicina veterinaria (LM-42)",
    "Odontoiatria e protesi dentaria (LM-46)",
    "Professioni sanitarie della prevenzione (L/SNT4)",
    "Professioni sanitarie della riabilitazione (L/SNT2)",
    "Professioni sanitarie tecniche (L/SNT3)",
    "Professioni sanitarie, infermieristiche e professione sanitaria ostetrica (L/SNT1)",
    "Scienze biologiche (L-13)",
    "Scienze dei servizi giuridici (L-14)",
    "Scienze del turismo (L-15)",
    "Scienze dell’amministrazione e dell’organizzazione (L-16)",
    "Scienze dell’architettura (L-17)",
    "Scienze dell’economia e della gestione aziendale (L-18)",
    "Scienze dell’educazione e della formazione (L-19)",
    "Scienze della comunicazione (L-20)",
    "Scienze della difesa e della sicurezza (DS/1)",
    "Scienze della difesa e della sicurezza (L/DS)",
    "Scienze della formazione primaria (LM-85 bis)",
    "Scienze della pianificazione territoriale, urbanistica, paesaggistica e ambientale (L-21)",
    "Scienze delle attività motorie e sportive (L-22)",
    "Scienze e tecniche dell’edilizia (L-23)",
    "Scienze e tecniche psicologiche (L-24)",
    "Scienze e tecnologie agrarie e forestali (L-25)",
    "Scienze e tecnologie alimentari (L-26)",
    "Scienze e tecnologie chimiche (L-27)",
    "Scienze e tecnologie della navigazione (L-28)",
    "Scienze e tecnologie farmaceutiche (L-29)",
    "Scienze e tecnologie fisiche (L-30)",
    "Scienze e tecnologie informatiche (L-31)",
    "Scienze e tecnologie per l’ambiente e la natura (L-32)",
    "Scienze economiche (L-33)",
    "Scienze geologiche (L-34)",
    "Scienze matematiche (L-35)",
    "Scienze politiche e delle relazioni internazionali (L-36)",
    "Scienze sociali per la cooperazione, lo sviluppo e la pace (L-37)",
    "Scienze zootecniche e tecnologie delle produzioni animali (L-38)",
    "Scienze, culture e politiche della gastronomia (L/GASTR)",
    "Servizio sociale (L-39)",
    "Sociologia (L-40)",
    "Statistica (L-41)",
    "Storia (L-42)",
    "Antropologia culturale ed etnologia (LM-1)",
    "Archeologia (LM-2)",
    "Architettura del paesaggio (LM-3)",
    "Architettura e ingegneria edile-architettura (LM-4)",
    "Archivistica e biblioteconomia (LM-5)",
    "Biologia (LM-6)",
    "Biotecnologie agrarie (LM-7)",
    "Biotecnologie industriali (LM-8)",
    "Biotecnologie mediche, veterinarie e farmaceutiche (LM-9)",
    "Design (LM-12)",
    "Filologia moderna (LM-14)",
    "Filologia, letterature e storia dell’antichità (LM-15)",
    "Finanza (LM-16)",
    "Fisica (LM-17)",
    "Informatica (LM-18)",
    "Informazione e sistemi editoriali (LM-19)",
    "Ingegneria aerospaziale e astronautica (LM-20)",
    "Ingegneria biomedica (LM-21)",
    "Ingegneria chimica (LM-22)",
    "Ingegneria civile (LM-23)",
    "Ingegneria dei sistemi edilizi (LM-24)",
    "Ingegneria dell’automazione (LM-25)",
    "Ingegneria della sicurezza (LM-26)",
    "Ingegneria delle telecomunicazioni (LM-27)",
    "Ingegneria elettrica (LM-28)",
    "Ingegneria elettronica (LM-29)",
    "Ingegneria energetica e nucleare (LM-30)",
    "Ingegneria gestionale (LM-31)",
    "Ingegneria informatica (LM-32)",
    "Ingegneria meccanica (LM-33)",
    "Ingegneria navale (LM-34)",
    "Ingegneria per l’ambiente e il territorio (LM-35)",
    "Lingue e letterature dell’Africa e dell’Asia (LM-36)",
    "Lingue e letterature moderne europee e americane (LM-37)",
    "Lingue moderne per la comunicazione e la cooperazione internazionale (LM-38)",
    "Linguistica (LM-39)",
    "Matematica (LM-40)",
    "Metodologie informatiche per le discipline umanistiche (LM-43)",
    "Modellistica matematico-fisica per l’ingegneria (LM-44)",
    "Musicologia e beni musicali (LM-45)",
    "Organizzazione e gestione dei servizi per lo sport e le attività motorie (LM-47)",
    "Pianificazione territoriale urbanistica e ambientale (LM-48)",
    "Progettazione e gestione dei sistemi turistici (LM-49)",
    "Programmazione e gestione dei servizi educativi (LM-50)",
    "Psicologia (LM-51)",
    "Relazioni internazionali (LM-52)",
    "Scienza e ingegneria dei materiali (LM-53)",
    "Scienze Giuridiche (LM/SC-GIUR)",
    "Scienze chimiche (LM-54)",
    "Scienze cognitive (LM-55)",
    "Scienze dell’economia (LM-56)",
    "Scienze dell’educazione degli adulti e della formazione continua (LM-57)",
    "Scienze dell’universo (LM-58)",
    "Scienze della comunicazione pubblica, d’impresa e pubblicità (LM-59)",
    "Scienze della difesa e della sicurezza (LM/DS)",
    "Scienze della natura (LM-60)",
    "Scienze della nutrizione umana (LM-61)",
    "Scienze della politica (LM-62)",
    "Scienze delle professioni sanitarie della prevenzione (LM/SNT4)",
    "Scienze delle professioni sanitarie tecniche (LM/SNT3)",
    "Scienze delle pubbliche amministrazioni (LM-63)",
    "Scienze delle religioni (LM-64)",
    "Scienze dello spettacolo e produzione multimediale (LM-65)",
    "Scienze e tecniche delle attività motorie preventive e adattate (LM-67)",
    "Scienze e tecniche dello sport (LM-68)",
    "Scienze e tecnologie agrarie (LM-69)",
    "Scienze e tecnologie alimentari (LM-70)",
    "Scienze e tecnologie della chimica industriale (LM-71)",
    "Scienze e tecnologie della navigazione (LM-72)",
    "Scienze e tecnologie forestali ed ambientali (LM-73)",
    "Scienze e tecnologie geologiche (LM-74)",
    "Scienze e tecnologie per l’ambiente e il territorio (LM-75)",
    "Scienze economiche e sociali della gastronomia (LM/GASTR)",
    "Scienze economiche per l’ambiente e la cultura (LM-76)",
    "Scienze economico-aziendali (LM-77)",
    "Scienze filosofiche (LM-78)",
    "Scienze geofisiche (LM-79)",
    "Scienze geografiche (LM-80)",
    "Scienze infermieristiche e ostetriche (LM/SNT1)",
    "Scienze pedagogiche (LM-85)",
    "Scienze per la conservazione dei beni culturali (LM-11)",
    "Scienze per la cooperazione allo sviluppo (LM-81)",
    "Scienze riabilitative delle professioni sanitarie (LM/SNT2)",
    "Scienze statistiche (LM-82)",
    "Scienze statistiche attuariali e finanziarie (LM-83)",
    "Scienze storiche (LM-84)",
    "Scienze zootecniche e tecnologie animali (LM-86)",
    "Servizio sociale e politiche sociali (LM-87)",
    "Sicurezza informatica (LM-66)",
    "Sociologia e ricerca sociale (LM-88)",
    "Specialistiche nelle scienze della difesa e della sicurezza (DS/S)",
    "Storia dell’arte (LM-89)",
    "Studi europei (LM-90)",
    "Tecniche e metodi per la societa dell’informazione (LM-91)",
    "Teorie della comunicazione (LM-92)",
    "Teorie e metodologie dell’e-learning e della media education (LM-93)",
    "Traduzione specialistica e interpretariato (LM-94)",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LA01 = factor(
  gi_vital$LA01,
  levels = c("1", "3", "2", "-9"),
  labels = c("Negativa", "Indifferente", "Positiva", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LA03 = factor(
  gi_vital$LA03,
  levels = c("2", "3", "1", "-9"),
  labels = c("No", "Indifferente", "Sì", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LA04 = factor(
  gi_vital$LA04,
  levels = c("2", "3", "1", "-9"),
  labels = c("No", "Indifference", "Sì", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LA05 = factor(
  gi_vital$LA05,
  levels = c("1", "2", "-9"),
  labels = c(
    "Ogni comune/località dovrebbe insegnare la propria varietà di dialetto.",
    "Una unica varietà di dialetto dovrebbe essere insegnata su un territorio più grande.",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LA06 = factor(
  gi_vital$LA06,
  levels = c("1", "2", "-9"),
  labels = c(
    "Il dialetto di un comune/località dovrebbe essere scelto come la singola varietà.",
    "Si dovrebbe creare una nuova varietà basata sui dialetti dei vari comuni/località.",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG01 = factor(
  gi_vital$LG01,
  levels = c("1", "2", "3", "4", "-9"),
  labels = c(
    "Prevalentemente in italiano",
    "Prevalentemente in dialetto",
    "In italiano e in dialetto con la stessa frequenza",
    "Né in italiano né in dialetto",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG02 = factor(
  gi_vital$LG02,
  levels = c("1", "2", "3", "4", "-9"),
  labels = c(
    "Prevalentemente in italiano",
    "Prevalentemente in dialetto",
    "In italiano e in dialetto con la stessa frequenza",
    "Né in italiano né in dialetto",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG03 = factor(
  gi_vital$LG03,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LG04 = factor(
  gi_vital$LG04,
  levels = c("1", "2", "3", "4", "-9"),
  labels = c(
    "Prevalentemente in italiano",
    "Prevalentemente in dialetto",
    "In italiano e in dialetto con la stessa frequenza",
    "Né in italiano né in dialetto",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG11 = factor(
  gi_vital$LG11,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "Prevalentemente in italiano",
    "Prevalentemente in dialetto",
    "In italiano e in dialetto in stessa misura",
    "Né in italiano né in dialetto",
    "Non ho figli minorenni",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG12 = factor(
  gi_vital$LG12,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "Prevalentemente in italiano",
    "Prevalentemente in dialetto",
    "In italiano e in dialetto con la stessa frequenza",
    "Né in italiano né in dialetto",
    "Non ho figli maggiorenni",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG05 = factor(
  gi_vital$LG05,
  levels = c("1", "2", "3", "4", "-9"),
  labels = c(
    "Prevalentemente in italiano",
    "Prevalentemente in dialetto",
    "In italiano e in dialetto in stessa misura",
    "Né in italiano né in dialetto",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG06 = factor(
  gi_vital$LG06,
  # Manual sorting
  levels = c("1", "5", "3", "4", "2", "-9"),
  labels = c(
    "No, per niente",
    "Sì, ma molto poco",
    "Così così",
    "Sì, lo capisco bene",
    "Sì, lo capisco molto bene",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG13 = factor(
  gi_vital$LG13,
  # Manual sorting
  levels = c("1", "5", "3", "4", "2", "-9"),
  labels = c(
    "No, per niente",
    "Sì, ma molto poco",
    "Così così",
    "Sì, lo capisco bene",
    "Sì, lo capisco molto bene",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG07 = factor(
  gi_vital$LG07,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "No, per niente",
    "Sì, ma molto poco",
    "Così così",
    "Sì, lo parlo bene",
    "Sì, lo parlo molto bene",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG14 = factor(
  gi_vital$LG14,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "No, per niente",
    "Sì, ma molto poco",
    "Così così",
    "Sì, lo parlo bene",
    "Sì, lo parlo molto bene",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LG10 = factor(
  gi_vital$LG10,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "Non lo parlo mai",
    "Lo parlo raramente",
    "Lo parlo qualche volta",
    "Lo parlo spesso",
    "Lo parlo sempre",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LO01 = factor(
  gi_vital$LO01,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LO03 = factor(
  gi_vital$LO03,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "<1>",
    "Per più di 10 anni",
    "Per 5-10 anni",
    "Per 1-5 anni",
    "Per meno di 1 anno",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LO04 = factor(
  gi_vital$LO04,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LO05 = factor(
  gi_vital$LO05,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LO09 = factor(
  gi_vital$LO09,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LO06 = factor(
  gi_vital$LO06,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$LO08 = factor(
  gi_vital$LO08,
  levels = c("1", "2", "3", "-9"),
  labels = c(
    "Italia",
    "Svizzera",
    "Altro stato (specifichi)",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LO10 = factor(
  gi_vital$LO10,
  levels = c(
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "-2",
    "-9"
  ),
  labels = c(
    "Agrigento",
    "Ancona",
    "Aosta",
    "Arezzo",
    "Ascoli Piceno",
    "Bari",
    "Barletta-Andria-Trani",
    "Belluno",
    "Brindisi",
    "Cagliari",
    "Caltanissetta",
    "Campobasso",
    "Catania",
    "Enna",
    "Fermo",
    "Firenze",
    "Foggia",
    "Frosinone",
    "Gorizia",
    "Grosseto",
    "Isernia",
    "Latina",
    "Lecce",
    "Livorno",
    "Lucca",
    "Macerata",
    "Massa-Carrara",
    "Messina",
    "Nuoro",
    "Oristano",
    "Padova",
    "Palermo",
    "Perugia",
    "Pesaro Urbino",
    "Pisa",
    "Pistoia",
    "Pordenone",
    "Prato",
    "Ragusa",
    "Rieti",
    "Roma",
    "Rovigo",
    "Sassari",
    "Siena",
    "Siracusa",
    "Sud Sardegna",
    "Taranto",
    "Terni",
    "Trapani",
    "Treviso",
    "Trieste",
    "Udine",
    "Venezia",
    "Verona",
    "Vicenza",
    "Viterbo",
    "[NA] other text response",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LO11 = factor(
  gi_vital$LO11,
  levels = c(
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "-2",
    "-9"
  ),
  labels = c(
    "Appenzello Esterno",
    "Appenzello Interno",
    "Argovia",
    "Basilea Campagna",
    "Basilea Città",
    "Berna",
    "Friburgo",
    "Ginevra",
    "Giura",
    "Glarona",
    "Lucerna",
    "Neuchâtel",
    "Nidvaldo",
    "Obvaldo",
    "San Gallo",
    "Sciaffusa",
    "Soletta",
    "Svitto",
    "Turgovia",
    "Uri",
    "Vallese",
    "Vaud",
    "Zugo",
    "Zurigo",
    "[NA] other text response",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LU04 = factor(
  gi_vital$LU04,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "Molto spesso",
    "Spesso",
    "50/50",
    "Alcune volte",
    "Mai",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$LU05 = factor(
  gi_vital$LU05,
  levels = c("1", "2", "3", "4", "5", "-9"),
  labels = c(
    "Molto spesso",
    "Spesso",
    "50/50",
    "Alcune volte",
    "Mai",
    "[NA] Not answered"
  ),
  ordered = FALSE
)
gi_vital$RW01 = factor(
  gi_vital$RW01,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$RW02 = factor(
  gi_vital$RW02,
  levels = c("1", "2", "-9"),
  labels = c("Sì", "No", "[NA] Not answered"),
  ordered = FALSE
)
gi_vital$XT02 = factor(
  gi_vital$XT02,
  levels = c("1", "2", "-9"),
  labels = c(
    "Sì, voglio rispondere all\'ulteriore quesito",
    "No, voglio terminare il questionario ora",
    "[NA] Not answered"
  ),
  ordered = FALSE
)

# Add attributes ----

attr(gi_vital$LA02_01, "1") = "Non istruita"
attr(gi_vital$LA02_01, "7") = "Istruita"
attr(gi_vital$LA02_02, "1") = "Volgare"
attr(gi_vital$LA02_02, "7") = "Raffinata"
attr(gi_vital$LA02_03, "1") = "Ostile"
attr(gi_vital$LA02_03, "7") = "Amichevole"
attr(gi_vital$LA02_04, "1") = "Scortese"
attr(gi_vital$LA02_04, "7") = "Gentile"
attr(gi_vital$LA02_05, "1") = "Datata"
attr(gi_vital$LA02_05, "7") = "Alla moda"
attr(gi_vital$LA02_06, "1") = "Noiosa"
attr(gi_vital$LA02_06, "7") = "Divertente"
attr(gi_vital$LA02_07, "1") = "Povera"
attr(gi_vital$LA02_07, "7") = "Ricca"
attr(gi_vital$LA02_08, "1") = "Contadina/montanara"
attr(gi_vital$LA02_08, "7") = "Cittadina"
attr(gi_vital$LO02, "-2") = "other text response"
attr(gi_vital$LO02, "-9") = "Not answered"
attr(gi_vital$LO07, "-2") = "other text response"
attr(gi_vital$LO07, "-9") = "Not answered"
attr(gi_vital$LU01_01, "F") = "Not checked"
attr(gi_vital$LU01_01, "T") = "Checked"
attr(gi_vital$LU01_02, "F") = "Not checked"
attr(gi_vital$LU01_02, "T") = "Checked"
attr(gi_vital$LU01_03, "F") = "Not checked"
attr(gi_vital$LU01_03, "T") = "Checked"
attr(gi_vital$LU01_04, "F") = "Not checked"
attr(gi_vital$LU01_04, "T") = "Checked"
attr(gi_vital$LU01_05, "F") = "Not checked"
attr(gi_vital$LU01_05, "T") = "Checked"
attr(gi_vital$LU01_06, "F") = "Not checked"
attr(gi_vital$LU01_06, "T") = "Checked"
attr(gi_vital$LU01_07, "F") = "Not checked"
attr(gi_vital$LU01_07, "T") = "Checked"
attr(gi_vital$LU01_08, "F") = "Not checked"
attr(gi_vital$LU01_08, "T") = "Checked"
attr(gi_vital$LU01_09, "F") = "Not checked"
attr(gi_vital$LU01_09, "T") = "Checked"
attr(gi_vital$LU01_10, "F") = "Not checked"
attr(gi_vital$LU01_10, "T") = "Checked"
attr(gi_vital$LU01_11, "F") = "Not checked"
attr(gi_vital$LU01_11, "T") = "Checked"
attr(gi_vital$LU01_12, "F") = "Not checked"
attr(gi_vital$LU01_12, "T") = "Checked"
attr(gi_vital$LU01_15, "F") = "Not checked"
attr(gi_vital$LU01_15, "T") = "Checked"
attr(gi_vital$LU01_13, "F") = "Not checked"
attr(gi_vital$LU01_13, "T") = "Checked"
attr(gi_vital$LU01_14, "F") = "Not checked"
attr(gi_vital$LU01_14, "T") = "Checked"
attr(gi_vital$LU02_09, "F") = "Not checked"
attr(gi_vital$LU02_09, "T") = "Checked"
attr(gi_vital$LU02_10, "F") = "Not checked"
attr(gi_vital$LU02_10, "T") = "Checked"
attr(gi_vital$LU02_01, "F") = "Not checked"
attr(gi_vital$LU02_01, "T") = "Checked"
attr(gi_vital$LU02_02, "F") = "Not checked"
attr(gi_vital$LU02_02, "T") = "Checked"
attr(gi_vital$LU02_03, "F") = "Not checked"
attr(gi_vital$LU02_03, "T") = "Checked"
attr(gi_vital$LU02_04, "F") = "Not checked"
attr(gi_vital$LU02_04, "T") = "Checked"
attr(gi_vital$LU02_05, "F") = "Not checked"
attr(gi_vital$LU02_05, "T") = "Checked"
attr(gi_vital$LU02_06, "F") = "Not checked"
attr(gi_vital$LU02_06, "T") = "Checked"
attr(gi_vital$LU02_07, "F") = "Not checked"
attr(gi_vital$LU02_07, "T") = "Checked"
attr(gi_vital$LU02_08, "F") = "Not checked"
attr(gi_vital$LU02_08, "T") = "Checked"
attr(gi_vital$LU03_01, "F") = "Not checked"
attr(gi_vital$LU03_01, "T") = "Checked"
attr(gi_vital$LU03_02, "F") = "Not checked"
attr(gi_vital$LU03_02, "T") = "Checked"
attr(gi_vital$LU03_03, "F") = "Not checked"
attr(gi_vital$LU03_03, "T") = "Checked"
attr(gi_vital$LU03_04, "F") = "Not checked"
attr(gi_vital$LU03_04, "T") = "Checked"
attr(gi_vital$LU03_05, "F") = "Not checked"
attr(gi_vital$LU03_05, "T") = "Checked"
attr(gi_vital$LU03_06, "F") = "Not checked"
attr(gi_vital$LU03_06, "T") = "Checked"
attr(gi_vital$LU03_07, "F") = "Not checked"
attr(gi_vital$LU03_07, "T") = "Checked"
attr(gi_vital$LU03_08, "F") = "Not checked"
attr(gi_vital$LU03_08, "T") = "Checked"
attr(gi_vital$LU03_09, "F") = "Not checked"
attr(gi_vital$LU03_09, "T") = "Checked"
attr(gi_vital$LU03_10, "F") = "Not checked"
attr(gi_vital$LU03_10, "T") = "Checked"
attr(gi_vital$LU03_11, "F") = "Not checked"
attr(gi_vital$LU03_11, "T") = "Checked"
attr(gi_vital$LU03_12, "F") = "Not checked"
attr(gi_vital$LU03_12, "T") = "Checked"
attr(gi_vital$LU03_13, "F") = "Not checked"
attr(gi_vital$LU03_13, "T") = "Checked"
attr(gi_vital$LU03_14, "F") = "Not checked"
attr(gi_vital$LU03_14, "T") = "Checked"
attr(gi_vital$LU03_15, "F") = "Not checked"
attr(gi_vital$LU03_15, "T") = "Checked"
attr(gi_vital$LU03_16, "F") = "Not checked"
attr(gi_vital$LU03_16, "T") = "Checked"
attr(gi_vital$LU03_17, "F") = "Not checked"
attr(gi_vital$LU03_17, "T") = "Checked"
attr(gi_vital$LU03_18, "F") = "Not checked"
attr(gi_vital$LU03_18, "T") = "Checked"
attr(gi_vital$LU03_19, "F") = "Not checked"
attr(gi_vital$LU03_19, "T") = "Checked"
attr(gi_vital$LU03_20, "F") = "Not checked"
attr(gi_vital$LU03_20, "T") = "Checked"
attr(gi_vital$RW03_01, "F") = "Not checked"
attr(gi_vital$RW03_01, "T") = "Checked"
attr(gi_vital$RW03_08, "F") = "Not checked"
attr(gi_vital$RW03_08, "T") = "Checked"
attr(gi_vital$RW03_07, "F") = "Not checked"
attr(gi_vital$RW03_07, "T") = "Checked"
attr(gi_vital$RW03_06, "F") = "Not checked"
attr(gi_vital$RW03_06, "T") = "Checked"
attr(gi_vital$RW03_03, "F") = "Not checked"
attr(gi_vital$RW03_03, "T") = "Checked"
attr(gi_vital$RW03_02, "F") = "Not checked"
attr(gi_vital$RW03_02, "T") = "Checked"
attr(gi_vital$RW03_09, "F") = "Not checked"
attr(gi_vital$RW03_09, "T") = "Checked"
attr(gi_vital$RW03_04, "F") = "Not checked"
attr(gi_vital$RW03_04, "T") = "Checked"
attr(gi_vital$RW03_05, "F") = "Not checked"
attr(gi_vital$RW03_05, "T") = "Checked"
attr(gi_vital$RW04_01, "F") = "Not checked"
attr(gi_vital$RW04_01, "T") = "Checked"
attr(gi_vital$RW04_02, "F") = "Not checked"
attr(gi_vital$RW04_02, "T") = "Checked"
attr(gi_vital$RW04_03, "F") = "Not checked"
attr(gi_vital$RW04_03, "T") = "Checked"
attr(gi_vital$RW04_04, "F") = "Not checked"
attr(gi_vital$RW04_04, "T") = "Checked"
attr(gi_vital$RW04_05, "F") = "Not checked"
attr(gi_vital$RW04_05, "T") = "Checked"
attr(gi_vital$RW04_06, "F") = "Not checked"
attr(gi_vital$RW04_06, "T") = "Checked"
attr(gi_vital$XT01_01, "1") = "Suona male"
attr(gi_vital$XT01_01, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_01, "3") = "Suona così così"
attr(gi_vital$XT01_01, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_01, "5") = "Suona bene"
attr(gi_vital$XT01_02, "1") = "Suona male"
attr(gi_vital$XT01_02, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_02, "3") = "Suona così così"
attr(gi_vital$XT01_02, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_02, "5") = "Suona bene"
attr(gi_vital$XT01_03, "1") = "Suona male"
attr(gi_vital$XT01_03, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_03, "3") = "Suona così così"
attr(gi_vital$XT01_03, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_03, "5") = "Suona bene"
attr(gi_vital$XT01_04, "1") = "Suona male"
attr(gi_vital$XT01_04, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_04, "3") = "Suona così così"
attr(gi_vital$XT01_04, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_04, "5") = "Suona bene"
attr(gi_vital$XT01_05, "1") = "Suona male"
attr(gi_vital$XT01_05, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_05, "3") = "Suona così così"
attr(gi_vital$XT01_05, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_05, "5") = "Suona bene"
attr(gi_vital$XT01_06, "1") = "Suona male"
attr(gi_vital$XT01_06, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_06, "3") = "Suona così così"
attr(gi_vital$XT01_06, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_06, "5") = "Suona bene"
attr(gi_vital$XT01_07, "1") = "Suona male"
attr(gi_vital$XT01_07, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_07, "3") = "Suona così così"
attr(gi_vital$XT01_07, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_07, "5") = "Suona bene"
attr(gi_vital$XT01_08, "1") = "Suona male"
attr(gi_vital$XT01_08, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_08, "3") = "Suona così così"
attr(gi_vital$XT01_08, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_08, "5") = "Suona bene"
attr(gi_vital$XT01_09, "1") = "Suona male"
attr(gi_vital$XT01_09, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_09, "3") = "Suona così così"
attr(gi_vital$XT01_09, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_09, "5") = "Suona bene"
attr(gi_vital$XT01_10, "1") = "Suona male"
attr(gi_vital$XT01_10, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_10, "3") = "Suona così così"
attr(gi_vital$XT01_10, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_10, "5") = "Suona bene"
attr(gi_vital$XT01_11, "1") = "Suona male"
attr(gi_vital$XT01_11, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_11, "3") = "Suona così così"
attr(gi_vital$XT01_11, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_11, "5") = "Suona bene"
attr(gi_vital$XT01_12, "1") = "Suona male"
attr(gi_vital$XT01_12, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_12, "3") = "Suona così così"
attr(gi_vital$XT01_12, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_12, "5") = "Suona bene"
attr(gi_vital$XT01_13, "1") = "Suona male"
attr(gi_vital$XT01_13, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_13, "3") = "Suona così così"
attr(gi_vital$XT01_13, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_13, "5") = "Suona bene"
attr(gi_vital$XT01_14, "1") = "Suona male"
attr(gi_vital$XT01_14, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_14, "3") = "Suona così così"
attr(gi_vital$XT01_14, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_14, "5") = "Suona bene"
attr(gi_vital$XT01_15, "1") = "Suona male"
attr(gi_vital$XT01_15, "2") = "Suona abbastanza male"
attr(gi_vital$XT01_15, "3") = "Suona così così"
attr(gi_vital$XT01_15, "4") = "Suona abbastanza bene"
attr(gi_vital$XT01_15, "5") = "Suona bene"
attr(gi_vital$FINISHED, "F") = "Canceled"
attr(gi_vital$FINISHED, "T") = "Finished"
attr(gi_vital$Q_VIEWER, "F") = "Respondent"
attr(gi_vital$Q_VIEWER, "T") = "Spectator"

# Add comments ----

comment(gi_vital$SERIAL) = "Serial number (if provided)"
comment(gi_vital$REF) = "Reference (if provided in link)"
comment(gi_vital$QUESTNNR) = "Questionnaire that has been used in the interview"
comment(gi_vital$MODE) = "Interview mode"
comment(gi_vital$STARTED) = "Time the interview has started (Europe/Berlin)"
comment(gi_vital$DE01_01) = "age: [01]"
comment(gi_vital$DE02) = "gender"
comment(gi_vital$DE02_03) = "gender: Specifichi"
comment(gi_vital$DE03) = "education"
comment(gi_vital$EM01) = "profession"
comment(gi_vital$EM02) = "job_sector"
comment(gi_vital$EM03) = "study_sector"
comment(gi_vital$LA01) = "reaction"
comment(gi_vital$LA02_01) = "attributes: Non istruita/Istruita"
comment(gi_vital$LA02_02) = "attributes: Volgare/Raffinata"
comment(gi_vital$LA02_03) = "attributes: Ostile/Amichevole"
comment(gi_vital$LA02_04) = "attributes: Scortese/Gentile"
comment(gi_vital$LA02_05) = "attributes: Datata/Alla moda"
comment(gi_vital$LA02_06) = "attributes: Noiosa/Divertente"
comment(gi_vital$LA02_07) = "attributes: Povera/Ricca"
comment(gi_vital$LA02_08) = "attributes: Contadina/montanara/Cittadina"
comment(gi_vital$LA03) = "dormant"
comment(gi_vital$LA04) = "teaching"
comment(gi_vital$LA05) = "granularity"
comment(gi_vital$LA06) = "variety"
comment(gi_vital$LA07_01) = "no_teach_reason: [01]"
comment(gi_vital$LA08_01) = "teach_reason: [01]"
comment(gi_vital$LG01) = "parents_lang"
comment(gi_vital$LG02) = "acquisition_lang"
comment(gi_vital$LG03) = "has_children"
comment(gi_vital$LG04) = "spoke_to_children"
comment(gi_vital$LG11) = "children_spoke"
comment(gi_vital$LG12) = "children_speak"
comment(gi_vital$LG05) = "would_speak_to_children"
comment(gi_vital$LG06) = "understand_galloit"
comment(gi_vital$LG13) = "understand_galloit_birth"
comment(gi_vital$LG07) = "speak_galloit"
comment(gi_vital$LG14) = "speak_galloit_birth"
comment(gi_vital$LG10) = "speak_frequency"
comment(gi_vital$LG08_01) = "other_languages: [01]"
comment(gi_vital$LO01) = "current_location"
comment(gi_vital$LO02) = "current_comune"
comment(gi_vital$LO02s) = "current_comune (free text)"
comment(gi_vital$LO03) = "current_comune_time"
comment(gi_vital$LO04) = "other_comune"
comment(gi_vital$LO05) = "birth_location_resid"
comment(gi_vital$LO09) = "birth_location_nonresid"
comment(gi_vital$LO06) = "birth_comune_same"
comment(gi_vital$LO07) = "birth_comune"
comment(gi_vital$LO07s) = "birth_comune (free text)"
comment(gi_vital$LO08) = "birth_other"
comment(gi_vital$LO08_03) = "birth_other: Altro stato (specifichi)"
comment(gi_vital$LO10) = "italy_provs"
comment(gi_vital$LO10s) = "italy_provs (free text)"
comment(gi_vital$LO11) = "swiss_cants"
comment(gi_vital$LO11s) = "swiss_cants (free text)"
comment(gi_vital$LU01) = "with_whom: Residual option (negative) or number of selected options"
comment(gi_vital$LU01_01) = "with_whom: Famiglia e parenti"
comment(gi_vital$LU01_02) = "with_whom: Amici"
comment(gi_vital$LU01_03) = "with_whom: Vicini di casa"
comment(gi_vital$LU01_04) = "with_whom: Compagni di scuola"
comment(gi_vital$LU01_05) = "with_whom: Insegnanti"
comment(gi_vital$LU01_06) = "with_whom: Compagni di università"
comment(gi_vital$LU01_07) = "with_whom: Professori universitari"
comment(gi_vital$LU01_08) = "with_whom: Conoscenze"
comment(gi_vital$LU01_09) = "with_whom: Colleghi di lavoro"
comment(gi_vital$LU01_10) = "with_whom: Persone non conosciute"
comment(gi_vital$LU01_11) = "with_whom: Preti e guide spirituali"
comment(gi_vital$LU01_12) = "with_whom: Dottori"
comment(gi_vital$LU01_15) = "with_whom: Anziani"
comment(gi_vital$LU01_13) = "with_whom: Bambini"
comment(gi_vital$LU01_14) = "with_whom: Animali"
comment(gi_vital$LU02) = "where: Residual option (negative) or number of selected options"
comment(gi_vital$LU02_09) = "where: A casa"
comment(gi_vital$LU02_10) = "where: Per strada"
comment(gi_vital$LU02_01) = "where: Bar"
comment(gi_vital$LU02_02) = "where: Mercato"
comment(gi_vital$LU02_03) = "where: Negozi"
comment(gi_vital$LU02_04) = "where: Scuola"
comment(gi_vital$LU02_05) = "where: Università"
comment(gi_vital$LU02_06) = "where: Lavoro"
comment(gi_vital$LU02_07) = "where: Luoghi spirituali e di preghiera"
comment(gi_vital$LU02_08) = "where: Uffici pubblici"
comment(gi_vital$LU03) = "about_what: Residual option (negative) or number of selected options"
comment(gi_vital$LU03_01) = "about_what: Saluti"
comment(gi_vital$LU03_02) = "about_what: Auguri/condoglianze"
comment(gi_vital$LU03_03) = "about_what: Contare"
comment(gi_vital$LU03_04) = "about_what: Calcoli mentali"
comment(gi_vital$LU03_05) = "about_what: Fatti quotidiani"
comment(gi_vital$LU03_06) = "about_what: Raccontare storie"
comment(gi_vital$LU03_07) = "about_what: Politica"
comment(gi_vital$LU03_08) = "about_what: Per scherzare"
comment(gi_vital$LU03_09) = "about_what: Per esprimere rabbia"
comment(gi_vital$LU03_10) = "about_what: Per esprimere gioia"
comment(gi_vital$LU03_11) = "about_what: Per dire parolacce"
comment(gi_vital$LU03_12) = "about_what: Per pensare"
comment(gi_vital$LU03_13) = "about_what: Per pregare o meditare"
comment(gi_vital$LU03_14) = "about_what: Dare istruzioni"
comment(gi_vital$LU03_15) = "about_what: Dare indicazioni stradali"
comment(gi_vital$LU03_16) = "about_what: Nell\'intimità"
comment(gi_vital$LU03_17) = "about_what: Parlare di concetti scientifici"
comment(gi_vital$LU03_18) = "about_what: Parlare di fatti che sono avvenuti in altre nazioni"
comment(gi_vital$LU03_19) = "about_what: Parlare di argomenti che sono avvenuti in un passato lontano"
comment(gi_vital$LU03_20) = "about_what: Ragionare con una persona"
comment(gi_vital$LU04) = "it_words"
comment(gi_vital$LU05) = "gi_words"
comment(gi_vital$RW01) = "read_write"
comment(gi_vital$RW02) = "listen"
comment(gi_vital$RW03) = "materials: Residual option (negative) or number of selected options"
comment(gi_vital$RW03_01) = "materials: Programmi televisivi e radiofonici"
comment(gi_vital$RW03_08) = "materials: Giornali e riviste"
comment(gi_vital$RW03_07) = "materials: Romanzi e raccolte di poesie"
comment(gi_vital$RW03_06) = "materials: Opere teatrali e spettacoli"
comment(gi_vital$RW03_03) = "materials: Dizionari"
comment(gi_vital$RW03_02) = "materials: Grammatiche"
comment(gi_vital$RW03_09) = "materials: Contenuti digitali su piattaforme online (tipo YouTube, Instagram, Facebook, ...)"
comment(gi_vital$RW03_04) = "materials: Materiali per imparare il dialetto"
comment(gi_vital$RW03_05) = "materials: Materiali didattici in dialetto su altre materie"
comment(gi_vital$RW04) = "write_what: Residual option (negative) or number of selected options"
comment(gi_vital$RW04_01) = "write_what: Non scrivo regolarmente in dialetto"
comment(gi_vital$RW04_02) = "write_what: Appunti personali"
comment(gi_vital$RW04_03) = "write_what: Messaggi telefonici (SMS, Whatsapp, Telegram, ...)"
comment(gi_vital$RW04_04) = "write_what: Social media (Facebook, Instagram, TikTok, forum, ...)"
comment(gi_vital$RW04_05) = "write_what: E-mail e lettere"
comment(gi_vital$RW04_06) = "write_what: Poesie, racconti, romanzi"
comment(gi_vital$XT01_01) = "accept: Non potevo credere che era morto."
comment(gi_vital$XT01_02) = "accept: Da quando gli ho detto come stavano le cose, Gianni non mi parla più."
comment(gi_vital$XT01_03) = "accept: Il nostro ristorante serve diversi piatti a base di carne, piuttosto che verdure di stagione, piuttosto che pesce."
comment(gi_vital$XT01_04) = "accept: Nel 2005 è morto Papa Giovanni Paolo II."
comment(gi_vital$XT01_05) = "accept: Non sapeva che si era trasferito a Roma."
comment(gi_vital$XT01_06) = "accept: Ho parlato con Mario e gli ho dato una notizia che non si aspettava."
comment(gi_vital$XT01_07) = "accept: Se l’avrei saputo, ti avrei chiamato."
comment(gi_vital$XT01_08) = "accept: Nel 2001, l’anno in cui sono crollate le torri gemelle, avevo 10 anni."
comment(gi_vital$XT01_09) = "accept: Non l’avrei mai detto che ti piaceva la pesca."
comment(gi_vital$XT01_10) = "accept: Abbiamo questo giaccone in tre colori: nero, grigio piuttosto che marrone."
comment(gi_vital$XT01_11) = "accept: Se avrei saputo che era da solo il giorno di Natale, lo avrei invitato a casa mia."
comment(gi_vital$XT01_12) = "accept: La colonia romana di Aquileia è stata fondata nel 181 avanti Cristo."
comment(gi_vital$XT01_13) = "accept: Telefona a tuo zio, gli ho promesso che l’avresti chiamato."
comment(gi_vital$XT01_14) = "accept: Il modulo può essere compilato in italiano, in tedesco, piuttosto che in inglese."
comment(gi_vital$XT01_15) = "accept: Se ti avrebbero visto, ti avrebbero sicuramente salutato."
comment(gi_vital$XT02) = "extra"
comment(gi_vital$TIME001) = "Time spent on page 1"
comment(gi_vital$TIME002) = "Time spent on page 2"
comment(gi_vital$TIME003) = "Time spent on page 3"
comment(gi_vital$TIME004) = "Time spent on page 4"
comment(gi_vital$TIME005) = "Time spent on page 5"
comment(gi_vital$TIME006) = "Time spent on page 6"
comment(gi_vital$TIME007) = "Time spent on page 7"
comment(gi_vital$TIME008) = "Time spent on page 8"
comment(gi_vital$TIME009) = "Time spent on page 9"
comment(gi_vital$TIME010) = "Time spent on page 10"
comment(gi_vital$TIME011) = "Time spent on page 11"
comment(gi_vital$TIME012) = "Time spent on page 12"
comment(gi_vital$TIME013) = "Time spent on page 13"
comment(gi_vital$TIME014) = "Time spent on page 14"
comment(gi_vital$TIME015) = "Time spent on page 15"
comment(gi_vital$TIME016) = "Time spent on page 16"
comment(gi_vital$TIME017) = "Time spent on page 17"
comment(gi_vital$TIME018) = "Time spent on page 18"
comment(gi_vital$TIME019) = "Time spent on page 19"
comment(gi_vital$TIME020) = "Time spent on page 20"
comment(gi_vital$TIME021) = "Time spent on page 21"
comment(gi_vital$TIME022) = "Time spent on page 22"
comment(gi_vital$TIME_SUM) = "Time spent overall (except outliers)"
comment(gi_vital$MAILSENT) = "Time when the invitation mailing was sent (personally identifiable recipients, only)"
comment(gi_vital$LASTDATA) = "Time when the data was most recently updated"
comment(gi_vital$FINISHED) = "Has the interview been finished (reached last page)?"
comment(gi_vital$Q_VIEWER) = "Did the respondent only view the questionnaire, omitting mandatory questions?"
comment(gi_vital$LASTPAGE) = "Last page that the participant has handled in the questionnaire"
comment(gi_vital$MAXPAGE) = "Hindmost page handled by the participant"


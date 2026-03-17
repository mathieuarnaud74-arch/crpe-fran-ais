import type { Fiche } from "@/features/fiches/types";

export const programmesFrancaisCyclesReference: Fiche = {
  id: "didactique-programmes-cycles-reference",
  slug: "programmes-francais-cycles",
  title: "Les programmes de français : cycle 1, 2 et 3",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_francais",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: ["programmes 2016", "cycle 1", "cycle 2", "cycle 3", "maternelle", "élémentaire"],
  notionsLiees: [],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Les programmes de l'école maternelle (2015) et de l'école élémentaire (2016) définissent les attendus en français sur chaque cycle. Cette fiche synthétise les dominantes par cycle, les compétences attendues en fin de cycle et les continuités qui structurent l'enseignement du français de 3 à 11 ans.",
    sections: [
      {
        id: "cycle1",
        title: "Cycle 1 — L'école maternelle",
        badge: "PS → GS",
        blocks: [
          {
            kind: "rule",
            content:
              "Le cycle 1 prépare à l'entrée dans la culture écrite sans enseignement formel de la lecture. Le domaine prioritaire est « Mobiliser le langage dans toutes ses dimensions » (oral et premier contact avec l'écrit).",
            watchout:
              "Le cycle 1 ne fait pas apprendre à lire — il prépare à la lecture. L'apprentissage formel du code commence au CP.",
          },
          {
            kind: "table",
            caption: "Compétences langagières prioritaires au cycle 1",
            headers: ["Domaine", "Attendus fin cycle 1"],
            rows: [
              ["Langage oral", "Communiquer, raconter, décrire, comprendre des récits ; vocabulaire étendu"],
              ["Conscience phonologique", "Identifier syllabes, reconnaître des rimes, commencer à isoler des phonèmes (GS)"],
              ["Découverte de l'écrit", "Différencier dessin/écriture, connaître le principe alphabétique, écrire son prénom"],
              ["Geste graphique", "Tenir un crayon, reproduire des tracés, écrire en capitales d'imprimerie"],
            ],
          },
          {
            kind: "tip",
            text: "La grande section est une année charnière : la manipulation phonémique (isoler le premier son d'un mot) et la connaissance du nom des lettres sont des prédicteurs forts de réussite en CP.",
          },
        ],
      },
      {
        id: "cycle2",
        title: "Cycle 2 — CP / CE1 / CE2",
        badge: "CP → CE2",
        blocks: [
          {
            kind: "rule",
            content:
              "Le cycle 2 est le cycle de l'entrée dans le lire-écrire. L'objectif central est l'automatisation du code (décodage) et l'accès à la compréhension. Quatre domaines : Langage oral, Lecture et compréhension de l'écrit, Écriture, Étude de la langue.",
            watchout:
              "Ne pas confondre « lecture » (décodage + compréhension) et « déchiffrage » (décodage seul). Un élève qui décode correctement mais ne comprend pas n'est pas encore lecteur.",
          },
          {
            kind: "table",
            caption: "Attendus de fin de cycle 2 en français",
            headers: ["Compétence", "Attendus"],
            rows: [
              ["Lecture", "Lire à voix haute avec fluidité ; comprendre un texte adapté à l'âge"],
              ["Écriture", "Écrire un texte court de façon autonome (20-30 mots) ; orthographe correcte des mots étudiés"],
              ["Étude de la langue", "Identifier verbe/sujet/COD, GN, classes de mots (nom, déterminant, adjectif, verbe)"],
              ["Oral", "Prendre la parole en public ; écouter et reformuler"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "CP : textes déchiffrables",
                explanation:
                  "En CP, les textes proposés doivent contenir uniquement les graphèmes-phonèmes déjà enseignés. Les livrets déchiffrables sont des supports d'entraînement au code, pas des textes littéraires.",
              },
              {
                label: "CE1-CE2 : articulation lecture/écriture",
                explanation:
                  "Les programmes valorisent l'articulation entre lire et écrire : lire des textes, puis produire des textes similaires. La copie n'est pas une fin en soi mais un outil d'observation de l'écrit.",
              },
            ],
          },
        ],
      },
      {
        id: "cycle3",
        title: "Cycle 3 — CM1 / CM2 / 6e",
        badge: "CM1 → 6e",
        blocks: [
          {
            kind: "rule",
            content:
              "Le cycle 3 consolide les apprentissages de cycle 2 et développe la lecture de l'implicite, la production de textes longs et la grammaire explicite. La sixième y est intégrée depuis 2016 (continuité CM2-6e). Mêmes quatre domaines, avec des attendus plus complexes.",
            linguisticLogic:
              "L'intégration de la 6e au cycle 3 (réforme 2016) vise à lutter contre les ruptures pédagogiques école/collège. Le professeur des écoles doit connaître les attendus de fin de cycle 3, qui incluent donc la 6e.",
          },
          {
            kind: "table",
            caption: "Attendus de fin de cycle 3 en français",
            headers: ["Compétence", "Attendus"],
            rows: [
              ["Lecture", "Lire des œuvres complètes ; comprendre l'implicite, l'ironie, le point de vue ; mobiliser ses connaissances culturelles"],
              ["Écriture", "Produire des textes variés (narratif, descriptif, argumentatif) en maîtrisant la cohérence et la cohésion"],
              ["Étude de la langue", "Grammaire explicite et métalangage installé ; valeurs des temps verbaux ; analyse des propositions"],
              ["Oral", "Débattre, exposer, argumenter ; écoute active et prise de notes"],
            ],
          },
          {
            kind: "tip",
            text: "Cycle 3 = lecture de l'implicite. La compréhension fine (inférences, point de vue, ironie) distingue les lecteurs experts des lecteurs basiques. C'est un attendu fort au CRPE.",
          },
        ],
      },
      {
        id: "continuite",
        title: "Continuité et progressivité inter-cycles",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Les quatre domaines (oral, lecture, écriture, étude de la langue) sont présents sur les trois cycles avec une progression spiralaire : chaque notion est revisitée à un niveau de complexité supérieur.",
          },
          {
            kind: "table",
            caption: "Progressivité des notions grammaticales",
            headers: ["Notion", "Cycle 2", "Cycle 3"],
            rows: [
              ["Phrase", "Identifier une phrase, majuscule/point", "Types et formes de phrases, coordination/subordination"],
              ["Verbe", "Présent, futur, passé composé ; accord avec le sujet", "Modes (indicatif, infinitif, participe), valeurs des temps"],
              ["Groupe nominal", "Nom + déterminant + adjectif", "Expansions du GN : complément du nom, relative, apposition"],
              ["Texte", "Cohérence et ponctuation de base", "Cohérence, cohésion, anaphores, connecteurs logiques"],
            ],
          },
          {
            kind: "didactic",
            cycleEntries: [
              {
                cycle: "Cycle 1",
                content:
                  "Langage oral privilégié. Activités rituelles, comptines, albums, jeux symboliques. Pas d'évaluation formelle.",
              },
              {
                cycle: "Cycle 2",
                content:
                  "Apprentissages systématiques et structurés (code, décodage, grammaire élémentaire). Différenciation forte selon les besoins.",
              },
              {
                cycle: "Cycle 3",
                content:
                  "Approfondissement et mise en réseau des savoirs. Lecture de l'œuvre complète, écriture longue, débat.",
              },
            ],
            studentErrors: [
              "Croire que le cycle 1 enseigne la lecture (il la prépare uniquement)",
              "Confondre les attendus du CE1 et du CE2",
              "Ignorer que la 6e appartient au cycle 3 depuis 2016",
              "Traiter les 4 domaines comme indépendants — ils sont articulés",
            ],
            activities: [
              "Frise chronologique des programmes par cycle",
              "Tableau comparatif des attendus de fin de cycle",
              "Mise en relation avec une pratique observée en stage",
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Cycle 1 (PS-GS) : langage oral et préparation à l'écrit — pas d'enseignement formel de la lecture",
      "Cycle 2 (CP-CE2) : apprentissage du code, automatisation du décodage, entrée dans la production écrite",
      "Cycle 3 (CM1-6e) : lecture de l'implicite, production de textes complexes, grammaire explicite",
      "4 domaines constants : langage oral / lecture / écriture / étude de la langue",
      "La 6e est au cycle 3 depuis les programmes 2016 (continuité école-collège)",
      "Progressivité spiralaire : les mêmes notions sont revisitées à chaque cycle avec plus de complexité",
    ],
    quiz: [
      {
        sentence:
          "En cycle 1, l'objectif principal est d'apprendre à lire aux élèves.",
        isCorrect: false,
        explanation:
          "FAUX. Le cycle 1 prépare à la lecture (langage oral, conscience phonologique, découverte de l'écrit) sans enseignement formel du code. L'apprentissage de la lecture commence au CP (cycle 2).",
      },
      {
        sentence:
          "Depuis les programmes 2016, la classe de 6e appartient au cycle 3 avec le CM1 et le CM2.",
        isCorrect: true,
        explanation:
          "La réforme des cycles de 2016 a intégré la 6e au cycle 3 pour renforcer la continuité école-collège. Le professeur des écoles doit donc connaître les attendus de fin de cycle 3, qui incluent la 6e.",
      },
      {
        sentence:
          "L'étude de la langue est un domaine propre au cycle 3 ; il n'est pas prévu au cycle 2.",
        isCorrect: false,
        explanation:
          "FAUX. L'étude de la langue est présente dès le cycle 2 : identification du verbe, du sujet, du GN, classes de mots. Sa complexité augmente au cycle 3 (grammaire explicite, métalangage complet).",
      },
      {
        sentence:
          "Les programmes 2016 organisent l'enseignement du français en 4 domaines : langage oral, lecture, écriture et étude de la langue.",
        isCorrect: true,
        explanation:
          "Ces 4 domaines sont présents et articulés sur les trois cycles. Ils correspondent aux compétences fondamentales du lecteur-scripteur.",
      },
      {
        sentence:
          "La conscience phonologique (manipuler sons et syllabes) est un apprentissage qui commence en CP.",
        isCorrect: false,
        explanation:
          "FAUX. La conscience phonologique se développe dès la petite et moyenne section (rimes, syllabes) et est travaillée intensivement en grande section (phonèmes). C'est un prérequis au CP, pas un apprentissage du CP.",
      },
    ],
  },
};

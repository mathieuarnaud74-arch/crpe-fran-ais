import type { Fiche } from "@/features/fiches/types";

export const apprentissageLectureReference: Fiche = {
  id: "didactique-apprentissage-lecture-reference",
  slug: "apprentissage-lecture-maternelle-ce2",
  title: "L'apprentissage de la lecture : de la maternelle au CE2",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_francais",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "lecture",
    "décodage",
    "fluence",
    "compréhension",
    "conscience phonologique",
    "graphèmes-phonèmes",
    "voie d'assemblage",
    "voie d'adressage",
    "CP",
    "cycle 2",
    "maternelle",
  ],
  notionsLiees: [
    "didactique-apprendre-a-lire-sprint",
    "didactique-conscience-phonologique-sprint",
    "didactique-fluence-lecture-sprint",
    "didactique-programmes-cycles-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "L'apprentissage de la lecture est l'enjeu central du cycle 2. Il mobilise des compétences construites dès la maternelle (conscience phonologique, principe alphabétique) et se poursuit bien au-delà du CP. Cette fiche synthétise le modèle théorique de référence (modèle à deux voies), les étapes de l'apprentissage, les outils d'évaluation et les points de vigilance pour le CRPE.",
    sections: [
      {
        id: "modele-deux-voies",
        title: "Le modèle à deux voies",
        badge: "Théorie",
        blocks: [
          {
            kind: "rule",
            content:
              "Le modèle à deux voies (Coltheart, 1978 ; repris par les programmes 2016) décrit deux procédures de lecture : la voie d'assemblage (ou voie indirecte) qui passe par le décodage graphème-phonème, et la voie d'adressage (ou voie directe) qui reconnaît le mot globalement dans le lexique mental. Le lecteur expert utilise les deux voies de façon complémentaire.",
            linguisticLogic:
              "La voie d'assemblage est analytique (lettre par lettre), la voie d'adressage est holistique (reconnaissance instantanée). L'automatisation du décodage libère les ressources cognitives pour la compréhension.",
          },
          {
            kind: "table",
            caption: "Comparaison des deux voies de lecture",
            headers: ["Critère", "Voie d'assemblage (indirecte)", "Voie d'adressage (directe)"],
            rows: [
              [
                "Mécanisme",
                "Décodage : conversion graphèmes → phonèmes puis fusion syllabique",
                "Reconnaissance globale du mot stocké dans le lexique orthographique",
              ],
              [
                "Mots traités",
                "Mots réguliers, mots nouveaux, pseudo-mots (logatomes)",
                "Mots fréquents, mots irréguliers (femme, monsieur)",
              ],
              [
                "Apprenti lecteur",
                "Voie principale au CP ; à automatiser progressivement",
                "Se construit par l'exposition répétée aux mots ; dominante chez le lecteur expert",
              ],
              [
                "Limite",
                "Lente pour les mots longs ; ne fonctionne pas pour les mots irréguliers",
                "Ne permet pas de lire les mots inconnus ou les pseudo-mots",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Au CRPE, on peut vous demander de distinguer les deux voies, d'expliquer leur complémentarité et de justifier pourquoi l'enseignement systématique du code (voie d'assemblage) est indispensable au CP.",
          },
        ],
      },
      {
        id: "prerequis-maternelle",
        title: "Les prérequis en maternelle",
        badge: "Cycle 1",
        blocks: [
          {
            kind: "rule",
            content:
              "La maternelle prépare l'entrée dans la lecture sans l'enseigner formellement. Trois prérequis fondamentaux : la conscience phonologique (manipuler les unités sonores de la langue), la connaissance du principe alphabétique (les lettres codent des sons) et le vocabulaire (stock lexical suffisant pour comprendre ce qu'on décode).",
            watchout:
              "La maternelle ne fait pas apprendre à lire. Elle construit les prérequis. L'enseignement explicite et systématique du code commence au CP.",
          },
          {
            kind: "table",
            caption: "Progression des prérequis en maternelle",
            headers: ["Niveau", "Conscience phonologique", "Principe alphabétique", "Vocabulaire"],
            rows: [
              [
                "PS",
                "Comptines, rimes, rythme syllabique",
                "Reconnaître son prénom écrit",
                "Nommer les objets du quotidien (± 750 mots actifs)",
              ],
              [
                "MS",
                "Scander les syllabes, repérer des rimes, début de suppression syllabique",
                "Reconnaître quelques lettres (A, M, P…), écrire son prénom en capitales",
                "Catégoriser, utiliser des mots génériques (± 1 500 mots)",
              ],
              [
                "GS",
                "Isoler des phonèmes (premier son), fusionner deux phonèmes, manipulations phonémiques",
                "Connaître le nom et le son de la plupart des lettres, encoder de petits mots",
                "Vocabulaire précis, reformulation, récit autonome (± 2 500 mots)",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Syllabe vs phonème",
                explanation:
                  "La conscience syllabique (taper les syllabes de « pa-pi-llon ») est acquise avant la conscience phonémique (isoler le /p/ de « papa »). L'accès au phonème est le prérequis direct du décodage au CP.",
              },
              {
                label: "Principe alphabétique ≠ lecture",
                explanation:
                  "Comprendre que les lettres codent des sons (principe alphabétique) n'est pas lire. C'est le prérequis cognitif qui rend l'apprentissage du code possible au CP.",
              },
            ],
          },
        ],
      },
      {
        id: "enseignement-code-cp",
        title: "L'enseignement du code au CP",
        badge: "Cycle 2",
        blocks: [
          {
            kind: "rule",
            content:
              "Au CP, l'enseignement du code repose sur la correspondance graphèmes-phonèmes (CGP), enseignée de façon explicite et systématique. Les programmes préconisent une progression allant des CGP les plus fréquentes et régulières vers les plus rares et complexes. Les textes supports doivent être déchiffrables (ne contenir que des CGP déjà enseignées).",
          },
          {
            kind: "table",
            caption: "Principes de l'enseignement du code au CP",
            headers: ["Principe", "Mise en œuvre"],
            rows: [
              [
                "Enseignement explicite",
                "Le maître présente le graphème, le son correspondant, les gestes associés. Les élèves ne « découvrent » pas seuls les CGP.",
              ],
              [
                "Progression structurée",
                "Commencer par les voyelles (a, i, o, u, e, é), puis les consonnes continues (l, r, m, s, f, v…), puis les occlusives (p, t, k, b, d, g), puis les graphèmes complexes (ou, on, an, in, oi…).",
              ],
              [
                "Textes déchiffrables",
                "Proposer des textes composés uniquement de graphèmes déjà étudiés. La part déchiffrable doit croître rapidement (≥ 80 % dès la 2e période).",
              ],
              [
                "Encodage quotidien",
                "Faire écrire les élèves chaque jour (dictée de syllabes, de mots, de phrases) pour renforcer la voie d'assemblage.",
              ],
              [
                "Entraînement à la combinatoire",
                "Fusionner des graphèmes en syllabes (la, li, lo…), puis des syllabes en mots, de façon systématique.",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Les manuels de lecture au CP sont classés selon leur approche : syllabique pure (Léo et Léa), mixte à départ phonémique (Taoki), intégrative (À l'école des albums). Au CRPE, savoir justifier le choix d'un manuel au regard des principes ci-dessus.",
          },
        ],
      },
      {
        id: "fluence",
        title: "La fluence",
        badge: "Évaluation",
        blocks: [
          {
            kind: "rule",
            content:
              "La fluence est la capacité à lire un texte avec rapidité, précision et expression (prosodie). Elle témoigne de l'automatisation du décodage et constitue un indicateur fiable du niveau de lecture. La fluence se mesure en MCLM (Mots Correctement Lus par Minute).",
          },
          {
            kind: "table",
            caption: "Objectifs de fluence et outils d'évaluation",
            headers: ["Niveau", "Objectif MCLM", "Outil d'évaluation"],
            rows: [
              [
                "Fin CP",
                "≥ 50 MCLM",
                "OURA-LEC/CP (Zorman), Évaluations nationales CP",
              ],
              [
                "Fin CE1",
                "≥ 70-80 MCLM",
                "Fluence CP/CE1 (Cogni-Sciences), Évaluations nationales CE1",
              ],
              [
                "Fin CE2",
                "≥ 90-100 MCLM",
                "Fluence CE (Cogni-Sciences), E.L.FE",
              ],
              [
                "Fin CM2",
                "≥ 120-130 MCLM",
                "ROC (Repérage Orthographique Collectif), Fluence CM",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Fluence ≠ vitesse seule",
                explanation:
                  "La fluence intègre trois composantes : précision (exactitude du décodage), automaticité (vitesse) et prosodie (respect de la ponctuation, de l'intonation). Un élève rapide mais qui ne respecte pas la ponctuation n'est pas fluent.",
              },
              {
                label: "Seuil d'alerte",
                explanation:
                  "Un élève en dessous de 30 MCLM en fin de CP est en grande difficulté de lecture et doit bénéficier d'une prise en charge immédiate (différenciation, PPRE, voire signalement).",
              },
            ],
          },
        ],
      },
      {
        id: "comprehension",
        title: "La compréhension",
        badge: "Stratégies",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "La compréhension ne découle pas automatiquement du décodage. Elle doit être enseignée explicitement dès le CP, en parallèle de l'apprentissage du code. Les programmes identifient plusieurs composantes : le vocabulaire en contexte, les inférences, la reformulation, la compréhension de la structure textuelle et le contrôle de sa propre compréhension (métacognition).",
          },
          {
            kind: "table",
            caption: "Stratégies de compréhension à enseigner explicitement",
            headers: ["Stratégie", "Description", "Activité type"],
            rows: [
              [
                "Prédire / anticiper",
                "Formuler des hypothèses sur la suite du texte à partir du titre, des illustrations, de ce qu'on a déjà lu.",
                "Lecture par dévoilement progressif",
              ],
              [
                "Clarifier",
                "Identifier les mots ou passages incompris et mettre en œuvre des procédures de résolution (contexte, morphologie, dictionnaire).",
                "Surligner les mots inconnus, chercher des indices dans le texte",
              ],
              [
                "Questionner",
                "Se poser des questions sur le texte (qui, quoi, où, quand, pourquoi, comment).",
                "Questions de compréhension littérale puis inférentielle",
              ],
              [
                "Résumer",
                "Reformuler l'essentiel du texte en supprimant les détails secondaires.",
                "Résumé en une phrase, rappel de récit",
              ],
              [
                "Faire des inférences",
                "Déduire des informations non explicites à partir d'indices textuels et de ses connaissances.",
                "Questions implicites, « comment le sais-tu ? »",
              ],
            ],
          },
          {
            kind: "tip",
            text: "L'enseignement réciproque (Palincsar & Brown, 1984) combine quatre stratégies (prédire, clarifier, questionner, résumer) en situation de lecture collaborative. C'est un dispositif de référence à connaître pour le CRPE.",
          },
        ],
      },
      {
        id: "difficultes",
        title: "Les difficultés de lecture",
        badge: "Remédiation",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Les difficultés de lecture doivent être repérées le plus tôt possible (fin CP au plus tard) pour éviter l'installation d'un retard cumulatif. Le repérage s'appuie sur les évaluations nationales, les outils de fluence et l'observation en classe. La remédiation passe par la différenciation pédagogique, le PPRE (Programme Personnalisé de Réussite Éducative) et, si nécessaire, le signalement au RASED.",
          },
          {
            kind: "table",
            caption: "Types de difficultés et réponses pédagogiques",
            headers: ["Difficulté", "Signes observables", "Réponse pédagogique"],
            rows: [
              [
                "Décodage insuffisant",
                "Lecture lente, erreurs sur les CGP complexes, confusions de lettres (b/d, p/q)",
                "Reprendre les CGP non maîtrisées, entraînement intensif à la combinatoire, manipulation de lettres mobiles",
              ],
              [
                "Fluence faible",
                "MCLM inférieur au seuil, lecture hachée, pas de prosodie",
                "Lectures répétées du même texte, théâtralisation, tutorat entre pairs",
              ],
              [
                "Compréhension fragile",
                "Décodage correct mais incapacité à reformuler, à répondre aux questions inférentielles",
                "Enseignement explicite des stratégies, vocabulaire en contexte, rappel de récit",
              ],
              [
                "Troubles spécifiques (dyslexie)",
                "Difficultés persistantes malgré un enseignement adapté, trouble phonologique",
                "Aménagements (PAP), suivi orthophonique, outils compensatoires (police adaptée, temps majoré)",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Difficulté ≠ trouble",
                explanation:
                  "Une difficulté de lecture répond à un enseignement adapté (PPRE, différenciation). Un trouble spécifique (dyslexie) est durable, résistant à la remédiation ordinaire et nécessite un diagnostic médical. Ne pas étiqueter « dyslexique » un élève simplement en retard.",
              },
              {
                label: "PPRE vs PAP vs PPS",
                explanation:
                  "PPRE : programme de remédiation pour difficulté scolaire. PAP : plan d'accompagnement pour trouble des apprentissages (sans handicap reconnu). PPS : projet personnalisé pour élève en situation de handicap (MDPH). Bien distinguer les trois dispositifs au CRPE.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Le modèle à deux voies (assemblage + adressage) est le cadre théorique de référence. L'automatisation de la voie d'assemblage libère des ressources cognitives pour la compréhension.",
      "Les trois prérequis fondamentaux en maternelle : conscience phonologique, principe alphabétique, vocabulaire.",
      "Au CP, l'enseignement du code est explicite, systématique et structuré. Les textes proposés doivent être déchiffrables (≥ 80 % de CGP déjà enseignées).",
      "La fluence (≥ 50 MCLM fin CP) est un indicateur fiable de l'automatisation du décodage. Elle comprend précision, automaticité et prosodie.",
      "La compréhension s'enseigne explicitement en parallèle du code : stratégies (prédire, clarifier, questionner, résumer, inférer).",
      "Repérage précoce des difficultés (évaluations nationales, fluence) et réponse graduée : différenciation → PPRE → RASED → signalement. Distinguer difficulté scolaire et trouble spécifique.",
    ],
    quiz: [
      {
        sentence:
          "La voie d'adressage permet de lire les mots nouveaux (jamais rencontrés) en les décodant lettre par lettre.",
        isCorrect: false,
        explanation:
          "FAUX. C'est la voie d'assemblage qui permet de lire les mots nouveaux par décodage graphème-phonème. La voie d'adressage reconnaît instantanément les mots déjà stockés dans le lexique orthographique.",
      },
      {
        sentence:
          "La conscience phonologique est un prérequis à l'apprentissage de la lecture qui se construit dès la maternelle.",
        isCorrect: true,
        explanation:
          "VRAI. La conscience phonologique (capacité à manipuler les unités sonores : syllabes, rimes, phonèmes) se développe de la PS à la GS. Elle est un prédicteur fort de la réussite en lecture au CP.",
      },
      {
        sentence:
          "Au CP, les textes proposés aux élèves peuvent contenir des mots avec des graphèmes non encore enseignés, pourvu qu'ils soient intéressants.",
        isCorrect: false,
        explanation:
          "FAUX. Les programmes préconisent des textes déchiffrables, composés majoritairement de graphèmes déjà étudiés (≥ 80 %). Un texte non déchiffrable pousse l'élève à deviner au lieu de décoder.",
      },
      {
        sentence:
          "Un élève qui lit 50 mots correctement par minute en fin de CP a atteint l'objectif de fluence attendu.",
        isCorrect: true,
        explanation:
          "VRAI. Le seuil de 50 MCLM en fin de CP est l'objectif de référence. En dessous de 30 MCLM, l'élève est en grande difficulté et nécessite une prise en charge renforcée.",
      },
      {
        sentence:
          "La compréhension découle naturellement de l'automatisation du décodage : il n'est pas nécessaire de l'enseigner explicitement.",
        isCorrect: false,
        explanation:
          "FAUX. Décoder ne suffit pas à comprendre. La compréhension doit être enseignée explicitement (stratégies : prédire, clarifier, questionner, résumer, inférer), en parallèle de l'apprentissage du code.",
      },
      {
        sentence:
          "Le PPRE est un dispositif adapté à un élève en difficulté scolaire, tandis que le PAP concerne un élève présentant un trouble des apprentissages diagnostiqué.",
        isCorrect: true,
        explanation:
          "VRAI. Le PPRE (Programme Personnalisé de Réussite Éducative) répond à une difficulté scolaire. Le PAP (Plan d'Accompagnement Personnalisé) est destiné aux élèves présentant un trouble des apprentissages (ex. dyslexie) sans situation de handicap reconnue.",
      },
      {
        sentence:
          "L'enseignement réciproque de Palincsar et Brown combine quatre stratégies : prédire, clarifier, questionner et résumer.",
        isCorrect: true,
        explanation:
          "VRAI. L'enseignement réciproque est un dispositif de référence qui fait interagir quatre stratégies de compréhension en situation de lecture collaborative. C'est un incontournable du CRPE.",
      },
      {
        sentence:
          "Un élève qui confond régulièrement les lettres b et d est nécessairement dyslexique.",
        isCorrect: false,
        explanation:
          "FAUX. La confusion b/d est fréquente chez les apprentis lecteurs au CP et se résout souvent avec l'entraînement. Un trouble dyslexique ne se diagnostique qu'après persistance des difficultés malgré un enseignement adapté, et nécessite un bilan spécialisé.",
      },
    ],
  },
};

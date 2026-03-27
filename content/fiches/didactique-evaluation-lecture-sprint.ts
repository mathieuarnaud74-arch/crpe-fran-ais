import type { Fiche } from "@/features/fiches/types";

export const evaluationLectureSprint: Fiche = {
  id: "didactique-evaluation-lecture-sprint",
  slug: "evaluation-lecture-sprint",
  title: "Évaluer la lecture : méthodes et critères",
  subtitle: "Fiche express",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "évaluation",
    "lecture",
    "fluence",
    "compréhension",
    "déchiffrage",
    "cycle 2",
    "cycle 3",
  ],
  notionsLiees: ["fluence-lecture-sprint", "strategies-comprehension-sprint"],
  exercicesAssocies: ["did_enseignement_comprehension"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche se concentre sur les outils et critères d'évaluation de la lecture aux cycles 2 et 3. Les méthodes d'enseignement de la lecture (décodage, lecture courante) et les dispositifs de remédiation sont traités dans d'autres fiches. Au CRPE, les questions portent souvent sur le choix de l'outil d'évaluation adapté à l'objectif visé.",
    oneLiner:
      "L'évaluation de la lecture porte sur deux axes : la fluence (vitesse et précision du déchiffrage) et la compréhension (extraction et interprétation du sens). Les outils diffèrent selon le cycle.",
    exampleCorrect: {
      sentence:
        "Pour évaluer la fluence en cycle 2, l'enseignant utilise un test de lecture oralisée chronométrée (ex. : test E.L.FE ou OURA) : l'élève lit un texte à voix haute pendant une minute, et on compte le nombre de Mots Correctement Lus par Minute (MCLM).",
      explanation:
        "C'est la procédure standard recommandée par le MEN. Le MCLM est un indicateur quantitatif objectif. Les seuils de référence sont : environ 50 MCLM en fin de CP, 70-80 en fin de CE1, et 90+ en fin de CE2. Ce test évalue le déchiffrage automatisé, pas la compréhension.",
    },
    exampleWrong: {
      sentence:
        "Évaluer la compréhension d'un texte uniquement par un questionnaire à choix multiples portant sur des informations explicites.",
      explanation:
        "Cette évaluation est incomplète. Un QCM sur l'explicite ne mesure qu'un niveau de compréhension (le repérage littéral). Il faut aussi évaluer les inférences (logiques et pragmatiques), l'interprétation globale et la capacité à reformuler. Les programmes distinguent compréhension littérale, inférentielle et interprétative. Un dispositif complet combine questions ouvertes, rappel de récit et reformulation.",
    },
    mainTrap:
      "Confondre évaluation de la fluence et évaluation de la compréhension. Un élève peut lire avec une fluence correcte (bon MCLM) sans comprendre le texte : il déchiffre mécaniquement mais ne construit pas le sens. Inversement, un élève lent en déchiffrage peut très bien comprendre un texte lu à voix haute par l'enseignant. Au CRPE, il faut savoir que ces deux compétences s'évaluent avec des outils distincts et que la fluence est une condition nécessaire mais non suffisante de la compréhension.",
    quiz: [
      {
        sentence:
          "Le MCLM (Mots Correctement Lus par Minute) est un indicateur fiable de la compréhension en lecture.",
        isCorrect: false,
        explanation:
          "FAUX. Le MCLM mesure la fluence (automatisation du déchiffrage), pas la compréhension. Un élève peut lire vite et correctement sans comprendre le sens du texte. La fluence est un prérequis de la compréhension (elle libère les ressources cognitives), mais elle ne la garantit pas. Il faut des outils spécifiques pour évaluer la compréhension.",
      },
      {
        sentence:
          "Le rappel de récit (demander à l'élève de raconter ce qu'il a lu) est un outil pertinent pour évaluer la compréhension globale d'un texte.",
        isCorrect: true,
        explanation:
          "Exact. Le rappel de récit permet d'évaluer ce que l'élève a retenu et compris du texte dans sa globalité. Il révèle la capacité à hiérarchiser les informations, à restituer la chronologie et les liens causaux. C'est un outil recommandé par la recherche et les programmes, complémentaire du questionnaire.",
      },
      {
        sentence:
          "En cycle 3, l'évaluation de la lecture doit porter uniquement sur la compréhension, car le déchiffrage est acquis.",
        isCorrect: false,
        explanation:
          "FAUX. Même en cycle 3, certains élèves n'ont pas automatisé le déchiffrage. Les évaluations nationales de 6e incluent d'ailleurs un test de fluence. Il faut continuer à évaluer la fluence pour repérer les élèves fragiles. De plus, la fluence progresse encore en cycle 3 (objectif : 120+ MCLM en fin de CM2).",
      },
      {
        sentence:
          "L'évaluation diagnostique de la lecture en début d'année permet d'adapter l'enseignement aux besoins des élèves.",
        isCorrect: true,
        explanation:
          "Exact. L'évaluation diagnostique (par opposition à sommative) identifie les compétences et les lacunes de chaque élève en début de séquence ou d'année. Elle permet de constituer des groupes de besoin, de différencier les supports et les tâches. C'est un principe fondamental de la pédagogie différenciée inscrit dans les programmes.",
      },
      {
        sentence:
          "Pour évaluer la compréhension inférentielle, il suffit de poser des questions dont la réponse est explicitement dans le texte.",
        isCorrect: false,
        explanation:
          "FAUX. Par définition, une inférence exige que le lecteur combine des informations du texte avec ses connaissances pour produire une information qui n'est pas explicitement écrite. Les questions inférentielles demandent « pourquoi ? », « que va-t-il se passer ? », « que ressent le personnage ? » — la réponse n'est pas littéralement dans le texte.",
      },
    ],
  },
};

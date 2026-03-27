import type { Fiche } from "@/features/fiches/types";

export const apprendreALireSprint: Fiche = {
  id: "didactique-apprendre-a-lire-sprint",
  slug: "apprendre-a-lire-methodes",
  title: "Apprendre à lire : méthodes et programmes",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["lecture", "décodage", "conscience phonologique", "programmes 2016", "méthodes"],
  notionsLiees: [],
  exercicesAssocies: ["did_apprentissage_lecture_cycle2"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur les démarches didactiques institutionnelles d'enseignement de la lecture (programmes 2016, circulaire CP 2017). Pour approfondir, consulte la fiche Référence sur l'apprentissage de la lecture.",
    oneLiner:
      "La lecture = Décodage × Compréhension (Simple View of Reading, Hoover & Gough 1990). Les programmes 2016 préconisent une approche syllabique explicite : enseigner le code grapho-phonémique de façon systématique dès le CP, avec des textes entièrement déchiffrables dans les premières semaines. La conscience phonologique (manipulation des phonèmes, syllabes) se construit dès la grande section.",
    exampleCorrect: {
      sentence:
        "En CP, l'enseignant propose des textes ne contenant que les correspondances graphèmes-phonèmes déjà étudiées.",
      explanation:
        "Pratique conforme aux programmes 2016 : les textes déchiffrables permettent à l'élève d'exercer le décodage sans avoir à deviner. Cela renforce l'automatisation du code et évite les stratégies de contournement (mémorisation globale).",
    },
    exampleWrong: {
      sentence:
        "La méthode globale est recommandée car elle permet à l'élève de reconnaître les mots fréquents directement.",
      explanation:
        "FAUX. La méthode globale (reconnaissance directe de mots entiers sans décodage) est explicitement écartée par les programmes 2016 et la circulaire CP de 2017. L'approche syllabique explicite est la seule préconisée par l'institution.",
    },
    mainTrap:
      "Le piège classique au CRPE est de confondre « méthode mixte » et « syllabique enrichie ». La méthode mixte (qui combine déchiffrement + reconnaissance globale de mots-outils) n'est pas celle des programmes. L'approche préconisée est syllabique et explicite, mais peut s'appuyer sur la mémorisation de quelques mots fréquents — ce n'est pas la même chose qu'une méthode mixte.",
    quiz: [
      {
        sentence:
          "Les programmes 2016 recommandent d'enseigner la lecture par une approche phonologique et syllabique explicite.",
        isCorrect: true,
        explanation:
          "Les programmes 2016 et la circulaire CP 2017 préconisent clairement l'enseignement explicite et systématique des correspondances graphèmes-phonèmes. Le décodage doit être automatisé avant de pouvoir libérer des ressources pour la compréhension.",
      },
      {
        sentence:
          "La conscience phonologique se développe seulement à partir du CP.",
        isCorrect: false,
        explanation:
          "FAUX. La conscience phonologique (manipuler rimes, syllabes, puis phonèmes) se construit dès la grande section de maternelle. C'est un prédicteur fort de la réussite en lecture.",
      },
      {
        sentence:
          "Selon la Simple View of Reading, un élève peut être bon lecteur avec un décodage faible s'il a une excellente compréhension orale.",
        isCorrect: false,
        explanation:
          "FAUX. Le modèle de Hoover & Gough formule Lecture = Décodage × Compréhension. Si l'un des facteurs est nul, le produit est nul : la multiplication par 0 donne 0. Les deux composantes sont indispensables.",
      },
      {
        sentence:
          "En grande section, préparer les élèves à la lecture passe par des activités de manipulation phonologique (syllabes, rimes, phonèmes).",
        isCorrect: true,
        explanation:
          "Les programmes de cycle 1 prévoient explicitement le développement de la conscience phonologique comme préparation à l'entrée dans la lecture. La maîtrise des syllabes et des rimes précède la manipulation des phonèmes.",
      },
      {
        sentence:
          "La fluidité de lecture est un objectif indépendant de la compréhension.",
        isCorrect: false,
        explanation:
          "FAUX. La fluidité (automatisation du décodage) libère des ressources cognitives pour la compréhension. Elle est au service de la compréhension, pas un objectif en soi.",
      },
    ],
  },
};

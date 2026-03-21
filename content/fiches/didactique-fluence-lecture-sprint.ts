import type { Fiche } from "@/features/fiches/types";

export const fluenceLectureSprint: Fiche = {
  id: "didactique-fluence-lecture-sprint",
  slug: "fluence-lecture-sprint",
  title: "La fluence en lecture",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "fluence",
    "lecture à voix haute",
    "débit",
    "prosodie",
    "cycle 2",
    "cycle 3",
  ],
  notionsLiees: [
    "apprendre-a-lire-sprint",
    "conscience-phonologique-sprint",
    "strategies-comprehension-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la fluence de lecture, une notion centrale dans les programmes 2020-2021 et les évaluations nationales (CP, CE1, 6e). Au CRPE, elle peut apparaître en didactique (comment travailler la fluence en classe ?) ou en analyse de texte didactique (commenter un dispositif de fluence). Le Guide orange « Pour enseigner la lecture et l'écriture au CP » (2019) y consacre une section entière.",
    oneLiner:
      "La fluence de lecture est la capacité à lire un texte à voix haute de manière rapide, précise et expressive. Trois indicateurs la caractérisent : le débit (nombre de mots correctement lus par minute, MCLM), l'exactitude (pourcentage de mots lus sans erreur) et la prosodie (respect de l'intonation, des groupes de souffle et de la ponctuation). La fluence est le pont entre le décodage (automatisé) et la compréhension : un élève qui décode laborieusement ne peut pas simultanément comprendre ce qu'il lit, car sa mémoire de travail est saturée par le déchiffrage.",
    exampleCorrect: {
      sentence:
        "Dispositif de lecture répétée (Samuels, 1979) : l'élève lit le même passage court (100-200 mots) plusieurs fois dans la semaine, jusqu'à atteindre un seuil de débit et de précision. L'enseignant chronomètre et note les progrès.",
      explanation:
        "La lecture répétée est le dispositif dont l'efficacité est la mieux documentée par la recherche. En relisant le même texte, l'élève automatise la reconnaissance des mots, réduit les erreurs et améliore sa prosodie. Le chronométrage permet un feedback objectif et motivant. Ce dispositif est recommandé par le Conseil scientifique de l'Éducation nationale et le Guide orange.",
    },
    exampleWrong: {
      sentence:
        "Pour améliorer la fluence, il suffit de faire lire les élèves à voix haute en tour de table (lecture à tour de rôle), chaque élève lisant un paragraphe.",
      explanation:
        "FAUX. La lecture « à tour de rôle » est peu efficace pour la fluence : chaque élève ne lit que quelques phrases, le temps de lecture effective est très faible, et les élèves en difficulté sont exposés publiquement à leurs erreurs sans entraînement préalable. Les recherches montrent que la fluence progresse par la pratique intensive et répétée sur un même texte, non par une lecture unique d'un passage inconnu devant la classe.",
    },
    mainTrap:
      "Réduire la fluence à la seule vitesse de lecture (débit en mots/minute). Au CRPE, les correcteurs attendent une vision complète à trois dimensions : débit + exactitude + prosodie. Un élève qui lit vite mais en escamotant des mots ou en ignorant la ponctuation n'est pas fluent. La prosodie (intonation montante pour une question, pauses aux virgules, expressivité) est un indicateur crucial car elle montre que l'élève accède au sens du texte en temps réel. Autre piège : penser que la fluence est un objectif réservé au cycle 2. Les programmes la travaillent aussi au cycle 3 (textes plus longs et complexes) et elle est évaluée en 6e.",
    quiz: [
      {
        sentence:
          "La fluence de lecture se mesure uniquement par le nombre de mots lus par minute (débit).",
        isCorrect: false,
        explanation:
          "FAUX. La fluence comporte trois dimensions : le débit (mots correctement lus par minute), l'exactitude (pourcentage de mots lus sans erreur de décodage) et la prosodie (respect de l'intonation, des pauses, de l'expressivité). Un élève qui lit très vite mais avec de nombreuses erreurs ou sans aucune expression n'est pas considéré comme fluent.",
      },
      {
        sentence:
          "La fluence est le pont entre le décodage automatisé et la compréhension : un décodage laborieux empêche la compréhension car il sature la mémoire de travail.",
        isCorrect: true,
        explanation:
          "Exact. C'est le modèle de LaBerge et Samuels (1974) : quand le décodage n'est pas automatisé, il accapare les ressources cognitives (mémoire de travail), ce qui empêche le lecteur de traiter simultanément le sens. L'automatisation du décodage (obtenue par la fluence) libère des ressources pour la compréhension. C'est pourquoi fluence et compréhension sont liées.",
      },
      {
        sentence:
          "La lecture répétée d'un même texte est le dispositif d'entraînement à la fluence le mieux validé par la recherche.",
        isCorrect: true,
        explanation:
          "Exact. Les méta-analyses (National Reading Panel, 2000 ; Therrien, 2004) confirment que la lecture répétée (repeated reading) est le dispositif le plus efficace. L'élève relit le même court passage 3 à 4 fois, en visant un seuil de débit et de précision. Les progrès se transfèrent partiellement à la lecture de textes nouveaux (effet de généralisation).",
      },
      {
        sentence:
          "Le travail sur la fluence ne concerne que le cycle 2 (CP-CE1-CE2) et n'a plus de raison d'être au cycle 3.",
        isCorrect: false,
        explanation:
          "FAUX. Les programmes 2020 demandent de poursuivre le travail de fluence au cycle 3 (CM1-CM2-6e), avec des textes plus longs et plus complexes. Les évaluations nationales de 6e incluent un test de fluence. Au cycle 3, l'objectif est de consolider l'automatisation sur des textes littéraires et documentaires, et de développer la lecture expressive (prosodie avancée).",
      },
      {
        sentence:
          "Les lectures théâtralisées et le tutorat par les pairs sont des activités efficaces pour développer la fluence en classe.",
        isCorrect: true,
        explanation:
          "Exact. La lecture théâtralisée (mise en voix de dialogues, de pièces de théâtre, de poèmes) donne un objectif motivant à la relecture et travaille spécifiquement la prosodie. Le tutorat par les pairs (un élève bon lecteur écoute et soutient un élève moins fluent) augmente le temps de lecture effective et fournit un feedback immédiat. Ces deux dispositifs sont complémentaires de la lecture répétée chronométrée.",
      },
    ],
  },
};

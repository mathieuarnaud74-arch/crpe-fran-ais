import type { Fiche } from "@/features/fiches/types";

export const didactiqueConcevoirSequenceOperatoire: Fiche = {
  id: "didactique-concevoir-sequence-operatoire",
  slug: "concevoir-sequence-maths",
  title: "Concevoir une séquence de maths",
  domaine: "didactique_maths",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "séquence",
    "séance",
    "progression",
    "objectif",
    "situation-problème",
    "institutionnalisation",
    "évaluation",
    "différenciation",
  ],
  notionsLiees: [
    "didactique-programmes-cycles-reference",
    "didactique-variables-didactiques-reference",
    "didactique-differenciation-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel est l'objectif d'apprentissage visé (quelle compétence du programme) ?",
    decisionTree: {
      type: "question",
      text: "L'objectif d'apprentissage est-il clairement identifié dans les programmes (attendu de fin de cycle, compétence travaillée) ?",
      no: {
        type: "leaf",
        label: "Clarifier l'objectif",
        rule: "Avant de concevoir la séquence, identifier précisément l'attendu de fin de cycle et la compétence travaillée dans les programmes. Une séquence sans objectif clair ne permet pas d'évaluer les apprentissages.",
        example:
          "Objectif flou : « Travailler les fractions ». Objectif précis : « Comparer des fractions de même dénominateur et de même numérateur (attendu CM1, nombres et calcul) ».",
      },
      yes: {
        type: "question",
        text: "Les prérequis des élèves ont-ils été évalués (évaluation diagnostique) ?",
        no: {
          type: "leaf",
          label: "Réaliser une évaluation diagnostique",
          rule: "Proposer un court diagnostic (3-5 exercices) pour identifier les acquis et les obstacles des élèves sur la notion visée. Cela permet de calibrer la situation de départ et de prévoir la différenciation.",
          example:
            "Avant une séquence sur la comparaison de fractions, vérifier que les élèves savent ce qu'est une fraction, placer des fractions sur une droite graduée, et comparer deux fractions de même dénominateur.",
        },
        yes: {
          type: "question",
          text: "La séquence comporte-t-elle une situation-problème de découverte (phase de recherche) ?",
          no: {
            type: "leaf",
            label: "Concevoir la situation-problème",
            rule: "Créer une situation-problème qui met les élèves en recherche : un problème accessible mais non trivial, qui nécessite de mobiliser la notion visée. La situation doit résister (pas de solution immédiate) sans être hors de portée. C'est le cœur de la séquence.",
            example:
              "Pour la comparaison de fractions : « Léa a mangé 3/8 de pizza, Tom a mangé 2/5. Qui a mangé le plus ? » → les élèves doivent trouver une stratégie (dessin, droite graduée, mise au même dénominateur).",
          },
          yes: {
            type: "question",
            text: "Les phases d'institutionnalisation et d'entraînement sont-elles prévues ?",
            no: {
              type: "leaf",
              label: "Planifier institutionnalisation et entraînement",
              rule: "Après la recherche et la mise en commun, l'enseignant formalise le savoir visé (institutionnalisation) : trace écrite collective, définition, propriété, méthode. Puis des exercices d'entraînement progressifs permettent de consolider. Prévoir la différenciation (variables didactiques, étayage) dans les exercices.",
              example:
                "Trace écrite : « Pour comparer deux fractions de dénominateurs différents, on les met au même dénominateur. » Puis exercices gradués : mêmes dénominateurs → dénominateurs multiples → dénominateurs quelconques.",
            },
            yes: {
              type: "leaf",
              label: "Séquence complète — vérifier l'évaluation finale",
              rule: "La séquence est structurée. Vérifier qu'une évaluation sommative est prévue en fin de séquence pour mesurer l'atteinte de l'objectif. Elle doit être cohérente avec l'objectif initial et les situations travaillées. Prévoir aussi un temps de réinvestissement (problème complexe mobilisant la notion dans un contexte nouveau).",
              example:
                "Évaluation : exercices de comparaison de fractions + un problème contextualisé. Réinvestissement : problème de proportionnalité impliquant la comparaison de fractions.",
            },
          },
        },
      },
    },
    workedExample: {
      phrase:
        "Concevoir une séquence de 5 séances sur « la symétrie axiale » en CE2.",
      steps: [
        "Étape 1 — Objectif : « Reconnaître et compléter une figure possédant un axe de symétrie » (attendu fin de cycle 2, espace et géométrie).",
        "Étape 2 — Diagnostic : proposer 5 figures (dont des pièges : figures presque symétriques mais pas tout à fait) et demander lesquelles sont symétriques. Identifier les élèves qui se fient uniquement à l'apparence vs ceux qui vérifient.",
        "Étape 3 — Séance 1 (découverte) : plier des figures découpées en deux. Celles qui se superposent exactement sont symétriques. L'axe de symétrie est la ligne de pli. Phase de recherche manipulatoire.",
        "Étape 4 — Séance 2 (structuration) : institutionnaliser la définition (axe de symétrie = droite telle que la figure se superpose à elle-même par pliage). Exercices de reconnaissance sur quadrillage.",
        "Étape 5 — Séances 3-4 (entraînement) : compléter le symétrique d'une figure sur quadrillage (axe vertical, puis horizontal, puis oblique — variable didactique). Différenciation : avec/sans quadrillage, avec/sans calque.",
        "Étape 6 — Séance 5 (évaluation) : reconnaître les figures symétriques, tracer l'axe de symétrie, compléter une figure par symétrie. Problème de réinvestissement : « Parmi ces logos, lesquels ont un axe de symétrie ? ».",
      ],
    },
    quiz: [
      {
        sentence:
          "Une séquence de mathématiques doit commencer par la leçon (institutionnalisation) avant de proposer des exercices.",
        isCorrect: false,
        explanation:
          "FAUX. Les programmes recommandent de commencer par une situation-problème de recherche (l'élève construit le savoir) avant l'institutionnalisation (l'enseignant formalise). Commencer par la leçon relève d'une pédagogie transmissive, moins efficace pour la construction du sens.",
      },
      {
        sentence:
          "L'évaluation diagnostique en début de séquence permet d'adapter la situation de départ et de prévoir la différenciation.",
        isCorrect: true,
        explanation:
          "VRAI. Le diagnostic identifie les prérequis maîtrisés et les obstacles présents. Il permet de calibrer la difficulté de la situation-problème et de planifier la différenciation (groupes de besoin, variables didactiques).",
      },
      {
        sentence:
          "L'institutionnalisation est le moment où l'enseignant formalise le savoir visé sous forme de trace écrite collective.",
        isCorrect: true,
        explanation:
          "VRAI. L'institutionnalisation (terme de Brousseau) est le passage du savoir construit par les élèves en situation de recherche au savoir officiel de la classe. La trace écrite (définition, propriété, méthode) est sa forme concrète.",
      },
      {
        sentence:
          "Une bonne situation-problème doit être résoluble immédiatement par tous les élèves pour maintenir leur motivation.",
        isCorrect: false,
        explanation:
          "FAUX. Une situation-problème doit « résister » : elle est accessible (les élèves peuvent s'engager) mais pas triviale (il n'y a pas de procédure immédiate). C'est cette résistance qui provoque l'apprentissage. Si la solution est immédiate, il n'y a pas de recherche.",
      },
      {
        sentence:
          "La phase d'entraînement doit proposer des exercices de difficulté croissante, en jouant sur les variables didactiques.",
        isCorrect: true,
        explanation:
          "VRAI. La progressivité des exercices permet à chaque élève de consolider à son rythme. Les variables didactiques (taille des nombres, présence de retenue, orientation des figures) sont le levier principal pour graduer la difficulté.",
      },
    ],
    didacticNote:
      "Au CRPE, la question « proposez une séquence » est fréquente. Le correcteur attend une structure claire (objectif → diagnostic → découverte → institutionnalisation → entraînement → évaluation) avec des choix didactiques justifiés (pourquoi cette situation-problème, quelles variables didactiques, quelle différenciation).",
  },
};

import type { Fiche } from "@/features/fiches/types";

export const didactiqueAnalyserErreurOperatoire: Fiche = {
  id: "didactique-analyser-erreur-operatoire",
  slug: "analyser-erreur-eleve-arbre-decision",
  title: "Analyser une erreur d'élève : arbre de décision",
  domaine: "didactique_maths",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "analyse d'erreur",
    "arbre de décision",
    "remédiation",
    "diagnostic",
    "procédure",
    "obstacle",
  ],
  notionsLiees: [
    "didactique-erreurs-eleves-reference",
    "didactique-variables-didactiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "L'élève a-t-il produit une erreur ou une réponse correcte inattendue ?",
    decisionTree: {
      type: "question",
      text: "L'erreur se reproduit-elle dans des contextes variés (même type d'exercice avec d'autres nombres, d'autres figures) ?",
      no: {
        type: "leaf",
        label: "Erreur accidentelle (faute)",
        rule: "L'erreur est isolée et non reproductible : il s'agit probablement d'une faute d'inattention, de fatigue ou de précipitation. Pas de remédiation spécifique nécessaire, mais vérifier par une observation ultérieure.",
        example:
          "L'élève écrit 3 × 7 = 24 une seule fois alors qu'il connaît la table de 7. C'est une faute ponctuelle.",
      },
      yes: {
        type: "question",
        text: "La procédure de l'élève est-elle identifiable (peut-on reconstituer sa logique) ?",
        no: {
          type: "leaf",
          label: "Erreur non analysable en l'état",
          rule: "La procédure n'est pas visible dans la production écrite. Il faut un entretien d'explicitation : demander à l'élève d'expliquer comment il a fait, à l'oral, pour reconstituer sa démarche.",
          example:
            "L'élève écrit un résultat faux sans trace de calcul intermédiaire. Lui demander : « Explique-moi comment tu as trouvé ce résultat. »",
        },
        yes: {
          type: "question",
          text: "L'erreur porte-t-elle sur la compréhension de l'énoncé ou sur le calcul/la procédure mathématique ?",
          yes: {
            type: "leaf",
            label: "Erreur de compréhension de l'énoncé",
            rule: "L'élève n'a pas compris ce que le problème demande (mauvaise identification de la question, confusion des données, méconnaissance d'un mot). Remédiation : travailler la lecture d'énoncés (reformulation, schéma, identification des données et de la question).",
            example:
              "L'élève additionne toutes les données d'un problème sans identifier lesquelles sont utiles. Remédiation : surligner la question, identifier les données nécessaires avant de calculer.",
          },
          no: {
            type: "question",
            text: "L'erreur relève-t-elle d'une méconnaissance technique (table, algorithme) ou d'une conception erronée (compréhension du concept) ?",
            yes: {
              type: "leaf",
              label: "Erreur technique (méconnaissance procédurale)",
              rule: "L'élève comprend le concept mais se trompe dans l'exécution : table de multiplication non mémorisée, oubli d'une retenue, erreur d'alignement dans le calcul posé. Remédiation : entraînement ciblé sur la technique défaillante (tables, automatismes, procédures).",
              example:
                "L'élève pose correctement 34 × 6 mais écrit 4 × 6 = 28 (erreur dans la table de 6). Remédiation : reprise de la table de 6, exercices d'automatisation.",
            },
            no: {
              type: "leaf",
              label: "Erreur conceptuelle (obstacle épistémologique ou didactique)",
              rule: "L'élève applique une procédure logique mais fondée sur une conception erronée du concept mathématique. C'est l'erreur la plus importante à identifier. Remédiation : revenir au sens avec manipulation concrète, confronter explicitement la conception erronée avec un contre-exemple.",
              example:
                "L'élève écrit 1/4 > 1/3 car « 4 > 3 ». La procédure est logique (comparer les nombres) mais la conception est fausse (le dénominateur n'est pas « la taille » de la fraction). Remédiation : plier deux bandes, comparer les parts.",
            },
          },
        },
      },
    },
    workedExample: {
      phrase:
        "Un élève de CM1 pose la soustraction 503 − 247 et trouve 344. Voici son calcul posé : il écrit 3−7=6, 0−4=6, 5−2=3 → 366. Non, son résultat affiché est 344. Analysons sa production : il écrit 3−7 impossible donc 13−7=6, mais il a écrit 0−4=4 au lieu de 9−4=5 (il a oublié de propager l'emprunt au chiffre des centaines).",
      steps: [
        "Étape 1 — L'erreur se reproduit-elle ? → OUI. L'enseignant constate la même erreur sur 602 − 358 et 401 − 156. L'erreur est systématique.",
        "Étape 2 — La procédure est-elle identifiable ? → OUI. L'élève emprunte une dizaine pour la colonne des unités (13 − 7 = 6, correct) mais ne propage pas l'emprunt aux centaines : il écrit 0 − 4 = 4 au lieu de comprendre que le 0 des dizaines doit emprunter aux centaines (ce qui donne 10 − 1 = 9 dizaines, puis 9 − 4 = 5).",
        "Étape 3 — L'erreur est-elle de compréhension d'énoncé ou de procédure ? → Procédure mathématique. L'élève sait qu'il doit soustraire.",
        "Étape 4 — Technique ou conceptuelle ? → CONCEPTUELLE. L'élève ne comprend pas la propagation de la retenue quand il y a un zéro intercalé. Ce n'est pas un simple oubli : il ne sait pas comment emprunter à travers un 0.",
        "Étape 5 — Remédiation : revenir au matériel base 10 (plaques, barres, cubes). Montrer concrètement qu'on ne peut pas prendre dans la colonne des dizaines (0 dizaine) → il faut d'abord échanger 1 centaine contre 10 dizaines, puis prendre 1 dizaine. Faire manipuler plusieurs exemples avec zéro intercalé.",
      ],
    },
    quiz: [
      {
        sentence:
          "Une erreur systématique (qui se reproduit dans des contextes variés) est plus informative qu'une erreur isolée pour comprendre la difficulté d'un élève.",
        isCorrect: true,
        explanation:
          "VRAI. L'erreur systématique révèle une procédure cohérente mais inadaptée, c'est-à-dire une conception erronée. L'erreur isolée peut être une simple faute d'inattention. C'est le premier critère de l'arbre de décision.",
      },
      {
        sentence:
          "Quand la procédure de l'élève n'est pas visible dans sa production écrite, il faut lui donner un exercice plus simple.",
        isCorrect: false,
        explanation:
          "FAUX. Donner un exercice plus simple ne permet pas de comprendre l'erreur. La bonne démarche est l'entretien d'explicitation : demander à l'élève d'expliquer oralement comment il a procédé pour reconstituer sa logique.",
      },
      {
        sentence:
          "Une erreur sur une table de multiplication (ex : 7 × 8 = 54) est une erreur technique, pas conceptuelle.",
        isCorrect: true,
        explanation:
          "VRAI. L'élève comprend le concept de multiplication mais n'a pas mémorisé le résultat correct (56). La remédiation est un entraînement ciblé sur les tables, pas un retour au sens de la multiplication.",
      },
      {
        sentence:
          "L'erreur « 47 − 18 = 31 » (soustraire le petit du grand dans chaque colonne) relève d'une simple faute d'inattention.",
        isCorrect: false,
        explanation:
          "FAUX. C'est une erreur conceptuelle systématique : l'élève applique une règle cohérente (« dans chaque colonne, je soustrais le plus petit du plus grand ») qui révèle une incompréhension de l'emprunt. La remédiation doit cibler le sens de la retenue, pas l'attention.",
      },
      {
        sentence:
          "L'entretien d'explicitation (demander à l'élève d'expliquer sa démarche) est un outil clé de l'analyse d'erreur.",
        isCorrect: true,
        explanation:
          "VRAI. L'entretien d'explicitation permet de reconstituer la procédure de l'élève quand elle n'est pas visible dans la production écrite. C'est un outil indispensable pour passer de l'observation de l'erreur à la compréhension de sa cause.",
      },
    ],
    didacticNote:
      "Cet arbre de décision est un outil méthodologique pour le CRPE et pour la pratique enseignante. Face à une production d'élève, résister à l'envie de corriger immédiatement : prendre le temps d'analyser la procédure avant de choisir la remédiation. La qualité de l'analyse détermine l'efficacité de la remédiation.",
  },
};

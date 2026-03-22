import type { Fiche } from "@/features/fiches/types";

export const fractionsOperationsOperatoire: Fiche = {
  id: "nombres-fractions-operations-operatoire",
  slug: "fractions-additionner-multiplier",
  title: "Additionner et multiplier des fractions",
  domaine: "nombres_calcul",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "fractions",
    "addition",
    "soustraction",
    "multiplication",
    "division",
    "dénominateur commun",
  ],
  notionsLiees: [
    "nombres-fractions-sprint",
    "nombres-pgcd-ppcm-sprint",
    "nombres-fractions-decimaux-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quelle opération dois-tu effectuer avec ces fractions ?",
    decisionTree: {
      type: "question",
      text: "Quelle opération dois-tu effectuer ?",
      yes: {
        type: "question",
        text: "C'est une addition ou une soustraction. Les dénominateurs sont-ils égaux ?",
        yes: {
          type: "leaf",
          label: "Même dénominateur",
          rule: "On garde le dénominateur et on additionne (ou soustrait) les numérateurs : a/d ± b/d = (a ± b)/d. Puis simplifier si possible.",
          example: "3/7 + 2/7 = 5/7",
        },
        no: {
          type: "question",
          text: "Les dénominateurs sont différents. L'un est-il multiple de l'autre ?",
          yes: {
            type: "leaf",
            label: "Un dénominateur multiple de l'autre",
            rule: "Convertir la fraction au petit dénominateur vers le grand. Exemple : si d₂ = k × d₁, multiplier numérateur et dénominateur de la première par k.",
            example:
              "1/3 + 5/12 → 4/12 + 5/12 = 9/12 = 3/4 (car 12 = 4 × 3, on multiplie 1/3 par 4/4)",
          },
          no: {
            type: "leaf",
            label: "Dénominateurs quelconques",
            rule: "Trouver le PPCM des dénominateurs, convertir les deux fractions, puis opérer sur les numérateurs. Simplifier le résultat.",
            example:
              "2/3 + 3/5 → PPCM(3,5) = 15 → 10/15 + 9/15 = 19/15",
          },
        },
      },
      no: {
        type: "question",
        text: "C'est une multiplication ou une division. Est-ce une division ?",
        yes: {
          type: "leaf",
          label: "Division de fractions",
          rule: "Diviser par une fraction = multiplier par son inverse. a/b ÷ c/d = a/b × d/c. Puis simplifier.",
          example:
            "3/4 ÷ 2/5 = 3/4 × 5/2 = 15/8",
        },
        no: {
          type: "leaf",
          label: "Multiplication de fractions",
          rule: "Multiplier numérateurs entre eux et dénominateurs entre eux : a/b × c/d = (a×c)/(b×d). Astuce : simplifier en croix AVANT de multiplier pour garder des nombres petits.",
          example:
            "4/9 × 3/8 → simplifier 4 et 8 (÷4) et 3 et 9 (÷3) → 1/3 × 1/2 = 1/6",
        },
      },
    },
    workedExample: {
      phrase: "Calculer 5/6 + 7/10 et donner le résultat sous forme irréductible.",
      steps: [
        "Étape 1 — Identifier l'opération : c'est une addition de fractions avec dénominateurs différents (6 et 10).",
        "Étape 2 — Trouver le PPCM des dénominateurs : 6 = 2 × 3, 10 = 2 × 5. PPCM = 2 × 3 × 5 = 30.",
        "Étape 3 — Convertir : 5/6 = 25/30 (×5) et 7/10 = 21/30 (×3).",
        "Étape 4 — Additionner les numérateurs : 25/30 + 21/30 = 46/30.",
        "Étape 5 — Simplifier : PGCD(46, 30) = 2. 46/30 = 23/15. Vérification : 23 et 15 n'ont pas de diviseur commun → irréductible ✓.",
      ],
    },
    quiz: [
      {
        sentence: "Pour additionner 1/4 + 1/6, le dénominateur commun le plus simple est 24.",
        isCorrect: false,
        explanation:
          "FAUX. 24 est un multiple commun mais pas le plus petit. PPCM(4, 6) = 12. 1/4 + 1/6 = 3/12 + 2/12 = 5/12.",
      },
      {
        sentence: "3/5 × 10/9 = 30/45 = 2/3.",
        isCorrect: true,
        explanation:
          "VRAI. 3 × 10 = 30, 5 × 9 = 45. PGCD(30, 45) = 15 → 30/45 = 2/3. Astuce : simplifier avant (3 et 9 par 3, 10 et 5 par 5) → 1/1 × 2/3 = 2/3.",
      },
      {
        sentence: "Pour diviser par 3/7, on multiplie par 3/7.",
        isCorrect: false,
        explanation:
          "FAUX. Diviser par 3/7 = multiplier par l'INVERSE de 3/7, soit 7/3.",
      },
      {
        sentence: "2/3 − 1/3 = 1/3.",
        isCorrect: true,
        explanation:
          "VRAI. Même dénominateur : on soustrait les numérateurs. 2 − 1 = 1 → 1/3.",
      },
      {
        sentence:
          "On peut simplifier « en croix » avant de multiplier : dans 4/15 × 5/8, on simplifie 4 et 8 par 4, et 5 et 15 par 5.",
        isCorrect: true,
        explanation:
          "VRAI. Simplification croisée : 4/15 × 5/8 → (4÷4)/(15÷5) × (5÷5)/(8÷4) = 1/3 × 1/2 = 1/6. Vérification : 4×5 / (15×8) = 20/120 = 1/6 ✓.",
      },
    ],
    didacticNote:
      "En cycle 3, commencer par des fractions de même dénominateur, puis des dénominateurs multiples l'un de l'autre, avant d'aborder le cas général. La manipulation de bandes de papier fractionnées aide à visualiser le dénominateur commun.",
  },
};

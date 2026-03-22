import type { Fiche } from "@/features/fiches/types";

export const grandeursAireFigureComplexeOperatoire: Fiche = {
  id: "grandeurs-aire-figure-complexe-operatoire",
  slug: "calculer-aire-figure-complexe",
  title: "Calculer l'aire d'une figure complexe",
  domaine: "grandeurs_mesures",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "aire",
    "figure complexe",
    "décomposition",
    "addition",
    "soustraction",
    "méthode",
  ],
  notionsLiees: [
    "grandeurs-aires-sprint",
    "grandeurs-aires-volumes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "La figure peut-elle se décomposer en figures simples connues (rectangles, triangles, disques…) ?",
    decisionTree: {
      type: "question",
      text: "La figure peut-elle être décomposée en figures simples par addition ?",
      yes: {
        type: "question",
        text: "As-tu identifié toutes les figures simples et leurs dimensions ?",
        yes: {
          type: "leaf",
          label: "Méthode par addition",
          rule: "Calculer l'aire de chaque figure simple séparément, puis additionner toutes les aires. Vérifier que les figures ne se chevauchent pas.",
          example:
            "Une figure en L = 2 rectangles : A₁ = 6 × 4 = 24 cm² + A₂ = 3 × 2 = 6 cm² → A_total = 30 cm².",
        },
        no: {
          type: "leaf",
          label: "Identifier les sous-figures",
          rule: "Tracer des traits de construction (pointillés) pour faire apparaître les figures simples. Repérer les dimensions en utilisant les cotes données et les propriétés de la figure (côtés parallèles, angles droits).",
          example:
            "Dans un L, tracer une ligne horizontale pour obtenir 2 rectangles. Calculer les dimensions manquantes par soustraction.",
        },
      },
      no: {
        type: "question",
        text: "La figure est-elle une figure simple dont on a retiré une partie (trou, encoche) ?",
        yes: {
          type: "leaf",
          label: "Méthode par soustraction",
          rule: "Calculer l'aire de la figure englobante, puis soustraire l'aire de la partie retirée. A = A_englobante − A_retirée.",
          example:
            "Un carré de 10 cm avec un disque de rayon 3 cm découpé : A = 100 − π × 9 ≈ 100 − 28,3 = 71,7 cm².",
        },
        no: {
          type: "leaf",
          label: "Méthode mixte (addition + soustraction)",
          rule: "Combiner les deux approches : englobar la figure dans un rectangle, puis soustraire les parties excédentaires. Ou décomposer en plusieurs parties dont certaines sont obtenues par soustraction.",
          example:
            "Un pentagone irrégulier : l'englober dans un rectangle, puis soustraire les triangles aux coins.",
        },
      },
    },
    workedExample: {
      phrase:
        "Calculer l'aire d'un terrain en forme de T, composé d'un rectangle de 12 m × 4 m surmonté d'un rectangle de 6 m × 3 m centré.",
      steps: [
        "Étape 1 — Visualiser la figure : un T = un grand rectangle horizontal en bas + un petit rectangle vertical en haut, centré.",
        "Étape 2 — Identifier la méthode : la figure se décompose en 2 rectangles par addition (pas de soustraction nécessaire).",
        "Étape 3 — Calculer l'aire du rectangle du bas : A₁ = 12 × 4 = 48 m².",
        "Étape 4 — Calculer l'aire du rectangle du haut : A₂ = 6 × 3 = 18 m².",
        "Étape 5 — Additionner : A_total = 48 + 18 = 66 m².",
        "Étape 6 — Vérifier : les 2 rectangles ne se chevauchent pas, le résultat est en m². ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "Pour calculer l'aire d'une figure en L, on peut la décomposer en 2 rectangles et additionner leurs aires.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la méthode par addition : on trace un trait pour obtenir 2 rectangles dont on additionne les aires.",
      },
      {
        sentence:
          "Si une figure est un rectangle avec un triangle découpé, on utilise la méthode par addition.",
        isCorrect: false,
        explanation:
          "FAUX. C'est la méthode par soustraction : aire du rectangle − aire du triangle découpé.",
      },
      {
        sentence:
          "L'aire d'un disque percé d'un trou carré de 2 cm de côté (disque de rayon 5 cm) est π × 25 − 4 cm².",
        isCorrect: true,
        explanation:
          "VRAI. A = πr² − c² = π × 25 − 4 ≈ 78,5 − 4 = 74,5 cm². Méthode par soustraction.",
      },
      {
        sentence:
          "Quand on décompose une figure, les sous-figures peuvent se chevaucher sans problème.",
        isCorrect: false,
        explanation:
          "FAUX. Si les sous-figures se chevauchent, on compte deux fois la zone commune. Il faut s'assurer que la décomposition couvre toute la figure sans chevauchement.",
      },
      {
        sentence:
          "On peut toujours calculer l'aire d'un polygone quelconque en l'englobant dans un rectangle et en soustrayant les parties excédentaires.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la méthode de l'encadrement : on englobe le polygone dans un rectangle, puis on soustrait les triangles ou trapèzes aux coins. Cette méthode fonctionne pour tout polygone.",
      },
    ],
    didacticNote:
      "Au cycle 3, commencer par des figures en L ou en T faciles à décomposer visuellement. Encourager les élèves à tracer les traits de découpage au crayon avant de calculer. La méthode par soustraction est plus abstraite et se travaille ensuite.",
  },
};

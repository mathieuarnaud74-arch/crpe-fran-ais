import type { Fiche } from "@/features/fiches/types";

export const geometrieReperageOperatoire: Fiche = {
  id: "geometrie-reperage-operatoire",
  slug: "reperage-plan-coordonnees-distances-milieux",
  title: "Repérage dans le plan : coordonnées, distances et milieux",
  domaine: "geometrie",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "repérage",
    "coordonnées",
    "distance",
    "milieu",
    "repère orthonormé",
    "abscisse",
    "ordonnée",
  ],
  notionsLiees: [
    "geometrie-reperage-reference",
    "geometrie-pythagore-sprint",
    "geometrie-pythagore-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Que dois-tu faire : lire/placer des coordonnées, calculer une distance, ou trouver un milieu ?",
    decisionTree: {
      type: "question",
      text: "Dois-tu lire ou placer les coordonnées d'un point ?",
      yes: {
        type: "leaf",
        label: "Lire/placer des coordonnées (x ; y)",
        rule: "L'abscisse x se lit sur l'axe horizontal (→), l'ordonnée y sur l'axe vertical (↑). Pour placer A(3 ; 2) : avancer de 3 unités vers la droite, puis de 2 unités vers le haut. Attention à l'ordre : c'est toujours (abscisse ; ordonnée), jamais l'inverse.",
        example:
          "A(−2 ; 5) : 2 unités vers la gauche, 5 unités vers le haut.",
      },
      no: {
        type: "question",
        text: "Dois-tu calculer la distance entre deux points ?",
        yes: {
          type: "leaf",
          label: "Distance AB = √((xB−xA)² + (yB−yA)²)",
          rule: "Calculer la différence des abscisses et des ordonnées, les élever au carré, additionner, puis prendre la racine carrée. C'est le théorème de Pythagore appliqué au triangle rectangle formé par les projections.",
          example:
            "A(1 ; 3), B(4 ; 7). AB = √((4−1)² + (7−3)²) = √(9 + 16) = √25 = 5.",
        },
        no: {
          type: "question",
          text: "Dois-tu trouver le milieu d'un segment ?",
          yes: {
            type: "leaf",
            label: "Milieu M = ((xA+xB)/2 ; (yA+yB)/2)",
            rule: "Le milieu a pour coordonnées la moyenne des abscisses et la moyenne des ordonnées des deux extrémités.",
            example:
              "A(2 ; 6), B(8 ; 4). M = ((2+8)/2 ; (6+4)/2) = (5 ; 5).",
          },
          no: {
            type: "leaf",
            label: "Identifier la question posée",
            rule: "Les problèmes de repérage se ramènent à : placer/lire des coordonnées, calculer des distances (Pythagore), trouver des milieux (moyennes), ou vérifier des propriétés (parallélisme, perpendicularité, alignement). Identifier ce qu'on cherche pour choisir la bonne formule.",
          },
        },
      },
    },
    workedExample: {
      phrase:
        "Dans un repère orthonormé, on donne A(1 ; 2), B(7 ; 2) et C(4 ; 6). Montrer que le triangle ABC est isocèle et calculer les coordonnées du milieu de [AB].",
      steps: [
        "Étape 1 — Calculer AB : AB = √((7−1)² + (2−2)²) = √(36 + 0) = 6.",
        "Étape 2 — Calculer AC : AC = √((4−1)² + (6−2)²) = √(9 + 16) = √25 = 5.",
        "Étape 3 — Calculer BC : BC = √((4−7)² + (6−2)²) = √(9 + 16) = √25 = 5.",
        "Étape 4 — AC = BC = 5 ≠ AB = 6. Le triangle est isocèle en C (deux côtés égaux issus de C).",
        "Étape 5 — Milieu de [AB] : M = ((1+7)/2 ; (2+2)/2) = (4 ; 2).",
        "Étape 6 — Vérification : M(4 ; 2) est bien à égale distance de A et B. MA = √(9 + 0) = 3 et MB = √(9 + 0) = 3. ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans un repère, le point (0 ; 0) est appelé l'origine du repère.",
        isCorrect: true,
        explanation:
          "VRAI. L'origine O(0 ; 0) est le point d'intersection des deux axes.",
      },
      {
        sentence:
          "La distance entre A(1 ; 3) et B(1 ; 8) est 5.",
        isCorrect: true,
        explanation:
          "VRAI. Même abscisse → déplacement vertical uniquement. Distance = |8 − 3| = 5. Pas besoin de la formule complète ici.",
      },
      {
        sentence:
          "Le milieu de [AB] avec A(−3 ; 4) et B(5 ; −2) est M(2 ; 2).",
        isCorrect: false,
        explanation:
          "FAUX. M = ((−3+5)/2 ; (4+(−2))/2) = (2/2 ; 2/2) = (1 ; 1), pas (2 ; 2).",
      },
      {
        sentence:
          "La formule de la distance entre deux points est une application directe du théorème de Pythagore.",
        isCorrect: true,
        explanation:
          "VRAI. Le segment [AB] est l'hypoténuse du triangle rectangle dont les cathètes sont les différences d'abscisses et d'ordonnées. d² = Δx² + Δy².",
      },
      {
        sentence:
          "Deux points ayant la même ordonnée sont nécessairement sur l'axe des abscisses.",
        isCorrect: false,
        explanation:
          "FAUX. Ils sont sur une droite horizontale (parallèle à l'axe des abscisses), mais pas nécessairement sur l'axe lui-même. L'axe des abscisses est la droite y = 0. A(2 ; 5) et B(7 ; 5) ont la même ordonnée mais sont sur la droite y = 5.",
      },
    ],
    didacticNote:
      "Le repérage dans le plan est au programme du cycle 3 (quadrillage, coordonnées entières) puis du cycle 4 (repère orthonormé, calculs de distances). Au CRPE, les exercices de repérage croisent souvent géométrie et calcul : placer des points, vérifier qu'un quadrilatère est un parallélogramme (milieux des diagonales), ou calculer une aire avec les coordonnées.",
  },
};

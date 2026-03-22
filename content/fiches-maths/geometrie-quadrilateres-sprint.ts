import type { Fiche } from "@/features/fiches/types";

export const geometrieQuadrilateresSprint: Fiche = {
  id: "geometrie-quadrilateres-sprint",
  slug: "quadrilateres-classification-proprietes",
  title: "Quadrilatères : classification et propriétés",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "quadrilatère",
    "parallélogramme",
    "rectangle",
    "losange",
    "carré",
    "trapèze",
    "diagonales",
  ],
  notionsLiees: [
    "geometrie-figures-planes-reference",
    "geometrie-angles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les quadrilatères particuliers. Pour les démonstrations et propriétés complètes, consulte la fiche Référence.",
    oneLiner:
      "Les quadrilatères particuliers s'organisent en une hiérarchie d'inclusion : carré ⊂ losange ⊂ parallélogramme et carré ⊂ rectangle ⊂ parallélogramme. Chaque figure hérite des propriétés de la figure englobante.",
    exampleCorrect: {
      sentence:
        "Un parallélogramme est un quadrilatère dont les côtés opposés sont parallèles et de même longueur. Ses diagonales se coupent en leur milieu.",
      explanation:
        "Les trois propriétés caractéristiques du parallélogramme sont bien citées : côtés opposés parallèles, côtés opposés égaux, et diagonales qui se coupent en leur milieu.",
    },
    exampleWrong: {
      sentence:
        "Un losange est un parallélogramme dont les diagonales sont de même longueur.",
      explanation:
        "FAUX. C'est le rectangle qui a ses diagonales de même longueur. Le losange est un parallélogramme dont les diagonales sont perpendiculaires (et dont les 4 côtés sont égaux).",
    },
    mainTrap:
      "Confondre les propriétés des diagonales : rectangle → diagonales de même longueur ; losange → diagonales perpendiculaires ; carré → les deux à la fois. Dans tous les parallélogrammes, les diagonales se coupent en leur milieu.",
    quiz: [
      {
        sentence: "Tout carré est un rectangle.",
        isCorrect: true,
        explanation:
          "VRAI. Un carré possède 4 angles droits (comme le rectangle) ET 4 côtés égaux (comme le losange). C'est un cas particulier à la fois du rectangle et du losange.",
      },
      {
        sentence: "Tout rectangle est un carré.",
        isCorrect: false,
        explanation:
          "FAUX. Un rectangle a 4 angles droits mais pas nécessairement 4 côtés égaux. Le carré est un cas particulier du rectangle (quand les 4 côtés sont aussi égaux).",
      },
      {
        sentence:
          "Un trapèze possède exactement une paire de côtés parallèles.",
        isCorrect: true,
        explanation:
          "VRAI. Par définition (convention Éduscol), un trapèze est un quadrilatère ayant exactement une paire de côtés parallèles (les bases). Les parallélogrammes ont deux paires de côtés parallèles.",
      },
      {
        sentence:
          "Les diagonales d'un losange sont de même longueur.",
        isCorrect: false,
        explanation:
          "FAUX. Les diagonales d'un losange sont perpendiculaires et se coupent en leur milieu, mais elles ne sont pas nécessairement de même longueur (sauf si le losange est aussi un carré).",
      },
      {
        sentence:
          "La somme des angles intérieurs d'un quadrilatère vaut 360°.",
        isCorrect: true,
        explanation:
          "VRAI. On peut décomposer tout quadrilatère en deux triangles par une diagonale. Chaque triangle a une somme d'angles de 180°, d'où 2 × 180° = 360° pour le quadrilatère.",
      },
    ],
  },
};

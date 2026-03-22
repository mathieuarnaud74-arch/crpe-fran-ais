import type { Fiche } from "@/features/fiches/types";

export const geometrieSymetrieCentraleSprint: Fiche = {
  id: "geometrie-symetrie-centrale-sprint",
  slug: "symetrie-centrale-proprietes",
  title: "Symétrie centrale : propriétés",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "symétrie centrale",
    "centre de symétrie",
    "demi-tour",
    "parallélogramme",
    "isométrie",
  ],
  notionsLiees: [
    "geometrie-symetrie-axiale-sprint",
    "geometrie-transformations-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la symétrie centrale. Pour les démonstrations et toutes les transformations du plan, consulte la fiche Référence.",
    oneLiner:
      "Le symétrique d'un point M par rapport à un centre O est le point M' tel que O est le milieu du segment [MM']. La symétrie centrale est une rotation de 180° (demi-tour) autour du centre.",
    exampleCorrect: {
      sentence:
        "Le symétrique de A par rapport au centre O est le point A' tel que O est le milieu de [AA'].",
      explanation:
        "C'est la définition exacte : le centre de symétrie est le milieu du segment joignant un point à son image.",
    },
    exampleWrong: {
      sentence:
        "La symétrie centrale inverse l'orientation des figures, comme la symétrie axiale.",
      explanation:
        "FAUX. La symétrie centrale conserve l'orientation (c'est un déplacement, équivalent à une rotation de 180°). C'est la symétrie axiale qui inverse l'orientation (antidéplacement).",
    },
    mainTrap:
      "Ne pas confondre symétrie centrale (milieu) et symétrie axiale (médiatrice). La symétrie centrale conserve l'orientation, la symétrie axiale l'inverse. Un parallélogramme a un centre de symétrie mais pas d'axe de symétrie (sauf cas particuliers).",
    quiz: [
      {
        sentence:
          "La symétrie centrale conserve les longueurs et les angles.",
        isCorrect: true,
        explanation:
          "VRAI. La symétrie centrale est une isométrie (rotation de 180°). Elle conserve les distances, les angles et les aires.",
      },
      {
        sentence:
          "Un parallélogramme quelconque possède un centre de symétrie.",
        isCorrect: true,
        explanation:
          "VRAI. Le centre de symétrie du parallélogramme est le point d'intersection de ses diagonales (leur milieu commun).",
      },
      {
        sentence:
          "La symétrie centrale inverse l'orientation des figures.",
        isCorrect: false,
        explanation:
          "FAUX. La symétrie centrale conserve l'orientation. C'est un déplacement (rotation de 180°), pas un antidéplacement.",
      },
      {
        sentence:
          "Le symétrique d'une droite par symétrie centrale est une droite parallèle à la droite initiale.",
        isCorrect: true,
        explanation:
          "VRAI. Le symétrique d'une droite par symétrie centrale est une droite parallèle (ou confondue si la droite passe par le centre).",
      },
      {
        sentence:
          "Un triangle quelconque possède un centre de symétrie.",
        isCorrect: false,
        explanation:
          "FAUX. Un triangle n'a jamais de centre de symétrie (aucun point ne transforme le triangle en lui-même par symétrie centrale).",
      },
    ],
  },
};

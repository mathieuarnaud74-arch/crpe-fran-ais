import type { Fiche } from "@/features/fiches/types";

export const geometrieSymetrieAxialeSprint: Fiche = {
  id: "geometrie-symetrie-axiale-sprint",
  slug: "symetrie-axiale-construire-reconnaitre",
  title: "Symétrie axiale : construire et reconnaître",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "symétrie axiale",
    "axe de symétrie",
    "médiatrice",
    "isométrie",
    "figures symétriques",
  ],
  notionsLiees: [
    "geometrie-symetrie-centrale-sprint",
    "geometrie-transformations-reference",
    "geometrie-construire-symetrique-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la symétrie axiale. Pour les démonstrations et toutes les transformations du plan, consulte la fiche Référence.",
    oneLiner:
      "Le symétrique d'un point M par rapport à un axe (d) est le point M' tel que (d) est la médiatrice du segment [MM']. La symétrie axiale conserve les longueurs, les angles et les aires.",
    exampleCorrect: {
      sentence:
        "Le symétrique du point A par rapport à l'axe (d) est le point A' tel que (d) coupe [AA'] perpendiculairement en son milieu.",
      explanation:
        "C'est la définition : l'axe est la médiatrice du segment joignant un point à son symétrique (perpendiculaire + milieu).",
    },
    exampleWrong: {
      sentence:
        "Pour construire le symétrique d'un point par rapport à un axe, il suffit de tracer une droite passant par le point et parallèle à l'axe.",
      explanation:
        "FAUX. Il faut tracer la perpendiculaire à l'axe passant par le point, puis reporter la même distance de l'autre côté de l'axe. La droite doit être perpendiculaire à l'axe, pas parallèle.",
    },
    mainTrap:
      "Oublier que la symétrie axiale inverse l'orientation (un motif « F » devient un « F inversé »). C'est un antidéplacement, contrairement à la translation ou la rotation qui conservent l'orientation.",
    quiz: [
      {
        sentence:
          "La symétrie axiale conserve les longueurs et les angles.",
        isCorrect: true,
        explanation:
          "VRAI. La symétrie axiale est une isométrie : elle conserve les distances, les angles et les aires. Le symétrique d'un segment a la même longueur, le symétrique d'un angle a la même mesure.",
      },
      {
        sentence:
          "Un carré possède exactement 2 axes de symétrie.",
        isCorrect: false,
        explanation:
          "FAUX. Un carré possède 4 axes de symétrie : les 2 médiatrices des côtés opposés et les 2 diagonales.",
      },
      {
        sentence:
          "Un cercle possède une infinité d'axes de symétrie.",
        isCorrect: true,
        explanation:
          "VRAI. Tout diamètre d'un cercle est un axe de symétrie. Comme il existe une infinité de diamètres, le cercle a une infinité d'axes de symétrie.",
      },
      {
        sentence:
          "La symétrie axiale conserve l'orientation des figures.",
        isCorrect: false,
        explanation:
          "FAUX. La symétrie axiale est un antidéplacement : elle inverse l'orientation. Un triangle ABC orienté dans le sens direct aura son symétrique A'B'C' orienté dans le sens indirect.",
      },
      {
        sentence:
          "Si un point est situé sur l'axe de symétrie, son symétrique est lui-même.",
        isCorrect: true,
        explanation:
          "VRAI. Tout point de l'axe est invariant par la symétrie axiale : il est son propre symétrique.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const geometrieTrianglesSprint: Fiche = {
  id: "geometrie-triangles-sprint",
  slug: "triangles-classification-proprietes",
  title: "Triangles : classification et propriétés",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "triangle",
    "équilatéral",
    "isocèle",
    "rectangle",
    "scalène",
    "inégalité triangulaire",
    "somme des angles",
  ],
  notionsLiees: [
    "geometrie-angles-sprint",
    "geometrie-pythagore-sprint",
    "geometrie-figures-planes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la classification des triangles. Pour les démonstrations et cas particuliers, consulte la fiche Référence.",
    oneLiner:
      "Un triangle se classe selon ses côtés (scalène, isocèle, équilatéral) ou selon ses angles (acutangle, rectangle, obtusangle). La somme de ses angles vaut toujours 180°.",
    exampleCorrect: {
      sentence:
        "Un triangle isocèle a au moins deux côtés de même longueur. Les angles à la base sont égaux.",
      explanation:
        "La propriété caractéristique du triangle isocèle est bien l'égalité de deux côtés, qui entraîne l'égalité des angles opposés à ces côtés (angles à la base).",
    },
    exampleWrong: {
      sentence:
        "Un triangle équilatéral a ses trois angles qui mesurent chacun 90°.",
      explanation:
        "FAUX. Un triangle équilatéral a trois côtés égaux et trois angles égaux de 60° chacun (car 180° ÷ 3 = 60°). Un angle de 90° est un angle droit, caractéristique du triangle rectangle.",
    },
    mainTrap:
      "Oublier l'inégalité triangulaire : pour former un triangle, chaque côté doit être strictement inférieur à la somme des deux autres. Ainsi, des longueurs 2, 3 et 7 ne forment pas un triangle car 2 + 3 = 5 < 7.",
    quiz: [
      {
        sentence:
          "Un triangle rectangle isocèle possède un angle de 90° et deux angles de 45°.",
        isCorrect: true,
        explanation:
          "VRAI. Le triangle rectangle isocèle a un angle droit (90°) et les deux autres angles sont égaux. Comme la somme vaut 180°, on a 90° + 2×45° = 180°.",
      },
      {
        sentence:
          "Un triangle peut avoir deux angles obtus.",
        isCorrect: false,
        explanation:
          "FAUX. Un angle obtus mesure plus de 90°. Deux angles obtus donneraient une somme supérieure à 180°, ce qui est impossible dans un triangle.",
      },
      {
        sentence:
          "Le triangle scalène (quelconque) n'a aucun côté de même longueur.",
        isCorrect: true,
        explanation:
          "VRAI. Un triangle scalène a ses trois côtés de longueurs différentes et ses trois angles de mesures différentes.",
      },
      {
        sentence:
          "Trois segments de longueurs 3 cm, 4 cm et 8 cm peuvent former un triangle.",
        isCorrect: false,
        explanation:
          "FAUX. L'inégalité triangulaire n'est pas vérifiée : 3 + 4 = 7 < 8. Le plus grand côté doit être strictement inférieur à la somme des deux autres.",
      },
      {
        sentence:
          "Tout triangle équilatéral est aussi isocèle.",
        isCorrect: true,
        explanation:
          "VRAI. Un triangle équilatéral a trois côtés égaux, donc il a a fortiori au moins deux côtés égaux : c'est un cas particulier de triangle isocèle.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const geometrieCercleSprint: Fiche = {
  id: "geometrie-cercle-sprint",
  slug: "cercle-vocabulaire-theoremes",
  title: "Cercle : vocabulaire et théorèmes",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "cercle",
    "rayon",
    "diamètre",
    "corde",
    "arc",
    "angle inscrit",
    "angle au centre",
    "tangente",
  ],
  notionsLiees: [
    "geometrie-angles-sprint",
    "geometrie-figures-planes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur le cercle. Pour les démonstrations et théorèmes avancés, consulte la fiche Référence.",
    oneLiner:
      "Le cercle est l'ensemble des points situés à une même distance (le rayon) d'un point fixe (le centre). Le diamètre vaut 2 fois le rayon, et tout angle inscrit dans un demi-cercle est un angle droit.",
    exampleCorrect: {
      sentence:
        "Un angle inscrit dans un cercle interceptant un arc donné mesure la moitié de l'angle au centre interceptant le même arc.",
      explanation:
        "C'est le théorème de l'angle inscrit : si l'angle au centre mesure 80°, l'angle inscrit correspondant mesure 40°.",
    },
    exampleWrong: {
      sentence:
        "Le diamètre d'un cercle est une corde qui passe par le rayon.",
      explanation:
        "FAUX (formulation imprécise). Le diamètre est une corde qui passe par le centre du cercle (et non « par le rayon »). C'est la plus longue corde possible du cercle.",
    },
    mainTrap:
      "Confondre angle inscrit et angle au centre : l'angle au centre a son sommet au centre du cercle, l'angle inscrit a son sommet sur le cercle. L'angle inscrit est toujours la moitié de l'angle au centre qui intercepte le même arc.",
    quiz: [
      {
        sentence:
          "Si un angle inscrit intercepte un demi-cercle, alors cet angle est un angle droit.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la propriété de l'angle inscrit dans un demi-cercle : tout angle inscrit dont les côtés passent par les extrémités d'un diamètre est un angle droit (90°), car l'angle au centre correspondant est un angle plat (180°), et 180° ÷ 2 = 90°.",
      },
      {
        sentence:
          "Une tangente à un cercle coupe le cercle en deux points.",
        isCorrect: false,
        explanation:
          "FAUX. Une tangente à un cercle est une droite qui touche le cercle en un seul point (le point de tangence). C'est la sécante qui coupe le cercle en deux points.",
      },
      {
        sentence:
          "La tangente en un point du cercle est perpendiculaire au rayon en ce point.",
        isCorrect: true,
        explanation:
          "VRAI. La tangente et le rayon sont perpendiculaires au point de tangence. C'est une propriété fondamentale du cercle.",
      },
      {
        sentence:
          "Deux cordes de même longueur dans un même cercle sont nécessairement parallèles.",
        isCorrect: false,
        explanation:
          "FAUX. Deux cordes de même longueur sont à la même distance du centre, mais elles ne sont pas nécessairement parallèles. Elles peuvent avoir des orientations différentes.",
      },
      {
        sentence:
          "Le périmètre d'un cercle de rayon r se calcule avec la formule P = 2πr.",
        isCorrect: true,
        explanation:
          "VRAI. Le périmètre (ou circonférence) du cercle est P = 2πr = πd, où d est le diamètre.",
      },
    ],
  },
};

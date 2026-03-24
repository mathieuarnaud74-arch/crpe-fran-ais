import type { Fiche } from "@/features/fiches/types";

export const geometrieAnglesSprint: Fiche = {
  id: "geometrie-angles-sprint",
  slug: "angles-vocabulaire-proprietes",
  title: "Angles : vocabulaire et propriétés",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "angle aigu",
    "angle droit",
    "angle obtus",
    "angle plat",
    "angles complémentaires",
    "angles supplémentaires",
    "angles alternes-internes",
  ],
  notionsLiees: [
    "geometrie-triangles-sprint",
    "geometrie-droites-remarquables-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur le vocabulaire et les propriétés de base des angles. Pour les démonstrations complètes, consulte la fiche Référence.",
    oneLiner:
      "Un angle est une portion de plan délimitée par deux demi-droites de même origine (le sommet). On le classe selon sa mesure : aigu (< 90°), droit (= 90°), obtus (entre 90° et 180°), plat (= 180°).",
    exampleCorrect: {
      sentence:
        "Deux angles sont supplémentaires si leur somme vaut 180°. Par exemple, un angle de 120° et un angle de 60° sont supplémentaires.",
      explanation:
        "120° + 60° = 180° : la définition est respectée. Ne pas confondre avec complémentaires (somme = 90°).",
    },
    exampleWrong: {
      sentence:
        "Deux angles complémentaires ont une somme de 180°.",
      explanation:
        "FAUX. Deux angles complémentaires ont une somme de 90° (et non 180°). Ce sont les angles supplémentaires qui ont une somme de 180°.",
    },
    mainTrap:
      "Confondre complémentaires (somme = 90°) et supplémentaires (somme = 180°). Astuce mnémotechnique : Complémentaires → comme un Coin (angle droit, 90°) ; Supplémentaires → S comme Semi-tour (demi-tour = 180°).",
    quiz: [
      {
        sentence: "Un angle de 95° est un angle obtus.",
        isCorrect: true,
        explanation:
          "VRAI. Un angle obtus a une mesure strictement comprise entre 90° et 180°. 95° est bien dans cet intervalle.",
      },
      {
        sentence:
          "Si deux droites parallèles sont coupées par une sécante, les angles alternes-internes sont supplémentaires.",
        isCorrect: false,
        explanation:
          "FAUX. Les angles alternes-internes formés par deux droites parallèles et une sécante sont égaux (et non supplémentaires). Ce sont les angles co-internes (ou angles intérieurs du même côté) qui sont supplémentaires.",
      },
      {
        sentence:
          "Deux angles adjacents sont deux angles qui ont le même sommet, un côté commun, et qui sont situés de part et d'autre de ce côté commun.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la définition exacte des angles adjacents : même sommet, un côté commun, et situés de part et d'autre de ce côté.",
      },
      {
        sentence:
          "Deux angles opposés par le sommet sont toujours complémentaires.",
        isCorrect: false,
        explanation:
          "FAUX. Deux angles opposés par le sommet sont égaux (même mesure), mais pas nécessairement complémentaires. Ils ne sont complémentaires que si chacun mesure 45°.",
      },
      {
        sentence:
          "La somme des angles d'un triangle est toujours égale à 180°.",
        isCorrect: true,
        explanation:
          "VRAI. C'est un théorème fondamental : dans tout triangle, la somme des mesures des trois angles intérieurs vaut 180°.",
      },
    ],
  },
};

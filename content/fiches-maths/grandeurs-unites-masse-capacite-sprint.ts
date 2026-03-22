import type { Fiche } from "@/features/fiches/types";

export const grandeursUnitesMasseCapaciteSprint: Fiche = {
  id: "grandeurs-unites-masse-capacite-sprint",
  slug: "masse-capacite-conversions",
  title: "Masse et capacité : conversions",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "masse",
    "capacité",
    "gramme",
    "kilogramme",
    "litre",
    "conversions",
    "système métrique",
  ],
  notionsLiees: [
    "grandeurs-unites-longueur-sprint",
    "grandeurs-conversions-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour les conversions complètes (longueurs, aires, volumes inclus), consulte la fiche Référence « Système métrique : conversions complètes ».",
    oneLiner:
      "Les unités de masse (kg, hg, dag, g, dg, cg, mg) et de capacité (kL, hL, daL, L, dL, cL, mL) suivent le même principe décimal que les longueurs : chaque rang vaut ×10.",
    exampleCorrect: {
      sentence: "2,35 kg = 2 350 g",
      explanation:
        "De kg à g, on descend de 3 rangs : 2,35 → 2 350.",
    },
    exampleWrong: {
      sentence: "50 cL = 5 L",
      explanation:
        "Erreur : de cL à L, on remonte de 2 rangs → 50 cL = 0,50 L = 0,5 L, pas 5 L.",
    },
    mainTrap:
      "Ne pas confondre les préfixes : « centi- » = 1/100 et « milli- » = 1/1 000. 1 L = 100 cL = 1 000 mL. Erreur fréquente : croire que 1 L = 10 cL.",
    quiz: [
      {
        sentence: "1 kg = 1 000 g.",
        isCorrect: true,
        explanation:
          "VRAI. De kg à g : 3 rangs, donc ×1 000.",
      },
      {
        sentence: "500 mL = 50 cL.",
        isCorrect: true,
        explanation:
          "VRAI. De mL à cL, on remonte d'un rang : 500 → 50.",
      },
      {
        sentence: "3 tonnes = 3 000 kg.",
        isCorrect: true,
        explanation:
          "VRAI. 1 tonne = 1 000 kg. Attention : la tonne n'est pas une unité SI mais est couramment utilisée.",
      },
      {
        sentence: "0,75 L = 75 mL.",
        isCorrect: false,
        explanation:
          "FAUX. 0,75 L = 750 mL (3 rangs : L → dL → cL → mL). 75 mL = 0,075 L.",
      },
      {
        sentence: "250 g = 0,25 kg.",
        isCorrect: true,
        explanation:
          "VRAI. De g à kg, on remonte de 3 rangs : 250 → 0,250 = 0,25 kg.",
      },
    ],
  },
};

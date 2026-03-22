import type { Fiche } from "@/features/fiches/types";

export const fractionsSprint: Fiche = {
  id: "nombres-fractions-sprint",
  slug: "fractions-simplification-operations",
  title: "Fractions : simplification et opérations",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "fractions",
    "simplification",
    "addition",
    "multiplication",
    "dénominateur commun",
    "fraction irréductible",
  ],
  notionsLiees: [
    "nombres-fractions-decimaux-reference",
    "nombres-fractions-operations-operatoire",
    "nombres-pgcd-ppcm-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour le lien fractions/décimaux et les passages d'écriture, consulte la fiche Référence dédiée.",
    oneLiner:
      "Pour additionner (ou soustraire) des fractions, on les met au même dénominateur puis on opère sur les numérateurs. Pour multiplier, on multiplie numérateurs entre eux et dénominateurs entre eux. Pour simplifier, on divise numérateur et dénominateur par leur PGCD.",
    exampleCorrect: {
      sentence: "2/3 + 1/4 = 8/12 + 3/12 = 11/12",
      explanation:
        "Dénominateur commun : PPCM(3, 4) = 12. On convertit : 2/3 = 8/12 et 1/4 = 3/12. Puis 8 + 3 = 11 → 11/12 ✓.",
    },
    exampleWrong: {
      sentence: "2/3 + 1/4 = 3/7",
      explanation:
        "Erreur classique : additionner numérateurs (2 + 1 = 3) et dénominateurs (3 + 4 = 7). On ne peut additionner que des fractions de même dénominateur.",
    },
    mainTrap:
      "Pour diviser par une fraction, on multiplie par son inverse : a/b ÷ c/d = a/b × d/c. L'erreur est d'inverser la mauvaise fraction ou d'oublier d'inverser.",
    quiz: [
      {
        sentence: "3/5 × 2/7 = 6/35",
        isCorrect: true,
        explanation:
          "VRAI. On multiplie les numérateurs (3 × 2 = 6) et les dénominateurs (5 × 7 = 35) → 6/35.",
      },
      {
        sentence: "Pour additionner 1/2 et 1/3, on peut écrire 2/6 + 3/6 = 5/6.",
        isCorrect: false,
        explanation:
          "FAUX. 1/2 = 3/6 et 1/3 = 2/6 (pas l'inverse). Le résultat 3/6 + 2/6 = 5/6 est correct, mais les conversions individuelles sont inversées dans l'énoncé.",
      },
      {
        sentence: "6/8 simplifié donne 3/4.",
        isCorrect: true,
        explanation:
          "VRAI. PGCD(6, 8) = 2. On divise numérateur et dénominateur par 2 : 6/2 = 3 et 8/2 = 4 → 3/4.",
      },
      {
        sentence: "Diviser par 3/4 revient à multiplier par 3/4.",
        isCorrect: false,
        explanation:
          "FAUX. Diviser par 3/4 revient à multiplier par l'inverse, soit 4/3. Exemple : 2 ÷ 3/4 = 2 × 4/3 = 8/3.",
      },
      {
        sentence: "Toute fraction dont le numérateur est supérieur au dénominateur est supérieure à 1.",
        isCorrect: true,
        explanation:
          "VRAI. Si numérateur > dénominateur (les deux positifs), la fraction vaut plus que 1. Exemple : 7/5 = 1 + 2/5 > 1.",
      },
    ],
  },
};

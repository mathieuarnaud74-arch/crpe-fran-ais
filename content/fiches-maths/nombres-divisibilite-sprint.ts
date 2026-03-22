import type { Fiche } from "@/features/fiches/types";

export const divisibiliteSprint: Fiche = {
  id: "nombres-divisibilite-sprint",
  slug: "divisibilite-criteres-applications",
  title: "Divisibilité : critères et applications",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "divisibilité",
    "critères de divisibilité",
    "diviseur",
    "multiple",
    "pair",
    "impair",
  ],
  notionsLiees: [
    "nombres-pgcd-ppcm-sprint",
    "nombres-arithmetique-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les critères de divisibilité. Pour l'arithmétique complète (nombres premiers, décomposition), consulte la fiche Référence.",
    oneLiner:
      "Un entier a est divisible par b si la division euclidienne de a par b donne un reste nul (a = b × q). Les critères de divisibilité permettent de le vérifier sans poser la division : par 2 (chiffre des unités pair), par 3 (somme des chiffres divisible par 3), par 9 (somme des chiffres divisible par 9), par 5 (unités = 0 ou 5).",
    exampleCorrect: {
      sentence: "234 est divisible par 9 car 2 + 3 + 4 = 9 qui est divisible par 9.",
      explanation:
        "Critère de divisibilité par 9 : la somme des chiffres doit être divisible par 9. 2 + 3 + 4 = 9 ✓. Vérification : 234 = 9 × 26.",
    },
    exampleWrong: {
      sentence: "234 est divisible par 9 car il est divisible par 3.",
      explanation:
        "Être divisible par 3 n'implique pas d'être divisible par 9. Exemple inverse : 12 est divisible par 3 mais pas par 9. Ici, 234 EST divisible par 9, mais le raisonnement est faux.",
    },
    mainTrap:
      "Divisible par 4 ≠ « chiffre des unités divisible par 4 ». Le critère de divisibilité par 4 porte sur les deux derniers chiffres : un nombre est divisible par 4 si le nombre formé par ses deux derniers chiffres est divisible par 4. Exemple : 312 → 12 divisible par 4 ✓.",
    quiz: [
      {
        sentence: "Un nombre est divisible par 6 s'il est divisible à la fois par 2 et par 3.",
        isCorrect: true,
        explanation:
          "VRAI. 6 = 2 × 3, et 2 et 3 sont premiers entre eux. La divisibilité par 6 équivaut à la divisibilité par 2 ET par 3.",
      },
      {
        sentence: "Le critère de divisibilité par 4 : le chiffre des unités est divisible par 4.",
        isCorrect: false,
        explanation:
          "FAUX. Le critère de divisibilité par 4 porte sur les DEUX derniers chiffres. Exemple : 14 → le chiffre des unités est 4, mais 14 n'est pas divisible par 4 (14 = 3 × 4 + 2).",
      },
      {
        sentence: "1 245 est divisible par 5.",
        isCorrect: true,
        explanation:
          "VRAI. Un nombre est divisible par 5 si son chiffre des unités est 0 ou 5. Ici, le chiffre des unités est 5 ✓.",
      },
      {
        sentence: "Si un nombre est divisible par 9, alors il est aussi divisible par 3.",
        isCorrect: true,
        explanation:
          "VRAI. Tout multiple de 9 est aussi multiple de 3 (car 9 = 3 × 3). La réciproque est fausse.",
      },
      {
        sentence: "372 est divisible par 3 car 3 + 7 + 2 = 12 qui est divisible par 3.",
        isCorrect: true,
        explanation:
          "VRAI. Critère de divisibilité par 3 : la somme des chiffres (12) est divisible par 3 (12 = 3 × 4) ✓. Vérification : 372 = 3 × 124.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const pgcdPpcmSprint: Fiche = {
  id: "nombres-pgcd-ppcm-sprint",
  slug: "pgcd-ppcm-methode-usage",
  title: "PGCD et PPCM : méthode et usage",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "PGCD",
    "PPCM",
    "algorithme d'Euclide",
    "diviseurs communs",
    "multiples communs",
    "fraction irréductible",
  ],
  notionsLiees: [
    "nombres-divisibilite-sprint",
    "nombres-arithmetique-reference",
    "nombres-pgcd-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour la méthode d'Euclide pas à pas, consulte la fiche Opératoire « Calculer un PGCD ».",
    oneLiner:
      "Le PGCD (plus grand commun diviseur) de a et b est le plus grand entier qui divise à la fois a et b. Le PPCM (plus petit commun multiple) est le plus petit entier positif qui est multiple de a et de b. Relation fondamentale : PGCD(a, b) × PPCM(a, b) = a × b.",
    exampleCorrect: {
      sentence:
        "PGCD(36, 24) = 12 et PPCM(36, 24) = 72. Vérification : 12 × 72 = 864 = 36 × 24.",
      explanation:
        "Diviseurs de 36 : {1, 2, 3, 4, 6, 9, 12, 18, 36}. Diviseurs de 24 : {1, 2, 3, 4, 6, 8, 12, 24}. Diviseurs communs : {1, 2, 3, 4, 6, 12}. PGCD = 12 ✓.",
    },
    exampleWrong: {
      sentence: "PGCD(36, 24) = 6",
      explanation:
        "6 est un diviseur commun de 36 et 24, mais ce n'est pas le PLUS GRAND. Il faut continuer à chercher : 12 divise 36 (36 = 12 × 3) et 24 (24 = 12 × 2), et 12 > 6.",
    },
    mainTrap:
      "Ne pas confondre PGCD et PPCM. Le PGCD sert à simplifier les fractions (diviser numérateur et dénominateur). Le PPCM sert à trouver un dénominateur commun pour additionner des fractions.",
    quiz: [
      {
        sentence: "PGCD(a, b) × PPCM(a, b) = a × b pour tous entiers a et b positifs.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la relation fondamentale liant PGCD et PPCM. Elle permet de calculer l'un connaissant l'autre.",
      },
      {
        sentence: "Deux nombres sont premiers entre eux si leur PGCD vaut 1.",
        isCorrect: true,
        explanation:
          "VRAI. Par définition, a et b sont premiers entre eux si et seulement si PGCD(a, b) = 1. Cela ne signifie pas qu'ils sont premiers.",
      },
      {
        sentence: "Le PPCM de 6 et 8 est 48.",
        isCorrect: false,
        explanation:
          "FAUX. 48 = 6 × 8 est un multiple commun, mais pas le plus petit. PPCM(6, 8) = 24. Vérification : 24 = 6 × 4 = 8 × 3.",
      },
      {
        sentence: "Pour rendre 18/24 irréductible, on divise par PGCD(18, 24) = 6 et on obtient 3/4.",
        isCorrect: true,
        explanation:
          "VRAI. PGCD(18, 24) = 6. 18 ÷ 6 = 3 et 24 ÷ 6 = 4. La fraction 3/4 est irréductible (PGCD(3, 4) = 1).",
      },
      {
        sentence: "Le PGCD de deux nombres premiers distincts est toujours égal à 1.",
        isCorrect: true,
        explanation:
          "VRAI. Un nombre premier n'a que 1 et lui-même comme diviseurs. Deux nombres premiers distincts ne partagent donc que le diviseur 1.",
      },
    ],
  },
};

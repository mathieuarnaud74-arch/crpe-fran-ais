import type { Fiche } from "@/features/fiches/types";

export const donneesProbabilitesSprint: Fiche = {
  id: "donnees-probabilites-sprint",
  slug: "probabilites-vocabulaire-calcul-base",
  title: "Probabilités : vocabulaire et calcul de base",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "probabilité",
    "expérience aléatoire",
    "événement",
    "équiprobabilité",
    "issue",
    "univers",
  ],
  notionsLiees: [
    "donnees-probabilites-reference",
    "donnees-statistiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les bases des probabilités. Pour les arbres de probabilités et les situations composées, consulte la fiche Référence « Probabilités ».",
    oneLiner:
      "La probabilité d'un événement mesure sa chance de se réaliser, sur une échelle de 0 (impossible) à 1 (certain). En situation d'équiprobabilité : P(A) = nombre d'issues favorables / nombre total d'issues.",
    exampleCorrect: {
      sentence:
        "On lance un dé équilibré. P(obtenir 6) = 1/6.",
      explanation:
        "1 issue favorable (le 6) sur 6 issues possibles (1, 2, 3, 4, 5, 6). Équiprobabilité → P = 1/6.",
    },
    exampleWrong: {
      sentence:
        "On lance un dé équilibré. P(obtenir un nombre pair) = 1/2 car il y a « pair » et « impair », 2 possibilités.",
      explanation:
        "Le résultat (1/2) est correct, mais le raisonnement est faux. Ce n'est pas parce qu'il y a 2 catégories qu'elles sont équiprobables. Ici, P = 3/6 = 1/2 car il y a 3 issues paires (2, 4, 6) sur 6.",
    },
    mainTrap:
      "Confondre « nombre de catégories » et « nombre d'issues ». Exemple piège : « il pleut ou il ne pleut pas, donc P(pluie) = 1/2 ». Faux : les deux événements ne sont pas nécessairement équiprobables.",
    quiz: [
      {
        sentence:
          "La probabilité d'un événement est toujours comprise entre 0 et 1.",
        isCorrect: true,
        explanation:
          "VRAI. P = 0 (événement impossible), P = 1 (événement certain), et toute valeur entre les deux.",
      },
      {
        sentence:
          "La probabilité de tirer une boule rouge dans un sac contenant 3 rouges et 7 bleues est 3/7.",
        isCorrect: false,
        explanation:
          "FAUX. P = 3/10 (3 rouges sur 10 boules au total, pas sur 7).",
      },
      {
        sentence:
          "La somme des probabilités de tous les événements élémentaires d'une expérience est 1.",
        isCorrect: true,
        explanation:
          "VRAI. C'est un axiome fondamental : la somme de toutes les probabilités de l'univers = 1.",
      },
      {
        sentence:
          "Si P(A) = 0,3, alors P(contraire de A) = 0,7.",
        isCorrect: true,
        explanation:
          "VRAI. P(Ā) = 1 − P(A) = 1 − 0,3 = 0,7. L'événement contraire complète à 1.",
      },
      {
        sentence:
          "Quand on lance une pièce truquée, P(pile) = P(face) = 1/2.",
        isCorrect: false,
        explanation:
          "FAUX. L'équiprobabilité (P = 1/2 pour chaque face) ne vaut que pour une pièce équilibrée. Une pièce truquée favorise une face.",
      },
    ],
  },
};

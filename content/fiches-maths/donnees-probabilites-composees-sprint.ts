import type { Fiche } from "@/features/fiches/types";

export const donneesProbabilitesComposeesSprint: Fiche = {
  id: "donnees-probabilites-composees-sprint",
  slug: "probabilites-composees-situations-deux-epreuves",
  title: "Probabilités composées : situations à deux épreuves",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "probabilités composées",
    "arbre de probabilités",
    "événements indépendants",
    "avec remise",
    "sans remise",
    "multiplication",
    "dénombrement",
  ],
  notionsLiees: [
    "donnees-probabilites-sprint",
    "donnees-probabilites-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les probabilités composées. Pour les fondements (vocabulaire, équiprobabilité), consulte la fiche sprint « Probabilités ». Pour un approfondissement, consulte la fiche Référence « Probabilités ».",
    oneLiner:
      "Quand une expérience comporte deux étapes successives, on utilise un arbre de probabilités. La probabilité d'un chemin = produit des probabilités le long des branches. La probabilité d'un événement = somme des chemins qui le réalisent.",
    exampleCorrect: {
      sentence:
        "On tire deux billes successivement sans remise dans un sac contenant 3 rouges et 2 bleues. P(2 rouges) = 3/5 × 2/4 = 6/20 = 3/10.",
      explanation:
        "Au 1er tirage : P(rouge) = 3/5. Sans remise, il reste 4 billes dont 2 rouges. Au 2e tirage : P(rouge) = 2/4 = 1/2. On multiplie car les tirages sont successifs : 3/5 × 1/2 = 3/10. ✓",
    },
    exampleWrong: {
      sentence:
        "On tire deux billes sans remise. P(2 rouges) = 3/5 × 3/5 = 9/25.",
      explanation:
        "Erreur : on a utilisé 3/5 au second tirage comme si la composition du sac n'avait pas changé. Sans remise, après avoir tiré une bille rouge, il reste 4 billes dont 2 rouges → P = 2/4, pas 3/5. La confusion « avec/sans remise » est l'erreur la plus fréquente.",
    },
    mainTrap:
      "Confondre « avec remise » (la composition reste identique : événements indépendants, on multiplie les mêmes probabilités) et « sans remise » (la composition change : il faut recalculer les probabilités à chaque étape). L'arbre de probabilités est l'outil indispensable pour ne pas se tromper.",
    quiz: [
      {
        sentence:
          "Dans un arbre de probabilités, les probabilités des branches issues d'un même nœud ont toujours une somme égale à 1.",
        isCorrect: true,
        explanation:
          "VRAI. Les branches issues d'un nœud représentent tous les résultats possibles à cette étape. Elles forment une partition : leurs probabilités somment à 1.",
      },
      {
        sentence:
          "Si on lance un dé puis une pièce, P(obtenir 6 et pile) = 1/6 + 1/2.",
        isCorrect: false,
        explanation:
          "FAUX. Les deux épreuves sont indépendantes. On multiplie : P(6 et pile) = 1/6 × 1/2 = 1/12. L'addition s'utilise pour un « ou » (événements incompatibles), pas pour un « et ».",
      },
      {
        sentence:
          "Deux tirages avec remise sont des événements indépendants.",
        isCorrect: true,
        explanation:
          "VRAI. Avec remise, la composition de l'urne est identique à chaque tirage. Le résultat du premier tirage n'influence pas le second : c'est la définition de l'indépendance.",
      },
      {
        sentence:
          "Pour calculer P(au moins un rouge sur 2 tirages), le plus simple est de calculer 1 − P(aucun rouge).",
        isCorrect: true,
        explanation:
          "VRAI. P(au moins un) = 1 − P(aucun). C'est souvent plus rapide car P(aucun rouge) correspond à un seul chemin dans l'arbre, alors que « au moins un rouge » en comporte plusieurs.",
      },
      {
        sentence:
          "Dans une expérience à deux épreuves successives, le nombre total de résultats possibles est toujours le produit des nombres de résultats de chaque épreuve.",
        isCorrect: true,
        explanation:
          "VRAI. C'est le principe de multiplication (ou principe fondamental de dénombrement). Si l'épreuve 1 a n₁ résultats et l'épreuve 2 a n₂ résultats, il y a n₁ × n₂ résultats en tout.",
      },
    ],
  },
};

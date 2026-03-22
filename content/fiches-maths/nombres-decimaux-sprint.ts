import type { Fiche } from "@/features/fiches/types";

export const decimauxSprint: Fiche = {
  id: "nombres-decimaux-sprint",
  slug: "nombres-decimaux-ecriture-comparaison",
  title: "Nombres décimaux : écriture et comparaison",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "décimaux",
    "partie entière",
    "partie décimale",
    "dixièmes",
    "centièmes",
    "comparaison",
    "encadrement",
  ],
  notionsLiees: [
    "nombres-fractions-sprint",
    "nombres-fractions-decimaux-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les décimaux. Pour le lien fractions/décimaux, consulte la fiche Référence « Fractions et décimaux ».",
    oneLiner:
      "Un nombre décimal s'écrit avec une partie entière et une partie décimale séparées par une virgule. On compare d'abord les parties entières, puis dixièmes, centièmes, etc. Ajouter des zéros à droite de la partie décimale ne change pas la valeur du nombre.",
    exampleCorrect: {
      sentence: "3,52 < 3,6 car 3,52 < 3,60 (au rang des centièmes, 52 < 60).",
      explanation:
        "On complète 3,6 en 3,60 pour comparer au même rang. Parties entières égales (3 = 3), puis 52 centièmes < 60 centièmes ✓.",
    },
    exampleWrong: {
      sentence: "3,52 > 3,6 car 52 > 6.",
      explanation:
        "Erreur classique : comparer 52 et 6 au lieu de 52 et 60 centièmes. Il faut comparer au même rang décimal : 3,52 vs 3,60.",
    },
    mainTrap:
      "La longueur de la partie décimale n'indique pas la grandeur du nombre : 0,9 > 0,85 même si 85 contient plus de chiffres que 9. Il faut comparer rang par rang.",
    quiz: [
      {
        sentence: "0,50 = 0,5",
        isCorrect: true,
        explanation:
          "VRAI. Ajouter un zéro à droite de la partie décimale ne change pas la valeur. 0,50 = 0,5 = 5 dixièmes.",
      },
      {
        sentence: "2,45 > 2,5 car 45 > 5.",
        isCorrect: false,
        explanation:
          "FAUX. On compare rang par rang : 2,45 vs 2,50 → au rang des dixièmes, 4 < 5 donc 2,45 < 2,5.",
      },
      {
        sentence: "Un nombre décimal est un nombre qui peut s'écrire comme une fraction de dénominateur 10, 100, 1 000, etc.",
        isCorrect: true,
        explanation:
          "VRAI. Par définition, un nombre décimal est un nombre pouvant s'écrire sous la forme a/10ⁿ avec a entier et n entier naturel.",
      },
      {
        sentence: "1/3 est un nombre décimal.",
        isCorrect: false,
        explanation:
          "FAUX. 1/3 = 0,333… (développement décimal infini). Ce n'est pas un nombre décimal car on ne peut pas l'écrire comme fraction de dénominateur puissance de 10.",
      },
      {
        sentence: "Pour encadrer 7,38 au dixième près, on écrit 7,3 < 7,38 < 7,4.",
        isCorrect: true,
        explanation:
          "VRAI. L'encadrement au dixième près se fait entre les deux dixièmes consécutifs qui encadrent le nombre : 7,3 et 7,4.",
      },
    ],
  },
};

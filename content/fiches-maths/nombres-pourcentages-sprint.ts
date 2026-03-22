import type { Fiche } from "@/features/fiches/types";

export const nombresPourcentagesSprint: Fiche = {
  id: "nombres-pourcentages-sprint",
  slug: "pourcentages-calculs-pieges-classiques",
  title: "Pourcentages : calculs et pièges classiques",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "pourcentages",
    "augmentation",
    "réduction",
    "pourcentages successifs",
    "coefficient multiplicateur",
    "proportionnalité",
  ],
  notionsLiees: [
    "nombres-proportionnalite-sprint",
    "nombres-proportionnalite-reference",
    "nombres-probleme-proportionnalite-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les pourcentages. Pour les fondements de la proportionnalité, consulte la fiche Référence « Proportionnalité ».",
    oneLiner:
      "Un pourcentage exprime une proportion sur 100. Augmenter de t % revient à multiplier par (1 + t/100), diminuer de t % à multiplier par (1 − t/100). Attention : deux variations successives ne s'additionnent jamais.",
    exampleCorrect: {
      sentence:
        "Un article à 80 € augmente de 25 % puis baisse de 25 %. Prix final : 80 × 1,25 × 0,75 = 75 €.",
      explanation:
        "On applique les coefficients multiplicateurs successivement. Le prix final (75 €) est inférieur au prix initial (80 €) : +25 % puis −25 % ne ramènent pas au départ. Le coefficient global est 1,25 × 0,75 = 0,9375, soit une baisse de 6,25 %. ✓",
    },
    exampleWrong: {
      sentence:
        "Un article à 80 € augmente de 25 % puis baisse de 25 %. On retrouve 80 € car +25 − 25 = 0.",
      explanation:
        "Erreur classique : on ne peut pas additionner des pourcentages successifs. La hausse de 25 % s'applique à 80 €, mais la baisse de 25 % s'applique à 100 € (le nouveau prix). Les bases de calcul sont différentes.",
    },
    mainTrap:
      "Additionner des pourcentages successifs. Une hausse de 20 % suivie d'une baisse de 20 % ne donne pas 0 % de variation, mais −4 % (coefficient 1,2 × 0,8 = 0,96). Le piège vient de la confusion entre « additionner des pourcentages » et « multiplier des coefficients ».",
    quiz: [
      {
        sentence:
          "Pour calculer 35 % de 240, on peut faire 240 × 0,35 = 84.",
        isCorrect: true,
        explanation:
          "VRAI. t % de N = N × t/100. Ici 240 × 35/100 = 240 × 0,35 = 84.",
      },
      {
        sentence:
          "Augmenter un prix de 15 % revient à le multiplier par 0,15.",
        isCorrect: false,
        explanation:
          "FAUX. Multiplier par 0,15 donnerait seulement 15 % du prix (la part d'augmentation seule). Augmenter de 15 % revient à multiplier par 1 + 0,15 = 1,15.",
      },
      {
        sentence:
          "Si un prix passe de 50 € à 60 €, le taux d'augmentation est de 20 %.",
        isCorrect: true,
        explanation:
          "VRAI. Taux = (60 − 50) / 50 = 10/50 = 0,20 = 20 %. On divise toujours la variation par la valeur initiale.",
      },
      {
        sentence:
          "Après une baisse de 30 %, il faut une hausse de 30 % pour retrouver le prix initial.",
        isCorrect: false,
        explanation:
          "FAUX. Après −30 %, coefficient = 0,7. Pour revenir au prix initial : 1 / 0,7 ≈ 1,4286, soit une hausse d'environ 42,9 %, pas 30 %.",
      },
      {
        sentence:
          "Le coefficient multiplicateur associé à une baisse de 8 % est 0,92.",
        isCorrect: true,
        explanation:
          "VRAI. Coefficient = 1 − 8/100 = 1 − 0,08 = 0,92.",
      },
    ],
  },
};

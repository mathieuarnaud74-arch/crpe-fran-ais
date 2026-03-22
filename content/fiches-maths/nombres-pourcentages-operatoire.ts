import type { Fiche } from "@/features/fiches/types";

export const nombresPourcentagesOperatoire: Fiche = {
  id: "nombres-pourcentages-operatoire",
  slug: "resoudre-probleme-pourcentages-pas-a-pas",
  title: "Résoudre un problème de pourcentages pas à pas",
  domaine: "nombres_calcul",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "pourcentages",
    "coefficient multiplicateur",
    "augmentation",
    "réduction",
    "pourcentages successifs",
    "taux de variation",
    "valeur initiale",
  ],
  notionsLiees: [
    "nombres-pourcentages-sprint",
    "nombres-proportionnalite-sprint",
    "nombres-probleme-proportionnalite-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel type de problème de pourcentage dois-tu résoudre ?",
    decisionTree: {
      type: "question",
      text: "Connais-tu la valeur initiale et le taux, et tu cherches la valeur finale ?",
      yes: {
        type: "question",
        text: "S'agit-il d'une augmentation ou d'une diminution ?",
        yes: {
          type: "leaf",
          label: "Augmentation → multiplier par (1 + t/100)",
          rule: "Valeur finale = Valeur initiale × (1 + t/100). Le coefficient multiplicateur (1 + t/100) est supérieur à 1.",
          example:
            "Prix initial 120 €, hausse de 15 % → 120 × 1,15 = 138 €.",
        },
        no: {
          type: "leaf",
          label: "Diminution → multiplier par (1 − t/100)",
          rule: "Valeur finale = Valeur initiale × (1 − t/100). Le coefficient multiplicateur (1 − t/100) est inférieur à 1.",
          example:
            "Prix initial 200 €, solde de 30 % → 200 × 0,70 = 140 €.",
        },
      },
      no: {
        type: "question",
        text: "Connais-tu les valeurs initiale et finale, et tu cherches le taux de variation ?",
        yes: {
          type: "leaf",
          label: "Taux = (Vf − Vi) / Vi × 100",
          rule: "Calculer la variation (Vf − Vi), diviser par la valeur initiale Vi, puis multiplier par 100 pour obtenir le pourcentage. Si le résultat est positif : hausse. Si négatif : baisse.",
          example:
            "De 80 € à 92 € → (92 − 80) / 80 × 100 = 12/80 × 100 = 15 %. C'est une hausse de 15 %.",
        },
        no: {
          type: "question",
          text: "Connais-tu la valeur finale et le taux, et tu cherches la valeur initiale ?",
          yes: {
            type: "leaf",
            label: "Vi = Vf / coefficient multiplicateur",
            rule: "Diviser la valeur finale par le coefficient multiplicateur. Après hausse de t % : Vi = Vf / (1 + t/100). Après baisse de t % : Vi = Vf / (1 − t/100). Attention : ne surtout pas faire Vf − t % de Vf.",
            example:
              "Après hausse de 20 %, le prix est 96 €. Prix initial = 96 / 1,20 = 80 €. Erreur typique : 96 − 20 % de 96 = 96 − 19,2 = 76,8 € (FAUX).",
          },
          no: {
            type: "leaf",
            label: "Pourcentages successifs → multiplier les coefficients",
            rule: "Pour deux variations successives de t₁ % puis t₂ %, le coefficient global = (1 ± t₁/100) × (1 ± t₂/100). Ne jamais additionner les pourcentages.",
            example:
              "Hausse 10 % puis baisse 10 % → 1,10 × 0,90 = 0,99 → baisse globale de 1 %, pas 0 %.",
          },
        },
      },
    },
    workedExample: {
      phrase:
        "Un magasin augmente ses prix de 20 % en juin, puis les baisse de 15 % en juillet. Le prix initial d'un article était de 50 €. Quel est le prix final ? Quel est le taux de variation global ?",
      steps: [
        "Étape 1 — Identifier le type : deux variations successives → on multiplie les coefficients.",
        "Étape 2 — Coefficient de la hausse de 20 % : 1 + 20/100 = 1,20.",
        "Étape 3 — Coefficient de la baisse de 15 % : 1 − 15/100 = 0,85.",
        "Étape 4 — Coefficient global : 1,20 × 0,85 = 1,02.",
        "Étape 5 — Prix final : 50 × 1,02 = 51 €.",
        "Étape 6 — Taux global : coefficient 1,02 → variation de +2 %. Le prix a globalement augmenté de 2 %, et non de 20 − 15 = 5 %.",
        "Étape 7 — Vérification étape par étape : 50 × 1,20 = 60 € en juin. 60 × 0,85 = 51 € en juillet. ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "Pour retrouver le prix avant une hausse de 25 %, on divise le prix actuel par 1,25.",
        isCorrect: true,
        explanation:
          "VRAI. Si Vf = Vi × 1,25, alors Vi = Vf / 1,25. Erreur fréquente : soustraire 25 % du prix final, ce qui donne un résultat différent.",
      },
      {
        sentence:
          "Une hausse de 50 % suivie d'une baisse de 50 % ramène au prix initial.",
        isCorrect: false,
        explanation:
          "FAUX. Coefficient global = 1,50 × 0,50 = 0,75. Le prix final vaut 75 % du prix initial : c'est une baisse globale de 25 %.",
      },
      {
        sentence:
          "Le taux de variation entre 60 € et 45 € est de −25 %.",
        isCorrect: true,
        explanation:
          "VRAI. (45 − 60) / 60 = −15/60 = −0,25 = −25 %. C'est bien une baisse de 25 %.",
      },
      {
        sentence:
          "Deux hausses successives de 10 % équivalent à une hausse de 20 %.",
        isCorrect: false,
        explanation:
          "FAUX. 1,10 × 1,10 = 1,21, soit une hausse de 21 %, pas 20 %. L'écart (1 %) vient de la hausse appliquée sur la hausse (10 % de 10 % = 1 %).",
      },
      {
        sentence:
          "Pour exprimer un coefficient multiplicateur de 0,88 en pourcentage de variation, on fait : (0,88 − 1) × 100 = −12 %.",
        isCorrect: true,
        explanation:
          "VRAI. Le coefficient 0,88 correspond à une baisse de 12 %. Formule générale : taux = (CM − 1) × 100.",
      },
    ],
    didacticNote:
      "Les élèves de cycle 3 travaillent les pourcentages simples (calculer t % de N). La notion de coefficient multiplicateur est introduite au collège. Au CRPE, les problèmes de pourcentages successifs et de recherche de la valeur initiale sont fréquents et discriminants. Le piège de « l'additivité des pourcentages » est l'erreur la plus testée aux concours.",
  },
};

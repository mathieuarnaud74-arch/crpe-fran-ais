import type { Fiche } from "@/features/fiches/types";

export const grandeursVitesseTempsDistanceOperatoire: Fiche = {
  id: "grandeurs-vitesse-temps-distance-operatoire",
  slug: "problemes-vitesse-temps-distance-pas-a-pas",
  title: "Problèmes vitesse-temps-distance : méthode pas à pas",
  domaine: "grandeurs_mesures",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "vitesse",
    "temps",
    "distance",
    "conversion",
    "km/h",
    "m/s",
    "proportionnalité",
    "problème à étapes",
  ],
  notionsLiees: [
    "grandeurs-unites-composees-sprint",
    "grandeurs-conversions-reference",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quelles grandeurs connais-tu parmi les trois : vitesse (v), distance (d), temps (t) ?",
    decisionTree: {
      type: "question",
      text: "Connais-tu la vitesse et le temps, et tu cherches la distance ?",
      yes: {
        type: "leaf",
        label: "d = v × t",
        rule: "Multiplier la vitesse par le temps. Attention : les unités doivent être cohérentes. Si v est en km/h, alors t doit être en heures (convertir les minutes en fraction d'heure : 45 min = 0,75 h).",
        example:
          "v = 80 km/h, t = 2 h 30 min = 2,5 h → d = 80 × 2,5 = 200 km.",
      },
      no: {
        type: "question",
        text: "Connais-tu la distance et le temps, et tu cherches la vitesse ?",
        yes: {
          type: "leaf",
          label: "v = d / t",
          rule: "Diviser la distance par le temps. La vitesse obtenue est une vitesse moyenne (elle suppose un mouvement uniforme sur toute la durée). Convertir le temps en heures si la vitesse est attendue en km/h.",
          example:
            "d = 150 km en 1 h 15 min = 1,25 h → v = 150 / 1,25 = 120 km/h.",
        },
        no: {
          type: "question",
          text: "Connais-tu la distance et la vitesse, et tu cherches le temps ?",
          yes: {
            type: "leaf",
            label: "t = d / v",
            rule: "Diviser la distance par la vitesse. Le résultat est en heures (si d en km et v en km/h). Pour convertir en h-min : la partie décimale × 60 donne les minutes. Exemple : 2,75 h = 2 h 45 min.",
            example:
              "d = 210 km, v = 84 km/h → t = 210 / 84 = 2,5 h = 2 h 30 min.",
          },
          no: {
            type: "leaf",
            label: "Identifier les données et convertir les unités",
            rule: "Relire l'énoncé et extraire d, v et t. Convertir les unités pour qu'elles soient cohérentes : km/h avec km et h, ou m/s avec m et s. Les heures en minutes : × 60. Les km/h en m/s : ÷ 3,6.",
            example:
              "« Un train parcourt 300 m en 12 secondes » → d = 300 m = 0,3 km, t = 12 s, v = 300/12 = 25 m/s = 90 km/h.",
          },
        },
      },
    },
    workedExample: {
      phrase:
        "Un automobiliste roule à 90 km/h pendant 1 h 20 min, puis à 110 km/h pendant 45 min. Quelle distance totale a-t-il parcourue ? Quelle est sa vitesse moyenne sur l'ensemble du trajet ?",
      steps: [
        "Étape 1 — Convertir les temps en heures : 1 h 20 min = 1 + 20/60 = 4/3 h ≈ 1,333 h. 45 min = 45/60 = 3/4 h = 0,75 h.",
        "Étape 2 — Calculer d₁ = v₁ × t₁ = 90 × 4/3 = 120 km.",
        "Étape 3 — Calculer d₂ = v₂ × t₂ = 110 × 0,75 = 82,5 km.",
        "Étape 4 — Distance totale : d = d₁ + d₂ = 120 + 82,5 = 202,5 km.",
        "Étape 5 — Temps total : t = 4/3 + 3/4 = 16/12 + 9/12 = 25/12 h ≈ 2 h 05 min.",
        "Étape 6 — Vitesse moyenne = distance totale / temps total = 202,5 / (25/12) = 202,5 × 12/25 = 97,2 km/h.",
        "Étape 7 — Vérification : la vitesse moyenne (97,2) est bien comprise entre les deux vitesses (90 et 110). Attention : ce n'est PAS la moyenne arithmétique (90 + 110) / 2 = 100, car les durées sont différentes. ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "La vitesse moyenne d'un trajet aller à 60 km/h et retour à 40 km/h est 50 km/h.",
        isCorrect: false,
        explanation:
          "FAUX. On ne peut pas faire la moyenne arithmétique des vitesses. Pour un même trajet d : t_aller = d/60, t_retour = d/40. Temps total = d/60 + d/40 = d × 5/120 = d/24. Vitesse moyenne = 2d / (d/24) = 48 km/h, pas 50.",
      },
      {
        sentence:
          "1 h 45 min correspond à 1,45 h en écriture décimale.",
        isCorrect: false,
        explanation:
          "FAUX. 45 min = 45/60 = 0,75 h. Donc 1 h 45 min = 1,75 h. L'erreur 1,45 vient de la confusion entre le système sexagésimal (base 60) et le système décimal (base 10).",
      },
      {
        sentence:
          "Un piéton marchant à 5 km/h met exactement 12 minutes pour parcourir 1 km.",
        isCorrect: true,
        explanation:
          "VRAI. t = d/v = 1/5 h = 0,2 h = 0,2 × 60 = 12 min.",
      },
      {
        sentence:
          "Pour convertir 20 m/s en km/h, on multiplie par 3,6 : 20 × 3,6 = 72 km/h.",
        isCorrect: true,
        explanation:
          "VRAI. De m/s vers km/h : × 3,6. De km/h vers m/s : ÷ 3,6. Ici 20 × 3,6 = 72 km/h.",
      },
      {
        sentence:
          "La formule v = d × t permet de calculer la vitesse.",
        isCorrect: false,
        explanation:
          "FAUX. La vitesse est un quotient : v = d / t (distance divisée par le temps), pas un produit. Multiplier distance par temps n'a pas de sens physique.",
      },
    ],
    didacticNote:
      "Les problèmes vitesse-temps-distance sont au programme du cycle 3 et omniprésents au CRPE. Les pièges les plus courants : la conversion heures-minutes (1 h 30 ≠ 1,30 h), la fausse moyenne arithmétique des vitesses, et l'incohérence des unités. Au cycle 3, on travaille d'abord par proportionnalité (tableau) avant d'introduire la formule v = d/t.",
  },
};

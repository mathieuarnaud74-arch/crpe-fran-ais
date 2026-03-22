import type { Fiche } from "@/features/fiches/types";

export const grandeursDureesHorairesSprint: Fiche = {
  id: "grandeurs-durees-horaires-sprint",
  slug: "durees-horaires-conversions-calculs",
  title: "Durées et horaires : conversions et calculs",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "durées",
    "horaires",
    "heures",
    "minutes",
    "secondes",
    "conversion",
    "système sexagésimal",
    "addition de durées",
  ],
  notionsLiees: [
    "grandeurs-conversions-reference",
    "grandeurs-unites-composees-sprint",
    "grandeurs-vitesse-temps-distance-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les durées et horaires. Pour les problèmes de vitesse impliquant des durées, consulte la fiche opératoire « Vitesse-temps-distance ».",
    oneLiner:
      "Les durées utilisent le système sexagésimal (base 60) : 1 h = 60 min, 1 min = 60 s. Pour calculer avec des durées, ne jamais utiliser la base 10. Pour additionner, traiter séparément les heures, minutes et secondes, puis reporter les retenues (≥ 60 min → convertir en heures).",
    exampleCorrect: {
      sentence:
        "2 h 45 min + 1 h 30 min : on additionne séparément → 3 h 75 min. Retenue : 75 min = 1 h 15 min → 4 h 15 min.",
      explanation:
        "Méthode correcte : on traite les minutes séparément (45 + 30 = 75), puis on convertit l'excédent (75 − 60 = 15 min avec 1 h de retenue). ✓",
    },
    exampleWrong: {
      sentence:
        "2 h 45 min en écriture décimale = 2,45 h.",
      explanation:
        "FAUX. 45 min ≠ 0,45 h. En base 60 : 45 min = 45/60 h = 0,75 h. Donc 2 h 45 min = 2,75 h. L'erreur 2,45 vient d'une confusion entre la notation horaire (2 h 45) et l'écriture décimale (2,75). C'est l'erreur la plus fréquente au CRPE sur les durées.",
    },
    mainTrap:
      "Traiter les minutes comme des centièmes. 1 h 30 min ≠ 1,30 h (c'est 1,5 h). 3 h 15 min ≠ 3,15 h (c'est 3,25 h). Pour convertir : diviser les minutes par 60. Inverse : pour passer de décimal à h-min, prendre la partie décimale × 60. Ex : 0,75 h = 0,75 × 60 = 45 min.",
    quiz: [
      {
        sentence: "1 h 20 min = 1,33 h (arrondi au centième).",
        isCorrect: true,
        explanation:
          "VRAI. 20 min = 20/60 = 1/3 ≈ 0,333 h. Donc 1 h 20 min ≈ 1,333 h ≈ 1,33 h.",
      },
      {
        sentence:
          "Pour calculer une durée entre 8 h 50 et 11 h 15, on fait 11,15 − 8,50 = 2,65, soit 2 h 65 min.",
        isCorrect: false,
        explanation:
          "FAUX. On ne peut pas soustraire directement les écritures horaires comme des décimaux. Méthode correcte : de 8 h 50 à 9 h 00 = 10 min, de 9 h 00 à 11 h 15 = 2 h 15 min. Total = 2 h 25 min. Ou : 11 h 15 − 8 h 50 → 10 h 75 min − 8 h 50 min = 2 h 25 min (emprunt).",
      },
      {
        sentence:
          "3 600 secondes = 1 heure.",
        isCorrect: true,
        explanation:
          "VRAI. 1 h = 60 min × 60 s = 3 600 s. C'est une conversion clé pour les problèmes de vitesse.",
      },
      {
        sentence:
          "Un film commence à 20 h 40 et dure 1 h 45 min. Il se termine à 22 h 25.",
        isCorrect: true,
        explanation:
          "VRAI. 20 h 40 + 1 h 45 = 21 h 85 min. Retenue : 85 − 60 = 25 min, +1 h → 22 h 25.",
      },
      {
        sentence:
          "0,5 heure = 50 minutes.",
        isCorrect: false,
        explanation:
          "FAUX. 0,5 h = 0,5 × 60 = 30 min (la moitié d'une heure). L'erreur 50 min vient de la confusion base 10 / base 60.",
      },
    ],
  },
};

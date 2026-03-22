import type { Fiche } from "@/features/fiches/types";

export const entiersRelatifsSprint: Fiche = {
  id: "nombres-entiers-relatifs-sprint",
  slug: "entiers-relatifs-regles-calcul",
  title: "Entiers relatifs : règles de calcul",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "entiers relatifs",
    "nombres négatifs",
    "addition",
    "soustraction",
    "multiplication",
    "règle des signes",
  ],
  notionsLiees: ["nombres-entiers-naturels-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les entiers relatifs. Pour approfondir l'arithmétique, consulte la fiche Référence dédiée.",
    oneLiner:
      "ℤ = {…, −3, −2, −1, 0, 1, 2, 3, …}. Pour additionner deux relatifs de même signe, on additionne les valeurs absolues et on garde le signe ; de signes contraires, on soustrait et on garde le signe de la plus grande valeur absolue. Pour multiplier : (+)(+) = (+), (−)(−) = (+), (+)(−) = (−).",
    exampleCorrect: {
      sentence: "(−7) + (+3) = −4",
      explanation:
        "Signes contraires : on soustrait les valeurs absolues (7 − 3 = 4) et on garde le signe de celle qui a la plus grande valeur absolue (7 > 3, signe −). Résultat : −4 ✓.",
    },
    exampleWrong: {
      sentence: "(−7) + (+3) = −10",
      explanation:
        "Erreur classique : l'élève additionne 7 + 3 au lieu de soustraire. Quand les signes sont contraires, on soustrait les valeurs absolues.",
    },
    mainTrap:
      "Soustraire un nombre négatif revient à additionner son opposé : a − (−b) = a + b. L'erreur fréquente est de soustraire au lieu d'additionner, par exemple 5 − (−3) = 5 − 3 = 2 au lieu de 5 + 3 = 8.",
    quiz: [
      {
        sentence: "(−4) × (−5) = +20",
        isCorrect: true,
        explanation:
          "VRAI. Règle des signes : le produit de deux nombres négatifs est positif. (−) × (−) = (+). 4 × 5 = 20.",
      },
      {
        sentence: "(−3) + (−8) = +11",
        isCorrect: false,
        explanation:
          "FAUX. Même signe (négatif) : on additionne les valeurs absolues (3 + 8 = 11) et on garde le signe négatif → (−3) + (−8) = −11.",
      },
      {
        sentence: "5 − (−3) = 8",
        isCorrect: true,
        explanation:
          "VRAI. Soustraire un négatif revient à additionner l'opposé : 5 − (−3) = 5 + 3 = 8.",
      },
      {
        sentence: "Le produit d'un nombre positif par un nombre négatif est toujours positif.",
        isCorrect: false,
        explanation:
          "FAUX. (+) × (−) = (−). Le produit de deux nombres de signes contraires est négatif.",
      },
      {
        sentence: "L'opposé de −7 est +7.",
        isCorrect: true,
        explanation:
          "VRAI. L'opposé d'un nombre a est −a. L'opposé de −7 est −(−7) = +7. Leur somme vaut 0.",
      },
    ],
  },
};

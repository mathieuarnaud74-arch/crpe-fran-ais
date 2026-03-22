import type { Fiche } from "@/features/fiches/types";

export const puissancesRacinesSprint: Fiche = {
  id: "nombres-puissances-racines-sprint",
  slug: "puissances-racines-carrees",
  title: "Puissances et racines carrées",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "puissances",
    "exposant",
    "carré",
    "cube",
    "racine carrée",
    "notation scientifique",
  ],
  notionsLiees: [
    "nombres-entiers-naturels-sprint",
    "nombres-arithmetique-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour l'écriture scientifique et les ordres de grandeur, consulte les fiches transversales dédiées.",
    oneLiner:
      "aⁿ = a × a × … × a (n fois). Règles de calcul : aⁿ × aᵐ = aⁿ⁺ᵐ, (aⁿ)ᵐ = aⁿˣᵐ, aⁿ × bⁿ = (a × b)ⁿ. La racine carrée √a est le nombre positif dont le carré vaut a : (√a)² = a.",
    exampleCorrect: {
      sentence: "2³ × 2⁴ = 2⁷ = 128",
      explanation:
        "Même base → on additionne les exposants : 3 + 4 = 7. 2⁷ = 128 ✓.",
    },
    exampleWrong: {
      sentence: "2³ × 2⁴ = 2¹² car on multiplie les exposants.",
      explanation:
        "Erreur : on multiplie les exposants uniquement pour (aⁿ)ᵐ. Pour aⁿ × aᵐ, on ADDITIONNE les exposants → 2³⁺⁴ = 2⁷.",
    },
    mainTrap:
      "√(a + b) ≠ √a + √b. La racine carrée d'une somme n'est PAS la somme des racines carrées. Exemple : √(9 + 16) = √25 = 5, mais √9 + √16 = 3 + 4 = 7 ≠ 5.",
    quiz: [
      {
        sentence: "a⁰ = 1 pour tout nombre a non nul.",
        isCorrect: true,
        explanation:
          "VRAI. Par convention, tout nombre non nul élevé à la puissance 0 vaut 1. 0⁰ est une forme indéterminée.",
      },
      {
        sentence: "√(a × b) = √a × √b pour a ≥ 0 et b ≥ 0.",
        isCorrect: true,
        explanation:
          "VRAI. La racine carrée d'un produit est le produit des racines carrées (pour des nombres positifs). Exemple : √(4 × 9) = √36 = 6 = 2 × 3 = √4 × √9.",
      },
      {
        sentence: "(−3)² = −9",
        isCorrect: false,
        explanation:
          "FAUX. (−3)² = (−3) × (−3) = +9. Le carré d'un nombre négatif est positif. Attention : −3² = −(3²) = −9 (l'exposant s'applique seulement à 3).",
      },
      {
        sentence: "√49 = ±7",
        isCorrect: false,
        explanation:
          "FAUX. La racine carrée désigne par convention le nombre POSITIF : √49 = 7. Les solutions de x² = 49 sont x = 7 et x = −7, mais √49 = 7 uniquement.",
      },
      {
        sentence: "10⁻² = 0,01",
        isCorrect: true,
        explanation:
          "VRAI. a⁻ⁿ = 1/aⁿ. Donc 10⁻² = 1/10² = 1/100 = 0,01.",
      },
    ],
  },
};

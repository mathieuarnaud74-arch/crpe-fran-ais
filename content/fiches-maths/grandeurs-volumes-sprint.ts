import type { Fiche } from "@/features/fiches/types";

export const grandeursVolumesSprint: Fiche = {
  id: "grandeurs-volumes-sprint",
  slug: "volumes-formules-essentielles",
  title: "Volumes : formules essentielles",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "volume",
    "cube",
    "pavé droit",
    "cylindre",
    "cône",
    "sphère",
    "pyramide",
    "capacité",
  ],
  notionsLiees: [
    "grandeurs-aires-sprint",
    "grandeurs-aires-volumes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les volumes. Pour le lien entre unités de volume et de capacité et les démonstrations, consulte la fiche Référence « Aires et volumes ».",
    oneLiner:
      "Le volume d'un solide droit (prisme, cylindre) = aire de la base × hauteur. Pour un solide pointu (pyramide, cône), on divise par 3. Pour la sphère : V = 4/3 × πr³.",
    exampleCorrect: {
      sentence:
        "Le volume d'un pavé droit de dimensions 4 cm × 3 cm × 5 cm est 60 cm³.",
      explanation:
        "V = L × l × h = 4 × 3 × 5 = 60 cm³. ✓",
    },
    exampleWrong: {
      sentence:
        "Le volume d'un cylindre de rayon 3 cm et de hauteur 10 cm est environ 90 cm³.",
      explanation:
        "Erreur : V = π × r² × h = π × 9 × 10 ≈ 282,7 cm³. L'erreur vient de l'oubli du carré du rayon (πr au lieu de πr²).",
    },
    mainTrap:
      "Oublier de diviser par 3 pour les solides pointus (pyramide, cône). Autre piège : confondre les unités de volume (cm³) et de capacité (L). Rappel : 1 dm³ = 1 L.",
    quiz: [
      {
        sentence: "Le volume d'un cube de côté 4 cm est 64 cm³.",
        isCorrect: true,
        explanation:
          "VRAI. V = c³ = 4³ = 64 cm³.",
      },
      {
        sentence: "1 m³ = 100 L.",
        isCorrect: false,
        explanation:
          "FAUX. 1 m³ = 1 000 dm³ = 1 000 L. (1 dm³ = 1 L)",
      },
      {
        sentence:
          "Le volume d'une pyramide est égal au tiers de l'aire de sa base multipliée par sa hauteur.",
        isCorrect: true,
        explanation:
          "VRAI. V = (1/3) × Abase × h. C'est le tiers du prisme de même base et même hauteur.",
      },
      {
        sentence: "Le volume d'une sphère de rayon 3 cm est 36π cm³.",
        isCorrect: true,
        explanation:
          "VRAI. V = (4/3)πr³ = (4/3) × π × 27 = 36π ≈ 113,1 cm³.",
      },
      {
        sentence: "1 cm³ = 1 mL.",
        isCorrect: true,
        explanation:
          "VRAI. La correspondance fondamentale est 1 dm³ = 1 L, donc 1 cm³ = 1 mL et 1 m³ = 1 000 L.",
      },
    ],
  },
};

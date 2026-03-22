import type { Fiche } from "@/features/fiches/types";

export const grandeursPerimetreSprint: Fiche = {
  id: "grandeurs-perimetre-sprint",
  slug: "perimetres-figures-usuelles",
  title: "Périmètres des figures usuelles",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "périmètre",
    "carré",
    "rectangle",
    "triangle",
    "cercle",
    "formules",
  ],
  notionsLiees: [
    "grandeurs-aires-sprint",
    "grandeurs-aires-volumes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les périmètres. Pour les aires et volumes associés, consulte les fiches correspondantes.",
    oneLiner:
      "Le périmètre est la longueur totale du contour d'une figure : on additionne tous les côtés (polygone) ou on utilise la formule P = 2πr pour le cercle.",
    exampleCorrect: {
      sentence:
        "Un rectangle de longueur 8 cm et largeur 5 cm a un périmètre de 26 cm.",
      explanation:
        "P = 2 × (L + l) = 2 × (8 + 5) = 2 × 13 = 26 cm. ✓",
    },
    exampleWrong: {
      sentence:
        "Un rectangle de longueur 8 cm et largeur 5 cm a un périmètre de 40 cm.",
      explanation:
        "Erreur : 40 = 8 × 5 = aire, pas le périmètre. Ne pas confondre périmètre (somme des côtés) et aire (produit L × l).",
    },
    mainTrap:
      "Confondre périmètre et aire. Le périmètre s'exprime en unité de longueur (cm, m), l'aire en unité de surface (cm², m²). Autre piège : oublier le facteur 2 dans P = 2(L + l).",
    quiz: [
      {
        sentence: "Le périmètre d'un carré de côté 7 cm est 28 cm.",
        isCorrect: true,
        explanation:
          "VRAI. P = 4 × c = 4 × 7 = 28 cm.",
      },
      {
        sentence:
          "Le périmètre d'un cercle de rayon 5 cm est environ 15,7 cm.",
        isCorrect: false,
        explanation:
          "FAUX. P = 2πr = 2 × π × 5 ≈ 31,4 cm. 15,7 cm correspondrait à πr (la moitié).",
      },
      {
        sentence:
          "Un triangle de côtés 3, 4 et 5 cm a un périmètre de 12 cm.",
        isCorrect: true,
        explanation:
          "VRAI. P = 3 + 4 + 5 = 12 cm. (C'est un triangle rectangle 3-4-5.)",
      },
      {
        sentence:
          "Le périmètre d'un rectangle se calcule avec la formule P = L × l.",
        isCorrect: false,
        explanation:
          "FAUX. L × l donne l'aire du rectangle. Le périmètre est P = 2 × (L + l).",
      },
      {
        sentence: "Le périmètre s'exprime toujours dans une unité de longueur.",
        isCorrect: true,
        explanation:
          "VRAI. Le périmètre est une longueur (cm, m, km…), contrairement à l'aire (cm², m²) ou au volume (cm³, m³).",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const grandeursAiresSprint: Fiche = {
  id: "grandeurs-aires-sprint",
  slug: "aires-formules-essentielles",
  title: "Aires : formules essentielles",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "aire",
    "surface",
    "carré",
    "rectangle",
    "triangle",
    "parallélogramme",
    "disque",
    "trapèze",
  ],
  notionsLiees: [
    "grandeurs-perimetre-sprint",
    "grandeurs-aires-volumes-reference",
    "grandeurs-aire-figure-complexe-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les aires des figures planes. Pour les volumes et les démonstrations des formules, consulte la fiche Référence « Aires et volumes ».",
    oneLiner:
      "L'aire mesure la surface d'une figure plane : chaque formule découle du rectangle (L × l), les autres s'en déduisent par découpage ou complément.",
    exampleCorrect: {
      sentence:
        "L'aire d'un triangle de base 10 cm et de hauteur 6 cm est 30 cm².",
      explanation:
        "A = (b × h) / 2 = (10 × 6) / 2 = 60 / 2 = 30 cm². ✓",
    },
    exampleWrong: {
      sentence:
        "L'aire d'un triangle de base 10 cm et de hauteur 6 cm est 60 cm².",
      explanation:
        "Erreur : 60 cm² = b × h, c'est l'aire du rectangle englobant. Pour le triangle, il faut diviser par 2.",
    },
    mainTrap:
      "Oublier de diviser par 2 pour le triangle et le trapèze. Autre piège classique : confondre la hauteur (perpendiculaire à la base) avec un côté oblique de la figure.",
    quiz: [
      {
        sentence: "L'aire d'un carré de côté 9 cm est 81 cm².",
        isCorrect: true,
        explanation: "VRAI. A = c² = 9² = 81 cm².",
      },
      {
        sentence: "L'aire d'un disque de rayon 3 cm est environ 18,8 cm².",
        isCorrect: false,
        explanation:
          "FAUX. A = πr² = π × 9 ≈ 28,3 cm². 18,8 ≈ 2πr, c'est le périmètre du cercle, pas l'aire du disque.",
      },
      {
        sentence:
          "L'aire d'un parallélogramme est base × hauteur (sans diviser par 2).",
        isCorrect: true,
        explanation:
          "VRAI. A = b × h. Le parallélogramme se transforme en rectangle de même base et même hauteur par translation d'un triangle.",
      },
      {
        sentence:
          "L'aire d'un trapèze de bases 4 et 6 cm et de hauteur 5 cm est 50 cm².",
        isCorrect: false,
        explanation:
          "FAUX. A = (B + b) × h / 2 = (6 + 4) × 5 / 2 = 50 / 2 = 25 cm².",
      },
      {
        sentence: "L'aire s'exprime toujours dans une unité au carré (cm², m², km²).",
        isCorrect: true,
        explanation:
          "VRAI. L'aire est un produit de deux longueurs, d'où l'unité au carré.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const grandeursVolumesContenancesOperatoire: Fiche = {
  id: "grandeurs-volumes-contenances-operatoire",
  slug: "calculer-volumes-contenances-conversions",
  title: "Calculer des volumes et convertir en contenances",
  domaine: "grandeurs_mesures",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "volume",
    "contenance",
    "capacité",
    "litre",
    "dm³",
    "cube",
    "pavé droit",
    "cylindre",
    "conversion",
  ],
  notionsLiees: [
    "grandeurs-volumes-sprint",
    "grandeurs-aires-volumes-reference",
    "grandeurs-conversion-operatoire",
    "grandeurs-aire-figure-complexe-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel solide dois-tu traiter, et que cherches-tu : un volume ou une contenance ?",
    decisionTree: {
      type: "question",
      text: "Connais-tu la forme du solide ?",
      yes: {
        type: "question",
        text: "Le solide a-t-il une base et une hauteur identifiable (prisme, cylindre) ?",
        yes: {
          type: "question",
          text: "La base est-elle circulaire (cylindre) ?",
          yes: {
            type: "leaf",
            label: "Cylindre : V = π × r² × h",
            rule: "Calculer l'aire de la base circulaire (π × r²), puis multiplier par la hauteur h. Attention : utiliser le rayon (r), pas le diamètre.",
            example:
              "Cylindre r = 5 cm, h = 10 cm → V = π × 25 × 10 = 250π ≈ 785,4 cm³.",
          },
          no: {
            type: "leaf",
            label: "Prisme droit : V = Aire de la base × h",
            rule: "Calculer l'aire de la base (rectangle, triangle, autre polygone), puis multiplier par la hauteur. Cas particulier du pavé droit : V = L × l × h. Cas particulier du cube : V = c³.",
            example:
              "Pavé droit 4 × 3 × 5 cm → V = 60 cm³. Cube de 3 cm → V = 27 cm³.",
          },
        },
        no: {
          type: "leaf",
          label: "Autre solide (pyramide, cône, sphère)",
          rule: "Pyramide/cône : V = (1/3) × Aire de la base × h. Sphère : V = (4/3) × π × r³. Toujours bien identifier le solide avant de choisir la formule.",
          example:
            "Sphère r = 6 cm → V = (4/3) × π × 216 = 288π ≈ 904,8 cm³.",
        },
      },
      no: {
        type: "question",
        text: "Dois-tu convertir entre volume (cm³, dm³, m³) et contenance (mL, cL, L) ?",
        yes: {
          type: "leaf",
          label: "Correspondance volume ↔ contenance",
          rule: "1 dm³ = 1 L (correspondance fondamentale). Donc 1 cm³ = 1 mL, et 1 m³ = 1 000 L. Pour les volumes : chaque colonne = 3 rangs de virgule (×1 000). Pour passer de cm³ à L : diviser par 1 000.",
          example:
            "2 500 cm³ = 2 500 mL = 2,5 L = 2,5 dm³. Une piscine de 8 m³ = 8 000 L.",
        },
        no: {
          type: "leaf",
          label: "Identifier le solide et ses dimensions",
          rule: "Relire l'énoncé pour identifier la forme (cube, pavé, cylindre, pyramide, cône, sphère). Repérer les dimensions données (arête, rayon, hauteur, longueur, largeur). Attention : ne pas confondre diamètre et rayon.",
        },
      },
    },
    workedExample: {
      phrase:
        "Un aquarium en forme de pavé droit mesure 60 cm × 30 cm × 40 cm de hauteur. On le remplit aux 3/4. Combien de litres d'eau contient-il ?",
      steps: [
        "Étape 1 — Calculer le volume total : V = 60 × 30 × 40 = 72 000 cm³.",
        "Étape 2 — Volume d'eau (3/4) : 72 000 × 3/4 = 54 000 cm³.",
        "Étape 3 — Convertir en litres : 1 L = 1 dm³ = 1 000 cm³. Donc 54 000 cm³ = 54 000 / 1 000 = 54 L.",
        "Étape 4 — Vérification en dm³ : dimensions en dm = 6 × 3 × 4. Volume = 72 dm³. Aux 3/4 : 54 dm³ = 54 L. ✓",
      ],
    },
    quiz: [
      {
        sentence: "1 dm³ = 1 L.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la correspondance fondamentale entre unités de volume et de contenance. 1 dm³ = 1 L = 1 000 cm³ = 1 000 mL.",
      },
      {
        sentence:
          "Le volume d'un cube de 2 cm de côté est 6 cm³.",
        isCorrect: false,
        explanation:
          "FAUX. V = c³ = 2³ = 8 cm³. L'erreur 6 vient de la confusion avec l'aire totale d'une face (2² = 4) × le nombre de faces visibles (erreur de raisonnement), ou avec un autre calcul. Pour le cube : V = c³.",
      },
      {
        sentence:
          "1 m³ = 1 000 L.",
        isCorrect: true,
        explanation:
          "VRAI. 1 m³ = 1 000 dm³ = 1 000 L. Un cube de 1 m de côté contient 1 000 litres (soit 1 tonne d'eau).",
      },
      {
        sentence:
          "Le volume d'un cylindre de rayon 3 cm et de hauteur 10 cm est 30π cm³.",
        isCorrect: false,
        explanation:
          "FAUX. V = π × r² × h = π × 9 × 10 = 90π ≈ 282,7 cm³. L'erreur 30π vient de l'oubli d'élever le rayon au carré (π × 3 × 10 = 30π est faux).",
      },
      {
        sentence:
          "Le volume d'une pyramide est exactement le tiers du volume du prisme de même base et même hauteur.",
        isCorrect: true,
        explanation:
          "VRAI. V_pyramide = (1/3) × Aire_base × h. Cette relation est fondamentale et se démontre par découpage (3 pyramides composent un prisme).",
      },
    ],
    didacticNote:
      "Les volumes sont au programme du cycle 3 (pavé droit, cube) puis du cycle 4 (cylindre, pyramide, cône, sphère). La correspondance dm³ = L est une connaissance clé souvent évaluée au CRPE. L'erreur la plus fréquente chez les élèves : confondre aire latérale et volume, ou oublier le facteur 1/3 pour les pyramides et cônes.",
  },
};

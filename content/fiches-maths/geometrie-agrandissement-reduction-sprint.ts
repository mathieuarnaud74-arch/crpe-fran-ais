import type { Fiche } from "@/features/fiches/types";

export const geometrieAgrandissementReductionSprint: Fiche = {
  id: "geometrie-agrandissement-reduction-sprint",
  slug: "agrandissement-reduction-coefficient-effets",
  title: "Agrandissement-réduction : coefficient et effets",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "agrandissement",
    "réduction",
    "coefficient",
    "homothétie",
    "échelle",
    "longueurs",
    "aires",
    "volumes",
    "figures semblables",
  ],
  notionsLiees: [
    "grandeurs-echelles-operatoire",
    "grandeurs-echelles-plans-reference",
    "geometrie-transformations-reference",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les agrandissements-réductions. Pour l'utilisation des échelles dans les problèmes, consulte la fiche opératoire « Échelles ». Pour les transformations en détail, consulte la fiche Référence « Transformations ».",
    oneLiner:
      "Un agrandissement-réduction de coefficient k multiplie toutes les longueurs par k, toutes les aires par k² et tous les volumes par k³. Si k > 1 : agrandissement. Si 0 < k < 1 : réduction. Les angles sont conservés (figures semblables).",
    exampleCorrect: {
      sentence:
        "Un cube de 3 cm de côté est agrandi avec un coefficient 2. Nouveau côté : 6 cm. Nouvelle aire totale : 6 × 6² = 216 cm² (au lieu de 6 × 3² = 54 cm²). Nouveau volume : 6³ = 216 cm³ (au lieu de 3³ = 27 cm³).",
      explanation:
        "Longueurs × 2, aires × 2² = × 4 (54 × 4 = 216), volumes × 2³ = × 8 (27 × 8 = 216). Les rapports sont cohérents. ✓",
    },
    exampleWrong: {
      sentence:
        "On réduit une figure au coefficient 1/3. Les aires sont aussi divisées par 3.",
      explanation:
        "FAUX. Les longueurs sont divisées par 3, mais les aires sont divisées par 3² = 9. Exemple : un carré de 9 cm de côté (aire 81 cm²), réduit au 1/3, donne un carré de 3 cm (aire 9 cm²). 81 / 9 = 9, pas 3.",
    },
    mainTrap:
      "Appliquer le coefficient linéaire aux aires et aux volumes. C'est l'erreur la plus fréquente et la plus testée au CRPE. Retenir la règle « L × k, A × k², V × k³ ». Moyen mnémotechnique : la dimension de la grandeur donne l'exposant (longueur = dimension 1, aire = dimension 2, volume = dimension 3).",
    quiz: [
      {
        sentence:
          "Si on double toutes les dimensions d'un rectangle, son périmètre est multiplié par 2.",
        isCorrect: true,
        explanation:
          "VRAI. Le périmètre est une longueur (dimension 1) : il est multiplié par k = 2.",
      },
      {
        sentence:
          "Si on double toutes les dimensions d'un rectangle, son aire est multipliée par 2.",
        isCorrect: false,
        explanation:
          "FAUX. L'aire est une grandeur de dimension 2 : elle est multipliée par k² = 4. Un rectangle 3 × 5 (aire 15) → 6 × 10 (aire 60). 60 / 15 = 4.",
      },
      {
        sentence:
          "Deux figures semblables ont les mêmes angles mais pas nécessairement les mêmes longueurs.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la définition de la similitude : les angles sont conservés, les longueurs sont proportionnelles (rapport k). Deux triangles équilatéraux de tailles différentes sont semblables.",
      },
      {
        sentence:
          "Un agrandissement de coefficient 1 laisse la figure inchangée.",
        isCorrect: true,
        explanation:
          "VRAI. k = 1 → longueurs × 1, aires × 1, volumes × 1. C'est l'identité (ni agrandissement ni réduction).",
      },
      {
        sentence:
          "Si on réduit un solide au coefficient 1/2, sa masse est divisée par 2 (à densité constante).",
        isCorrect: false,
        explanation:
          "FAUX. La masse est proportionnelle au volume (à densité constante). Volume × (1/2)³ = × 1/8. La masse est divisée par 8, pas par 2.",
      },
    ],
  },
};

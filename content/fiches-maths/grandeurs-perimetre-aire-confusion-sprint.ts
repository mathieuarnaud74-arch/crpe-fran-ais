import type { Fiche } from "@/features/fiches/types";

export const grandeursPerimetreAireConfusionSprint: Fiche = {
  id: "grandeurs-perimetre-aire-confusion-sprint",
  slug: "perimetre-aire-distinguer-ne-pas-confondre",
  title: "Périmètre vs aire : distinguer et ne pas confondre",
  domaine: "grandeurs_mesures",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "périmètre",
    "aire",
    "confusion",
    "unités",
    "longueur",
    "surface",
    "obstacle didactique",
  ],
  notionsLiees: [
    "grandeurs-perimetre-sprint",
    "grandeurs-aires-sprint",
    "grandeurs-aires-volumes-reference",
    "didactique-obstacles-geometrie-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la distinction périmètre/aire. Pour les formules d'aires, consulte la fiche sprint « Aires ». Pour les périmètres, consulte la fiche sprint « Périmètre ».",
    oneLiner:
      "Le périmètre mesure le tour d'une figure (en m, cm, km — unités de longueur). L'aire mesure la surface couverte (en m², cm², km² — unités au carré). Deux figures peuvent avoir le même périmètre et des aires différentes, ou la même aire et des périmètres différents. Ces deux grandeurs sont indépendantes.",
    exampleCorrect: {
      sentence:
        "Rectangle 6 cm × 2 cm : périmètre = 2 × (6 + 2) = 16 cm ; aire = 6 × 2 = 12 cm². Rectangle 5 cm × 3 cm : périmètre = 2 × (5 + 3) = 16 cm ; aire = 5 × 3 = 15 cm². Même périmètre, aires différentes.",
      explanation:
        "Cet exemple démontre l'indépendance des deux grandeurs. Le périmètre ne détermine pas l'aire. C'est un contre-exemple puissant à utiliser en classe. ✓",
    },
    exampleWrong: {
      sentence:
        "Si on double le périmètre d'un rectangle, son aire est aussi doublée.",
      explanation:
        "FAUX. Rectangle 4 × 3 : périmètre = 14, aire = 12. Rectangle 8 × 6 (côtés doublés) : périmètre = 28 (doublé), mais aire = 48 = 4 × 12 (quadruplée, pas doublée). Doubler les dimensions multiplie le périmètre par 2 mais l'aire par 4 (k²).",
    },
    mainTrap:
      "Croire que périmètre et aire « vont ensemble » : qu'une figure de grand périmètre a forcément une grande aire. Contre-exemple extrême : un rectangle 100 cm × 0,01 cm a un périmètre de 200,02 cm mais une aire de seulement 1 cm². Cette confusion est l'un des obstacles didactiques les plus documentés en géométrie (travaux de Douady et Perrin-Glorian).",
    quiz: [
      {
        sentence:
          "Le périmètre s'exprime en unités de longueur (cm, m, km) et l'aire en unités au carré (cm², m², km²).",
        isCorrect: true,
        explanation:
          "VRAI. Le périmètre est une longueur (1 dimension). L'aire est une surface (2 dimensions). L'unité reflète la dimension : cm vs cm².",
      },
      {
        sentence:
          "Si deux rectangles ont la même aire, alors ils ont le même périmètre.",
        isCorrect: false,
        explanation:
          "FAUX. Rectangles 12 × 1 (aire 12, périmètre 26) et 4 × 3 (aire 12, périmètre 14). Même aire, périmètres très différents. À aire fixée, le carré a le périmètre minimal.",
      },
      {
        sentence:
          "Parmi tous les rectangles de même périmètre, le carré est celui qui a la plus grande aire.",
        isCorrect: true,
        explanation:
          "VRAI. C'est un résultat classique d'optimisation. Pour un périmètre de 20 cm, le carré 5 × 5 a une aire de 25 cm², supérieure à tout autre rectangle (ex : 6 × 4 = 24, 7 × 3 = 21, 9 × 1 = 9).",
      },
      {
        sentence:
          "Un élève qui calcule « l'aire d'un rectangle = 2 × (L + l) » confond aire et périmètre.",
        isCorrect: true,
        explanation:
          "VRAI. 2 × (L + l) est la formule du périmètre. L'aire est L × l. Cette confusion est très fréquente au cycle 3 et constitue un obstacle didactique majeur identifié par la recherche.",
      },
      {
        sentence:
          "Ajouter 1 cm à chaque côté d'un carré augmente son périmètre de 4 cm et son aire de 1 cm².",
        isCorrect: false,
        explanation:
          "FAUX. Le périmètre augmente bien de 4 cm (4 côtés × 1 cm). Mais l'aire passe de c² à (c+1)² = c² + 2c + 1, donc elle augmente de 2c + 1 cm², pas de 1 cm². Exemple : carré de 5 cm → aire passe de 25 à 36, soit +11 cm².",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const geometrieConstruireSymetriqueOperatoire: Fiche = {
  id: "geometrie-construire-symetrique-operatoire",
  slug: "construire-symetrique-figure",
  title: "Construire le symétrique d'une figure",
  domaine: "geometrie",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "symétrie axiale",
    "construction",
    "équerre",
    "compas",
    "médiatrice",
    "figure symétrique",
  ],
  notionsLiees: [
    "geometrie-symetrie-axiale-sprint",
    "geometrie-symetrie-centrale-sprint",
    "geometrie-transformations-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel type de symétrie dois-tu appliquer : axiale (par rapport à une droite) ou centrale (par rapport à un point) ?",
    decisionTree: {
      type: "question",
      text: "Quel type de symétrie dois-tu appliquer ?",
      yes: {
        type: "question",
        text: "SYMÉTRIE AXIALE — Le point à transformer est-il sur l'axe de symétrie ?",
        yes: {
          type: "leaf",
          label: "Point sur l'axe",
          rule: "Le point est son propre symétrique. On le laisse en place.",
          example:
            "Si le point A est sur l'axe (d), alors A' = A.",
        },
        no: {
          type: "question",
          text: "Disposes-tu d'un quadrillage ?",
          yes: {
            type: "leaf",
            label: "Avec quadrillage",
            rule: "Compter les carreaux entre le point et l'axe perpendiculairement, puis reporter le même nombre de carreaux de l'autre côté de l'axe.",
            example:
              "Si A est à 3 carreaux de l'axe (perpendiculairement), alors A' est à 3 carreaux de l'autre côté sur la même ligne perpendiculaire.",
          },
          no: {
            type: "leaf",
            label: "Sans quadrillage (instruments)",
            rule: "1) Tracer la perpendiculaire à l'axe passant par le point (avec l'équerre). 2) Mesurer la distance du point à l'axe. 3) Reporter cette même distance de l'autre côté de l'axe sur la perpendiculaire. Alternative au compas : pointer sur le point, tracer un arc coupant l'axe en deux points, puis depuis ces deux points, tracer deux arcs de même rayon de l'autre côté ; leur intersection donne le symétrique.",
            example:
              "Pour construire le symétrique de A par rapport à (d) : tracer la perpendiculaire à (d) passant par A, marquer le pied H, mesurer AH = 4 cm, reporter 4 cm de l'autre côté → A' tel que HA' = 4 cm.",
          },
        },
      },
      no: {
        type: "question",
        text: "SYMÉTRIE CENTRALE — Le point à transformer est-il le centre de symétrie ?",
        yes: {
          type: "leaf",
          label: "Point = centre",
          rule: "Le centre est son propre symétrique. On le laisse en place.",
          example: "Si A = O (le centre), alors A' = O.",
        },
        no: {
          type: "leaf",
          label: "Construction du symétrique central",
          rule: "1) Tracer la demi-droite [AO). 2) Prolonger au-delà de O. 3) Reporter la distance OA de l'autre côté de O sur cette droite : A' est tel que O est le milieu de [AA']. Au compas : pointer en O avec ouverture OA, piquer de l'autre côté.",
          example:
            "Pour le symétrique de A par rapport à O : tracer la droite (AO), mesurer OA = 5 cm, placer A' sur (AO) de l'autre côté de O tel que OA' = 5 cm.",
        },
      },
    },
    workedExample: {
      phrase:
        "Construire le symétrique du triangle ABC par rapport à l'axe (d), sachant que A est sur l'axe, B est à 3 cm de l'axe et C est à 5 cm de l'axe.",
      steps: [
        "Étape 1 — Traiter le point A : A est sur l'axe (d), donc A' = A (point invariant).",
        "Étape 2 — Construire B' : tracer la perpendiculaire à (d) passant par B (à l'équerre). Marquer le pied H_B sur (d). Mesurer BH_B = 3 cm. Reporter 3 cm de l'autre côté : H_B B' = 3 cm.",
        "Étape 3 — Construire C' : même méthode. Perpendiculaire à (d) par C, pied H_C, mesurer CH_C = 5 cm, reporter : H_C C' = 5 cm.",
        "Étape 4 — Tracer le triangle A'B'C' = AB'C' en reliant les trois points images.",
        "Étape 5 — Vérification : le triangle image a les mêmes longueurs de côtés que l'original (la symétrie conserve les distances). L'orientation est inversée.",
      ],
    },
    quiz: [
      {
        sentence:
          "Pour construire le symétrique d'un point par symétrie axiale, on trace une parallèle à l'axe passant par ce point.",
        isCorrect: false,
        explanation:
          "FAUX. On trace la perpendiculaire à l'axe passant par le point (pas une parallèle). C'est sur cette perpendiculaire qu'on reporte la distance.",
      },
      {
        sentence:
          "Le symétrique d'un point situé sur l'axe de symétrie est le point lui-même.",
        isCorrect: true,
        explanation:
          "VRAI. Tout point de l'axe est invariant par la symétrie axiale : il est son propre symétrique.",
      },
      {
        sentence:
          "Pour la symétrie centrale, le centre O est le milieu du segment joignant un point à son image.",
        isCorrect: true,
        explanation:
          "VRAI. Par définition, le symétrique de M par rapport à O est le point M' tel que O est le milieu de [MM'].",
      },
      {
        sentence:
          "Le symétrique d'un segment par symétrie axiale a une longueur différente de l'original.",
        isCorrect: false,
        explanation:
          "FAUX. La symétrie axiale est une isométrie : elle conserve toutes les longueurs. Le segment image a exactement la même longueur.",
      },
      {
        sentence:
          "Sur un quadrillage, pour construire le symétrique d'un point par rapport à un axe vertical, on compte les carreaux horizontalement.",
        isCorrect: true,
        explanation:
          "VRAI. Sur un quadrillage avec un axe vertical, la perpendiculaire à l'axe est horizontale. On compte les carreaux horizontalement entre le point et l'axe, puis on reporte le même nombre de l'autre côté.",
      },
    ],
    didacticNote:
      "Au cycle 2, commencer par le pliage (vérification concrète de la symétrie) et le papier calque avant de passer aux instruments. Au cycle 3, introduire la construction à l'équerre et au compas. L'erreur la plus fréquente des élèves est de tracer une parallèle à l'axe au lieu d'une perpendiculaire.",
  },
};

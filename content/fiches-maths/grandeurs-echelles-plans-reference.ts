import type { Fiche } from "@/features/fiches/types";

export const grandeursEchellesPlansReference: Fiche = {
  id: "grandeurs-echelles-plans-reference",
  slug: "echelles-plans-lecture-calcul",
  title: "Échelles et plans : lecture et calcul",
  domaine: "grandeurs_mesures",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "échelle",
    "plan",
    "carte",
    "proportionnalité",
    "agrandissement",
    "réduction",
  ],
  notionsLiees: [
    "grandeurs-conversions-reference",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "L'échelle d'un plan ou d'une carte exprime le rapport entre les distances mesurées sur le document et les distances réelles. C'est une application directe de la proportionnalité, très présente dans les sujets CRPE. Ce guide couvre la lecture, le calcul et les pièges courants.",
    sections: [
      {
        id: "definition",
        title: "Définition et notation",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "rule",
            content:
              "L'échelle est le quotient : distance sur le plan / distance réelle (dans la même unité). Elle s'écrit sous la forme 1/n ou 1 : n. Par exemple, 1 : 50 000 signifie que 1 cm sur la carte représente 50 000 cm (= 500 m) dans la réalité.",
            linguisticLogic:
              "L'échelle est un rapport sans unité : numérateur et dénominateur doivent être dans la même unité avant simplification.",
          },
          {
            kind: "example",
            sentence:
              "Un plan à l'échelle 1 : 200 signifie que 1 cm sur le plan = 200 cm = 2 m en réalité.",
            annotation: "Échelle de réduction (n > 1)",
          },
          {
            kind: "example",
            sentence:
              "Un schéma à l'échelle 5 : 1 signifie que 5 cm sur le schéma = 1 cm en réalité (agrandissement).",
            annotation: "Échelle d'agrandissement (n < 1 sous forme 1/n)",
          },
        ],
      },
      {
        id: "calculs",
        title: "Les trois types de calcul",
        badge: "Méthode",
        blocks: [
          {
            kind: "rule",
            content:
              "Trois situations de calcul : 1) Trouver la distance réelle à partir de la distance sur le plan et de l'échelle. 2) Trouver la distance sur le plan à partir de la distance réelle et de l'échelle. 3) Trouver l'échelle à partir des deux distances.",
          },
          {
            kind: "table",
            caption: "Les trois calculs d'échelle",
            headers: ["On cherche", "Formule", "Exemple (échelle 1 : 500)"],
            rows: [
              [
                "Distance réelle",
                "d_réelle = d_plan × dénominateur",
                "3 cm sur plan → 3 × 500 = 1 500 cm = 15 m",
              ],
              [
                "Distance sur plan",
                "d_plan = d_réelle / dénominateur",
                "20 m réel = 2 000 cm → 2 000 / 500 = 4 cm",
              ],
              [
                "Échelle",
                "échelle = d_plan / d_réelle",
                "2 cm plan pour 10 m réel = 2/1 000 = 1/500",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Toujours convertir les deux distances dans la même unité avant de calculer. Le cm est souvent l'unité la plus pratique pour le plan.",
          },
        ],
      },
      {
        id: "echelles-courantes",
        title: "Échelles courantes",
        badge: "Repères",
        blocks: [
          {
            kind: "table",
            caption: "Échelles fréquemment rencontrées",
            headers: ["Échelle", "1 cm représente", "Usage typique"],
            rows: [
              ["1 : 25 000", "250 m", "Carte IGN de randonnée"],
              ["1 : 50 000", "500 m", "Carte IGN régionale"],
              ["1 : 100 000", "1 km", "Carte routière"],
              ["1 : 200", "2 m", "Plan d'architecte"],
              ["1 : 50", "50 cm", "Plan de détail (salle de classe)"],
              ["1 : 1", "1 cm", "Taille réelle"],
            ],
          },
        ],
      },
      {
        id: "aires-echelle",
        title: "Échelle et aires",
        badge: "Approfondissement",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Si l'échelle des longueurs est 1 : n, l'échelle des aires est 1 : n². Une surface sur le plan doit être multipliée par n² pour obtenir la surface réelle.",
            watchout:
              "C'est le piège le plus fréquent au CRPE : appliquer ×n au lieu de ×n² pour les surfaces.",
          },
          {
            kind: "example",
            sentence:
              "Sur un plan à 1 : 200, un rectangle mesure 3 cm × 5 cm. Son aire réelle est 3 × 200 × 5 × 200 = 600 000 cm² = 60 m².",
            annotation:
              "Chaque dimension est multipliée par 200, donc l'aire est multipliée par 200² = 40 000.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Erreur classique",
                explanation:
                  "Multiplier l'aire sur le plan par n au lieu de n². 15 cm² × 200 = 3 000 cm² ≠ aire réelle. Il faut 15 × 200² = 15 × 40 000 = 600 000 cm².",
                correction:
                  "Toujours multiplier chaque dimension séparément par le dénominateur, puis calculer l'aire.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Échelle = distance plan / distance réelle (même unité).",
      "Notation 1 : n → 1 cm sur le plan = n cm en réalité.",
      "Toujours convertir dans la même unité avant de calculer.",
      "Pour les aires : l'échelle est au carré (1 : n²).",
      "Échelle > 1 = agrandissement ; échelle < 1 = réduction.",
    ],
    quiz: [
      {
        sentence:
          "Sur une carte au 1 : 25 000, 4 cm représentent 1 km en réalité.",
        isCorrect: true,
        explanation:
          "VRAI. 4 cm × 25 000 = 100 000 cm = 1 000 m = 1 km.",
      },
      {
        sentence:
          "Si l'échelle est 1 : 500, une surface de 2 cm² sur le plan représente 1 000 cm² en réalité.",
        isCorrect: false,
        explanation:
          "FAUX. L'échelle des aires est 1 : 500² = 1 : 250 000. Donc 2 cm² × 250 000 = 500 000 cm² = 50 m².",
      },
      {
        sentence:
          "Une échelle de 2 : 1 signifie que le dessin est deux fois plus grand que la réalité.",
        isCorrect: true,
        explanation:
          "VRAI. C'est une échelle d'agrandissement : 2 cm sur le dessin = 1 cm en réalité.",
      },
      {
        sentence:
          "Pour trouver l'échelle, on divise la distance réelle par la distance sur le plan.",
        isCorrect: false,
        explanation:
          "FAUX. L'échelle = distance plan / distance réelle (pas l'inverse). Cela donne un rapport < 1 pour une réduction.",
      },
      {
        sentence:
          "Sur un plan au 1 : 100, une pièce de 5 m de long mesure 5 cm sur le plan.",
        isCorrect: true,
        explanation:
          "VRAI. 5 m = 500 cm. 500 / 100 = 5 cm sur le plan.",
      },
    ],
  },
};

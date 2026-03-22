import type { Fiche } from "@/features/fiches/types";

export const grandeursEchellesOperatoire: Fiche = {
  id: "grandeurs-echelles-operatoire",
  slug: "utiliser-echelle-plan-carte-pas-a-pas",
  title: "Utiliser une échelle sur un plan ou une carte",
  domaine: "grandeurs_mesures",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "échelle",
    "plan",
    "carte",
    "agrandissement",
    "réduction",
    "proportionnalité",
    "distance réelle",
    "distance plan",
  ],
  notionsLiees: [
    "grandeurs-echelles-plans-reference",
    "nombres-proportionnalite-sprint",
    "grandeurs-conversion-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Que cherches-tu : la distance réelle, la distance sur le plan, ou l'échelle ?",
    decisionTree: {
      type: "question",
      text: "Connais-tu l'échelle et la distance sur le plan, et tu cherches la distance réelle ?",
      yes: {
        type: "leaf",
        label: "Distance réelle = distance plan × dénominateur",
        rule: "Échelle 1/n signifie : 1 cm sur le plan = n cm en réalité. Multiplier la mesure sur le plan par n, puis convertir le résultat dans l'unité souhaitée (m, km).",
        example:
          "Échelle 1/25 000, distance plan = 4 cm → 4 × 25 000 = 100 000 cm = 1 000 m = 1 km.",
      },
      no: {
        type: "question",
        text: "Connais-tu l'échelle et la distance réelle, et tu cherches la distance sur le plan ?",
        yes: {
          type: "leaf",
          label: "Distance plan = distance réelle / dénominateur",
          rule: "Convertir d'abord la distance réelle en cm (même unité que le plan). Puis diviser par le dénominateur n de l'échelle 1/n.",
          example:
            "Échelle 1/50 000, distance réelle = 3 km = 300 000 cm → 300 000 / 50 000 = 6 cm sur la carte.",
        },
        no: {
          type: "question",
          text: "Connais-tu les deux distances (plan et réelle) et tu cherches l'échelle ?",
          yes: {
            type: "leaf",
            label: "Échelle = distance plan / distance réelle",
            rule: "Exprimer les deux distances dans la même unité (cm). L'échelle = mesure plan / mesure réelle. Simplifier la fraction pour obtenir 1/n.",
            example:
              "5 cm sur le plan représentent 2 km = 200 000 cm. Échelle = 5/200 000 = 1/40 000.",
          },
          no: {
            type: "leaf",
            label: "Problème d'agrandissement-réduction",
            rule: "Le coefficient d'agrandissement-réduction k = dimension image / dimension réelle. Si k > 1 : agrandissement. Si k < 1 : réduction. Les longueurs sont multipliées par k, les aires par k², les volumes par k³.",
            example:
              "Une maquette au 1/100 : longueurs ÷ 100, aires ÷ 10 000, volumes ÷ 1 000 000.",
          },
        },
      },
    },
    workedExample: {
      phrase:
        "Sur une carte à l'échelle 1/200 000, deux villes sont séparées de 8,5 cm. Quelle est la distance réelle ? Si un terrain rectangulaire mesure 0,5 cm × 0,3 cm sur la carte, quelle est son aire réelle en hectares ?",
      steps: [
        "Étape 1 — Distance réelle entre les villes : 8,5 × 200 000 = 1 700 000 cm.",
        "Étape 2 — Convertir : 1 700 000 cm = 17 000 m = 17 km.",
        "Étape 3 — Dimensions réelles du terrain : longueur = 0,5 × 200 000 = 100 000 cm = 1 000 m = 1 km. Largeur = 0,3 × 200 000 = 60 000 cm = 600 m.",
        "Étape 4 — Aire réelle = 1 000 × 600 = 600 000 m².",
        "Étape 5 — Conversion en hectares : 1 ha = 10 000 m², donc 600 000 / 10 000 = 60 ha.",
        "Étape 6 — Vérification par le coefficient d'aire : aire sur la carte = 0,5 × 0,3 = 0,15 cm². Coefficient d'aire = (200 000)² = 4 × 10¹⁰. Aire réelle = 0,15 × 4 × 10¹⁰ = 6 × 10⁹ cm² = 600 000 m² = 60 ha. ✓",
      ],
    },
    quiz: [
      {
        sentence:
          "L'échelle 1/25 000 signifie que 1 cm sur la carte correspond à 250 m dans la réalité.",
        isCorrect: true,
        explanation:
          "VRAI. 1 cm × 25 000 = 25 000 cm = 250 m. C'est l'échelle standard des cartes IGN de randonnée.",
      },
      {
        sentence:
          "Si l'échelle est 1/50 000, une surface de 1 cm² sur la carte correspond à 50 000 cm² en réalité.",
        isCorrect: false,
        explanation:
          "FAUX. Pour les aires, le coefficient est au carré : 1 cm² sur la carte = (50 000)² cm² = 2,5 × 10⁹ cm² = 250 000 m² = 25 ha en réalité. L'erreur consiste à appliquer le coefficient linéaire aux surfaces.",
      },
      {
        sentence:
          "Une échelle de 1/500 est plus grande (plus détaillée) qu'une échelle de 1/50 000.",
        isCorrect: true,
        explanation:
          "VRAI. 1/500 > 1/50 000 (la fraction est plus grande). Plus l'échelle est grande, plus le plan est détaillé et couvre une zone réduite. Un plan d'architecte (1/50) est bien plus détaillé qu'une carte routière (1/1 000 000).",
      },
      {
        sentence:
          "Pour trouver l'échelle, il faut obligatoirement convertir les deux distances dans la même unité.",
        isCorrect: true,
        explanation:
          "VRAI. L'échelle est un rapport de deux longueurs. Pour que ce rapport ait un sens, les deux mesures doivent être dans la même unité (généralement le cm).",
      },
      {
        sentence:
          "Dans un agrandissement de rapport 3, les volumes sont multipliés par 9.",
        isCorrect: false,
        explanation:
          "FAUX. Les volumes sont multipliés par k³ = 3³ = 27. Ce sont les aires qui sont multipliées par k² = 9. Longueurs × k, aires × k², volumes × k³.",
      },
    ],
    didacticNote:
      "Les échelles sont au programme du cycle 3 et constituent un classique transversal du CRPE (lien proportionnalité-géométrie-grandeurs). L'erreur la plus fréquente des candidats est d'appliquer le coefficient linéaire aux aires ou aux volumes. Au cycle 3, on travaille d'abord les échelles simples (plans de classe, de l'école) avant les cartes géographiques.",
  },
};

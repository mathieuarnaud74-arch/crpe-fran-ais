import type { Fiche } from "@/features/fiches/types";

export const grandeursConversionOperatoire: Fiche = {
  id: "grandeurs-conversion-operatoire",
  slug: "convertir-grandeur-methode-tableau",
  title: "Convertir une grandeur : méthode du tableau",
  domaine: "grandeurs_mesures",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "conversion",
    "tableau",
    "méthode",
    "virgule",
    "unités",
    "système métrique",
  ],
  notionsLiees: [
    "grandeurs-unites-longueur-sprint",
    "grandeurs-unites-masse-capacite-sprint",
    "grandeurs-conversions-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quelle est la grandeur à convertir (longueur, masse, capacité, aire ou volume) ?",
    decisionTree: {
      type: "question",
      text: "Quelle est la grandeur à convertir ?",
      yes: {
        type: "question",
        text: "Est-ce une grandeur simple (longueur, masse ou capacité) ?",
        yes: {
          type: "question",
          text: "Le tableau est tracé avec 7 colonnes (1 case par colonne). As-tu placé le chiffre des unités dans la colonne de l'unité de départ ?",
          yes: {
            type: "leaf",
            label: "Décaler la virgule",
            rule: "Compter le nombre de colonnes entre l'unité de départ et l'unité d'arrivée. Décaler la virgule d'autant de rangs : vers la droite pour une unité plus petite, vers la gauche pour une unité plus grande. Compléter avec des zéros si nécessaire.",
            example:
              "3,5 km → m : 3 colonnes vers la droite → 3 500 m.",
          },
          no: {
            type: "leaf",
            label: "Placer le nombre dans le tableau",
            rule: "Écrire le nombre chiffre par chiffre. Le chiffre des unités (avant la virgule) va dans la colonne de l'unité de départ. Les chiffres décimaux remplissent les colonnes suivantes vers la droite.",
            example:
              "Pour 3,5 km : le 3 va dans la colonne km, le 5 dans la colonne hm.",
          },
        },
        no: {
          type: "question",
          text: "Est-ce une aire (unité au carré) ?",
          yes: {
            type: "leaf",
            label: "Tableau d'aire : 2 cases par colonne",
            rule: "Tracer le tableau avec 2 cases par colonne. Chaque colonne franchie = 2 rangs de virgule (×100). Placer le nombre et décaler la virgule de 2 rangs par colonne.",
            example:
              "2,5 m² → cm² : 2 colonnes × 2 rangs = 4 rangs → 25 000 cm².",
          },
          no: {
            type: "leaf",
            label: "Tableau de volume : 3 cases par colonne",
            rule: "Tracer le tableau avec 3 cases par colonne. Chaque colonne franchie = 3 rangs de virgule (×1 000). Placer le nombre et décaler la virgule de 3 rangs par colonne.",
            example:
              "1,2 m³ → dm³ : 1 colonne × 3 rangs = 3 rangs → 1 200 dm³.",
          },
        },
      },
      no: {
        type: "leaf",
        label: "Identifier la grandeur",
        rule: "Regarder l'unité : m, km, cm = longueur ; g, kg = masse ; L, mL = capacité ; m², cm² = aire ; m³, cm³ = volume. Le type de grandeur détermine le nombre de cases par colonne du tableau.",
        example:
          "cm² → aire (2 cases/colonne). dm³ → volume (3 cases/colonne).",
      },
    },
    workedExample: {
      phrase: "Convertir 0,35 dam² en cm².",
      steps: [
        "Étape 1 — Identifier la grandeur : dam² → c'est une aire (unité au carré).",
        "Étape 2 — Tracer le tableau d'aire avec 2 cases par colonne : km² | hm² | dam² | m² | dm² | cm² | mm².",
        "Étape 3 — Placer le nombre : 0,35 dam². Le chiffre des unités (0) va dans la première case de la colonne dam². Le 3 et le 5 occupent les deux cases suivantes (première et deuxième cases de m²).",
        "Étape 4 — Compter les colonnes de dam² à cm² : dam² → m² → dm² → cm² = 3 colonnes × 2 rangs = 6 rangs vers la droite.",
        "Étape 5 — Décaler la virgule de 6 rangs : 0,35 → 350 000 cm². Compléter avec des zéros : 0,35 dam² = 350 000 cm².",
      ],
    },
    quiz: [
      {
        sentence:
          "Pour convertir des aires, on utilise un tableau avec 2 cases par colonne.",
        isCorrect: true,
        explanation:
          "VRAI. Les aires sont au carré, donc chaque colonne = ×100, soit 2 rangs de virgule = 2 cases.",
      },
      {
        sentence:
          "Pour convertir 4,2 km en m, on décale la virgule de 2 rangs vers la droite.",
        isCorrect: false,
        explanation:
          "FAUX. De km à m = 3 colonnes = 3 rangs vers la droite. 4,2 km = 4 200 m.",
      },
      {
        sentence:
          "Dans le tableau de conversion, le chiffre des unités se place dans la colonne de l'unité de départ.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la règle de placement : le chiffre immédiatement avant la virgule va dans la colonne de l'unité donnée.",
      },
      {
        sentence:
          "1 colonne dans un tableau de volumes correspond à un décalage de 2 rangs.",
        isCorrect: false,
        explanation:
          "FAUX. Les volumes sont au cube : 1 colonne = 3 rangs (×1 000). C'est pour les aires que c'est 2 rangs.",
      },
      {
        sentence:
          "Pour aller d'une unité plus grande vers une unité plus petite, on décale la virgule vers la droite.",
        isCorrect: true,
        explanation:
          "VRAI. Plus petite unité = nombre plus grand, donc virgule vers la droite. Exemple : 3 m = 300 cm.",
      },
    ],
    didacticNote:
      "Au cycle 2, commencer par les longueurs avec manipulation (règle, mètre ruban). Au cycle 3, introduire le tableau de conversion progressivement : d'abord longueur/masse, puis aire avec la double case. Les volumes au cube sont introduits au collège.",
  },
};

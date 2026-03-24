import type { Fiche } from "@/features/fiches/types";

export const donneesStatistiquesReference: Fiche = {
  id: "donnees-statistiques-reference",
  slug: "statistiques-descriptives-guide-complet",
  title: "Statistiques descriptives : guide complet",
  domaine: "organisation_donnees",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "statistiques",
    "moyenne",
    "médiane",
    "étendue",
    "quartiles",
    "effectif",
    "fréquence",
    "fréquence cumulée",
    "diagramme en boîte",
    "indicateurs",
  ],
  notionsLiees: [
    "donnees-moyenne-mediane-sprint",
    "donnees-tableaux-graphiques-sprint",
    "donnees-probabilites-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Les statistiques descriptives permettent de résumer, organiser et interpréter un jeu de données. Ce guide couvre l'ensemble des notions au programme du CRPE : vocabulaire, indicateurs de position (moyenne, médiane, mode), indicateurs de dispersion (étendue, quartiles) et représentations graphiques.",
    sections: [
      {
        id: "vocabulaire",
        title: "Vocabulaire de base",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "table",
            caption: "Termes clés en statistiques",
            headers: ["Terme", "Définition", "Exemple"],
            rows: [
              [
                "Population",
                "Ensemble des individus étudiés",
                "Les 30 élèves d'une classe",
              ],
              [
                "Caractère",
                "La propriété étudiée sur chaque individu",
                "La note obtenue au contrôle",
              ],
              [
                "Effectif",
                "Nombre d'individus ayant une même valeur",
                "8 élèves ont eu 14/20",
              ],
              [
                "Effectif total",
                "Nombre total d'individus (N)",
                "N = 30",
              ],
              [
                "Fréquence",
                "Effectif / effectif total",
                "8/30 ≈ 0,267 = 26,7 %",
              ],
              [
                "Fréquence cumulée",
                "Somme des fréquences jusqu'à une valeur donnée",
                "F.C. de 14 = f(≤14)",
              ],
            ],
          },
          {
            kind: "tip",
            text: "La somme de tous les effectifs = effectif total. La somme de toutes les fréquences = 1 (ou 100 %).",
          },
        ],
      },
      {
        id: "indicateurs-position",
        title: "Indicateurs de position",
        badge: "Moyenne, médiane, mode",
        blocks: [
          {
            kind: "rule",
            content:
              "La moyenne est la somme de toutes les valeurs divisée par l'effectif total. En cas de données groupées, on utilise la moyenne pondérée : Σ(valeur × effectif) / N.",
          },
          {
            kind: "rule",
            content:
              "La médiane (Me) est la valeur qui partage la série ordonnée en deux groupes de même effectif. Si N est impair, Me = valeur de rang (N+1)/2. Si N est pair, Me = moyenne des valeurs de rang N/2 et N/2 + 1.",
          },
          {
            kind: "rule",
            content:
              "Le mode est la valeur de plus grand effectif. Une série peut être bimodale (deux modes) ou sans mode (tous les effectifs égaux).",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Moyenne vs médiane",
                explanation:
                  "La moyenne est sensible aux valeurs extrêmes, pas la médiane. Exemple : salaires 1 200, 1 300, 1 400, 1 500, 10 000 € → moyenne = 3 080 €, médiane = 1 400 €. La médiane est ici plus représentative.",
              },
              {
                label: "Moyenne pondérée",
                explanation:
                  "Erreur fréquente : additionner les valeurs sans tenir compte des effectifs. Si 5 élèves ont 10 et 15 élèves ont 14, la moyenne n'est pas (10+14)/2 = 12 mais (5×10 + 15×14)/20 = 13.",
              },
            ],
          },
        ],
      },
      {
        id: "indicateurs-dispersion",
        title: "Indicateurs de dispersion",
        badge: "Étendue, quartiles",
        blocks: [
          {
            kind: "rule",
            content:
              "L'étendue = valeur maximale − valeur minimale. Elle mesure l'amplitude de la série mais est très sensible aux valeurs extrêmes.",
          },
          {
            kind: "rule",
            content:
              "Les quartiles divisent la série ordonnée en 4 groupes de même effectif. Q₁ (premier quartile) : 25 % des valeurs sont inférieures. Q₂ = médiane. Q₃ (troisième quartile) : 75 % des valeurs sont inférieures. L'écart interquartile = Q₃ − Q₁.",
          },
          {
            kind: "example",
            sentence:
              "Série ordonnée de 20 valeurs : Q₁ est la valeur de rang 5 (ou entre rangs 5 et 6), Q₃ est la valeur de rang 15 (ou entre rangs 15 et 16).",
            annotation:
              "Plusieurs conventions existent pour le calcul exact des quartiles. Au CRPE, la méthode des rangs est la plus courante.",
          },
        ],
      },
      {
        id: "representations",
        title: "Représentations graphiques",
        badge: "Graphiques",
        collapsible: true,
        blocks: [
          {
            kind: "table",
            caption: "Quel graphique pour quel type de données ?",
            headers: ["Type de données", "Graphique adapté", "Particularité"],
            rows: [
              [
                "Qualitatives (catégories)",
                "Diagramme en barres / circulaire",
                "Barres séparées, secteurs proportionnels",
              ],
              [
                "Quantitatives discrètes",
                "Diagramme en bâtons",
                "Bâtons verticaux sur les valeurs prises",
              ],
              [
                "Quantitatives continues (classes)",
                "Histogramme",
                "Barres accolées, aires proportionnelles aux effectifs",
              ],
              [
                "Évolution temporelle",
                "Courbe / ligne brisée",
                "Points reliés, tendance visible",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Histogramme ≠ diagramme en barres",
                explanation:
                  "L'histogramme a des barres accolées (données continues en classes) et l'aire de chaque barre est proportionnelle à l'effectif. Le diagramme en barres a des barres séparées (données qualitatives).",
              },
              {
                label: "Diagramme circulaire : proportionnalité",
                explanation:
                  "L'angle du secteur = fréquence × 360°. Erreur : dessiner des secteurs « à l'œil » sans calculer les angles.",
              },
            ],
          },
        ],
      },
      {
        id: "diagramme-boite",
        title: "Le diagramme en boîte (box plot)",
        badge: "Approfondissement",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Le diagramme en boîte résume les 5 indicateurs clés d'une série : minimum, Q₁, médiane, Q₃, maximum. La boîte s'étend de Q₁ à Q₃, un trait vertical marque la médiane, et les « moustaches » vont du minimum au maximum.",
          },
          {
            kind: "tip",
            text: "Le diagramme en boîte permet de comparer visuellement plusieurs séries (même axe) et de repérer la dispersion et l'asymétrie d'une distribution.",
          },
        ],
      },
    ],
    keyPoints: [
      "Effectif = nombre d'individus ; fréquence = effectif / N ; somme des fréquences = 1.",
      "Moyenne = Σ(valeur × effectif) / N. Sensible aux valeurs extrêmes.",
      "Médiane = valeur centrale de la série ordonnée. Robuste aux valeurs extrêmes.",
      "Étendue = max − min. Quartiles : Q₁ (25 %), Q₂ = médiane (50 %), Q₃ (75 %).",
      "Histogramme pour données continues en classes, diagramme en barres pour données qualitatives.",
    ],
    quiz: [
      {
        sentence:
          "La somme de toutes les fréquences d'une série statistique est toujours égale à 1.",
        isCorrect: true,
        explanation:
          "VRAI. Chaque fréquence = effectif / N, et la somme de tous les effectifs = N, donc Σ fréquences = N/N = 1.",
      },
      {
        sentence:
          "La médiane d'une série de 10 valeurs ordonnées est la 5e valeur.",
        isCorrect: false,
        explanation:
          "FAUX. Pour N = 10 (pair), la médiane est la moyenne de la 5e et de la 6e valeur : Me = (v₅ + v₆) / 2.",
      },
      {
        sentence:
          "La moyenne est toujours un meilleur résumé de la série que la médiane.",
        isCorrect: false,
        explanation:
          "FAUX. En présence de valeurs extrêmes (série très dissymétrique), la médiane est souvent plus représentative que la moyenne.",
      },
      {
        sentence:
          "L'écart interquartile Q₃ − Q₁ contient environ 50 % des valeurs de la série.",
        isCorrect: true,
        explanation:
          "VRAI. Par définition, 25 % des valeurs sont sous Q₁ et 25 % au-dessus de Q₃, donc 50 % sont entre Q₁ et Q₃.",
      },
      {
        sentence:
          "Dans un histogramme, c'est la hauteur des barres qui est proportionnelle à l'effectif.",
        isCorrect: false,
        explanation:
          "FAUX. C'est l'aire des barres qui est proportionnelle à l'effectif. Si les classes n'ont pas la même amplitude, les hauteurs ne sont pas directement comparables.",
      },
      {
        sentence:
          "Le mode est la valeur la plus fréquente d'une série statistique.",
        isCorrect: true,
        explanation:
          "VRAI. Le mode est la valeur ayant le plus grand effectif. Une série peut avoir plusieurs modes.",
      },
    ],
  },
};

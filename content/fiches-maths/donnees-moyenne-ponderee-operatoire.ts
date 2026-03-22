import type { Fiche } from "@/features/fiches/types";

export const donneesMoyennePondereeOperatoire: Fiche = {
  id: "donnees-moyenne-ponderee-operatoire",
  slug: "calculer-moyenne-ponderee-mediane-pas-a-pas",
  title: "Calculer une moyenne pondérée et une médiane",
  domaine: "organisation_donnees",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "moyenne pondérée",
    "médiane",
    "effectifs",
    "fréquences",
    "indicateurs statistiques",
    "données groupées",
    "étendue",
  ],
  notionsLiees: [
    "donnees-moyenne-mediane-sprint",
    "donnees-statistiques-reference",
    "donnees-tableaux-graphiques-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel indicateur statistique dois-tu calculer : moyenne, médiane ou étendue ?",
    decisionTree: {
      type: "question",
      text: "Dois-tu calculer une moyenne ?",
      yes: {
        type: "question",
        text: "Les données sont-elles regroupées dans un tableau d'effectifs (valeurs avec leur nombre d'occurrences) ?",
        yes: {
          type: "leaf",
          label: "Moyenne pondérée = Σ(valeur × effectif) / effectif total",
          rule: "Pour chaque valeur, multiplier par son effectif. Additionner tous les produits. Diviser par l'effectif total (somme de tous les effectifs). Si le tableau donne des classes (ex : 10-20), utiliser le centre de classe.",
          example:
            "Notes : 8 (×3), 12 (×5), 15 (×2). Moyenne = (8×3 + 12×5 + 15×2) / (3+5+2) = (24 + 60 + 30) / 10 = 114/10 = 11,4.",
        },
        no: {
          type: "leaf",
          label: "Moyenne simple = somme des valeurs / nombre de valeurs",
          rule: "Additionner toutes les valeurs, puis diviser par le nombre total de valeurs. Chaque valeur a le même poids.",
          example:
            "Notes : 8, 12, 15, 10, 9. Moyenne = (8 + 12 + 15 + 10 + 9) / 5 = 54/5 = 10,8.",
        },
      },
      no: {
        type: "question",
        text: "Dois-tu trouver la médiane ?",
        yes: {
          type: "question",
          text: "Les données sont-elles déjà classées par ordre croissant ?",
          yes: {
            type: "leaf",
            label: "Trouver le rang de la médiane",
            rule: "Si n est impair : la médiane est la valeur de rang (n+1)/2. Si n est pair : la médiane est la moyenne des valeurs de rang n/2 et n/2 + 1. Avec un tableau d'effectifs : calculer les effectifs cumulés croissants et trouver la classe contenant le rang médian.",
            example:
              "9 valeurs classées : la médiane est la 5e (rang (9+1)/2 = 5). 10 valeurs : moyenne des 5e et 6e.",
          },
          no: {
            type: "leaf",
            label: "Classer les données d'abord",
            rule: "Ranger toutes les valeurs par ordre croissant, puis appliquer la méthode du rang. Attention : ne pas oublier les valeurs répétées (les écrire autant de fois qu'elles apparaissent).",
            example:
              "Données : 7, 3, 9, 3, 5 → classées : 3, 3, 5, 7, 9 → médiane = 5 (3e valeur sur 5).",
          },
        },
        no: {
          type: "leaf",
          label: "Étendue = max − min",
          rule: "L'étendue est la différence entre la plus grande et la plus petite valeur de la série. C'est l'indicateur de dispersion le plus simple.",
          example:
            "Notes : 6, 8, 14, 9, 17 → étendue = 17 − 6 = 11.",
        },
      },
    },
    workedExample: {
      phrase:
        "Dans une classe de 30 élèves, les notes au contrôle sont : 6 (4 élèves), 8 (6 élèves), 10 (8 élèves), 12 (7 élèves), 16 (5 élèves). Calculer la moyenne pondérée, la médiane et l'étendue.",
      steps: [
        "Étape 1 — Vérifier l'effectif total : 4 + 6 + 8 + 7 + 5 = 30 ✓.",
        "Étape 2 — Moyenne pondérée : (6×4 + 8×6 + 10×8 + 12×7 + 16×5) / 30 = (24 + 48 + 80 + 84 + 80) / 30 = 316/30 ≈ 10,53.",
        "Étape 3 — Médiane : 30 valeurs (pair) → médiane = moyenne des 15e et 16e valeurs. Effectifs cumulés : 4, 10, 18, 25, 30. La 15e valeur est dans la tranche « 10 » (cumulé 10 à 18). La 16e aussi. Médiane = (10 + 10) / 2 = 10.",
        "Étape 4 — Étendue : 16 − 6 = 10.",
        "Étape 5 — Interprétation : la moyenne (10,53) est légèrement au-dessus de la médiane (10), ce qui indique une distribution légèrement tirée vers le haut par les bonnes notes (16). L'étendue de 10 points montre une dispersion modérée.",
      ],
    },
    quiz: [
      {
        sentence:
          "La moyenne pondérée tient compte du nombre d'occurrences de chaque valeur, contrairement à la moyenne simple.",
        isCorrect: true,
        explanation:
          "VRAI. Dans la moyenne pondérée, chaque valeur est multipliée par son effectif (ou poids). La moyenne simple traite chaque valeur avec le même poids.",
      },
      {
        sentence:
          "La médiane de la série 2, 5, 8, 11, 14 est 8.",
        isCorrect: true,
        explanation:
          "VRAI. 5 valeurs classées : la médiane est la 3e (rang (5+1)/2 = 3). La 3e valeur est 8.",
      },
      {
        sentence:
          "La moyenne d'une série est toujours égale à sa médiane.",
        isCorrect: false,
        explanation:
          "FAUX. Moyenne et médiane ne coïncident que dans les distributions symétriques. Contre-exemple : série 1, 2, 100 → moyenne = 34,3, médiane = 2. Les valeurs extrêmes « tirent » la moyenne mais pas la médiane.",
      },
      {
        sentence:
          "Pour calculer la moyenne avec des données en classes (ex : [10 ; 20[), on utilise le centre de chaque classe.",
        isCorrect: true,
        explanation:
          "VRAI. Le centre de la classe [10 ; 20[ est (10 + 20) / 2 = 15. On l'utilise comme valeur représentative pour calculer la moyenne pondérée. C'est une approximation, mais c'est la méthode standard.",
      },
      {
        sentence:
          "L'étendue est un bon indicateur de dispersion car elle prend en compte toutes les valeurs de la série.",
        isCorrect: false,
        explanation:
          "FAUX. L'étendue ne prend en compte que les deux valeurs extrêmes (max et min). Une seule valeur aberrante peut la rendre très grande sans que le reste des données soit dispersé. L'écart-type est un meilleur indicateur de dispersion globale.",
      },
    ],
    didacticNote:
      "Au cycle 3, les programmes introduisent la moyenne (simple) et la lecture de données dans des tableaux. La moyenne pondérée et la médiane sont travaillées au cycle 4. Au CRPE, les questions portent souvent sur l'interprétation (« que signifie cette moyenne ? ») et sur la comparaison moyenne/médiane pour caractériser une distribution.",
  },
};

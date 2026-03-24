import type { Fiche } from "@/features/fiches/types";

export const donneesStatistiquesEtudeOperatoire: Fiche = {
  id: "donnees-statistiques-etude-operatoire",
  slug: "etude-statistique-collecte-analyse",
  title: "Mener une étude statistique : de la collecte à l'interprétation",
  domaine: "organisation_donnees",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "statistiques",
    "données",
    "tableau de fréquences",
    "diagramme",
    "moyenne",
    "médiane",
    "étendue",
    "quartiles",
    "cycle 3",
    "collège",
  ],
  notionsLiees: [
    "donnees-tableaux-graphiques-sprint",
    "donnees-moyenne-mediane-sprint",
    "donnees-statistiques-reference",
    "donnees-lecture-graphiques-sprint",
    "donnees-frequences-cumulees-quartiles-sprint",
  ],
  exercicesAssocies: [
    "math_statistiques_comparaison",
    "math_moyennes_medianes",
    "math_mediane_quartiles",
  ],
  content: {
    model: "operatoire",
    startingQuestion:
      "J'ai un jeu de données brutes : quelle représentation choisir et quels indicateurs calculer ?",
    decisionTree: {
      type: "question",
      text: "Les données sont-elles QUALITATIVES (catégories, couleurs, préférences…) ou QUANTITATIVES (mesures numériques) ?",
      yes: {
        type: "question",
        text: "Données qualitatives — les catégories ont-elles un ordre naturel (peu/moyen/beaucoup) ?",
        yes: {
          type: "leaf",
          label: "Données qualitatives ordonnées → diagramme en barres ordonné",
          rule: "Classer les catégories dans leur ordre logique. Calculer les effectifs et les fréquences relatives (fréquence = effectif ÷ total). Représenter par un diagramme en barres en respectant l'ordre. La médiane peut être calculée si les catégories sont ordonnées. Pas de moyenne calculable.",
          example:
            "Niveaux de difficulté perçus d'un exercice : très facile (5), facile (12), difficile (8), très difficile (3). Total = 28. Fréquences : 17,9% / 42,9% / 28,6% / 10,7%. Diagramme en barres dans l'ordre croissant de difficulté.",
        },
        no: {
          type: "leaf",
          label: "Données qualitatives nominales → diagramme circulaire ou en barres",
          rule: "Calculer les effectifs et les fréquences relatives (%). Choisir : diagramme en barres (comparaison facile des catégories) ou diagramme circulaire (parts d'un tout, si peu de catégories ≤ 6). Calculer l'angle de chaque secteur : angle = fréquence × 360°. Ni moyenne ni médiane n'ont de sens.",
          example:
            "Sport préféré dans une classe : foot (10), natation (7), tennis (5), autre (3). Total = 25. Angles : foot = 10/25 × 360° = 144°, natation = 100,8°, tennis = 72°, autre = 43,2°.",
        },
      },
      no: {
        type: "question",
        text: "Données quantitatives — les valeurs sont-elles DISCRÈTES (entières, peu nombreuses) ou CONTINUES (mesures avec beaucoup de valeurs différentes) ?",
        yes: {
          type: "question",
          text: "Données quantitatives discrètes — les valeurs différentes sont-elles peu nombreuses (< 10) ?",
          yes: {
            type: "leaf",
            label: "Données discrètes peu nombreuses → diagramme en bâtons + indicateurs",
            rule: "Construire un tableau effectifs/fréquences. Représenter par un diagramme en bâtons (axe vertical : effectif ou fréquence). Calculer : moyenne = Σ(valeur × effectif) ÷ total, étendue = valeur max − valeur min, médiane (valeur centrale quand les données sont ordonnées).",
            example:
              "Notes sur 5 d'un quiz (n=20) : 1(2), 2(3), 3(7), 4(5), 5(3). Moyenne = (1×2+2×3+3×7+4×5+5×3)/20 = (2+6+21+20+15)/20 = 64/20 = 3,2. Médiane : 20 données ordonnées → valeur entre rang 10 et 11, tous deux à 3 → médiane = 3.",
          },
          no: {
            type: "leaf",
            label: "Données discrètes nombreuses → regroupement en classes puis histogramme",
            rule: "Si trop de valeurs différentes, regrouper en classes d'égale amplitude. Construire un histogramme (barres jointives, axe vertical = fréquence/amplitude ou effectif). Calculer les indicateurs avec les milieux de classes.",
            example:
              "Temps de trajet (en min) de 50 élèves : regrouper en [0 ; 10[, [10 ; 20[, [20 ; 30[, [30 ; 40[. Histogramme à 4 barres jointives.",
          },
        },
        no: {
          type: "leaf",
          label: "Données quantitatives continues → histogramme + boîte à moustaches",
          rule: "Regrouper en classes. Représenter par un histogramme (barres jointives, hauteur proportionnelle à la fréquence relative ÷ amplitude si les classes ont des amplitudes différentes). Pour comparer deux séries : boîte à moustaches (médiane, quartiles Q1 et Q3, valeurs extrêmes). Calculer : médiane, Q1, Q3, étendue, écart interquartile (Q3 − Q1).",
          example:
            "Tailles en cm de 30 élèves (données continues) : histogramme, puis boîte à moustaches. Médiane = taille qui divise en deux parties égales (15e et 16e valeurs classées). Q1 = médiane de la moitié inférieure. Q3 = médiane de la moitié supérieure.",
        },
      },
    },
    workedExample: {
      phrase:
        "Une classe de CM2 a noté le nombre de livres lus pendant les vacances. Résultats (n = 24) : 0, 0, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 7, 8, 10. Mener l'étude statistique complète.",
      steps: [
        "Étape 1 — Nature des données : quantitatives, discrètes (entiers), 11 valeurs différentes. → Tableau effectifs/fréquences + diagramme en bâtons.",
        "Étape 2 — Tableau d'effectifs : 0 (2), 1 (3), 2 (4), 3 (5), 4 (3), 5 (2), 6 (2), 7 (1), 8 (1), 10 (1). Total = 24. ✓",
        "Étape 3 — Moyenne : Σ(valeur × effectif) = 0×2+1×3+2×4+3×5+4×3+5×2+6×2+7×1+8×1+10×1 = 0+3+8+15+12+10+12+7+8+10 = 85. Moyenne = 85 ÷ 24 ≈ 3,54 livres.",
        "Étape 4 — Médiane : 24 données ordonnées → entre les rangs 12 et 13. Rang 12 = 3 livres, rang 13 = 3 livres. Médiane = 3 livres.",
        "Étape 5 — Étendue : valeur max − valeur min = 10 − 0 = 10 livres.",
        "Étape 6 — Interprétation : la moyenne (3,54) est tirée vers le haut par les valeurs extrêmes (7, 8, 10). La médiane (3) est plus représentative du comportement « typique » de la classe. L'étendue (10) montre une forte dispersion.",
        "Étape 7 — Représentation : diagramme en bâtons (axe x = nombre de livres, axe y = effectif). Les bâtons ne sont PAS jointifs car les données sont discrètes.",
      ],
    },
    quiz: [
      {
        sentence:
          "La moyenne est toujours le meilleur indicateur de la valeur « typique » d'une série statistique.",
        isCorrect: false,
        explanation:
          "FAUX. La moyenne est sensible aux valeurs extrêmes (outliers) et peut être peu représentative si la distribution est asymétrique. Dans ce cas, la médiane est préférable. Exemple : pour les salaires d'une entreprise, la moyenne est tirée vers le haut par quelques hauts salaires ; la médiane reflète mieux le salaire « habituel ». On choisit selon la distribution : distribution symétrique → moyenne pertinente ; distribution asymétrique ou valeurs aberrantes → préférer la médiane.",
      },
      {
        sentence:
          "Un histogramme et un diagramme en bâtons représentent tous les deux des données quantitatives de la même façon.",
        isCorrect: false,
        explanation:
          "FAUX. Ce sont deux représentations différentes. Le diagramme en BÂTONS convient aux données discrètes (valeurs isolées) : les barres sont séparées (espacées). L'HISTOGRAMME convient aux données regroupées en classes (souvent continues) : les barres sont JOINTIVES pour montrer la continuité des valeurs. Choisir l'un ou l'autre selon la nature des données.",
      },
      {
        sentence:
          "La médiane d'une série de 20 valeurs ordonnées est la moyenne de la 10e et de la 11e valeur.",
        isCorrect: true,
        explanation:
          "VRAI. Quand le nombre de données est PAIR (n = 20), il n'y a pas de valeur centrale unique. La médiane est conventionnellement définie comme la moyenne des deux valeurs centrales : la n/2 = 10e valeur et la n/2 + 1 = 11e valeur. Si n est IMPAIR (ex : n = 21), la médiane est directement la valeur de rang (n+1)/2 = 11e.",
      },
      {
        sentence:
          "L'écart interquartile (Q3 − Q1) est un indicateur de dispersion moins sensible aux valeurs extrêmes que l'étendue.",
        isCorrect: true,
        explanation:
          "VRAI. L'étendue (max − min) est entièrement déterminée par les deux valeurs les plus extrêmes, ce qui la rend très sensible aux outliers. L'écart interquartile (Q3 − Q1) mesure la dispersion des 50% centraux des données, en ignorant les 25% les plus bas et les 25% les plus hauts. C'est pour cela que la boîte à moustaches (qui représente Q1, médiane, Q3) est utile pour comparer des distributions en présence de valeurs atypiques.",
      },
      {
        sentence:
          "Dans un diagramme circulaire, le secteur correspondant à une fréquence de 25% doit avoir un angle de 90°.",
        isCorrect: true,
        explanation:
          "VRAI. L'angle d'un secteur est proportionnel à la fréquence relative : angle = fréquence × 360°. Pour une fréquence de 25% = 0,25 : angle = 0,25 × 360° = 90°. De même, 50% → 180°, 10% → 36°, etc. La somme de tous les angles doit toujours faire 360°.",
      },
    ],
    didacticNote:
      "Au cycle 3, les élèves sont initiés aux statistiques à partir de données concrètes issues de leur vie (résultats de classe, mesures, sondages). L'erreur la plus fréquente est de confondre l'effectif (nombre brut) et la fréquence relative (proportion), ce qui conduit à des comparaisons invalides entre deux séries de taille différente. Il est important d'habituner les élèves à vérifier systématiquement que la somme des effectifs correspond bien au nombre total de données, et que la somme des fréquences vaut 1 (ou 100%). La démarche statistique complète (collecte → tableau → représentation → indicateurs → interprétation) correspond à une compétence transversale de traitement de l'information valorisée dans les programmes Éduscol.",
  },
};

import type { Fiche } from "@/features/fiches/types";

export const donneesLectureGraphiquesSprint: Fiche = {
  id: "donnees-lecture-graphiques-sprint",
  slug: "lecture-critique-graphiques-diagrammes",
  title: "Lecture critique de graphiques et diagrammes",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "graphiques",
    "diagramme en barres",
    "diagramme circulaire",
    "histogramme",
    "lecture critique",
    "échelle",
    "proportionnalité",
  ],
  notionsLiees: [
    "donnees-tableaux-graphiques-sprint",
    "donnees-statistiques-reference",
    "donnees-diagramme-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la lecture de graphiques. Pour la construction de diagrammes, consulte la fiche opératoire « Construire un diagramme ». Pour les indicateurs statistiques, consulte la fiche sprint « Moyenne et médiane ».",
    oneLiner:
      "Avant de lire un graphique, identifier : le type (barres, circulaire, histogramme, courbe), les axes et leurs unités, l'échelle utilisée. Un graphique peut être trompeur si l'axe des ordonnées ne commence pas à 0, si les classes sont inégales (histogramme), ou si l'échelle est non linéaire.",
    exampleCorrect: {
      sentence:
        "Un histogramme montre des classes d'amplitude inégale (0-10, 10-30, 30-60). La classe 10-30 a une barre deux fois plus large que 0-10 : c'est normal, c'est la surface qui représente l'effectif, pas la hauteur seule.",
      explanation:
        "Dans un histogramme à classes inégales, c'est l'aire des barres qui est proportionnelle aux effectifs. La hauteur (densité = effectif / amplitude) ajuste l'information. C'est la différence fondamentale avec un diagramme en barres. ✓",
    },
    exampleWrong: {
      sentence:
        "Dans un histogramme à classes inégales, la classe la plus haute est celle qui contient le plus d'individus.",
      explanation:
        "FAUX. Si les classes ont des amplitudes différentes, une barre haute mais étroite peut contenir moins d'individus qu'une barre plus basse mais plus large. Il faut comparer les aires (hauteur × largeur), pas les hauteurs seules.",
    },
    mainTrap:
      "Confondre diagramme en barres et histogramme. Un diagramme en barres représente des catégories (couleurs, villes, matières) : les barres sont séparées et de même largeur. Un histogramme représente des classes numériques continues (tranches d'âge, fourchettes de revenus) : les barres sont accolées et peuvent avoir des largeurs différentes. Au CRPE, cette distinction est fondamentale.",
    quiz: [
      {
        sentence:
          "Dans un diagramme circulaire, un secteur de 90° représente exactement 25 % de l'effectif total.",
        isCorrect: true,
        explanation:
          "VRAI. 90° / 360° = 1/4 = 25 %. L'angle est proportionnel à la fréquence dans un diagramme circulaire.",
      },
      {
        sentence:
          "Un graphique dont l'axe des ordonnées commence à 50 (au lieu de 0) exagère visuellement les écarts entre les valeurs.",
        isCorrect: true,
        explanation:
          "VRAI. C'est un biais de représentation classique. En « coupant » l'axe, les différences paraissent beaucoup plus grandes qu'elles ne le sont réellement. Il faut toujours vérifier l'origine de l'axe.",
      },
      {
        sentence:
          "Un diagramme en barres et un histogramme sont deux noms pour le même type de graphique.",
        isCorrect: false,
        explanation:
          "FAUX. Le diagramme en barres représente des données qualitatives (catégories), les barres sont séparées. L'histogramme représente des données quantitatives continues (classes), les barres sont accolées et c'est l'aire qui porte l'information.",
      },
      {
        sentence:
          "Sur un graphique en courbe, une pente raide signifie une variation rapide de la grandeur mesurée.",
        isCorrect: true,
        explanation:
          "VRAI. La pente de la courbe indique le taux de variation. Plus la pente est forte (montante ou descendante), plus la grandeur varie rapidement sur cet intervalle.",
      },
      {
        sentence:
          "Pour comparer deux séries de données, il suffit de comparer les hauteurs des barres les plus hautes de chaque diagramme.",
        isCorrect: false,
        explanation:
          "FAUX. Comparer uniquement les maximums est insuffisant. Il faut vérifier que les deux diagrammes utilisent la même échelle, la même unité, et comparer les tendances globales (moyenne, dispersion), pas seulement les valeurs extrêmes.",
      },
    ],
  },
};

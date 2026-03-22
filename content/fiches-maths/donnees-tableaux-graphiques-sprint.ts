import type { Fiche } from "@/features/fiches/types";

export const donneesTableauxGraphiquesSprint: Fiche = {
  id: "donnees-tableaux-graphiques-sprint",
  slug: "lire-tableau-graphique",
  title: "Lire un tableau et un graphique",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "tableau",
    "graphique",
    "diagramme en barres",
    "diagramme circulaire",
    "lecture de données",
    "effectif",
    "fréquence",
  ],
  notionsLiees: [
    "donnees-moyenne-mediane-sprint",
    "donnees-diagramme-operatoire",
    "donnees-statistiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la lecture de tableaux et graphiques. Pour les indicateurs statistiques (moyenne, médiane, étendue), consulte les fiches dédiées.",
    oneLiner:
      "Lire un tableau ou un graphique, c'est extraire une information en croisant deux entrées (ligne/colonne ou axe horizontal/axe vertical) et vérifier l'unité ou la légende.",
    exampleCorrect: {
      sentence:
        "Dans un diagramme en barres où la barre « mars » monte jusqu'à 25, et l'axe vertical indique « nombre d'élèves », on lit : 25 élèves en mars.",
      explanation:
        "On repère la barre, on lit sa hauteur sur l'axe vertical, et on associe l'unité indiquée par le titre de l'axe.",
    },
    exampleWrong: {
      sentence:
        "Dans un diagramme circulaire, un secteur de 90° représente 90 % de l'effectif total.",
      explanation:
        "Erreur : 90° sur 360° = 25 %, pas 90 %. Un secteur de 90° représente un quart du total.",
    },
    mainTrap:
      "Ne pas lire l'axe ou la légende : confondre l'effectif et la fréquence, ou lire la mauvaise unité. Toujours vérifier le titre des axes et la légende avant de répondre.",
    quiz: [
      {
        sentence:
          "Dans un tableau à double entrée, on croise une ligne et une colonne pour trouver la donnée.",
        isCorrect: true,
        explanation:
          "VRAI. C'est le principe du tableau à double entrée : l'intersection ligne/colonne donne la valeur cherchée.",
      },
      {
        sentence:
          "Un diagramme en barres et un histogramme représentent toujours le même type de données.",
        isCorrect: false,
        explanation:
          "FAUX. Le diagramme en barres représente des données qualitatives (catégories), l'histogramme des données quantitatives continues (classes). Les barres de l'histogramme sont accolées.",
      },
      {
        sentence:
          "Dans un diagramme circulaire, un secteur de 180° représente la moitié de l'effectif.",
        isCorrect: true,
        explanation:
          "VRAI. 180° / 360° = 1/2 = 50 % de l'effectif total.",
      },
      {
        sentence:
          "La fréquence d'une catégorie est le nombre d'individus dans cette catégorie.",
        isCorrect: false,
        explanation:
          "FAUX. C'est l'effectif. La fréquence est le rapport effectif / effectif total, souvent exprimée en pourcentage.",
      },
      {
        sentence:
          "Un graphique en courbe est adapté pour représenter l'évolution d'une grandeur dans le temps.",
        isCorrect: true,
        explanation:
          "VRAI. La courbe permet de visualiser une tendance, des variations et une évolution temporelle.",
      },
    ],
  },
};

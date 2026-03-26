import type { Fiche } from "@/features/fiches/types";

export const donneesEtendueDispersionBoiteSprint: Fiche = {
  id: "donnees-etendue-dispersion-boite-sprint",
  slug: "etendue-dispersion-boite-moustaches",
  title: "Étendue, dispersion et boîte à moustaches",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "étendue",
    "dispersion",
    "quartiles",
    "boîte à moustaches",
    "écart interquartile",
    "statistiques",
  ],
  notionsLiees: [
    "moyenne-mediane-calcul-distinction",
    "frequences-cumulees-quartiles",
    "donnees-statistiques-reference",
  ],
  exercicesAssocies: [
    "math_etendue_dispersion",
    "math_boite_moustaches",
    "math_mediane_quartiles",
  ],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche suppose la maîtrise de la moyenne et de la médiane. Les indicateurs de dispersion complètent les indicateurs de position : ils mesurent comment les données sont réparties autour de la tendance centrale. La boîte à moustaches est un outil graphique très prisé au CRPE.",
    oneLiner:
      "L'étendue (max − min) mesure l'amplitude globale d'une série. Les quartiles (Q1, Q2 = médiane, Q3) découpent la série ordonnée en quatre parts égales. L'écart interquartile (Q3 − Q1) mesure la dispersion des 50 % centraux des données. La boîte à moustaches représente graphiquement ces cinq indicateurs (min, Q1, médiane, Q3, max).",
    exampleCorrect: {
      sentence:
        "Notes de 9 élèves (série ordonnée) : 4, 7, 8, 10, 12, 13, 15, 16, 18. Étendue = 18 − 4 = 14. Médiane (Q2) = 12 (5ᵉ valeur sur 9). Q1 = médiane de {4, 7, 8, 10} = (7 + 8)/2 = 7,5. Q3 = médiane de {13, 15, 16, 18} = (15 + 16)/2 = 15,5. Écart interquartile = 15,5 − 7,5 = 8.",
      explanation:
        "La boîte s'étend de Q1 (7,5) à Q3 (15,5), avec un trait intérieur à la médiane (12). Les moustaches vont du minimum (4) au maximum (18). On lit immédiatement que 50 % des notes sont entre 7,5 et 15,5 et que la distribution est légèrement asymétrique (la moustache gauche est plus courte).",
    },
    exampleWrong: {
      sentence:
        "L'étendue de la série 4, 7, 8, 10, 12, 13, 15, 16, 18 est 12 car c'est la valeur du milieu.",
      explanation:
        "FAUX. L'étendue est max − min = 18 − 4 = 14, pas la médiane. L'étendue mesure l'écart entre les extrêmes, tandis que la médiane (12) est la valeur centrale. Confondre indicateur de position (médiane) et indicateur de dispersion (étendue) est une erreur classique.",
    },
    mainTrap:
      "L'étendue est très sensible aux valeurs extrêmes : une seule valeur aberrante peut la faire exploser sans que le « gros » des données change. C'est pourquoi l'écart interquartile (Q3 − Q1) est un indicateur de dispersion plus robuste : il ignore les 25 % les plus bas et les 25 % les plus hauts. Au CRPE, si une série contient une valeur aberrante, privilégiez médiane + écart interquartile plutôt que moyenne + étendue.",
    quiz: [
      {
        sentence:
          "L'étendue d'une série est toujours positive ou nulle.",
        isCorrect: true,
        explanation:
          "VRAI. Étendue = max − min. Comme max ≥ min, l'étendue est toujours ≥ 0. Elle vaut 0 uniquement si toutes les valeurs sont identiques (aucune dispersion).",
      },
      {
        sentence:
          "Q1 est la valeur en dessous de laquelle se trouvent 25 % des données.",
        isCorrect: true,
        explanation:
          "VRAI. Par définition, le premier quartile Q1 sépare les 25 % inférieurs des 75 % supérieurs. Q2 (médiane) sépare les 50/50 %. Q3 sépare les 75 % inférieurs des 25 % supérieurs.",
      },
      {
        sentence:
          "Dans une boîte à moustaches, la longueur de la boîte représente l'étendue de la série.",
        isCorrect: false,
        explanation:
          "FAUX. La longueur de la boîte représente l'écart interquartile (Q3 − Q1), pas l'étendue. L'étendue est la distance totale entre les extrémités des moustaches (max − min). La boîte ne couvre que les 50 % centraux des données.",
      },
      {
        sentence:
          "Si deux séries ont la même médiane, elles ont forcément la même dispersion.",
        isCorrect: false,
        explanation:
          "FAUX. Deux séries peuvent avoir la même médiane mais des dispersions très différentes. Exemple : {9, 10, 11} et {1, 10, 19} ont toutes les deux une médiane de 10, mais des étendues de 2 et 18 respectivement. Médiane = position, étendue = dispersion : ce sont des informations indépendantes.",
      },
      {
        sentence:
          "Si la médiane est plus proche de Q1 que de Q3 dans une boîte à moustaches, la distribution est asymétrique à droite (étalée vers les grandes valeurs).",
        isCorrect: true,
        explanation:
          "VRAI. Si la médiane est décalée vers Q1, cela signifie que les valeurs de la moitié supérieure sont plus dispersées que celles de la moitié inférieure. La distribution est « étalée à droite » (asymétrie positive). Lire l'asymétrie sur une boîte à moustaches est une compétence attendue au CRPE.",
      },
    ],
  },
};

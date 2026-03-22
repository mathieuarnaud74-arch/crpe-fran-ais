import type { Fiche } from "@/features/fiches/types";

export const donneesFrequencesCumuleesQuartilesSprint: Fiche = {
  id: "donnees-frequences-cumulees-quartiles-sprint",
  slug: "frequences-cumulees-quartiles-dispersion",
  title: "Fréquences cumulées, quartiles et dispersion",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "fréquence",
    "fréquence cumulée",
    "quartile",
    "premier quartile",
    "troisième quartile",
    "écart interquartile",
    "dispersion",
    "boîte à moustaches",
  ],
  notionsLiees: [
    "donnees-moyenne-mediane-sprint",
    "donnees-moyenne-ponderee-operatoire",
    "donnees-statistiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les fréquences cumulées et les quartiles. Pour la moyenne et la médiane, consulte la fiche sprint « Moyenne et médiane ». Pour le calcul détaillé, consulte la fiche opératoire « Moyenne pondérée et médiane ».",
    oneLiner:
      "La fréquence d'une valeur = effectif / effectif total (souvent en %). La fréquence cumulée croissante = somme des fréquences jusqu'à cette valeur. Q₁ est la plus petite valeur telle que 25 % des données sont inférieures ou égales à Q₁. Q₃ : 75 %. L'écart interquartile Q₃ − Q₁ mesure la dispersion des 50 % centraux des données.",
    exampleCorrect: {
      sentence:
        "Série ordonnée de 12 valeurs. Q₁ = valeur de rang 3 (car 12 × 0,25 = 3), Q₃ = valeur de rang 9 (car 12 × 0,75 = 9). Si Q₁ = 6 et Q₃ = 14, l'écart interquartile est 14 − 6 = 8.",
      explanation:
        "Pour n données, Q₁ est la valeur de rang n/4 (arrondi au supérieur si non entier). L'écart interquartile contient la moitié centrale des données : il est insensible aux valeurs extrêmes, contrairement à l'étendue. ✓",
    },
    exampleWrong: {
      sentence:
        "La fréquence d'une note est 15 sur 30 élèves, soit une fréquence de 15 %.",
      explanation:
        "FAUX. La fréquence est 15/30 = 0,5 = 50 %, pas 15 %. L'erreur vient de la confusion entre effectif (15) et fréquence (15/30). La fréquence est toujours le rapport effectif / effectif total, exprimé en proportion (0,5) ou en pourcentage (50 %).",
    },
    mainTrap:
      "Confondre effectif et fréquence. L'effectif est un nombre absolu (15 élèves). La fréquence est un rapport (15/30 = 50 %). Autre piège : croire que Q₁ est la moyenne entre le minimum et la médiane, ce qui est faux. Q₁ est une valeur de la série (ou interpolée), pas une moyenne.",
    quiz: [
      {
        sentence:
          "La somme de toutes les fréquences d'une série statistique est égale à 1 (ou 100 %).",
        isCorrect: true,
        explanation:
          "VRAI. Chaque valeur a une fréquence = effectif / total. La somme des effectifs = total, donc la somme des fréquences = total/total = 1.",
      },
      {
        sentence:
          "La fréquence cumulée croissante de la dernière valeur est toujours 100 %.",
        isCorrect: true,
        explanation:
          "VRAI. La fréquence cumulée de la dernière valeur inclut toutes les données : elle vaut 100 % (ou 1).",
      },
      {
        sentence:
          "Le premier quartile Q₁ est toujours égal à la moitié de la médiane.",
        isCorrect: false,
        explanation:
          "FAUX. Q₁ est la valeur en dessous de laquelle se situent 25 % des données. Il n'y a aucune relation systématique entre Q₁ et la médiane/2. Exemple : série 1, 2, 3, 4, 5, 6, 7, 8 → Q₁ = 2,5, médiane = 4,5. Q₁ ≠ 4,5/2 = 2,25.",
      },
      {
        sentence:
          "L'écart interquartile est plus robuste que l'étendue face aux valeurs extrêmes.",
        isCorrect: true,
        explanation:
          "VRAI. L'étendue (max − min) est très sensible à une seule valeur aberrante. L'écart interquartile (Q₃ − Q₁) ne prend en compte que les 50 % centraux et ignore les extrêmes. C'est un meilleur indicateur de dispersion « typique ».",
      },
      {
        sentence:
          "Dans une boîte à moustaches, la longueur de la boîte représente l'écart interquartile.",
        isCorrect: true,
        explanation:
          "VRAI. La boîte va de Q₁ à Q₃. Sa longueur = Q₃ − Q₁ = écart interquartile. La ligne intérieure marque la médiane. Les « moustaches » s'étendent jusqu'au minimum et au maximum (ou aux valeurs adjacentes).",
      },
    ],
  },
};

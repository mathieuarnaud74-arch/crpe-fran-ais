import type { Fiche } from "@/features/fiches/types";

export const donneesMoyenneMedianeSprint: Fiche = {
  id: "donnees-moyenne-mediane-sprint",
  slug: "moyenne-mediane-calcul-distinction",
  title: "Moyenne et médiane : calcul et distinction",
  domaine: "organisation_donnees",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "moyenne",
    "médiane",
    "étendue",
    "indicateur de position",
    "statistiques",
  ],
  notionsLiees: [
    "donnees-tableaux-graphiques-sprint",
    "donnees-statistiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour les indicateurs de dispersion, les fréquences cumulées et les quartiles, consulte la fiche Référence « Statistiques descriptives ».",
    oneLiner:
      "La moyenne est la somme des valeurs divisée par l'effectif total. La médiane est la valeur qui partage la série ordonnée en deux moitiés égales. Elles ne donnent pas la même information.",
    exampleCorrect: {
      sentence:
        "Notes : 8, 10, 12, 14, 16. Moyenne = (8+10+12+14+16)/5 = 60/5 = 12. Médiane = 12 (3e valeur sur 5).",
      explanation:
        "Ici moyenne = médiane = 12, car la série est symétrique. Ce n'est pas toujours le cas.",
    },
    exampleWrong: {
      sentence:
        "Notes : 2, 10, 12, 14, 16. La moyenne est 12.",
      explanation:
        "Erreur : (2+10+12+14+16)/5 = 54/5 = 10,8. La valeur extrême (2) tire la moyenne vers le bas, mais la médiane reste 12.",
    },
    mainTrap:
      "Croire que moyenne = médiane. Une valeur extrême (aberrante) influence fortement la moyenne mais pas la médiane. Au CRPE, on teste souvent cette distinction.",
    quiz: [
      {
        sentence:
          "La moyenne de 5, 5, 5, 5, 100 est 24.",
        isCorrect: true,
        explanation:
          "VRAI. (5+5+5+5+100)/5 = 120/5 = 24. La valeur 100 tire la moyenne très au-dessus de la médiane (5).",
      },
      {
        sentence:
          "La médiane d'une série de 6 valeurs ordonnées est la 3e valeur.",
        isCorrect: false,
        explanation:
          "FAUX. Pour un effectif pair (6), la médiane est la moyenne de la 3e et de la 4e valeur : (v₃ + v₄) / 2.",
      },
      {
        sentence:
          "L'étendue d'une série est la différence entre la plus grande et la plus petite valeur.",
        isCorrect: true,
        explanation:
          "VRAI. Étendue = max − min. Elle mesure la dispersion des données.",
      },
      {
        sentence:
          "La moyenne pondérée se calcule en multipliant chaque valeur par son coefficient puis en divisant par la somme des coefficients.",
        isCorrect: true,
        explanation:
          "VRAI. Moyenne pondérée = Σ(valeur × coefficient) / Σ(coefficients). Utilisée quand les valeurs n'ont pas le même poids.",
      },
      {
        sentence:
          "La médiane est toujours égale à la moyenne.",
        isCorrect: false,
        explanation:
          "FAUX. Moyenne et médiane coïncident pour les séries symétriques, mais diffèrent en présence de valeurs extrêmes. Exemple : série 1, 1, 1, 1, 100 → médiane = 1, moyenne = 20,8.",
      },
    ],
  },
};

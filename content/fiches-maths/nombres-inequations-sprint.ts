import type { Fiche } from "@/features/fiches/types";

export const nombresInequationsSprint: Fiche = {
  id: "nombres-inequations-sprint",
  slug: "inequations-premier-degre-resolution-pieges",
  title: "Inéquations du premier degré : résolution et pièges",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "inéquation",
    "premier degré",
    "inversion du sens",
    "intervalle",
    "ensemble de solutions",
    "multiplication par un négatif",
  ],
  notionsLiees: [
    "nombres-equations-premier-degre-sprint",
    "nombres-relatifs-operations-sprint",
    "nombres-fonctions-lineaires-affines-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les inéquations. Pour les équations du premier degré, consulte la fiche sprint « Équations du premier degré ».",
    oneLiner:
      "Une inéquation se résout comme une équation, avec une règle cruciale en plus : quand on multiplie ou divise les deux membres par un nombre négatif, on inverse le sens de l'inégalité. L'ensemble des solutions est un intervalle, pas une valeur unique.",
    exampleCorrect: {
      sentence:
        "Résoudre −2x + 6 > 0. On soustrait 6 : −2x > −6. On divise par −2 (négatif → on inverse) : x < 3. Solution : ]−∞ ; 3[.",
      explanation:
        "La division par −2 inverse le signe > en <. C'est la règle fondamentale. Vérification : pour x = 0, −2(0) + 6 = 6 > 0 ✓. Pour x = 4, −2(4) + 6 = −2 > 0 ✗. ✓",
    },
    exampleWrong: {
      sentence:
        "Résoudre −3x ≥ 12. On divise par −3 : x ≥ −4.",
      explanation:
        "FAUX. En divisant par −3 (négatif), il faut inverser le sens : x ≤ −4 (pas x ≥ −4). Vérification : x = −5 donne −3 × (−5) = 15 ≥ 12 ✓. Mais x = 0 donne −3 × 0 = 0 ≥ 12 ✗.",
    },
    mainTrap:
      "Oublier d'inverser le sens de l'inégalité lors d'une multiplication ou division par un nombre négatif. C'est le piège le plus fréquent et le plus testé au CRPE. Moyen mnémotechnique : « négatif = on retourne ». Autre piège : écrire la solution comme une valeur unique (x = 3) au lieu d'un intervalle (x < 3).",
    quiz: [
      {
        sentence:
          "Si on multiplie les deux membres d'une inégalité par −1, le sens de l'inégalité change.",
        isCorrect: true,
        explanation:
          "VRAI. Multiplier par un nombre négatif inverse l'ordre. Si a > b, alors −a < −b. Exemple : 5 > 3, donc −5 < −3.",
      },
      {
        sentence:
          "L'ensemble des solutions de 2x − 1 < 5 est x < 3.",
        isCorrect: true,
        explanation:
          "VRAI. 2x < 6, donc x < 3. On n'a pas divisé par un négatif, le sens ne change pas.",
      },
      {
        sentence:
          "Une inéquation a toujours une infinité de solutions.",
        isCorrect: false,
        explanation:
          "FAUX. Certaines inéquations n'ont aucune solution : x² < −1 (impossible). D'autres ont un ensemble fini de solutions entières dans un contexte donné. Mais pour les inéquations linéaires « standard » du type ax + b > 0 avec a ≠ 0, l'ensemble des solutions est bien un intervalle infini.",
      },
      {
        sentence:
          "Si x > 2 et x < 7, alors x ∈ ]2 ; 7[.",
        isCorrect: true,
        explanation:
          "VRAI. L'intersection des deux conditions donne l'intervalle ouvert ]2 ; 7[. En notation ensembliste : {x ∈ ℝ | 2 < x < 7}.",
      },
      {
        sentence:
          "On peut additionner membre à membre deux inégalités de même sens.",
        isCorrect: true,
        explanation:
          "VRAI. Si a > b et c > d, alors a + c > b + d. C'est une propriété utile pour les encadrements : si 2 < x < 5 et 1 < y < 3, alors 3 < x + y < 8.",
      },
    ],
  },
};

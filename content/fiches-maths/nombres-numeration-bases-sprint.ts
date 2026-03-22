import type { Fiche } from "@/features/fiches/types";

export const nombresNumerationBasesSprint: Fiche = {
  id: "nombres-numeration-bases-sprint",
  slug: "numeration-bases-conversion-interet-didactique",
  title: "Numération en bases : conversion et intérêt didactique",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "numération",
    "base",
    "base 2",
    "base 10",
    "conversion",
    "numération positionnelle",
    "didactique",
    "décomposition",
  ],
  notionsLiees: [
    "nombres-numeration-positionnelle-reference",
    "didactique-numeration-cycles-sprint",
    "nombres-entiers-naturels-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les bases de numération. Pour la numération positionnelle en base 10, consulte la fiche Référence « Numération positionnelle ».",
    oneLiner:
      "Écrire un nombre en base b, c'est le décomposer en puissances de b. En base 10, 347 = 3×10² + 4×10¹ + 7×10⁰. En base 2, 1011₂ = 1×2³ + 0×2² + 1×2¹ + 1×2⁰ = 11 en base 10. L'intérêt didactique au CRPE : travailler dans une base inhabituelle permet de revivre les difficultés d'un élève qui apprend la numération.",
    exampleCorrect: {
      sentence:
        "Convertir 25 en base 2 : 25 = 16 + 8 + 1 = 2⁴ + 2³ + 2⁰ = 11001₂. Vérification : 1×16 + 1×8 + 0×4 + 0×2 + 1×1 = 25. ✓",
      explanation:
        "On décompose 25 en somme de puissances de 2, en partant de la plus grande puissance inférieure à 25 (16 = 2⁴). Puis 25 − 16 = 9. 9 − 8 = 1. 1 = 2⁰. D'où 11001₂.",
    },
    exampleWrong: {
      sentence:
        "En base 5, le nombre 234₅ se lit « deux cent trente-quatre ». Il vaut 234.",
      explanation:
        "FAUX. « Deux cent trente-quatre » est le nom en base 10. En base 5, 234₅ = 2×5² + 3×5¹ + 4×5⁰ = 50 + 15 + 4 = 69 en base 10. Lire un nombre dans une autre base comme s'il était en base 10 est l'erreur la plus courante.",
    },
    mainTrap:
      "Appliquer les réflexes de la base 10 dans une autre base. En base 5, il n'y a que les chiffres 0, 1, 2, 3, 4 (pas de 5, 6, 7, 8, 9). La retenue se fait quand on atteint 5 (pas 10). Exemple : en base 5, 4₅ + 3₅ = 12₅ (car 7 = 1×5 + 2). Au CRPE, c'est souvent testé en partie didactique : « Expliquez pourquoi travailler dans une autre base aide l'élève à comprendre la numération positionnelle. »",
    quiz: [
      {
        sentence:
          "En base 2, le nombre 1111₂ vaut 15 en base 10.",
        isCorrect: true,
        explanation:
          "VRAI. 1×2³ + 1×2² + 1×2¹ + 1×2⁰ = 8 + 4 + 2 + 1 = 15.",
      },
      {
        sentence:
          "En base 8, le chiffre 9 existe.",
        isCorrect: false,
        explanation:
          "FAUX. En base b, les chiffres vont de 0 à b−1. En base 8 (octale), les chiffres sont 0, 1, 2, 3, 4, 5, 6, 7. Le chiffre 9 n'existe pas en base 8.",
      },
      {
        sentence:
          "Le nombre 100₅ vaut 25 en base 10.",
        isCorrect: true,
        explanation:
          "VRAI. 100₅ = 1×5² + 0×5¹ + 0×5⁰ = 25. En base b, le nombre 100_b vaut toujours b².",
      },
      {
        sentence:
          "Travailler en base 5 avec des élèves n'a aucun intérêt pédagogique puisqu'on utilise toujours la base 10.",
        isCorrect: false,
        explanation:
          "FAUX. C'est l'inverse. Travailler dans une base non familière oblige l'élève (ou le candidat CRPE) à expliciter les mécanismes de la numération positionnelle qu'il applique « automatiquement » en base 10 : regroupements, retenues, rôle de la position. C'est un outil didactique puissant.",
      },
      {
        sentence:
          "Pour convertir un nombre de la base 10 vers la base b, on effectue des divisions euclidiennes successives par b et on lit les restes à l'envers.",
        isCorrect: true,
        explanation:
          "VRAI. Exemple : 25 en base 2. 25 ÷ 2 = 12 reste 1 ; 12 ÷ 2 = 6 reste 0 ; 6 ÷ 2 = 3 reste 0 ; 3 ÷ 2 = 1 reste 1 ; 1 ÷ 2 = 0 reste 1. Restes de bas en haut : 11001₂.",
      },
    ],
  },
};

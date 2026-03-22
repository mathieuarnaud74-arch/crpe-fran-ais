import type { Fiche } from "@/features/fiches/types";

export const entiersNaturelsSprint: Fiche = {
  id: "nombres-entiers-naturels-sprint",
  slug: "entiers-naturels-proprietes-operations",
  title: "Entiers naturels : propriétés et opérations",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "entiers naturels",
    "addition",
    "soustraction",
    "multiplication",
    "division euclidienne",
    "propriétés",
  ],
  notionsLiees: [
    "nombres-divisibilite-sprint",
    "nombres-numeration-positionnelle-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les entiers naturels. Pour approfondir la numération positionnelle, consulte la fiche Référence dédiée.",
    oneLiner:
      "L'ensemble ℕ = {0, 1, 2, 3, …} est muni de l'addition et de la multiplication, toutes deux commutatives et associatives ; la division euclidienne donne un quotient et un reste (a = b × q + r avec 0 ≤ r < b).",
    exampleCorrect: {
      sentence: "47 = 5 × 9 + 2, donc la division euclidienne de 47 par 5 donne quotient 9 et reste 2.",
      explanation:
        "On vérifie : 5 × 9 + 2 = 45 + 2 = 47 ✓ et le reste 2 est bien strictement inférieur au diviseur 5 ✓.",
    },
    exampleWrong: {
      sentence: "47 ÷ 5 = 9 reste 7.",
      explanation:
        "Le reste 7 est supérieur au diviseur 5, ce qui est impossible dans une division euclidienne. Il faut augmenter le quotient : 47 = 5 × 9 + 2.",
    },
    mainTrap:
      "La soustraction n'est pas une loi interne dans ℕ : si a < b, alors a − b n'est pas un entier naturel. Attention aussi : 0 est un entier naturel (le premier de la liste).",
    quiz: [
      {
        sentence: "L'ensemble des entiers naturels commence à 1.",
        isCorrect: false,
        explanation:
          "FAUX. ℕ = {0, 1, 2, 3, …}. Le zéro fait partie des entiers naturels. C'est ℕ* qui commence à 1.",
      },
      {
        sentence:
          "La multiplication des entiers naturels est commutative : a × b = b × a.",
        isCorrect: true,
        explanation:
          "VRAI. La commutativité est une propriété fondamentale de la multiplication dans ℕ.",
      },
      {
        sentence:
          "Dans la division euclidienne de a par b, le reste r peut être égal à b.",
        isCorrect: false,
        explanation:
          "FAUX. Par définition, le reste r vérifie 0 ≤ r < b (strictement inférieur à b). Si r = b, on augmente le quotient de 1.",
      },
      {
        sentence: "La soustraction est toujours possible dans ℕ.",
        isCorrect: false,
        explanation:
          "FAUX. Si a < b, alors a − b n'appartient pas à ℕ. La soustraction n'est pas une loi de composition interne dans ℕ (elle l'est dans ℤ).",
      },
      {
        sentence:
          "L'addition est associative : (a + b) + c = a + (b + c) pour tous entiers naturels.",
        isCorrect: true,
        explanation:
          "VRAI. L'associativité de l'addition dans ℕ permet de regrouper les termes dans un calcul sans changer le résultat.",
      },
    ],
  },
};

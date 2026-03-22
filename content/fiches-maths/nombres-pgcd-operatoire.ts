import type { Fiche } from "@/features/fiches/types";

export const pgcdOperatoire: Fiche = {
  id: "nombres-pgcd-operatoire",
  slug: "calculer-pgcd-euclide-pas-a-pas",
  title: "Calculer un PGCD : Euclide pas à pas",
  domaine: "nombres_calcul",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "PGCD",
    "algorithme d'Euclide",
    "division euclidienne",
    "fraction irréductible",
  ],
  notionsLiees: [
    "nombres-pgcd-ppcm-sprint",
    "nombres-arithmetique-reference",
    "nombres-divisibilite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Tu dois trouver le PGCD de deux entiers a et b. Quelle méthode utiliser ?",
    decisionTree: {
      type: "question",
      text: "Les nombres sont-ils petits (< 30) et familiers ?",
      yes: {
        type: "leaf",
        label: "Liste des diviseurs",
        rule: "Lister tous les diviseurs de chaque nombre, puis repérer le plus grand diviseur commun.",
        example:
          "PGCD(18, 24) : diviseurs de 18 = {1, 2, 3, 6, 9, 18}, diviseurs de 24 = {1, 2, 3, 4, 6, 8, 12, 24}. Communs = {1, 2, 3, 6}. PGCD = 6.",
      },
      no: {
        type: "question",
        text: "Connais-tu la décomposition en facteurs premiers des deux nombres ?",
        yes: {
          type: "leaf",
          label: "Méthode par décomposition",
          rule: "Décomposer chaque nombre en facteurs premiers. Le PGCD = produit des facteurs communs avec le plus petit exposant.",
          example:
            "PGCD(360, 150) : 360 = 2³ × 3² × 5, 150 = 2 × 3 × 5². PGCD = 2¹ × 3¹ × 5¹ = 30.",
        },
        no: {
          type: "leaf",
          label: "Algorithme d'Euclide",
          rule: "Effectuer des divisions euclidiennes successives : diviser le plus grand par le plus petit, puis le diviseur par le reste, et ainsi de suite. Le dernier reste non nul est le PGCD.",
          example:
            "PGCD(462, 198) : 462 = 198 × 2 + 66, puis 198 = 66 × 3 + 0. Dernier reste non nul = 66. PGCD = 66.",
        },
      },
    },
    workedExample: {
      phrase: "Calculer le PGCD de 546 et 378 par l'algorithme d'Euclide.",
      steps: [
        "Étape 1 — Poser la première division euclidienne : 546 = 378 × 1 + 168. Reste = 168 ≠ 0, on continue.",
        "Étape 2 — Diviser le diviseur par le reste : 378 = 168 × 2 + 42. Reste = 42 ≠ 0, on continue.",
        "Étape 3 — Continuer : 168 = 42 × 4 + 0. Reste = 0 → STOP.",
        "Étape 4 — Le dernier reste non nul est 42. Donc PGCD(546, 378) = 42.",
        "Étape 5 — Vérification : 546 ÷ 42 = 13 et 378 ÷ 42 = 9. PGCD(13, 9) = 1 ✓ (nombres premiers entre eux).",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans l'algorithme d'Euclide, on s'arrête quand le reste est égal à 1.",
        isCorrect: false,
        explanation:
          "FAUX. On s'arrête quand le reste est 0. Le PGCD est le dernier reste NON NUL. Si le dernier reste non nul est 1, alors les nombres sont premiers entre eux.",
      },
      {
        sentence:
          "L'algorithme d'Euclide repose sur la propriété : PGCD(a, b) = PGCD(b, a mod b).",
        isCorrect: true,
        explanation:
          "VRAI. C'est le fondement de l'algorithme : le PGCD est invariant quand on remplace a par b et b par le reste de la division de a par b.",
      },
      {
        sentence: "PGCD(48, 18) = 6.",
        isCorrect: true,
        explanation:
          "VRAI. 48 = 18 × 2 + 12, puis 18 = 12 × 1 + 6, puis 12 = 6 × 2 + 0. Dernier reste non nul = 6.",
      },
      {
        sentence:
          "Si PGCD(a, b) = 1, on peut en déduire que a et b sont tous les deux des nombres premiers.",
        isCorrect: false,
        explanation:
          "FAUX. PGCD(a, b) = 1 signifie que a et b sont premiers ENTRE EUX (pas de diviseur commun autre que 1). Ils ne sont pas forcément premiers individuellement. Exemple : PGCD(8, 15) = 1 mais ni 8 ni 15 ne sont premiers.",
      },
      {
        sentence:
          "Pour rendre 84/126 irréductible, on calcule PGCD(84, 126) = 42 puis on divise : 84/126 = 2/3.",
        isCorrect: true,
        explanation:
          "VRAI. PGCD(84, 126) = 42. 84 ÷ 42 = 2, 126 ÷ 42 = 3. La fraction irréductible est 2/3.",
      },
    ],
    didacticNote:
      "L'algorithme d'Euclide n'est pas au programme de l'école élémentaire, mais il est attendu du candidat au CRPE. Pour les élèves de cycle 3, on utilise plutôt la méthode par décomposition ou par liste de diviseurs pour de petits nombres.",
  },
};

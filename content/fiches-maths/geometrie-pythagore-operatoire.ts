import type { Fiche } from "@/features/fiches/types";

export const geometriePythagoreOperatoire: Fiche = {
  id: "geometrie-pythagore-operatoire",
  slug: "pythagore-arbre-decision",
  title: "Appliquer Pythagore : arbre de décision",
  domaine: "geometrie",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "Pythagore",
    "triangle rectangle",
    "hypoténuse",
    "réciproque",
    "contraposée",
    "méthode",
  ],
  notionsLiees: [
    "geometrie-pythagore-sprint",
    "geometrie-theoremes-reference",
    "geometrie-triangles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Que cherches-tu à faire : calculer une longueur ou vérifier si un triangle est rectangle ?",
    decisionTree: {
      type: "question",
      text: "Que cherches-tu à faire ?",
      yes: {
        type: "question",
        text: "CALCULER UNE LONGUEUR — Le triangle est-il rectangle (donné ou prouvé) ?",
        yes: {
          type: "question",
          text: "Quel côté cherches-tu : l'hypoténuse ou un autre côté ?",
          yes: {
            type: "leaf",
            label: "Calculer l'hypoténuse",
            rule: "Appliquer le théorème direct : hyp² = côté₁² + côté₂². Calculer la somme des carrés puis extraire la racine carrée.",
            example:
              "Triangle rectangle avec côtés 6 et 8. Hyp² = 36 + 64 = 100. Hyp = √100 = 10.",
          },
          no: {
            type: "leaf",
            label: "Calculer un côté de l'angle droit",
            rule: "Isoler le côté manquant : côté² = hyp² − autre_côté². Calculer la différence des carrés puis extraire la racine carrée.",
            example:
              "Hypoténuse = 13, un côté = 5. Autre côté² = 169 − 25 = 144. Autre côté = √144 = 12.",
          },
        },
        no: {
          type: "leaf",
          label: "Le triangle n'est pas rectangle",
          rule: "Le théorème de Pythagore ne s'applique PAS. Utiliser le théorème d'Al-Kashi (formule généralisée) ou chercher une autre méthode (Thalès, trigonométrie…).",
          example:
            "Si le triangle n'est pas rectangle, Pythagore est inapplicable. On peut parfois découper la figure pour faire apparaître un triangle rectangle.",
        },
      },
      no: {
        type: "question",
        text: "VÉRIFIER SI UN TRIANGLE EST RECTANGLE — Connais-tu les 3 longueurs des côtés ?",
        yes: {
          type: "question",
          text: "Le carré du plus grand côté est-il égal à la somme des carrés des deux autres ?",
          yes: {
            type: "leaf",
            label: "Oui → Triangle rectangle",
            rule: "Par la réciproque du théorème de Pythagore, le triangle est rectangle. L'angle droit est opposé au plus grand côté.",
            example:
              "Côtés 5, 12, 13. 13² = 169 = 25 + 144 = 5² + 12². Triangle rectangle, angle droit opposé au côté 13.",
          },
          no: {
            type: "leaf",
            label: "Non → Triangle non rectangle",
            rule: "Par la contraposée du théorème de Pythagore, le triangle n'est pas rectangle. Si le carré du plus grand côté > somme des deux autres carrés → triangle obtusangle. Si < → triangle acutangle.",
            example:
              "Côtés 4, 5, 7. 7² = 49 et 4² + 5² = 41. 49 ≠ 41, donc le triangle n'est pas rectangle. Comme 49 > 41, il est obtusangle.",
          },
        },
        no: {
          type: "leaf",
          label: "Données insuffisantes",
          rule: "Pour appliquer la réciproque ou la contraposée de Pythagore, il faut connaître les 3 longueurs des côtés du triangle. Si des données manquent, chercher d'abord à les calculer.",
          example:
            "Si tu ne connais que 2 côtés, cherche le troisième par une autre méthode avant d'appliquer la réciproque.",
        },
      },
    },
    workedExample: {
      phrase:
        "Un triangle ABC a pour dimensions AB = 10 cm, BC = 6 cm et AC = 8 cm. Ce triangle est-il rectangle ? Si oui, calculer sa hauteur issue du sommet de l'angle droit.",
      steps: [
        "Étape 1 — Identifier le plus grand côté : AB = 10 cm (c'est le plus grand).",
        "Étape 2 — Calculer AB² : 10² = 100.",
        "Étape 3 — Calculer AC² + BC² : 8² + 6² = 64 + 36 = 100.",
        "Étape 4 — Comparer : AB² = AC² + BC² = 100. Par la réciproque du théorème de Pythagore, le triangle ABC est rectangle en C.",
        "Étape 5 — Calculer la hauteur h issue de C : l'aire du triangle = (AC × BC) / 2 = (8 × 6) / 2 = 24 cm². Or l'aire = (AB × h) / 2, donc 24 = (10 × h) / 2, d'où h = 48/10 = 4,8 cm.",
      ],
    },
    quiz: [
      {
        sentence:
          "Pour calculer l'hypoténuse, on additionne les carrés des deux autres côtés puis on prend la racine carrée.",
        isCorrect: true,
        explanation:
          "VRAI. hyp = √(côté₁² + côté₂²). On additionne d'abord les carrés, puis on extrait la racine carrée du résultat.",
      },
      {
        sentence:
          "Pour vérifier si un triangle est rectangle, on peut choisir n'importe quel côté pour le mettre seul d'un côté de l'égalité.",
        isCorrect: false,
        explanation:
          "FAUX. On doit obligatoirement tester avec le plus grand côté seul d'un côté. Si on choisit un autre côté, l'égalité sera fausse même si le triangle est rectangle.",
      },
      {
        sentence:
          "Si le carré du plus grand côté est supérieur à la somme des carrés des deux autres, le triangle est obtusangle.",
        isCorrect: true,
        explanation:
          "VRAI. Si c² > a² + b² (c étant le plus grand côté), l'angle opposé à c est obtus (> 90°).",
      },
      {
        sentence:
          "Le théorème de Pythagore permet de calculer un angle dans un triangle rectangle.",
        isCorrect: false,
        explanation:
          "FAUX. Le théorème de Pythagore ne donne que des informations sur les longueurs. Pour calculer un angle, il faut utiliser la trigonométrie (sin, cos, tan).",
      },
      {
        sentence:
          "Le triplet (7, 24, 25) est un triplet pythagoricien.",
        isCorrect: true,
        explanation:
          "VRAI. 7² + 24² = 49 + 576 = 625 = 25². C'est bien un triplet pythagoricien (trois entiers vérifiant a² + b² = c²).",
      },
    ],
    didacticNote:
      "Au cycle 3 et au collège, insister sur la rédaction rigoureuse : toujours énoncer le théorème utilisé (direct, réciproque ou contraposée), vérifier les hypothèses, puis conclure. L'erreur la plus courante est de confondre le théorème direct (qui sert à calculer) et la réciproque (qui sert à démontrer).",
  },
};

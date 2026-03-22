import type { Fiche } from "@/features/fiches/types";

export const geometriePythagoreSprint: Fiche = {
  id: "geometrie-pythagore-sprint",
  slug: "pythagore-appliquer-verifier",
  title: "Théorème de Pythagore : appliquer et vérifier",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "Pythagore",
    "triangle rectangle",
    "hypoténuse",
    "réciproque",
    "contraposée",
  ],
  notionsLiees: [
    "geometrie-triangles-sprint",
    "geometrie-theoremes-reference",
    "geometrie-pythagore-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur le théorème de Pythagore. Pour les démonstrations et le lien avec Thalès, consulte la fiche Référence.",
    oneLiner:
      "Dans un triangle rectangle, le carré de l'hypoténuse est égal à la somme des carrés des deux autres côtés. La réciproque permet de prouver qu'un triangle est rectangle.",
    exampleCorrect: {
      sentence:
        "Dans le triangle ABC rectangle en C : AB² = AC² + BC². Si AC = 3 et BC = 4, alors AB² = 9 + 16 = 25, donc AB = 5.",
      explanation:
        "L'hypoténuse est AB (côté opposé à l'angle droit en C). Le calcul est correct : 3² + 4² = 5².",
    },
    exampleWrong: {
      sentence:
        "Dans le triangle ABC rectangle en C : AC² = AB² + BC².",
      explanation:
        "FAUX. C'est l'hypoténuse (le plus grand côté, opposé à l'angle droit) qui est seule d'un côté de l'égalité. Ici, l'angle droit est en C, donc l'hypoténuse est AB, et on écrit AB² = AC² + BC².",
    },
    mainTrap:
      "Confondre le théorème direct et sa réciproque. Le théorème direct : « si le triangle est rectangle, alors AB² = AC² + BC² ». La réciproque : « si AB² = AC² + BC², alors le triangle est rectangle en C ». La contraposée : « si AB² ≠ AC² + BC², alors le triangle n'est pas rectangle ».",
    quiz: [
      {
        sentence:
          "Un triangle de côtés 5, 12 et 13 est rectangle car 5² + 12² = 13².",
        isCorrect: true,
        explanation:
          "VRAI. 25 + 144 = 169 = 13². Par la réciproque du théorème de Pythagore, le triangle est rectangle (l'angle droit est opposé au côté 13).",
      },
      {
        sentence:
          "Le théorème de Pythagore s'applique à tous les triangles.",
        isCorrect: false,
        explanation:
          "FAUX. Le théorème de Pythagore ne s'applique qu'aux triangles rectangles. Pour les triangles quelconques, on utilise la formule d'Al-Kashi (généralisation de Pythagore).",
      },
      {
        sentence:
          "L'hypoténuse est toujours le plus grand côté du triangle rectangle.",
        isCorrect: true,
        explanation:
          "VRAI. L'hypoténuse (côté opposé à l'angle droit) est toujours le plus grand côté d'un triangle rectangle, car l'angle droit est le plus grand angle.",
      },
      {
        sentence:
          "Si dans un triangle ABC on a AB² > AC² + BC², alors le triangle est obtusangle en C.",
        isCorrect: true,
        explanation:
          "VRAI. Si le carré du plus grand côté est supérieur à la somme des carrés des deux autres, l'angle opposé au plus grand côté est obtus (> 90°).",
      },
      {
        sentence:
          "Pour utiliser la réciproque de Pythagore, il suffit de vérifier que la somme de deux côtés au carré donne le troisième au carré, peu importe lequel.",
        isCorrect: false,
        explanation:
          "FAUX. Il faut que ce soit le carré du plus grand côté qui soit égal à la somme des carrés des deux autres. L'égalité doit être vérifiée avec le plus grand côté seul d'un côté.",
      },
    ],
  },
};

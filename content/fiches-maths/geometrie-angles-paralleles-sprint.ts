import type { Fiche } from "@/features/fiches/types";

export const geometrieAnglesParallelesSprint: Fiche = {
  id: "geometrie-angles-paralleles-sprint",
  slug: "angles-formes-paralleles-secante",
  title: "Angles formés par des parallèles et une sécante",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "angles",
    "parallèles",
    "sécante",
    "alternes-internes",
    "correspondants",
    "supplémentaires",
    "co-internes",
  ],
  notionsLiees: [
    "geometrie-angles-sprint",
    "geometrie-theoremes-reference",
    "geometrie-thales-sprint",
    "geometrie-triangles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les angles et le parallélisme. Pour les bases sur les angles (vocabulaire, mesure), consulte la fiche sprint « Angles ». Pour les théorèmes en détail, consulte la fiche Référence « Théorèmes de géométrie ».",
    oneLiner:
      "Quand deux droites parallèles sont coupées par une sécante, elles forment des paires d'angles remarquables : les angles alternes-internes sont égaux, les angles correspondants sont égaux, et les angles co-internes (= internes du même côté) sont supplémentaires (somme = 180°). Ces propriétés sont réversibles : si les angles sont égaux, alors les droites sont parallèles.",
    exampleCorrect: {
      sentence:
        "Les droites (d₁) et (d₂) sont parallèles. Une sécante les coupe. L'angle α formé avec (d₁) mesure 65°. L'angle alterne-interne β formé avec (d₂) mesure aussi 65°.",
      explanation:
        "Les angles alternes-internes sont situés de part et d'autre de la sécante, entre les deux parallèles. Ils sont toujours égaux quand les droites sont parallèles. ✓",
    },
    exampleWrong: {
      sentence:
        "Deux angles correspondants mesurent 70° et 110°. On en déduit que les droites sont parallèles.",
      explanation:
        "FAUX. Des angles correspondants formés par deux parallèles sont égaux (pas supplémentaires). Ici, 70° ≠ 110°, donc les droites ne sont PAS parallèles. L'erreur est de confondre « correspondants » (égaux) et « co-internes » (supplémentaires).",
    },
    mainTrap:
      "Confondre les trois types de paires d'angles. Alternes-internes : de part et d'autre de la sécante, entre les parallèles → ÉGAUX. Correspondants : même côté de la sécante, même position par rapport à leur parallèle → ÉGAUX. Co-internes : même côté de la sécante, entre les parallèles → SUPPLÉMENTAIRES (somme 180°). Le piège classique au CRPE est de mal identifier à quel type appartient une paire d'angles.",
    quiz: [
      {
        sentence:
          "Si deux droites parallèles sont coupées par une sécante, les angles alternes-internes sont égaux.",
        isCorrect: true,
        explanation:
          "VRAI. C'est une propriété fondamentale. Les angles alternes-internes sont situés de part et d'autre de la sécante, entre les deux parallèles.",
      },
      {
        sentence:
          "Si deux angles correspondants formés par deux droites et une sécante sont égaux, alors les deux droites sont parallèles.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la réciproque. L'égalité des angles correspondants est une condition suffisante pour conclure au parallélisme. C'est un outil de démonstration fréquent au CRPE.",
      },
      {
        sentence:
          "Des angles co-internes formés par deux parallèles et une sécante sont toujours égaux.",
        isCorrect: false,
        explanation:
          "FAUX. Les angles co-internes (internes du même côté de la sécante) sont supplémentaires : leur somme vaut 180°, pas qu'ils sont égaux. Ils ne sont égaux que si chacun vaut 90° (sécante perpendiculaire aux parallèles).",
      },
      {
        sentence:
          "Dans un triangle, deux angles peuvent être alternes-internes si l'on trace une droite parallèle à un côté passant par le sommet opposé.",
        isCorrect: true,
        explanation:
          "VRAI. C'est précisément la démonstration classique que la somme des angles d'un triangle vaut 180°. On trace par un sommet la parallèle au côté opposé, et on identifie des paires d'angles alternes-internes.",
      },
      {
        sentence:
          "Deux angles correspondants sont toujours situés du même côté de la sécante.",
        isCorrect: true,
        explanation:
          "VRAI. Les angles correspondants occupent la même position (même côté de la sécante, même côté de leur parallèle respective). Ils sont « superposables » si l'on translate l'une des parallèles sur l'autre.",
      },
    ],
  },
};

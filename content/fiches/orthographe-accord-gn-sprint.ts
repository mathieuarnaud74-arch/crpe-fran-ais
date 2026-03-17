import type { Fiche } from "@/features/fiches/types";

export const accordGnSprint: Fiche = {
  id: "orthographe-gn-sprint",
  slug: "accord-groupe-nominal",
  title: "L'accord dans le groupe nominal",
  subtitle: "Révision express — 4 min",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 4,
  tags: ["accord", "GN", "adjectif", "déterminant", "genre", "nombre"],
  notionsLiees: ["accord-participe-passe", "homophones-grammaticaux"],
  exercicesAssocies: ["orthographe-accord"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour une étude complète des cas difficiles (adjectifs de couleur, pluriel des noms composés), consulte la fiche Référence.",
    oneLiner:
      "Dans le GN, le déterminant et tous les adjectifs s'accordent en genre et en nombre avec le nom noyau.",
    exampleCorrect: {
      sentence: "De belles fleurs blanches et odorantes.",
      explanation:
        "Nom noyau : fleurs (féminin pluriel). Déterminant « de », adjectifs « belles », « blanches », « odorantes » → tous au féminin pluriel.",
    },
    exampleWrong: {
      sentence: "De beau fleurs blanc et odorant.",
      explanation:
        "Accord oublié : le nom noyau « fleurs » est féminin pluriel, tous les adjectifs doivent suivre.",
    },
    mainTrap:
      "Les adjectifs de couleur composés (bleu marine, vert foncé) et les noms employés comme adjectifs de couleur (crème, marron, ivoire) sont INVARIABLES.",
    quiz: [
      {
        sentence: "Des résultats encourageant et positifs ont été publiés.",
        isCorrect: false,
        explanation:
          "« encourageant » doit s'accorder avec « résultats » (masc. plur.) → encourageants.",
      },
      {
        sentence: "Elle portait une robe bleu marine.",
        isCorrect: true,
        explanation:
          "Adjectif de couleur composé → invariable. Bleu marine ne prend pas de marque de genre/nombre.",
      },
      {
        sentence: "Des yeux marron.",
        isCorrect: true,
        explanation:
          "Nom commun employé comme adjectif de couleur → invariable.",
      },
      {
        sentence: "Une longue et difficile préparation.",
        isCorrect: true,
        explanation:
          "Les deux adjectifs épithètes s'accordent avec « préparation » (féminin singulier).",
      },
      {
        sentence: "Des situations inhabituelles et complèxes.",
        isCorrect: false,
        explanation:
          "Faute d'orthographe lexicale : complexes s'écrit sans accent circonflexe.",
      },
    ],
  },
};

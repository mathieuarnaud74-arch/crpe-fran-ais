import type { Fiche } from "@/features/fiches/types";

export const participePasseSprint: Fiche = {
  id: "orthographe-pp-sprint",
  slug: "accord-participe-passe-sprint",
  title: "Accord du participe passé",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["accord", "participe passé", "auxiliaire", "COD"],
  notionsLiees: ["accord-participe-passe", "accord-groupe-nominal"],
  exercicesAssocies: ["orthographe-participe-passe"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche suppose que tu as déjà travaillé l'accord du PP en profondeur. Pour construire la compréhension complète, consulte la fiche Référence.",
    oneLiner:
      "Avec ÊTRE → accord avec le sujet. Avec AVOIR → accord avec le COD seulement s'il est placé AVANT le verbe. COD = EN → invariable.",
    exampleCorrect: {
      sentence: "La lettre qu'il a écrite.",
      explanation:
        "« que » reprend « la lettre » (fém. sing.) et est COD antéposé → accord en -e.",
    },
    exampleWrong: {
      sentence: "La lettre qu'il a écrit.",
      explanation:
        "Sans accord → FAUX. « lettre » est féminin singulier et est COD antéposé via « que ».",
    },
    mainTrap:
      "Elles se sont téléphoné. → INVARIABLE. « Téléphoner à quelqu'un » : le pronom réfléchi est COI, pas COD.",
    linkToReference: "accord-participe-passe",
    quiz: [
      {
        sentence: "Les films que j'ai vus étaient excellents.",
        isCorrect: true,
        explanation:
          "« que » = COD antéposé reprenant « les films » (masc. plur.) → accord en -s.",
      },
      {
        sentence: "Elle s'est habillée rapidement.",
        isCorrect: true,
        explanation:
          "« s' » = COD (elle s'est habillée elle-même) → accord avec le sujet féminin singulier.",
      },
      {
        sentence: "Elle s'est lavée les mains.",
        isCorrect: false,
        explanation:
          "« les mains » est le COD, mais il est POSTPOSÉ → PP invariable. Correct : elle s'est lavé les mains.",
      },
      {
        sentence: "J'en ai beaucoup lu, des romans.",
        isCorrect: true,
        explanation: "EN comme COD antéposé → PP toujours invariable.",
      },
      {
        sentence: "Les enfants que j'ai fait sortir sont dans la cour.",
        isCorrect: true,
        explanation:
          "FAIRE + infinitif → PP toujours invariable, même avec un COD antéposé.",
      },
    ],
  },
};

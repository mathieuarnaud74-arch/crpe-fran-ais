import type { Fiche } from "@/features/fiches/types";

export const homophonesSprint: Fiche = {
  id: "orthographe-homophones-sprint",
  slug: "homophones-grammaticaux",
  title: "Les homophones grammaticaux",
  subtitle: "Révision express — 4 min",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 4,
  tags: ["homophones", "a/à", "est/et", "son/sont", "ce/se", "ou/où"],
  notionsLiees: ["accord-participe-passe", "accord-groupe-nominal"],
  exercicesAssocies: ["orthographe-homophones"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour l'ensemble des homophones (leur/leurs, ces/ses, quel/quelle…), consulte la fiche Référence.",
    oneLiner:
      "Pour chaque homophone, le test de remplacement révèle la bonne forme : remplacer par l'équivalent non ambigu et vérifier si la phrase tient.",
    exampleCorrect: {
      sentence: "Il a mangé et elle aussi.",
      explanation:
        "« a » = avoir conjugué (test : il avait mangé ✓). « et » = conjonction (test : remplacer par « ainsi que » ✓).",
    },
    exampleWrong: {
      sentence: "Il à mangé et elle aussi.",
      explanation:
        "« à » avec accent = préposition de lieu/but. Test : *il avait mangé → ✓ donc il faut « a » sans accent.",
    },
    mainTrap:
      "« Son » déterminant possessif (son livre) vs « sont » verbe être (ils sont). Test : remplacer par « notre » → si ça marche, c'est son/sa/ses. Si non, c'est sont.",
    quiz: [
      {
        sentence: "Elle ce demande si elle a bien répondu.",
        isCorrect: false,
        explanation:
          "« ce » pronom démonstratif ≠ « se » pronom réfléchi. « Se demander » → pronom réfléchi → se.",
      },
      {
        sentence: "Ils sont allés ou ils voulaient.",
        isCorrect: false,
        explanation:
          "« ou » conjonction de coordination (ou bien) ≠ « où » adverbe de lieu/relatif. Ici « où » = pronom relatif de lieu.",
      },
      {
        sentence: "Son courage et sa détermination l'ont aidée.",
        isCorrect: true,
        explanation:
          "« Son » et « sa » sont des déterminants possessifs. Test : notre courage ✓.",
      },
      {
        sentence: "C'est à lui qu'on a remis le prix.",
        isCorrect: true,
        explanation:
          "« à » préposition (pas remplaçable par « avait »). Construction correcte.",
      },
      {
        sentence: "Ses résultats sont encourageants.",
        isCorrect: true,
        explanation:
          "« Ses » déterminant possessif (ses = nos ✓). « Sont » verbe être (étaient ✓).",
      },
    ],
  },
};

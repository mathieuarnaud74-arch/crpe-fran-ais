import type { Fiche } from "@/features/fiches/types";

export const enseignementOrthographeSprint: Fiche = {
  id: "didactique-enseignement-orthographe-sprint",
  slug: "enseigner-l-orthographe",
  title: "Enseigner l'orthographe à l'école",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["didactique", "orthographe", "dictée négociée", "phrase du jour", "programmes 2016"],
  notionsLiees: ["accord-participe-passe", "accord-groupe-nominal"],
  exercicesAssocies: ["did_enseignement_grammaire"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur les démarches didactiques institutionnelles (programmes 2016, circulaire 2018 sur l'orthographe). Elle ne remplace pas la connaissance disciplinaire de l'orthographe elle-même.",
    oneLiner:
      "L'enseignement de l'orthographe à l'école primaire repose sur deux piliers : la mémorisation de régularités et de mots fréquents, et la construction de compétences de révision. Les programmes 2016 préconisent une pratique quotidienne, l'étude de régularités, et des activités de réflexion métalinguistique (phrase du jour, dictée négociée) plutôt que la dictée sanction isolée.",
    exampleCorrect: {
      sentence: "La dictée négociée : les élèves confrontent collectivement leurs graphies et justifient leurs choix.",
      explanation:
        "Démarche validée par les programmes : elle développe le raisonnement orthographique et la métacognition. Les élèves apprennent à mobiliser leurs connaissances pour argumenter.",
    },
    exampleWrong: {
      sentence: "La dictée traditionnelle quotidienne est la pratique recommandée par les programmes 2016.",
      explanation:
        "FAUX. Les programmes 2016 ne préconisent pas la dictée traditionnelle isolée comme pratique principale. Ils valorisent la réflexion sur la langue, la pratique régulière et diversifiée, et les activités métalinguistiques.",
    },
    mainTrap:
      "La confusion entre « orthographe lexicale » (écriture des mots, mémorisée) et « orthographe grammaticale » (accords, règles) est centrale au CRPE. Les programmes les distinguent : l'orthographe lexicale s'enseigne par mémorisation raisonnée (familles de mots, fréquence) ; l'orthographe grammaticale, par la compréhension des relations syntaxiques (chaîne d'accord). Une démarche didactique efficace traite ces deux dimensions séparément avant de les intégrer.",
    quiz: [
      {
        sentence:
          "La « phrase du jour » est une activité didactique qui consiste à dicter et corriger une phrase élaborée par l'enseignant en collectif.",
        isCorrect: false,
        explanation:
          "La phrase du jour est écrite (individuellement ou collectivement), puis les élèves explicitent, confrontent et justifient leurs graphies. Ce n'est pas une dictée magistrale corrigée par l'enseignant.",
      },
      {
        sentence:
          "L'orthographe lexicale concerne l'écriture correcte des mots (ex. : nénuphar, rythme) indépendamment des accords.",
        isCorrect: true,
        explanation:
          "L'orthographe lexicale (ou d'usage) porte sur la forme fixe des mots, mémorisée. Elle s'oppose à l'orthographe grammaticale qui porte sur les marques d'accord.",
      },
      {
        sentence:
          "Les programmes 2016 préconisent un travail orthographique intégré à tous les moments de la journée, pas uniquement lors de séances dédiées.",
        isCorrect: true,
        explanation:
          "Les programmes valorisent une pratique quotidienne et transversale : correction de productions écrites, activités rituelles (phrase du jour), études de régularités intégrées à la lecture.",
      },
      {
        sentence:
          "La dictée négociée est déconseillée car elle crée de la confusion chez les élèves.",
        isCorrect: false,
        explanation:
          "FAUX. La dictée négociée est une pratique recommandée : elle oblige chaque élève à argumenter sa graphie, développant ainsi le raisonnement métalinguistique. Elle est validée par la recherche en didactique.",
      },
      {
        sentence:
          "Au cycle 3, les élèves doivent mémoriser les mots fréquents et les régularités morphologiques pour automatiser l'orthographe lexicale.",
        isCorrect: true,
        explanation:
          "Les programmes 2016 (cycle 3) indiquent explicitement la mémorisation de mots fréquents et l'étude des régularités morphologiques (familles de mots, dérivation) comme levier de l'orthographe lexicale.",
      },
    ],
  },
};

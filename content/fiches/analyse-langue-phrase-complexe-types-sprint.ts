import type { Fiche } from "@/features/fiches/types";

export const analyseLanguePhraseComplexeTypesSprint: Fiche = {
  id: "analyse-langue-phrase-complexe-types-sprint",
  slug: "phrase-complexe-types-sprint",
  title: "Phrase complexe : types de propositions",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "phrase complexe",
    "proposition",
    "proposition indépendante",
    "proposition principale",
    "proposition subordonnée",
    "coordination",
    "subordination",
  ],
  notionsLiees: ["phrase-complexe-sprint", "subordonnees-relatives-sprint"],
  exercicesAssocies: ["phrase_complexe_types"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sert à nommer correctement les propositions dans une phrase complexe. Au CRPE, on attend une analyse syntaxique précise : longueur de phrase et nombre d'idées ne suffisent pas.",
    oneLiner:
      "Pour analyser une phrase complexe, commencez par repérer chaque verbe conjugué, puis demandez-vous si les propositions sont indépendantes (juxtaposées ou coordonnées) ou si l'une dépend de l'autre. Une proposition principale n'existe que s'il y a une subordonnée ; une proposition indépendante, elle, n'est liée à aucune subordination.",
    exampleCorrect: {
      sentence: "\"Je relis ma copie parce que je doute de ma réponse.\"",
      explanation:
        "\"Je relis ma copie\" est la proposition principale. \"parce que je doute de ma réponse\" est une proposition subordonnée circonstancielle de cause, introduite par une conjonction de subordination. Les deux verbes conjugués ne sont donc pas sur le même plan syntaxique.",
    },
    exampleWrong: {
      sentence: "Dans \"Le jury lit les copies et il annote les erreurs\", la seconde proposition est subordonnée.",
      explanation:
        "FAUX. \"et\" est une conjonction de coordination : les deux propositions sont de même niveau syntaxique. Ce sont deux propositions indépendantes coordonnées, pas une principale et une subordonnée.",
    },
    mainTrap:
      "Le piège classique est d'appeler \"principale\" toute proposition placée avant une autre. Or on ne parle de proposition principale que s'il existe une proposition subordonnée qui dépend d'elle. Dans une coordination ou une juxtaposition, on a des propositions indépendantes, même si l'une vient avant l'autre.",
    quiz: [
      {
        sentence:
          "Dans \"Il apprend sa leçon, puis il s'entraîne\", on a deux propositions indépendantes.",
        isCorrect: true,
        explanation:
          "\"Puis\" relie ici deux propositions de même niveau. Il n'y a aucun lien de subordination : on parle donc de propositions indépendantes coordonnées.",
      },
      {
        sentence:
          "Dans \"Le livre que tu lis est exigeant\", \"Le livre\" est la proposition principale.",
        isCorrect: false,
        explanation:
          "FAUX. Une proposition doit s'organiser autour d'un verbe conjugué. La proposition principale est \"Le livre est exigeant\" ; \"que tu lis\" est une subordonnée relative.",
      },
      {
        sentence:
          "Une proposition subordonnée relative dépend d'un antécédent nominal et non seulement d'un verbe.",
        isCorrect: true,
        explanation:
          "Exact. La relative complète un nom ou un pronom antécédent : c'est ce lien qui permet de la distinguer d'une complétive ou d'une circonstancielle.",
      },
      {
        sentence:
          "Dans \"Je pense qu'il a raison\", \"qu'il a raison\" est une proposition subordonnée complétive.",
        isCorrect: true,
        explanation:
          "\"Que\" introduit ici une proposition qui complète le verbe \"pense\". Elle occupe une fonction essentielle dans la phrase : c'est bien une complétive.",
      },
      {
        sentence:
          "Si une phrase contient deux verbes conjugués, elle comporte toujours deux propositions principales.",
        isCorrect: false,
        explanation:
          "FAUX. Deux verbes conjugués signalent au moins deux propositions, mais celles-ci peuvent être indépendantes, principale + subordonnée, ou plusieurs subordonnées enchâssées. Le terme \"principale\" ne vaut pas pour toutes.",
      },
    ],
  },
};

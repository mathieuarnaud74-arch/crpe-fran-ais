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
    "proposition independante",
    "proposition principale",
    "proposition subordonnee",
    "coordination",
    "subordination",
  ],
  notionsLiees: ["phrase-complexe-sprint", "subordonnees-relatives-sprint"],
  exercicesAssocies: ["phrase_complexe_types"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sert a nommer correctement les propositions dans une phrase complexe. Au CRPE, on attend une analyse syntaxique precise : longueur de phrase et nombre d'idees ne suffisent pas.",
    oneLiner:
      "Pour analyser une phrase complexe, commencez par reperer chaque verbe conjugue, puis demandez-vous si les propositions sont independantes (juxtaposees ou coordonnees) ou si l'une depend de l'autre. Une proposition principale n'existe que s'il y a une subordonnee ; une proposition independante, elle, n'est liee a aucune subordination.",
    exampleCorrect: {
      sentence: "\"Je relis ma copie parce que je doute de ma reponse.\"",
      explanation:
        "\"Je relis ma copie\" est la proposition principale. \"parce que je doute de ma reponse\" est une proposition subordonnee circonstancielle de cause, introduite par une conjonction de subordination. Les deux verbes conjugues ne sont donc pas sur le meme plan syntaxique.",
    },
    exampleWrong: {
      sentence: "Dans \"Le jury lit les copies et il annote les erreurs\", la seconde proposition est subordonnee.",
      explanation:
        "FAUX. \"et\" est une conjonction de coordination : les deux propositions sont de meme niveau syntaxique. Ce sont deux propositions independantes coordonnees, pas une principale et une subordonnee.",
    },
    mainTrap:
      "Le piege classique est d'appeler \"principale\" toute proposition placee avant une autre. Or on ne parle de proposition principale que s'il existe une proposition subordonnee qui depend d'elle. Dans une coordination ou une juxtaposition, on a des propositions independantes, meme si l'une vient avant l'autre.",
    quiz: [
      {
        sentence:
          "Dans \"Il apprend sa lecon, puis il s'entraine\", on a deux propositions independantes.",
        isCorrect: true,
        explanation:
          "\"Puis\" relie ici deux propositions de meme niveau. Il n'y a aucun lien de subordination : on parle donc de propositions independantes coordonnees.",
      },
      {
        sentence:
          "Dans \"Le livre que tu lis est exigeant\", \"Le livre\" est la proposition principale.",
        isCorrect: false,
        explanation:
          "FAUX. Une proposition doit s'organiser autour d'un verbe conjugue. La proposition principale est \"Le livre est exigeant\" ; \"que tu lis\" est une subordonnee relative.",
      },
      {
        sentence:
          "Une proposition subordonnee relative depend d'un antecedent nominal et non seulement d'un verbe.",
        isCorrect: true,
        explanation:
          "Exact. La relative complete un nom ou un pronom antecedent : c'est ce lien qui permet de la distinguer d'une completive ou d'une circonstancielle.",
      },
      {
        sentence:
          "Dans \"Je pense qu'il a raison\", \"qu'il a raison\" est une proposition subordonnee completive.",
        isCorrect: true,
        explanation:
          "\"Que\" introduit ici une proposition qui complete le verbe \"pense\". Elle occupe une fonction essentielle dans la phrase : c'est bien une completive.",
      },
      {
        sentence:
          "Si une phrase contient deux verbes conjugues, elle comporte toujours deux propositions principales.",
        isCorrect: false,
        explanation:
          "FAUX. Deux verbes conjugues signalent au moins deux propositions, mais celles-ci peuvent etre independantes, principale + subordonnee, ou plusieurs subordonnees enchassees. Le terme \"principale\" ne vaut pas pour toutes.",
      },
    ],
  },
};

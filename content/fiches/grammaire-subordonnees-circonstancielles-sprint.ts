import type { Fiche } from "@/features/fiches/types";

export const grammaireSubCircSprint: Fiche = {
  id: "grammaire-subordonnees-circonstancielles-sprint",
  slug: "subordonnees-circonstancielles-sprint",
  title: "Subordonnées circonstancielles",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["subordonnée circonstancielle", "conjonction", "mode subjonctif", "cause", "but", "concession"],
  notionsLiees: ["phrase-complexe-sprint", "subjonctif-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer: "Connaissance des modes verbaux (indicatif et subjonctif) indispensable. Cette fiche complète la fiche phrase complexe.",
    oneLiner:
      "BUT → subjonctif (pour que). CAUSE → indicatif (parce que, puisque). CONCESSION → subjonctif (bien que, quoique). CONDITION → si + imparfait/PQP (JAMAIS si + conditionnel). TEMPS : avant que → subjonctif, après que → indicatif. CONSÉQUENCE → indicatif (si bien que, au point que).",
    exampleCorrect: {
      sentence: "Il travaille pour que ses élèves réussissent.",
      explanation:
        "\"Pour que\" introduit une subordonnée circonstancielle de but → mode subjonctif obligatoire (\"réussissent\"). Correct.",
    },
    exampleWrong: {
      sentence: "Il travaille pour que ses élèves réussissent, bien qu'ils sont peu motivés.",
      explanation:
        "FAUX. \"Bien que\" introduit une concession → subjonctif obligatoire. Il faut : \"bien qu'ils soient peu motivés\".",
    },
    mainTrap:
      "\"Après que\" impose l'INDICATIF (et non le subjonctif) car l'action est réalisée, donc certaine : \"Après qu'il est parti, tout a changé.\" C'est l'erreur la plus fréquente au CRPE. À l'inverse, \"avant que\" impose le subjonctif car l'action n'est pas encore accomplie.",
    quiz: [
      {
        sentence:
          "\"Parce qu'il pleuvait, nous sommes restés.\" — la subordonnée de cause est bien à l'indicatif.",
        isCorrect: true,
        explanation:
          "Correct. \"Parce que\" introduit une cause → indicatif obligatoire (\"pleuvait\" = imparfait de l'indicatif). La cause est présentée comme un fait réel.",
      },
      {
        sentence:
          "\"Bien qu'il soit brillant, il échoue.\" est incorrecte : \"bien que\" devrait être suivi de l'indicatif.",
        isCorrect: false,
        explanation:
          "FAUX. \"Bien que\" est une conjonction de concession → subjonctif OBLIGATOIRE. \"Soit\" (subjonctif présent de \"être\") est la seule forme correcte ici.",
      },
      {
        sentence:
          "\"Si j'aurais su, je n'aurais pas venu\" est incorrecte : \"si\" de condition exclut le conditionnel.",
        isCorrect: true,
        explanation:
          "Correct. Après \"si\" de condition, on ne met JAMAIS le conditionnel. Il faut : \"Si j'avais su, je ne serais pas venu.\" (si + PQP → conditionnel passé dans la principale). La forme \"si j'aurais su\" est une hypercorrection très fréquente.",
      },
      {
        sentence:
          "\"Après qu'il soit parti, le silence s'est installé.\" est correct.",
        isCorrect: false,
        explanation:
          "FAUX. \"Après que\" impose l'indicatif, pas le subjonctif. Correct : \"Après qu'il est parti\" (indicatif passé composé) ou \"Après qu'il fut parti\" (indicatif passé antérieur, registre soutenu). L'emploi du subjonctif après \"après que\" est une faute normative.",
      },
      {
        sentence:
          "\"Il étudie tellement qu'il en oublie de dormir\" est une subordonnée de conséquence à l'indicatif.",
        isCorrect: true,
        explanation:
          "Correct. \"Tellement que\" introduit une conséquence → indicatif. \"Oublie\" est bien à l'indicatif présent. La conséquence est un fait constaté, d'où l'indicatif.",
      },
    ],
  },
};

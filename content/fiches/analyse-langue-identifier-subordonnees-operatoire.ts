import type { Fiche } from "@/features/fiches/types";

export const analyseLangueIdentifierSubordonneesOperatoire: Fiche = {
  id: "analyse-langue-identifier-subordonnees-operatoire",
  slug: "identifier-subordonnees-operatoire",
  title: "Identifier le type de subordonnée",
  subtitle:
    "Arbre de décision pour distinguer relatives, complétives et circonstancielles",
  domaine: "analyse_langue",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "subordonnée",
    "relative",
    "complétive",
    "circonstancielle",
    "phrase complexe",
    "analyse syntaxique",
  ],
  notionsLiees: [
    "grammaire-phrase-complexe-reference",
    "grammaire-subordonnees-relatives-sprint",
    "analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Face à une phrase complexe, comment identifier chaque subordonnée ?",
    decisionTree: {
      type: "question",
      text: "La subordonnée est-elle introduite par un pronom relatif (qui, que, dont, où, lequel et ses composés) ?",
      yes: {
        type: "leaf",
        label: "Proposition subordonnée relative",
        rule: "La subordonnée relative est introduite par un pronom relatif qui a un antécédent dans la proposition principale. Elle complète un nom (expansion du nom) et a une fonction de complément du nom ou d'épithète détachée.",
        example:
          "« L'élève qui travaille régulièrement progresse. » → « qui travaille régulièrement » est une relative, complément de l'antécédent « l'élève ».",
      },
      no: {
        type: "question",
        text: "La subordonnée est-elle introduite par la conjonction « que » (ou « qu' ») après un verbe de pensée, de parole, de perception ou de volonté (penser, dire, voir, vouloir, savoir, croire…) ?",
        yes: {
          type: "leaf",
          label: "Proposition subordonnée complétive (conjonctive)",
          rule: "La subordonnée complétive est introduite par la conjonction de subordination « que ». Elle occupe une fonction essentielle (COD, sujet, attribut) et ne peut être ni supprimée ni déplacée. Le « que » introducteur n'a aucune fonction dans la subordonnée, contrairement au pronom relatif.",
          example:
            "« Je pense que cet exercice est difficile. » → « que cet exercice est difficile » est une complétive COD du verbe « pense ». On ne peut pas la supprimer : « *Je pense » est incomplet.",
        },
        no: {
          type: "leaf",
          label: "Proposition subordonnée circonstancielle",
          rule: "La subordonnée circonstancielle est introduite par une conjonction de subordination autre que « que » seul (quand, lorsque, parce que, bien que, si, pour que, afin que, tandis que…). Elle est généralement complément de phrase : suppressible et déplaçable. Attention : les subordonnées de conséquence (si bien que, au point que) et certaines de cause peuvent avoir une mobilité réduite. Elle exprime le temps, la cause, la conséquence, le but, la concession, la condition, etc.",
          example:
            "« Quand il pleut, les élèves restent en classe. » → « Quand il pleut » est une circonstancielle de temps, suppressible (« Les élèves restent en classe ») et déplaçable (« Les élèves restent en classe quand il pleut »).",
        },
      },
    },
    workedExample: {
      phrase:
        "L'enseignant pense que les élèves qui révisent réussiront quand ils passeront l'examen.",
      steps: [
        "Repérer les verbes conjugués : « pense », « révisent », « réussiront », « passeront » → 4 verbes, donc au moins 3 subordonnées potentielles ou une phrase très complexe.",
        "Identifier les mots subordonnants : « que », « qui », « quand ».",
        "« qui révisent » : introduit par le pronom relatif « qui », avec un antécédent « les élèves » → subordonnée relative, complément du nom « élèves ».",
        "« que les élèves qui révisent réussiront quand ils passeront l'examen » : introduit par « que » après le verbe de pensée « pense » → subordonnée complétive, COD de « pense ». Attention : elle contient elle-même les deux autres subordonnées.",
        "« quand ils passeront l'examen » : introduit par « quand », conjonction de subordination de temps → subordonnée circonstancielle de temps, suppressible et déplaçable à l'intérieur de la complétive.",
        "Bilan : 3 subordonnées emboîtées — une complétive (COD), une relative (complément du nom), une circonstancielle de temps (complément de phrase).",
      ],
    },
    didacticNote:
      "Au CRPE, l'analyse des subordonnées est un classique des épreuves écrites de français. La difficulté principale réside dans les phrases à subordonnées enchâssées. Conseil : toujours commencer par repérer tous les verbes conjugués, puis identifier chaque mot subordonnant et son type. Ne pas oublier que « que » peut être pronom relatif (avec antécédent) ou conjonction de subordination (après verbe de pensée/parole).",
    quiz: [
      {
        sentence:
          "Le pronom relatif « que » et la conjonction de subordination « que » ont la même fonction grammaticale dans la subordonnée qu'ils introduisent.",
        isCorrect: false,
        explanation:
          "Le pronom relatif « que » a une fonction dans la subordonnée (généralement COD) et reprend un antécédent. La conjonction « que » n'a aucune fonction : elle sert uniquement de lien entre la principale et la complétive.",
      },
      {
        sentence:
          "Une subordonnée circonstancielle est toujours suppressible et déplaçable, car c'est un complément de phrase.",
        isCorrect: true,
        explanation:
          "VRAI. C'est LE critère pratique du complément de phrase au CRPE : une subordonnée circonstancielle peut être supprimée (la phrase reste grammaticale) et déplacée (en tête ou en fin de phrase). Test : « Quand il pleut, les élèves restent en classe. » → suppression (« Les élèves restent en classe. » ✓) et déplacement (« Les élèves restent en classe quand il pleut. » ✓).",
      },
      {
        sentence:
          "Dans « Le livre dont je t'ai parlé est passionnant », « dont je t'ai parlé » est une subordonnée complétive.",
        isCorrect: false,
        explanation:
          "« Dont » est un pronom relatif ayant pour antécédent « le livre ». Il s'agit donc d'une subordonnée relative, complément du nom « livre ». Une complétive serait introduite par la conjonction « que » après un verbe.",
      },
      {
        sentence:
          "Pour distinguer une relative d'une complétive introduites toutes deux par « que », il faut vérifier si « que » a un antécédent nominal.",
        isCorrect: true,
        explanation:
          "Si « que » reprend un nom de la principale (antécédent), c'est un pronom relatif et la subordonnée est relative. Si « que » suit un verbe sans reprendre de nom, c'est une conjonction et la subordonnée est complétive. Ex. : « Le film que j'ai vu » (relative) vs « Je sais que tu viendras » (complétive).",
      },
    ],
  },
};

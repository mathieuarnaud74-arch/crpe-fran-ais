import type { Fiche } from "@/features/fiches/types";

export const analyseFonctionsPhraseComplexeOperatoire: Fiche = {
  id: "analyse-langue-fonctions-phrase-complexe-operatoire",
  slug: "fonctions-phrase-complexe-arbre-decision",
  title: "Analyser les fonctions dans la phrase complexe",
  domaine: "analyse_langue",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "phrase complexe",
    "proposition",
    "subordonnée",
    "fonction",
    "complétive",
    "relative",
    "circonstancielle",
    "juxtaposition",
    "coordination",
  ],
  notionsLiees: [
    "grammaire-phrase-complexe-reference",
    "grammaire-phrase-complexe-sprint",
    "grammaire-subordonnees-relatives-sprint",
    "grammaire-subordonnees-circonstancielles-sprint",
    "analyse-langue-identifier-subordonnees-operatoire",
  ],
  exercicesAssocies: ["tri_fonctions_propositions"],
  content: {
    model: "operatoire",
    startingQuestion:
      "Comment identifier la nature et la fonction de chaque proposition dans une phrase complexe ?",
    decisionTree: {
      type: "question",
      text: "Combien de verbes conjugués contient la phrase ?",
      yes: {
        type: "question",
        text: "PHRASE COMPLEXE (2+ verbes conjugués). Les propositions sont-elles reliées par un mot subordonnant (qui, que, dont, où, quand, parce que, si, bien que, pour que…) ?",
        yes: {
          type: "question",
          text: "Le mot subordonnant est-il un pronom relatif (qui, que, dont, où, lequel, auquel, duquel…) ?",
          yes: {
            type: "leaf",
            label: "Proposition subordonnée relative",
            rule: "La subordonnée relative est introduite par un pronom relatif qui a un antécédent (un nom ou GN dans la principale). Sa fonction est complément de l'antécédent (expansion du nom, comme un adjectif). Le pronom relatif a sa propre fonction dans la subordonnée.",
            example:
              "Le livre [que je lis] est passionnant. → « que je lis » = sub. relative, complément de l'antécédent « livre ». Dans la sub., « que » = COD de « lis ».",
          },
          no: {
            type: "question",
            text: "Le mot subordonnant est-il « que » (ou « qu' ») sans antécédent nominal ?",
            yes: {
              type: "question",
              text: "La subordonnée peut-elle être remplacée par « cela » ou « quelque chose » ?",
              yes: {
                type: "leaf",
                label: "Proposition subordonnée complétive (conjonctive)",
                rule: "La subordonnée complétive est introduite par « que » (conjonction de subordination) sans antécédent. Elle remplit la fonction de COD, COI, sujet ou attribut du verbe principal. Test : remplacer la sub. par « cela ».",
                example:
                  "Je pense [qu'il viendra]. → « qu'il viendra » = sub. complétive, COD de « pense ». Test : « Je pense cela. » ✓ — Il est certain [qu'elle réussira]. → sub. complétive, sujet réel de « est certain ».",
              },
              no: {
                type: "leaf",
                label: "Proposition subordonnée circonstancielle",
                rule: "Si « que » est précédé d'un mot formant une locution conjonctive (avant que, pour que, bien que, sans que, afin que…), c'est une subordonnée circonstancielle. Sa fonction est complément circonstanciel (temps, but, cause, conséquence, concession, condition…).",
                example:
                  "Il travaille [pour qu'on soit fier de lui]. → sub. circonstancielle de but, CC de but du verbe « travaille ».",
              },
            },
            no: {
              type: "question",
              text: "Le mot subordonnant exprime-t-il un rapport de temps, cause, but, condition, concession, conséquence ? (quand, lorsque, parce que, puisque, si, bien que, afin que, de sorte que…)",
              yes: {
                type: "leaf",
                label: "Proposition subordonnée circonstancielle",
                rule: "La subordonnée circonstancielle est introduite par une conjonction ou locution conjonctive de subordination exprimant une circonstance. Sa fonction est complément circonstanciel du verbe principal. Elle est généralement déplaçable et supprimable (sauf conséquence).",
                example:
                  "[Quand il pleut], je reste chez moi. → sub. circ. de temps, CC de temps de « reste ». [Parce qu'il est malade], il ne viendra pas. → sub. circ. de cause, CC de cause de « viendra ».",
              },
              no: {
                type: "leaf",
                label: "Proposition subordonnée interrogative indirecte",
                rule: "Introduite par « si », un mot interrogatif (qui, que, quoi, où, quand, comment, pourquoi, combien, quel…) après un verbe de questionnement ou d'ignorance. Fonction : COD du verbe principal.",
                example:
                  "Je me demande [s'il viendra]. → sub. interrogative indirecte, COD de « demande ». — Il ne sait pas [où elle habite]. → COD de « sait ».",
              },
            },
          },
        },
        no: {
          type: "question",
          text: "Les propositions sont-elles reliées par une conjonction de coordination (mais, ou, et, donc, or, ni, car) ou un adverbe de liaison (puis, ensuite, cependant…) ?",
          yes: {
            type: "leaf",
            label: "Propositions indépendantes coordonnées",
            rule: "Deux propositions coordonnées sont reliées par une conjonction de coordination ou un adverbe de liaison. Chacune pourrait fonctionner seule comme phrase. Elles sont sur le même plan syntaxique (aucune ne dépend de l'autre).",
            example:
              "[Il pleut] mais [je sors quand même]. → 2 propositions indépendantes coordonnées par « mais ». Chacune a son verbe conjugué et peut fonctionner seule.",
          },
          no: {
            type: "leaf",
            label: "Propositions indépendantes juxtaposées",
            rule: "Deux propositions juxtaposées sont séparées par un signe de ponctuation (virgule, point-virgule, deux-points) sans mot de liaison. Elles sont sur le même plan syntaxique. Le deux-points peut marquer une cause, une conséquence ou une explication.",
            example:
              "[Le vent souffle], [les volets claquent]. → 2 propositions juxtaposées (virgule). — [Il ne viendra pas] : [il est malade]. → 2 propositions juxtaposées (deux-points explicatif = cause).",
          },
        },
      },
      no: {
        type: "leaf",
        label: "Phrase simple",
        rule: "Une phrase avec un seul verbe conjugué est une phrase simple. Elle contient une seule proposition indépendante. Analyse : identifier le sujet, le verbe, et les compléments (COD, COI, CC, attribut).",
        example:
          "Le chat dort sur le canapé. → 1 verbe conjugué (« dort »), 1 proposition indépendante. Sujet : « le chat », CC de lieu : « sur le canapé ».",
      },
    },
    workedExample: {
      phrase:
        "Les enfants qui jouaient dans le jardin sont rentrés parce qu'il commençait à pleuvoir.",
      steps: [
        "Étape 1 — Compter les verbes conjugués : « jouaient » (imparfait), « sont rentrés » (passé composé), « commençait » (imparfait) → 3 verbes = phrase complexe à 3 propositions.",
        "Étape 2 — Identifier la proposition principale : « Les enfants… sont rentrés » (noyau de la phrase, ne dépend de rien).",
        "Étape 3 — Analyser « qui jouaient dans le jardin » : introduite par le pronom relatif « qui » (antécédent = « les enfants ») → proposition subordonnée relative. Fonction : complément de l'antécédent « enfants » (expansion du nom).",
        "Étape 4 — Analyser « parce qu'il commençait à pleuvoir » : introduite par la locution conjonctive « parce que » (cause) → proposition subordonnée circonstancielle de cause. Fonction : CC de cause du verbe « sont rentrés ».",
        "Étape 5 — Synthèse : P. principale = « Les enfants sont rentrés » + sub. relative « qui jouaient dans le jardin » (expansion de « enfants ») + sub. circ. de cause « parce qu'il commençait à pleuvoir » (CC de cause).",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans « Je pense qu'il a raison », la subordonnée « qu'il a raison » est une relative.",
        isCorrect: false,
        explanation:
          "FAUX. « Que » n'a pas d'antécédent nominal ici. Test : « Je pense cela » fonctionne. C'est une subordonnée complétive (conjonctive), COD du verbe « pense ». Une relative aurait un antécédent : « l'idée qu'il défend ».",
      },
      {
        sentence:
          "La subordonnée relative a pour fonction d'être complément de l'antécédent.",
        isCorrect: true,
        explanation:
          "VRAI. La subordonnée relative complète un nom (son antécédent) comme le ferait un adjectif qualificatif. C'est une expansion du nom.",
      },
      {
        sentence:
          "Deux propositions séparées par un point-virgule sont des propositions coordonnées.",
        isCorrect: false,
        explanation:
          "FAUX. Séparées par un signe de ponctuation (point-virgule, virgule, deux-points) sans conjonction de coordination, ce sont des propositions juxtaposées (et non coordonnées).",
      },
      {
        sentence:
          "« Il ne sait pas où elle habite » contient une subordonnée interrogative indirecte.",
        isCorrect: true,
        explanation:
          "VRAI. « Où elle habite » est introduite par le mot interrogatif « où » après un verbe d'ignorance (« ne sait pas »). C'est une subordonnée interrogative indirecte, COD de « sait ».",
      },
      {
        sentence:
          "Une subordonnée circonstancielle est toujours supprimable.",
        isCorrect: false,
        explanation:
          "FAUX. La plupart le sont (temps, cause, but, concession…), mais les circonstancielles de conséquence intégrées (« il crie si fort que tout le monde l'entend ») ne sont pas toujours supprimables sans changer le sens.",
      },
      {
        sentence:
          "Dans « Bien qu'il soit fatigué, il continue », la subordonnée exprime la concession.",
        isCorrect: true,
        explanation:
          "VRAI. « Bien que » est une locution conjonctive de concession (+ subjonctif). « Bien qu'il soit fatigué » = sub. circ. de concession, CC de concession du verbe « continue ».",
      },
    ],
    didacticNote:
      "Au cycle 3, l'analyse de la phrase complexe commence par le repérage des verbes conjugués (= nombre de propositions). On n'aborde pas la terminologie exhaustive mais on distingue : phrase simple vs complexe, puis propositions juxtaposées, coordonnées et subordonnées. La notion de proposition principale est implicite : c'est « ce qui reste quand on retire les subordonnées ». Privilégier des phrases courtes (2 propositions) avant de passer à des structures plus élaborées.",
  },
};

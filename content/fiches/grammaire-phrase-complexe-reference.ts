import type { Fiche } from "@/features/fiches/types";

export const phraseComplexeReference: Fiche = {
  id: "grammaire-phrase-complexe-reference",
  slug: "phrase-complexe-guide-reference",
  title: "La phrase complexe : guide de référence",
  domaine: "grammaire",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "phrase complexe",
    "juxtaposition",
    "coordination",
    "subordination",
    "proposition",
  ],
  notionsLiees: [
    "grammaire-phrase-complexe-sprint",
    "grammaire-subordonnees-relatives-sprint",
    "grammaire-subordonnees-circonstancielles-sprint",
  ],
  exercicesAssocies: ["grm_phrase_complexe_prop", "delimitation_propositions", "grm_propositions_classification"],
  content: {
    model: "reference",
    intro:
      "Une phrase complexe contient au moins deux propositions, c'est-à-dire deux groupes organisés autour d'un verbe conjugué. Elle s'oppose à la phrase simple, qui ne comporte qu'une seule proposition. Les propositions d'une phrase complexe peuvent être reliées de trois manières : par juxtaposition, par coordination ou par subordination. La maîtrise de ces mécanismes est essentielle pour l'analyse grammaticale au CRPE et pour l'enseignement de la syntaxe à l'école primaire.",
    sections: [
      {
        id: "juxtaposition-coordination",
        title: "Juxtaposition et coordination",
        badge: "Liens paratactiques",
        blocks: [
          {
            kind: "rule",
            content:
              "La juxtaposition relie des propositions indépendantes par un simple signe de ponctuation (virgule, point-virgule, deux-points). La coordination les relie par une conjonction de coordination (mais, ou, et, ni, car — et or selon certaines grammaires) ou un adverbe de liaison (puis, cependant, en effet, donc…). Dans les deux cas, les propositions sont syntaxiquement indépendantes : aucune n'est subordonnée à l'autre. Note : la terminologie grammaticale officielle MEN 2020 reclassifie « donc » comme adverbe de liaison plutôt que conjonction de coordination.",
            linguisticLogic:
              "On parle de parataxe (juxtaposition) ou de coordination : les propositions sont de même niveau hiérarchique. Le lien sémantique est implicite (juxtaposition) ou explicité par le coordonnant.",
          },
          {
            kind: "table",
            caption: "Les conjonctions de coordination (terminologie MEN 2020)",
            headers: ["Mot", "Relation logique", "Exemple", "Statut MEN 2020"],
            rows: [
              [
                "mais",
                "Opposition / concession",
                "Il pleut, mais nous sortons.",
                "Conjonction de coordination",
              ],
              [
                "ou",
                "Alternative / choix",
                "Tu restes ou tu pars ?",
                "Conjonction de coordination",
              ],
              [
                "et",
                "Addition",
                "Le chat miaule et le chien aboie.",
                "Conjonction de coordination",
              ],
              [
                "ni",
                "Addition négative",
                "Il ne lit ni n'écrit.",
                "Conjonction de coordination",
              ],
              [
                "car",
                "Cause / justification",
                "Rentrons, car il fait nuit.",
                "Conjonction de coordination",
              ],
              [
                "or",
                "Argumentation (transition)",
                "Il devait venir. Or il est absent.",
                "Conjonction de coordination (selon certaines grammaires)",
              ],
              [
                "donc",
                "Conséquence",
                "Il a révisé, donc il réussira.",
                "Adverbe de liaison (reclassifié MEN 2020)",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "Le soleil se couche ; les oiseaux se taisent. (juxtaposition — deux-points ou point-virgule marquent un lien implicite de simultanéité)",
            annotation: "Juxtaposition par point-virgule",
          },
        ],
      },
      {
        id: "subordination",
        title: "La subordination",
        badge: "Liens hypotactiques",
        blocks: [
          {
            kind: "rule",
            content:
              "La subordination établit une relation de dépendance entre une proposition principale et une proposition subordonnée. La subordonnée est introduite par un mot subordonnant (pronom relatif, conjonction de subordination, mot interrogatif) et ne peut fonctionner seule. On distingue trois grands types de subordonnées : la relative, la complétive et la circonstancielle.",
            linguisticLogic:
              "On parle d'hypotaxe : les propositions sont dans un rapport hiérarchique. La subordonnée occupe une fonction grammaticale dans la principale (complément du nom, COD, complément circonstanciel…).",
          },
          {
            kind: "table",
            caption: "Les trois types de propositions subordonnées",
            headers: [
              "Type",
              "Mot introducteur",
              "Fonction",
              "Exemple",
            ],
            rows: [
              [
                "Relative",
                "Pronom relatif (qui, que, dont, où, lequel…)",
                "Complément de l'antécédent (expansion du nom)",
                "L'élève qui travaille progressera.",
              ],
              [
                "Complétive",
                "Conjonction que / ce que / à ce que",
                "COD, sujet, attribut…",
                "Je souhaite que tu viennes.",
              ],
              [
                "Circonstancielle",
                "Conjonction de subordination (quand, parce que, bien que, si…)",
                "Complément circonstanciel (temps, cause, but, concession…)",
                "Nous partirons quand la pluie cessera.",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Que complétif ≠ que relatif",
                explanation:
                  "Le « que » complétif introduit une complétive COD (Je sais que tu viens), tandis que le « que » relatif est pronom relatif COD avec un antécédent (Le livre que je lis). Pour les distinguer, vérifier la présence d'un antécédent nominal.",
              },
              {
                label: "Relative sans antécédent",
                explanation:
                  "Certaines relatives n'ont pas d'antécédent exprimé : « Qui vivra verra » (relative substantive). Elles fonctionnent comme un GN et peuvent être sujet ou COD.",
              },
            ],
          },
        ],
      },
      {
        id: "analyse-phrase-complexe",
        title: "Analyse de la phrase complexe",
        badge: "Méthodologie",
        blocks: [
          {
            kind: "rule",
            content:
              "Pour analyser une phrase complexe, on procède en quatre étapes : (1) repérer les verbes conjugués pour identifier le nombre de propositions ; (2) délimiter chaque proposition ; (3) identifier le mot de liaison (conjonction, pronom relatif, ponctuation) ; (4) déterminer le type de relation (juxtaposition, coordination, subordination) et la fonction de chaque subordonnée.",
          },
          {
            kind: "tip",
            text: "Méthode pratique : soulignez chaque verbe conjugué d'une couleur différente, puis encadrez la proposition qui l'entoure. Le nombre de verbes conjugués donne le nombre de propositions. Ensuite, cherchez les mots charnières entre les crochets pour identifier le type de lien.",
          },
          {
            kind: "example",
            sentence:
              "[Le professeur explique la leçon] [que les élèves écoutent] [pendant qu'ils prennent des notes]. → 3 verbes conjugués = 3 propositions. « que » = pronom relatif → subordonnée relative, complément de « leçon ». « pendant que » = conjonction de subordination → subordonnée circonstancielle de temps.",
            annotation:
              "Analyse complète : 1 principale + 1 relative + 1 circonstancielle",
          },
        ],
      },
    ],
    keyPoints: [
      "Une phrase complexe contient au moins deux propositions (deux verbes conjugués). Elle s'oppose à la phrase simple (un seul verbe conjugué).",
      "La juxtaposition relie les propositions par la ponctuation, la coordination par une conjonction de coordination (mais, ou, et, ni, car — et or selon certaines grammaires). Note : « donc » est reclassifié comme adverbe de liaison par la terminologie MEN 2020.",
      "La subordination crée une hiérarchie : la subordonnée dépend de la principale et occupe une fonction grammaticale (COD, complément du nom, CC…).",
      "Les trois types de subordonnées sont : la relative (expansion du nom), la complétive (souvent COD), la circonstancielle (CC de temps, cause, but…).",
      "Pour analyser une phrase complexe : compter les verbes conjugués, délimiter les propositions, identifier les mots de liaison, déterminer les relations.",
    ],
    quiz: [
      {
        sentence:
          "Dans « Le chat dort et le chien joue », les deux propositions sont reliées par subordination.",
        isCorrect: false,
        explanation:
          "FAUX. « Et » est une conjonction de coordination. Les deux propositions sont coordonnées, pas subordonnées. Elles sont de même niveau hiérarchique.",
      },
      {
        sentence:
          "Une phrase qui contient trois verbes conjugués comporte trois propositions.",
        isCorrect: true,
        explanation:
          "VRAI. Chaque verbe conjugué est le noyau d'une proposition. Trois verbes conjugués = trois propositions (sauf cas très rares de verbes en tournure figée).",
      },
      {
        sentence:
          "Dans « Je pense que tu as raison », la proposition « que tu as raison » est une subordonnée relative.",
        isCorrect: false,
        explanation:
          "FAUX. C'est une subordonnée complétive introduite par la conjonction « que ». Elle est COD du verbe « pense ». Il n'y a pas d'antécédent nominal, donc ce n'est pas une relative.",
      },
      {
        sentence:
          "La juxtaposition et la coordination produisent des propositions indépendantes, tandis que la subordination crée une dépendance syntaxique.",
        isCorrect: true,
        explanation:
          "VRAI. Les propositions juxtaposées et coordonnées sont de même rang (parataxe). La subordonnée, elle, dépend syntaxiquement de la principale (hypotaxe) et ne peut fonctionner seule.",
      },
      {
        sentence:
          "Dans « Rentrons, car il fait nuit », « car » est une conjonction de subordination.",
        isCorrect: false,
        explanation:
          "FAUX. « Car » est une conjonction de coordination qui exprime la cause. Les deux propositions sont coordonnées. Ne pas confondre avec « parce que », qui est une conjonction de subordination.",
      },
    ],
  },
};

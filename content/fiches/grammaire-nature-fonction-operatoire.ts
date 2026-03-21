import type { Fiche } from "@/features/fiches/types";

export const natureFonctionOperatoire: Fiche = {
  id: "grammaire-nature-fonction-operatoire",
  slug: "nature-fonction-arbre-decision",
  title: "Nature et fonction : arbre de décision",
  domaine: "grammaire",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "nature",
    "fonction",
    "classe grammaticale",
    "analyse",
  ],
  notionsLiees: [],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quelle est la nature (classe grammaticale) de ce mot ?",
    decisionTree: {
      type: "question",
      text: "Le mot est-il variable (change-t-il de forme selon le contexte) ?",
      yes: {
        type: "question",
        text: "Le mot change-t-il selon le genre et le nombre ?",
        yes: {
          type: "question",
          text: "Le mot désigne-t-il un être, une chose ou une idée ?",
          yes: {
            type: "leaf",
            label: "Nom",
            rule: "Le nom désigne un être, un objet, une idée. Il possède un genre propre et varie en nombre. Il est souvent précédé d'un déterminant.",
            example: "Le chat dort. (« chat » = nom commun, masc. sing.)",
          },
          no: {
            type: "question",
            text: "Le mot accompagne-t-il un nom pour le qualifier ou le caractériser ?",
            yes: {
              type: "question",
              text: "Le mot précise-t-il une qualité, un état ou une propriété du nom ?",
              yes: {
                type: "leaf",
                label: "Adjectif qualificatif",
                rule: "L'adjectif qualificatif exprime une qualité ou une propriété du nom. Il s'accorde en genre et en nombre avec le nom qu'il qualifie.",
                example:
                  "Une grande maison. (« grande » = adjectif, s'accorde avec « maison »)",
              },
              no: {
                type: "leaf",
                label: "Déterminant",
                rule: "Le déterminant précède le nom et en précise le genre, le nombre, la quantité ou la possession. Il s'accorde avec le nom qu'il accompagne.",
                example:
                  "Les enfants jouent. (« les » = déterminant article défini pluriel)",
              },
            },
            no: {
              type: "leaf",
              label: "Pronom",
              rule: "Le pronom remplace un nom ou un groupe nominal pour éviter une répétition. Il varie en genre, en nombre et parfois en personne.",
              example:
                "Marie lit un livre. Elle le trouve passionnant. (« elle » = pronom personnel sujet, « le » = pronom personnel COD)",
            },
          },
        },
        no: {
          type: "leaf",
          label: "Verbe",
          rule: "Le verbe est le noyau de la phrase. Il varie selon la personne, le nombre, le temps et le mode. Il exprime une action, un état ou un devenir.",
          example:
            "Les oiseaux chantent. (« chantent » = verbe conjugué, 3e pers. plur., présent)",
        },
      },
      no: {
        type: "question",
        text: "Le mot modifie-t-il un verbe, un adjectif ou un autre adverbe ?",
        yes: {
          type: "leaf",
          label: "Adverbe",
          rule: "L'adverbe est invariable. Il modifie le sens d'un verbe, d'un adjectif ou d'un autre adverbe. Il peut aussi modifier une phrase entière.",
          example:
            "Il court rapidement. (« rapidement » = adverbe de manière, modifie le verbe « court »)",
        },
        no: {
          type: "question",
          text: "Le mot introduit-il un complément (nom, GN, pronom) ?",
          yes: {
            type: "leaf",
            label: "Préposition",
            rule: "La préposition est un mot invariable qui introduit un complément. Elle établit un lien de dépendance entre deux éléments de la phrase.",
            example:
              "Le livre de Pierre est sur la table. (« de » et « sur » = prépositions)",
          },
          no: {
            type: "question",
            text: "Le mot relie-t-il deux mots, groupes de mots ou propositions ?",
            yes: {
              type: "leaf",
              label: "Conjonction",
              rule: "La conjonction est invariable. La conjonction de coordination relie des éléments de même fonction (mais, ou, et, donc, or, ni, car). La conjonction de subordination introduit une proposition subordonnée (que, quand, si, parce que…).",
              example:
                "Il pleut mais je sors. (« mais » = conjonction de coordination)",
            },
            no: {
              type: "leaf",
              label: "Interjection",
              rule: "L'interjection est un mot invariable qui exprime une émotion, un ordre ou une interpellation. Elle est souvent suivie d'un point d'exclamation.",
              example: "Hélas ! Il est trop tard. (« hélas » = interjection)",
            },
          },
        },
      },
    },
    workedExample: {
      phrase: "Il court rapidement dans le parc.",
      steps: [
        "Étape 1 — Identifier le mot à analyser : « rapidement ».",
        "Étape 2 — Le mot est-il variable ? Non, « rapidement » ne change jamais de forme (*rapidements, *rapidemente n'existent pas).",
        "Étape 3 — Le mot modifie-t-il un verbe, un adjectif ou un autre adverbe ? Oui, il modifie le verbe « court » en précisant la manière de courir.",
        "Étape 4 — Conclusion : « rapidement » est un adverbe de manière.",
        "Étape 5 — Quelle est sa fonction ? Il est complément circonstanciel de manière du verbe « court ». La nature (adverbe) est une propriété permanente du mot ; la fonction (CC de manière) dépend de son rôle dans cette phrase précise.",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans « Les enfants jouent dehors », le mot « dehors » est un adjectif.",
        isCorrect: false,
        explanation:
          "FAUX. « Dehors » est invariable et modifie le verbe « jouent » en indiquant le lieu. C'est un adverbe de lieu, pas un adjectif.",
      },
      {
        sentence:
          "Un pronom est un mot variable qui remplace un nom ou un groupe nominal.",
        isCorrect: true,
        explanation:
          "VRAI. Le pronom remplace un nom ou un GN pour éviter la répétition. Il varie en genre, en nombre et en personne (je, il, celle-ci, les miens…).",
      },
      {
        sentence:
          "Dans « Marie et Paul chantent », le mot « et » est une préposition.",
        isCorrect: false,
        explanation:
          "FAUX. « Et » relie deux noms de même fonction (sujets). C'est une conjonction de coordination, pas une préposition.",
      },
      {
        sentence:
          "La nature d'un mot est fixe, tandis que sa fonction change selon la phrase.",
        isCorrect: true,
        explanation:
          "VRAI. La nature (classe grammaticale) est une propriété permanente du mot (ex. « chat » est toujours un nom). La fonction (sujet, COD, CC…) dépend du rôle que joue le mot dans une phrase donnée.",
      },
      {
        sentence:
          "Dans « Le petit chat dort », le mot « petit » est un déterminant.",
        isCorrect: false,
        explanation:
          "FAUX. « Petit » exprime une qualité du nom « chat ». C'est un adjectif qualificatif (épithète). Le déterminant ici est « le ».",
      },
    ],
    didacticNote:
      "Au cycle 3, la distinction nature/fonction est un apprentissage fondamental. Utiliser des métaphores concrètes aide les élèves : la nature, c'est la « carte d'identité » du mot (elle ne change pas) ; la fonction, c'est son « métier » dans la phrase (elle change selon le contexte). Commencer par les natures les plus courantes (nom, verbe, adjectif, déterminant) avant d'aborder les mots invariables.",
  },
};

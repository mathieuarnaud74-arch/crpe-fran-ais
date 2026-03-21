import type { Fiche } from "@/features/fiches/types";

export const accordAdjectifOperatoire: Fiche = {
  id: "orthographe-accord-adjectif-operatoire",
  slug: "accord-adjectif-arbre-decision",
  title: "Accord de l'adjectif : arbre de décision",
  domaine: "orthographe",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "adjectif",
    "accord",
    "attribut",
    "épithète",
    "adjectif de couleur",
    "orthographe grammaticale",
  ],
  notionsLiees: [],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Comment accorder correctement cet adjectif ?",
    decisionTree: {
      type: "question",
      text: "L'adjectif est-il attribut du sujet (relié par un verbe d'état : être, sembler, paraître…) ou épithète (directement lié au nom) ?",
      yes: {
        type: "question",
        text: "Le sujet est-il un sujet simple (un seul nom/pronom) ?",
        yes: {
          type: "leaf",
          label: "Attribut — sujet simple",
          rule: "L'adjectif attribut s'accorde en genre et en nombre avec le sujet du verbe d'état.",
          example:
            "Les fleurs sont belles. (« belles » s'accorde avec « les fleurs », fém. plur.)",
        },
        no: {
          type: "question",
          text: "Les sujets coordonnés sont-ils de même genre ?",
          yes: {
            type: "leaf",
            label: "Attribut — sujets coordonnés de même genre",
            rule: "L'adjectif se met au pluriel et prend le genre commun des sujets.",
            example:
              "La jupe et la robe sont neuves. (deux noms féminins → « neuves », fém. plur.)",
          },
          no: {
            type: "leaf",
            label: "Attribut — sujets coordonnés de genres différents",
            rule: "L'adjectif se met au masculin pluriel. Par souci de style, on place de préférence le nom masculin en dernier, juste avant l'adjectif.",
            example:
              "La robe et le pantalon sont neufs. (fém. + masc. → « neufs », masc. plur.)",
          },
        },
      },
      no: {
        type: "question",
        text: "L'adjectif est-il un adjectif de couleur ?",
        yes: {
          type: "question",
          text: "L'adjectif de couleur est-il un adjectif simple d'usage courant (bleu, vert, rouge, blanc, noir, gris, jaune, brun…) ?",
          yes: {
            type: "leaf",
            label: "Adjectif de couleur simple",
            rule: "Les adjectifs de couleur simples et courants s'accordent normalement en genre et en nombre avec le nom qu'ils qualifient.",
            example:
              "Des chemises blanches. (« blanches » s'accorde avec « chemises », fém. plur.)",
          },
          no: {
            type: "question",
            text: "La couleur est-elle exprimée par un nom utilisé comme adjectif (marron, orange, cerise, turquoise…) ou par une couleur composée (bleu marine, vert pomme…) ?",
            yes: {
              type: "leaf",
              label: "Adjectif de couleur invariable",
              rule: "Les noms employés comme adjectifs de couleur et les adjectifs de couleur composés restent invariables. Exceptions : rose, mauve, écarlate, fauve et pourpre s'accordent.",
              example:
                "Des robes bleu marine. Des chaussures marron. (invariables) Mais : des joues roses. (exception)",
            },
            no: {
              type: "leaf",
              label: "Adjectif de couleur — cas particulier",
              rule: "Vérifier s'il s'agit d'une des exceptions (rose, mauve, écarlate, fauve, pourpre) qui s'accordent malgré leur origine nominale.",
              example:
                "Des étoffes mauves. (exception : « mauve » s'accorde)",
            },
          },
        },
        no: {
          type: "question",
          text: "L'adjectif épithète qualifie-t-il un seul nom ?",
          yes: {
            type: "leaf",
            label: "Épithète — nom simple",
            rule: "L'adjectif épithète s'accorde en genre et en nombre avec le nom qu'il qualifie, qu'il soit placé avant ou après le nom.",
            example:
              "Un grand arbre. Une petite maison blanche. (accord avec le nom qualifié)",
          },
          no: {
            type: "leaf",
            label: "Épithète — plusieurs noms coordonnés",
            rule: "L'adjectif se met au pluriel. Si les noms sont de genres différents, l'adjectif prend le masculin pluriel. On place de préférence le nom masculin le plus proche de l'adjectif.",
            example:
              "Une veste et un pantalon noirs. (fém. + masc. → « noirs », masc. plur.)",
          },
        },
      },
    },
    workedExample: {
      phrase: "Les robes bleu marine et les chemises blanches.",
      steps: [
        "Étape 1 — Identifier les adjectifs : « bleu marine » et « blanches ».",
        "Étape 2 — « bleu marine » : c'est un adjectif de couleur. Est-il simple ? Non, c'est un adjectif composé de deux mots (bleu + marine) → il reste invariable. On écrit « bleu marine » sans accord.",
        "Étape 3 — « blanches » : c'est un adjectif de couleur. Est-il simple et courant ? Oui, « blanc » est un adjectif de couleur simple → il s'accorde normalement.",
        "Étape 4 — Avec quel nom « blanches » s'accorde-t-il ? Avec « chemises » (fém. plur.) → « blanches » prend le féminin pluriel.",
        "Étape 5 — Vérification finale : « Les robes bleu marine » (invariable) et « les chemises blanches » (accord régulier). Les deux règles sont correctement appliquées.",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans « Des chaussures marron », l'adjectif « marron » devrait s'accorder au féminin pluriel : « marronnes ».",
        isCorrect: false,
        explanation:
          "FAUX. « Marron » est un nom employé comme adjectif de couleur. Il reste donc invariable : « des chaussures marron ». La forme *marronnes n'existe pas.",
      },
      {
        sentence:
          "L'adjectif attribut s'accorde avec le sujet du verbe d'état.",
        isCorrect: true,
        explanation:
          "VRAI. Quand l'adjectif est attribut (relié au sujet par un verbe d'état comme être, sembler, devenir…), il s'accorde en genre et en nombre avec le sujet. Ex. : « Les enfants semblent fatigués. »",
      },
      {
        sentence:
          "Dans « Une écharpe et un bonnet neufs », l'adjectif devrait être au féminin pluriel car « écharpe » est féminin.",
        isCorrect: false,
        explanation:
          "FAUX. Quand l'adjectif qualifie des noms de genres différents, il se met au masculin pluriel. « Neufs » (masc. plur.) est correct.",
      },
      {
        sentence:
          "Les adjectifs de couleur « rose » et « mauve » s'accordent, contrairement à « orange » et « marron ».",
        isCorrect: true,
        explanation:
          "VRAI. « Rose » et « mauve » (ainsi que « écarlate », « fauve », « pourpre ») sont des exceptions : bien qu'issus de noms, ils s'accordent comme des adjectifs ordinaires. « Orange » et « marron » restent invariables.",
      },
      {
        sentence:
          "Dans « Des yeux bleu clair », l'adjectif composé « bleu clair » est invariable.",
        isCorrect: true,
        explanation:
          "VRAI. Les adjectifs de couleur composés (deux mots ou plus) sont invariables. On écrit « des yeux bleu clair » sans accord, même si « bleu » seul s'accorderait (« des yeux bleus »).",
      },
    ],
  },
};

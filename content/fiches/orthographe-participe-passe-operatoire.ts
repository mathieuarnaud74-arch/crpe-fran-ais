import type { Fiche } from "@/features/fiches/types";

export const ppAccordOperatoire: Fiche = {
  id: "orthographe-participe-passe-operatoire",
  slug: "participe-passe-accord-arbre-decision",
  title: "Accorder le participe passé : arbre de décision",
  domaine: "orthographe",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "participe passé",
    "accord",
    "auxiliaire être",
    "auxiliaire avoir",
    "COD",
    "verbe pronominal",
  ],
  notionsLiees: [
    "orthographe-participe-passe-sprint",
    "orthographe-participe-passe-avoir-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Le participe passé est-il employé avec un auxiliaire ?",
    decisionTree: {
      type: "question",
      text: "Le participe passé est-il employé avec un auxiliaire ?",
      no: {
        type: "leaf",
        label: "PP employé comme adjectif",
        rule: "Le participe passé employé sans auxiliaire fonctionne comme un adjectif qualificatif : il s'accorde en genre et en nombre avec le nom qu'il qualifie.",
        example: "Les portes ouvertes laissaient entrer le vent.",
      },
      yes: {
        type: "question",
        text: "Quel auxiliaire est utilisé : ÊTRE ou AVOIR ?",
        yes: {
          type: "question",
          text: "L'auxiliaire est ÊTRE. Le verbe est-il pronominal (se + verbe) ?",
          yes: {
            type: "question",
            text: "Le pronom réfléchi (se) est-il COD du verbe ?",
            yes: {
              type: "leaf",
              label: "Pronominal avec pronom réfléchi COD",
              rule: "Le PP s'accorde avec le sujet (car le pronom réfléchi COD renvoie au sujet).",
              example: "Elles se sont lavées. (se = COD → accord avec « elles »)",
            },
            no: {
              type: "leaf",
              label: "Pronominal sans pronom réfléchi COD",
              rule: "Le PP reste invariable. Le pronom réfléchi est COI ou le verbe est essentiellement pronominal sans COD antéposé.",
              example:
                "Elles se sont parlé. (se = COI, « parler à quelqu'un » → pas d'accord)",
            },
          },
          no: {
            type: "leaf",
            label: "Auxiliaire ÊTRE (non pronominal)",
            rule: "Le PP employé avec ÊTRE s'accorde en genre et en nombre avec le sujet du verbe.",
            example:
              "Elle est partie tôt. (sujet fém. sing. → « partie »)",
          },
        },
        no: {
          type: "question",
          text: "L'auxiliaire est AVOIR. Y a-t-il un COD placé AVANT le verbe ?",
          yes: {
            type: "question",
            text: "Le COD antéposé est-il le pronom « en » ?",
            yes: {
              type: "leaf",
              label: "COD antéposé = pronom EN",
              rule: "Le PP reste invariable lorsque le COD antéposé est le pronom « en » (valeur partitive indéterminée).",
              example:
                "Des pommes, j'en ai mangé. (en = COD → invariable)",
            },
            no: {
              type: "leaf",
              label: "COD antéposé (autre que EN)",
              rule: "Le PP s'accorde en genre et en nombre avec le COD placé avant le verbe.",
              example:
                "La lettre que j'ai écrite était longue. (COD « que » = « la lettre », fém. sing. → « écrite »)",
            },
          },
          no: {
            type: "leaf",
            label: "Pas de COD avant le verbe",
            rule: "Le PP employé avec AVOIR reste invariable quand le COD est placé après le verbe ou quand il n'y a pas de COD.",
            example:
              "Elle a mangé des pommes. (COD « des pommes » après le verbe → invariable)",
          },
        },
      },
    },
    workedExample: {
      phrase: "Les fleurs qu'elle s'est offertes embaumaient le salon.",
      steps: [
        "Étape 1 — Identifier l'auxiliaire : « s'est offertes » utilise l'auxiliaire ÊTRE → c'est un verbe pronominal (s'offrir).",
        "Étape 2 — Vérifier si le verbe est pronominal : oui, « s'offrir » → on applique la règle des pronominaux.",
        "Étape 3 — Identifier la fonction du pronom réfléchi : « offrir quelque chose à quelqu'un ». Ici, « s' » = à elle-même → le pronom réfléchi est COI (pas COD).",
        "Étape 4 — Chercher un COD antéposé : « Les fleurs qu'elle s'est offertes » → « qu' » reprend « les fleurs » (fém. plur.), placé AVANT le verbe. C'est le COD.",
        "Étape 5 — Accorder avec le COD antéposé : « les fleurs » = féminin pluriel → « offertes ». L'accord se fait avec le COD antéposé, comme pour l'auxiliaire AVOIR.",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans « Les gâteaux que nous avons préparés », le PP s'accorde avec le sujet « nous ».",
        isCorrect: false,
        explanation:
          "FAUX. Avec l'auxiliaire AVOIR, le PP ne s'accorde jamais avec le sujet. Il s'accorde avec le COD antéposé « que » (= « les gâteaux », masc. plur.) → « préparés ».",
      },
      {
        sentence:
          "Dans « Elles se sont succédé à la tribune », le PP reste invariable.",
        isCorrect: true,
        explanation:
          "VRAI. « Succéder à quelqu'un » : le pronom réfléchi « se » est COI (succéder à soi). Pas de COD → le PP reste invariable.",
      },
      {
        sentence:
          "Dans « Des erreurs, il en a commises beaucoup », le PP s'accorde avec « erreurs ».",
        isCorrect: false,
        explanation:
          "FAUX. Lorsque le COD antéposé est le pronom « en », le PP reste traditionnellement invariable : « il en a commis ». L'accord avec « en » est toléré par certaines grammaires modernes, mais la règle classique prescrit l'invariabilité.",
      },
      {
        sentence:
          "Dans « La porte, fermée depuis des heures, a fini par céder », le PP « fermée » s'accorde car il est employé comme adjectif.",
        isCorrect: true,
        explanation:
          "VRAI. « Fermée » est un PP employé sans auxiliaire, en apposition. Il fonctionne comme un adjectif et s'accorde avec « la porte » (fém. sing.).",
      },
      {
        sentence:
          "Dans « Elles se sont rendu compte de leur erreur », le PP « rendu » devrait s'écrire « rendues ».",
        isCorrect: false,
        explanation:
          "FAUX. « Se rendre compte » est une locution figée. Le pronom « se » est COI (rendre compte à soi) et « compte » est COD placé après → le PP reste invariable : « rendu ».",
      },
    ],
    didacticNote:
      "Pour les élèves de cycle 3, commencer par les cas les plus fréquents (auxiliaire ÊTRE simple, puis AVOIR sans COD antéposé) avant d'introduire les cas complexes (pronominaux, pronom EN). La manipulation de phrases (déplacer le COD, changer le genre du sujet) aide à automatiser le raisonnement.",
  },
};

import type { Fiche } from "@/features/fiches/types";

export const manipulationsSyntaxiquesReference: Fiche = {
  id: "analyse-langue-manipulations-syntaxiques-reference",
  slug: "manipulations-syntaxiques-guide-reference",
  title: "Manipulations syntaxiques : guide de référence",
  domaine: "analyse_langue",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "manipulation",
    "déplacement",
    "suppression",
    "remplacement",
    "encadrement",
    "expansion",
  ],
  notionsLiees: [
    "grammaire-fonctions-sprint",
    "grammaire-nature-mots-sprint",
    "grammaire-phrase-simple-sprint",
  ],
  exercicesAssocies: ["analyse_manipulations_syntaxiques"],
  content: {
    model: "reference",
    intro:
      "Les manipulations syntaxiques sont des opérations que l'on effectue sur les constituants d'une phrase pour en révéler la structure : identifier la nature des mots, délimiter les groupes syntaxiques et déterminer leurs fonctions. Ces manipulations — déplacement, suppression, remplacement (ou commutation), encadrement et expansion (ou ajout) — constituent les outils fondamentaux de l'analyse grammaticale. Au CRPE, leur maîtrise est indispensable tant pour l'épreuve disciplinaire que pour la didactique de la grammaire à l'école primaire.",
    sections: [
      {
        id: "deplacement",
        title: "Le déplacement",
        badge: "Manipulation 1",
        blocks: [
          {
            kind: "rule",
            content:
              "Le déplacement consiste à changer la position d'un groupe de mots dans la phrase. Si le groupe est déplaçable (en général en tête de phrase), il est le plus souvent complément circonstanciel (CC). S'il est non déplaçable sans altérer le sens ou la grammaticalité, il est complément essentiel du verbe (COD, COI, attribut).",
            linguisticLogic:
              "La mobilité d'un constituant est un indice de son caractère facultatif et de sa fonction de complément de phrase (circonstanciel). Les compléments essentiels, liés au verbe, résistent au déplacement.",
          },
          {
            kind: "example",
            sentence:
              "Le chat dort dans le jardin. → Dans le jardin, le chat dort. ✓ (déplaçable = CC de lieu)",
            annotation: "Le déplacement en tête de phrase confirme la fonction de CC.",
          },
          {
            kind: "table",
            caption: "Ce que le déplacement permet de prouver",
            headers: ["Résultat du test", "Ce qu'on en déduit", "Exemple"],
            rows: [
              [
                "Le groupe est déplaçable en tête de phrase",
                "Complément circonstanciel (complément de phrase)",
                "Ce matin, il pleut. / Il pleut ce matin.",
              ],
              [
                "Le groupe n'est pas déplaçable",
                "Complément essentiel (COD, COI, attribut) ou sujet",
                "Il mange une pomme. → *Une pomme il mange. ✗",
              ],
            ],
          },
        ],
      },
      {
        id: "suppression",
        title: "La suppression (effacement)",
        badge: "Manipulation 2",
        blocks: [
          {
            kind: "rule",
            content:
              "La suppression consiste à retirer un groupe de mots de la phrase. Si la phrase reste grammaticalement correcte après suppression, le groupe est facultatif (complément circonstanciel, épithète, apposition). Si la phrase devient agrammaticale, le groupe est essentiel (sujet, COD, COI, attribut du sujet).",
            linguisticLogic:
              "Un constituant supprimable est un complément de phrase ou une expansion du nom. Un constituant non supprimable est requis par la structure argumentale du verbe ou par la construction syntaxique.",
          },
          {
            kind: "example",
            sentence:
              "Les élèves travaillent silencieusement dans la bibliothèque. → Les élèves travaillent. ✓ (« silencieusement » et « dans la bibliothèque » sont supprimables = CC)",
            annotation:
              "Les deux compléments sont facultatifs : leur suppression ne rend pas la phrase agrammaticale.",
          },
          {
            kind: "table",
            caption: "Ce que la suppression permet de prouver",
            headers: ["Résultat du test", "Ce qu'on en déduit", "Exemple"],
            rows: [
              [
                "Le groupe est supprimable",
                "Complément circonstanciel, épithète, apposition",
                "Le grand chat dort. → Le chat dort. ✓ (« grand » = épithète)",
              ],
              [
                "Le groupe n'est pas supprimable",
                "Sujet, COD, COI, attribut du sujet",
                "Pierre mange une pomme. → *Pierre mange. ✗ (si le verbe exige un COD)",
              ],
            ],
          },
        ],
      },
      {
        id: "remplacement",
        title: "Le remplacement (commutation)",
        badge: "Manipulation 3",
        blocks: [
          {
            kind: "rule",
            content:
              "Le remplacement (ou commutation) consiste à substituer un mot ou un groupe de mots par un autre de même catégorie grammaticale ou de même fonction. Cette manipulation permet d'identifier la nature d'un mot (remplacer par un mot de classe connue) ou sa fonction (remplacer un GN par un pronom pour confirmer qu'il est COD, COI, sujet…).",
            linguisticLogic:
              "Deux éléments commutables occupent le même paradigme : même position, même fonction. La pronominalisation est la forme la plus courante du remplacement.",
          },
          {
            kind: "example",
            sentence:
              "Le professeur corrige les copies. → Il les corrige. (« Le professeur » = sujet, remplacé par « il » ; « les copies » = COD, remplacé par « les »)",
            annotation:
              "La pronominalisation confirme les fonctions : sujet et COD.",
          },
          {
            kind: "table",
            caption: "Ce que le remplacement permet de prouver",
            headers: ["Type de remplacement", "Ce qu'on en déduit", "Exemple"],
            rows: [
              [
                "GN → pronom sujet (il, elle, ils…)",
                "Le groupe remplacé est sujet",
                "Mon frère part. → Il part.",
              ],
              [
                "GN → pronom COD (le, la, les)",
                "Le groupe remplacé est COD",
                "Je lis ce livre. → Je le lis.",
              ],
              [
                "GN → pronom COI (lui, leur, y, en)",
                "Le groupe remplacé est COI",
                "Je parle à Marie. → Je lui parle.",
              ],
              [
                "Mot → mot de même classe",
                "Confirmation de la nature grammaticale",
                "Cette maison est grande. → Cette maison est belle. (adjectif → adjectif)",
              ],
            ],
          },
        ],
      },
      {
        id: "encadrement",
        title: "L'encadrement",
        badge: "Manipulation 4",
        blocks: [
          {
            kind: "rule",
            content:
              "L'encadrement consiste à utiliser une structure syntaxique qui encadre un constituant pour en révéler la fonction. Les deux encadrements les plus courants sont : « C'est… qui » pour identifier le sujet, et « C'est… que » pour identifier un complément (COD, CC…). On parle aussi d'extraction ou de clivage.",
            linguisticLogic:
              "Le clivage isole un constituant en position focale. La structure « c'est… qui » ne peut encadrer que le sujet, ce qui en fait un test fiable.",
          },
          {
            kind: "example",
            sentence:
              "Les enfants jouent dans la cour. → C'est les enfants qui jouent dans la cour. (encadrement par « c'est… qui » → « les enfants » est sujet)",
            annotation:
              "L'encadrement par « c'est… qui » confirme la fonction sujet.",
          },
          {
            kind: "table",
            caption: "Ce que l'encadrement permet de prouver",
            headers: ["Structure d'encadrement", "Ce qu'on en déduit", "Exemple"],
            rows: [
              [
                "C'est… qui",
                "Le groupe encadré est sujet",
                "C'est Pierre qui a gagné.",
              ],
              [
                "C'est… que",
                "Le groupe encadré est complément (COD, CC…)",
                "C'est ce livre que je cherche. (COD)",
              ],
              [
                "Ne… pas (encadrement de la négation)",
                "Délimite le verbe (ou l'auxiliaire)",
                "Il ne mange pas. → « mange » est le verbe.",
              ],
            ],
          },
        ],
      },
      {
        id: "expansion",
        title: "L'expansion (ajout)",
        badge: "Manipulation 5",
        blocks: [
          {
            kind: "rule",
            content:
              "L'expansion consiste à ajouter un ou plusieurs mots à un groupe pour tester sa capacité à recevoir des expansions et ainsi confirmer sa nature. Un nom accepte des adjectifs, des compléments du nom, des relatives ; un verbe accepte des adverbes. Cette manipulation aide aussi à délimiter les frontières des groupes syntaxiques.",
            linguisticLogic:
              "La possibilité d'expansion est liée à la nature du noyau du groupe : un nom est expansible par un adjectif, un verbe par un adverbe. Ajouter un élément compatible confirme la nature du noyau.",
          },
          {
            kind: "example",
            sentence:
              "Le chat dort. → Le petit chat noir dort profondément. (« petit » et « noir » = expansions du nom « chat » ; « profondément » = expansion du verbe « dort »)",
            annotation:
              "L'ajout d'adjectifs confirme que « chat » est un nom ; l'ajout d'un adverbe confirme que « dort » est un verbe.",
          },
          {
            kind: "table",
            caption: "Ce que l'expansion permet de prouver",
            headers: ["Type d'ajout", "Ce qu'on en déduit", "Exemple"],
            rows: [
              [
                "Ajout d'un adjectif",
                "Le noyau est un nom",
                "La maison → La grande maison ancienne",
              ],
              [
                "Ajout d'un adverbe",
                "Le noyau est un verbe (ou un adjectif)",
                "Il court → Il court rapidement",
              ],
              [
                "Ajout d'un complément du nom",
                "Confirmation du groupe nominal",
                "Le livre → Le livre de grammaire",
              ],
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Les cinq manipulations syntaxiques sont : déplacement, suppression, remplacement (commutation), encadrement et expansion (ajout).",
      "Le déplacement identifie les compléments circonstanciels (déplaçables) et les distingue des compléments essentiels (non déplaçables).",
      "La suppression distingue les constituants facultatifs (CC, épithète, apposition) des constituants obligatoires (sujet, COD, attribut).",
      "Le remplacement (pronominalisation) confirme la fonction : « il » = sujet, « le/la/les » = COD, « lui/leur » = COI.",
      "L'encadrement par « c'est… qui » identifie le sujet ; « c'est… que » identifie un complément. L'expansion confirme la nature du noyau d'un groupe.",
    ],
    quiz: [
      {
        sentence:
          "Si un groupe de mots peut être déplacé en tête de phrase, il est très probablement complément circonstanciel.",
        isCorrect: true,
        explanation:
          "VRAI. La mobilité est une propriété caractéristique des compléments circonstanciels (compléments de phrase). Les compléments essentiels du verbe (COD, COI, attribut) ne sont généralement pas déplaçables.",
      },
      {
        sentence:
          "La suppression permet de distinguer un COD d'un complément circonstanciel : le COD est supprimable, le CC ne l'est pas.",
        isCorrect: false,
        explanation:
          "FAUX. C'est l'inverse : le complément circonstanciel est supprimable (facultatif), tandis que le COD est généralement non supprimable car il est essentiel à la construction du verbe.",
      },
      {
        sentence:
          "Pour prouver qu'un groupe est sujet, on peut l'encadrer par « c'est… qui ».",
        isCorrect: true,
        explanation:
          "VRAI. La structure clivée « c'est… qui » ne peut encadrer que le sujet : « C'est Pierre qui chante » confirme que « Pierre » est sujet de « chante ».",
      },
      {
        sentence:
          "Si on peut remplacer un groupe par le pronom « les », ce groupe est forcément COI.",
        isCorrect: false,
        explanation:
          "FAUX. Le pronom « les » remplace un COD (complément d'objet direct), pas un COI. Pour le COI, on utilise « lui », « leur », « y » ou « en » selon la préposition.",
      },
      {
        sentence:
          "L'expansion (ajout d'un adjectif, d'un adverbe…) permet de confirmer la nature du noyau d'un groupe syntaxique.",
        isCorrect: true,
        explanation:
          "VRAI. Si on peut ajouter un adjectif, le noyau est un nom (le chat → le petit chat). Si on peut ajouter un adverbe, le noyau est un verbe (il court → il court vite). L'expansion confirme la catégorie grammaticale.",
      },
    ],
  },
};

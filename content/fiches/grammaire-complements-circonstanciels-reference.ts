import type { Fiche } from "@/features/fiches/types";

export const grammaireComplementsCirconstancielsReference: Fiche = {
  id: "grammaire-complements-circonstanciels-reference",
  slug: "complements-circonstanciels-reference",
  title: "Les compléments circonstanciels",
  subtitle:
    "Identifier, classer et manipuler les compléments circonstanciels de temps, lieu, manière et cause",
  domaine: "grammaire",
  model: "reference",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "complément circonstanciel",
    "CC",
    "grammaire",
    "fonction",
    "suppression",
    "déplacement",
  ],
  notionsLiees: [
    "grammaire-fonctions-sprint",
    "grammaire-phrase-simple-sprint",
    "analyse-langue-manipulations-syntaxiques-reference",
  ],
  exercicesAssocies: ["tri_complements_circonstanciels", "anal_complements_circ"],
  content: {
    model: "reference",
    intro:
      "Les compléments circonstanciels (CC) sont des compléments de phrase qui apportent des informations sur les circonstances de l'action exprimée par le verbe. Selon la terminologie des programmes 2021 (Éduscol), on parle de « compléments de phrase » pour souligner qu'ils complètent la phrase entière et non le verbe seul. Leur propriété fondamentale : ils sont suppressibles et déplaçables, contrairement aux compléments du verbe (COD, COI).",
    sections: [
      {
        id: "cc-temps",
        title: "Le complément circonstanciel de temps",
        badge: "CC de temps",
        collapsible: false,
        blocks: [
          {
            kind: "rule",
            content:
              "Le CC de temps indique le moment, la durée ou la fréquence de l'action. Il répond aux questions « quand ? », « depuis quand ? », « pendant combien de temps ? », « à quelle fréquence ? ».",
            linguisticLogic:
              "Le CC de temps situe le procès sur l'axe temporel. Il se distingue du COI en ce qu'il est toujours supprimable et déplaçable.",
          },
          {
            kind: "example",
            sentence:
              "Chaque matin, les élèves lisent un chapitre du roman.",
            annotation:
              "« Chaque matin » est CC de temps. Test de suppression : « Les élèves lisent un chapitre du roman » reste grammatical. Test de déplacement : « Les élèves lisent un chapitre du roman chaque matin » est correct.",
          },
          {
            kind: "table",
            caption: "Formes du CC de temps",
            headers: ["Nature grammaticale", "Exemple"],
            rows: [
              ["Groupe nominal prépositionnel", "pendant les vacances"],
              ["Adverbe", "hier, souvent, parfois"],
              ["Proposition subordonnée conjonctive", "quand il pleut"],
              ["Groupe nominal sans préposition", "ce jour-là"],
              ["Gérondif", "en arrivant à l'école"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "CC de temps vs COI",
                explanation:
                  "Certains compléments introduits par « à » ou « de » peuvent être confondus avec un COI. Appliquer systématiquement le test de suppression : si la phrase reste grammaticale, c'est un CC.",
                correction:
                  "« Il pense à demain » → « Il pense » change le sens mais reste grammatical ? Non, « penser » nécessite un complément : c'est un COI. « Il partira à l'aube » → « Il partira » reste grammatical : c'est un CC.",
              },
            ],
          },
        ],
      },
      {
        id: "cc-lieu",
        title: "Le complément circonstanciel de lieu",
        badge: "CC de lieu",
        collapsible: false,
        blocks: [
          {
            kind: "rule",
            content:
              "Le CC de lieu indique l'endroit où se déroule l'action, la direction ou la provenance. Il répond aux questions « où ? », « d'où ? », « par où ? », « vers où ? ».",
            linguisticLogic:
              "Le CC de lieu localise le procès dans l'espace. Comme tout complément de phrase, il est supprimable et déplaçable.",
          },
          {
            kind: "example",
            sentence:
              "Dans la cour, les enfants jouent au ballon.",
            annotation:
              "« Dans la cour » est CC de lieu. Suppression : « Les enfants jouent au ballon » reste grammatical. Déplacement : « Les enfants jouent au ballon dans la cour » est correct.",
          },
          {
            kind: "table",
            caption: "Formes du CC de lieu",
            headers: ["Nature grammaticale", "Exemple"],
            rows: [
              ["Groupe nominal prépositionnel", "dans la classe, sur la table"],
              ["Adverbe", "ici, là-bas, partout, dehors"],
              ["Proposition subordonnée", "où il habite"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "CC de lieu vs complément essentiel de lieu",
                explanation:
                  "Avec certains verbes de mouvement ou de localisation (aller, habiter, se rendre), le complément de lieu est essentiel et non supprimable.",
                correction:
                  "« Il habite à Paris » → « *Il habite » est agrammatical : le complément est essentiel, pas un CC. En revanche, « Il lit à Paris » → « Il lit » est correct : c'est un CC de lieu.",
              },
            ],
          },
        ],
      },
      {
        id: "cc-maniere",
        title: "Le complément circonstanciel de manière",
        badge: "CC de manière",
        collapsible: false,
        blocks: [
          {
            kind: "rule",
            content:
              "Le CC de manière indique comment se déroule l'action. Il répond à la question « comment ? » ou « de quelle manière ? ».",
            linguisticLogic:
              "Le CC de manière caractérise la façon dont le procès se réalise. Il est souvent exprimé par un adverbe en -ment ou un groupe prépositionnel.",
          },
          {
            kind: "example",
            sentence:
              "L'élève a récité le poème avec assurance.",
            annotation:
              "« avec assurance » est CC de manière. Suppression : « L'élève a récité le poème » reste grammatical. On peut aussi le déplacer : « Avec assurance, l'élève a récité le poème ».",
          },
          {
            kind: "table",
            caption: "Formes du CC de manière",
            headers: ["Nature grammaticale", "Exemple"],
            rows: [
              ["Groupe nominal prépositionnel", "avec soin, sans bruit"],
              ["Adverbe", "lentement, soigneusement, bien"],
              ["Gérondif", "en chantant"],
              [
                "Proposition subordonnée",
                "comme le maître l'avait demandé",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "CC de manière vs attribut du sujet",
                explanation:
                  "Ne pas confondre un adjectif attribut avec un CC de manière. L'attribut caractérise le sujet via un verbe attributif, le CC de manière modifie le verbe d'action.",
                correction:
                  "« Elle semble calme » : « calme » est attribut du sujet (verbe attributif « sembler »). « Elle parle calmement » : « calmement » est CC de manière (verbe d'action « parler »).",
              },
            ],
          },
        ],
      },
      {
        id: "cc-cause",
        title: "Le complément circonstanciel de cause",
        badge: "CC de cause",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Le CC de cause indique la raison pour laquelle l'action se produit. Il répond à la question « pourquoi ? » ou « pour quelle raison ? ».",
            linguisticLogic:
              "Le CC de cause établit un lien logique de causalité. Il est souvent introduit par les prépositions « à cause de », « grâce à », « en raison de » ou les conjonctions « parce que », « puisque », « comme ».",
          },
          {
            kind: "example",
            sentence:
              "En raison de la pluie, la sortie scolaire a été annulée.",
            annotation:
              "« En raison de la pluie » est CC de cause. Suppression : « La sortie scolaire a été annulée » reste grammatical. Déplacement possible en fin de phrase.",
          },
          {
            kind: "table",
            caption: "Formes du CC de cause",
            headers: ["Nature grammaticale", "Exemple"],
            rows: [
              [
                "Groupe nominal prépositionnel",
                "à cause du bruit, grâce à son travail",
              ],
              [
                "Proposition subordonnée conjonctive",
                "parce qu'il était malade",
              ],
              ["Participe présent / passé", "épuisé, il s'est endormi"],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "CC de cause vs CC de conséquence",
                explanation:
                  "La cause précède logiquement l'action, la conséquence en découle. Le test : inverser la relation. « Il est resté parce qu'il pleuvait » (cause) vs « Il pleuvait si bien qu'il est resté » (conséquence).",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Les compléments circonstanciels (ou compléments de phrase, terminologie Éduscol 2021) sont suppressibles et déplaçables — c'est le double test fondamental.",
      "Les quatre CC les plus fréquents au CRPE sont : temps, lieu, manière et cause.",
      "Un CC peut être un groupe nominal prépositionnel, un adverbe, un gérondif ou une proposition subordonnée circonstancielle.",
      "Ne pas confondre CC de lieu avec un complément essentiel de lieu (verbes de mouvement/localisation : aller, habiter, se rendre).",
      "Attention aux compléments introduits par une préposition : appliquer systématiquement le test de suppression pour distinguer CC (complément de phrase) et complément du verbe (COD, COI).",
    ],
    quiz: [
      {
        sentence:
          "Un complément circonstanciel est toujours supprimable et déplaçable dans la phrase.",
        isCorrect: true,
        explanation:
          "C'est le critère définitoire du complément de phrase (CC) selon la grammaire scolaire : il peut être supprimé et déplacé sans rendre la phrase agrammaticale.",
      },
      {
        sentence:
          "Dans « Il habite à Lyon », « à Lyon » est un complément circonstanciel de lieu.",
        isCorrect: false,
        explanation:
          "« Habiter » nécessite un complément de lieu essentiel : « *Il habite » est agrammatical. « À Lyon » est ici un complément essentiel du verbe, pas un CC.",
      },
      {
        sentence:
          "Un adverbe comme « hier » ou « souvent » peut fonctionner comme complément circonstanciel de temps.",
        isCorrect: true,
        explanation:
          "Les adverbes de temps sont une réalisation fréquente du CC de temps. « Hier, il a plu » → « Hier » est CC de temps, suppressible et déplaçable.",
      },
      {
        sentence:
          "Le gérondif (en + participe présent) ne peut jamais être un complément circonstanciel.",
        isCorrect: false,
        explanation:
          "Le gérondif peut exprimer un CC de temps (« en arrivant »), de manière (« en chantant ») ou de cause (« en négligeant son travail »). C'est une forme fréquente du CC.",
      },
    ],
  },
};

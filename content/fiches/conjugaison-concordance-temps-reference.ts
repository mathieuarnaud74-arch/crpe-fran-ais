import type { Fiche } from "@/features/fiches/types";

export const concordanceTempsReference: Fiche = {
  id: "conjugaison-concordance-temps-reference",
  slug: "concordance-temps-guide-complet",
  title: "Concordance des temps : guide complet",
  domaine: "conjugaison",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "concordance des temps",
    "subordination",
    "discours rapporté",
    "système du présent",
    "système du passé",
    "subjonctif",
  ],
  notionsLiees: [
    "conjugaison-concordance-temps-sprint",
    "conjugaison-subjonctif-sprint",
    "conjugaison-conditionnel-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "La concordance des temps régit le rapport temporel entre le verbe de la proposition principale et celui de la subordonnée. Ce mécanisme, fondamental en français écrit, repose sur deux systèmes (présent et passé) et s'applique tant à l'indicatif qu'au subjonctif. Sa maîtrise est indispensable pour l'analyse de textes au CRPE et pour l'enseignement de la production écrite.",
    sections: [
      {
        id: "principe",
        title: "Le principe de concordance",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "rule",
            content:
              "La concordance des temps est la correspondance obligatoire entre le temps du verbe de la principale et celui du verbe de la subordonnée. Le verbe de la principale détermine le système temporel (présent ou passé) dans lequel s'inscrit la subordonnée.",
            linguisticLogic:
              "Le verbe principal fonctionne comme un point de repère temporel (T₀). L'action de la subordonnée se situe par rapport à ce repère : antériorité, simultanéité ou postériorité.",
          },
          {
            kind: "example",
            sentence:
              "Je sais qu'il viendra. (principale au présent → subordonnée au futur = postériorité)",
            annotation: "Système du présent — postériorité",
          },
          {
            kind: "example",
            sentence:
              "Je savais qu'il viendrait. (principale au passé → subordonnée au conditionnel présent = postériorité dans le passé)",
            annotation: "Système du passé — postériorité",
          },
        ],
      },
      {
        id: "systeme-present",
        title: "Système du présent",
        badge: "Indicatif",
        blocks: [
          {
            kind: "rule",
            content:
              "Quand le verbe de la principale est au présent, au futur ou au passé composé à valeur de bilan, la subordonnée utilise le système du présent. Les trois rapports temporels sont exprimés librement.",
          },
          {
            kind: "table",
            caption:
              "Concordance dans le système du présent (principale au présent)",
            headers: ["Rapport temporel", "Temps de la subordonnée", "Exemple"],
            rows: [
              [
                "Antériorité",
                "Passé composé / imparfait / plus-que-parfait",
                "Je sais qu'il est parti hier.",
              ],
              [
                "Simultanéité",
                "Présent",
                "Je sais qu'il travaille en ce moment.",
              ],
              [
                "Postériorité",
                "Futur simple / futur antérieur",
                "Je sais qu'il viendra demain.",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Dans le système du présent, la subordonnée peut utiliser presque tous les temps de l'indicatif. La concordance y est plus souple que dans le système du passé.",
          },
        ],
      },
      {
        id: "systeme-passe",
        title: "Système du passé",
        badge: "Indicatif",
        blocks: [
          {
            kind: "rule",
            content:
              "Quand le verbe de la principale est à un temps du passé (imparfait, passé simple, plus-que-parfait, passé antérieur), la subordonnée transpose les temps : le présent devient imparfait, le futur devient conditionnel présent, le passé composé devient plus-que-parfait.",
            watchout:
              "Le conditionnel présent dans une subordonnée après un passé n'exprime pas une condition — c'est un futur dans le passé.",
          },
          {
            kind: "table",
            caption:
              "Concordance dans le système du passé (principale au passé)",
            headers: ["Rapport temporel", "Temps de la subordonnée", "Exemple"],
            rows: [
              [
                "Antériorité",
                "Plus-que-parfait / passé antérieur",
                "Je savais qu'il était parti la veille.",
              ],
              [
                "Simultanéité",
                "Imparfait",
                "Je savais qu'il travaillait à ce moment-là.",
              ],
              [
                "Postériorité",
                "Conditionnel présent (futur dans le passé)",
                "Je savais qu'il viendrait le lendemain.",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "Il annonça qu'il partirait à l'aube et qu'il aurait terminé avant midi.",
            annotation:
              "Postériorité (conditionnel présent) + antériorité par rapport à la postériorité (conditionnel passé)",
          },
        ],
      },
      {
        id: "discours-rapporte",
        title: "Le discours rapporté",
        badge: "Transformation",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Le passage du discours direct au discours indirect impose la concordance des temps lorsque le verbe introducteur est au passé. Les déictiques temporels sont également transposés (aujourd'hui → ce jour-là, demain → le lendemain, hier → la veille).",
          },
          {
            kind: "table",
            caption: "Transpositions direct → indirect (verbe introducteur au passé)",
            headers: ["Discours direct", "Discours indirect", "Transposition"],
            rows: [
              [
                "« Je pars. »",
                "Il a dit qu'il partait.",
                "Présent → imparfait",
              ],
              [
                "« J'ai fini. »",
                "Il a dit qu'il avait fini.",
                "Passé composé → plus-que-parfait",
              ],
              [
                "« Je partirai. »",
                "Il a dit qu'il partirait.",
                "Futur → conditionnel présent",
              ],
              [
                "« J'aurai fini. »",
                "Il a dit qu'il aurait fini.",
                "Futur antérieur → conditionnel passé",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Imparfait au discours direct",
                explanation:
                  "Un imparfait au discours direct reste un imparfait au discours indirect : « Je dormais » → Il dit qu'il dormait. Pas de double transposition.",
              },
              {
                label: "Verbe introducteur au présent",
                explanation:
                  "Si le verbe introducteur est au présent, il n'y a pas de transposition temporelle : Il dit qu'il part / qu'il partira.",
              },
            ],
          },
        ],
      },
      {
        id: "cas-particuliers",
        title: "Cas particuliers",
        badge: "Approfondissement",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Trois exceptions majeures à la concordance mécanique : la vérité générale, le futur dans le passé avec valeur modale, et le subjonctif après un verbe au passé.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Vérité générale",
                explanation:
                  "Une vérité permanente reste au présent même après un passé : « Le professeur expliqua que la Terre tourne autour du Soleil. » Le présent de vérité générale échappe à la concordance.",
                correction: "Ne pas transposer au passé une vérité scientifique ou universelle.",
              },
              {
                label: "Conditionnel à valeur modale",
                explanation:
                  "Le conditionnel peut exprimer une hypothèse ou une atténuation, pas seulement un futur dans le passé : « Il pensait qu'il pourrait réussir » (futur dans le passé) ≠ « Il pense qu'il pourrait réussir » (hypothèse).",
              },
              {
                label: "Subjonctif après un passé",
                explanation:
                  "En français contemporain, le subjonctif présent est utilisé même après un passé : « Il voulait qu'elle vienne » (et non « qu'elle vînt »). Le subjonctif imparfait est réservé à la langue littéraire soutenue.",
                correction:
                  "Au CRPE, savoir que le subjonctif imparfait existe (langue littéraire) mais que l'usage courant emploie le subjonctif présent après un passé.",
              },
            ],
          },
          {
            kind: "example",
            sentence:
              "Galilée affirma que la Terre tournait autour du Soleil.",
            annotation:
              "Concordance appliquée mécaniquement (imparfait). Acceptable, mais « tourne » (présent de vérité générale) est également correct.",
            isCorrect: true,
          },
          {
            kind: "example",
            sentence:
              "Il exigea qu'elle vînt sur-le-champ.",
            annotation:
              "Subjonctif imparfait — langue littéraire soutenue. En usage courant : « qu'elle vienne ».",
            isCorrect: true,
          },
        ],
      },
    ],
    keyPoints: [
      "La concordance repose sur deux systèmes : système du présent (principale au présent/futur) et système du passé (principale au passé).",
      "Dans le système du passé : présent → imparfait, futur → conditionnel présent, passé composé → plus-que-parfait.",
      "Le discours indirect au passé impose la concordance ET la transposition des déictiques temporels.",
      "La vérité générale échappe à la concordance : le présent est maintenu même après un passé.",
      "Le subjonctif imparfait (concordance stricte) est limité à la langue littéraire ; l'usage courant emploie le subjonctif présent après un passé.",
    ],
    quiz: [
      {
        sentence:
          "Dans « Il savait qu'elle viendrait », le conditionnel présent exprime un futur dans le passé, pas une condition.",
        isCorrect: true,
        explanation:
          "VRAI. « Viendrait » est la transposition du futur « viendra » dans le système du passé. C'est un futur dans le passé, pas un conditionnel hypothétique.",
      },
      {
        sentence:
          "Après un verbe introducteur au passé, le présent du discours direct reste toujours au présent au discours indirect.",
        isCorrect: false,
        explanation:
          "FAUX. Le présent du discours direct se transpose en imparfait au discours indirect quand le verbe introducteur est au passé : « Je pars » → Il dit qu'il partait.",
      },
      {
        sentence:
          "« Le professeur rappela que deux et deux font quatre » est incorrect car il faudrait écrire « faisaient ».",
        isCorrect: false,
        explanation:
          "FAUX. « Deux et deux font quatre » est une vérité générale. Le présent est maintenu malgré le passé de la principale. La concordance ne s'applique pas aux vérités permanentes.",
      },
      {
        sentence:
          "Dans le système du passé, le passé composé du discours direct se transpose en plus-que-parfait.",
        isCorrect: true,
        explanation:
          "VRAI. « J'ai fini » (passé composé) → « Il dit qu'il avait fini » (plus-que-parfait). Le plus-que-parfait exprime l'antériorité par rapport au repère passé.",
      },
      {
        sentence:
          "La phrase « Il voulait qu'elle vienne » est incorrecte : il faudrait écrire « qu'elle vînt ».",
        isCorrect: false,
        explanation:
          "FAUX. En français contemporain, le subjonctif présent après un passé est la norme : « qu'elle vienne ». Le subjonctif imparfait (« vînt ») est réservé à la langue littéraire très soutenue et n'est plus exigé.",
      },
      {
        sentence:
          "Si le verbe introducteur est au présent, la concordance n'impose aucune transposition dans la subordonnée.",
        isCorrect: true,
        explanation:
          "VRAI. Dans le système du présent, la subordonnée utilise librement les temps selon le rapport temporel voulu : présent, passé composé, futur, etc. sans transposition obligatoire.",
      },
      {
        sentence:
          "Le futur antérieur du discours direct se transpose en conditionnel passé au discours indirect après un passé.",
        isCorrect: true,
        explanation:
          "VRAI. « J'aurai terminé » → « Il dit qu'il aurait terminé ». Le conditionnel passé exprime l'antériorité par rapport au futur dans le passé.",
      },
      {
        sentence:
          "« Demain » au discours direct reste « demain » au discours indirect, seul le temps verbal change.",
        isCorrect: false,
        explanation:
          "FAUX. Les déictiques temporels sont également transposés : « demain » → « le lendemain », « hier » → « la veille », « aujourd'hui » → « ce jour-là ».",
      },
    ],
  },
};

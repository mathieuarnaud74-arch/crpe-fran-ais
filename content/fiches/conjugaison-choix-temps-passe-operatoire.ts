import type { Fiche } from "@/features/fiches/types";

export const choixTempsPasseOperatoire: Fiche = {
  id: "conjugaison-choix-temps-passe-operatoire",
  slug: "choix-temps-passe-arbre-decision",
  title: "Choisir le bon temps du passé : arbre de décision",
  domaine: "conjugaison",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "temps du passé",
    "imparfait",
    "passé composé",
    "passé simple",
    "plus-que-parfait",
    "conjugaison",
  ],
  notionsLiees: [],
  exercicesAssocies: ["conj_imparfait_passe_simple", "conj_valeurs_temps"],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel temps du passé utiliser pour exprimer cette action ?",
    decisionTree: {
      type: "question",
      text: "L'action est-elle achevée (bornée, ponctuelle) ou en cours (non bornée, habituelle, descriptive) dans le passé ?",
      no: {
        type: "leaf",
        label: "Imparfait",
        rule: "L'imparfait exprime une action en cours, non délimitée dans le temps : description, habitude, arrière-plan du récit, action en train de se dérouler quand une autre survient.",
        example:
          "Le soleil brillait et les oiseaux chantaient. (description, arrière-plan)",
      },
      yes: {
        type: "question",
        text: "L'action achevée est-elle antérieure à une autre action passée ?",
        yes: {
          type: "leaf",
          label: "Plus-que-parfait",
          rule: "Le plus-que-parfait exprime une action achevée qui s'est produite avant une autre action passée. Il marque l'antériorité dans le passé.",
          example:
            "Quand Marie arriva, Pierre avait déjà mangé. (« avait mangé » est antérieur à « arriva »)",
        },
        no: {
          type: "question",
          text: "Le récit est-il littéraire (conte, roman, récit historique) ou courant (oral, échange quotidien, presse) ?",
          yes: {
            type: "leaf",
            label: "Passé simple",
            rule: "Le passé simple exprime une action achevée, ponctuelle ou délimitée, dans un récit littéraire ou soutenu. C'est le temps de premier plan du récit écrit.",
            example:
              "Le prince franchit la muraille et délivra la princesse. (actions de premier plan, récit littéraire)",
          },
          no: {
            type: "leaf",
            label: "Passé composé",
            rule: "Le passé composé exprime une action achevée dans un contexte courant (oral, presse, correspondance). Il peut aussi exprimer un résultat présent d'une action passée.",
            example:
              "J'ai terminé mes devoirs. (action achevée, registre courant)",
          },
        },
      },
    },
    workedExample: {
      phrase: "Quand Marie arriva, Pierre avait déjà mangé.",
      steps: [
        "Étape 1 — Identifier les actions passées : deux actions sont évoquées — l'arrivée de Marie et le repas de Pierre.",
        "Étape 2 — « arriva » : l'action est-elle achevée ? Oui, l'arrivée est ponctuelle et terminée. Est-elle antérieure à une autre action passée ? Non, c'est le repère temporel principal. Le récit est-il littéraire ? Oui (narration au passé simple) → Passé simple.",
        "Étape 3 — « avait mangé » : l'action est-elle achevée ? Oui, le repas est terminé. Est-elle antérieure à une autre action passée ? Oui, Pierre a mangé AVANT que Marie n'arrive → Plus-que-parfait.",
        "Étape 4 — Vérification : le plus-que-parfait (« avait mangé ») marque bien l'antériorité par rapport au passé simple (« arriva »). La chronologie est cohérente.",
        "Étape 5 — Synthèse : passé simple pour l'événement de premier plan, plus-que-parfait pour l'action antérieure. L'imparfait n'est pas utilisé ici car aucune action n'est présentée comme en cours ou descriptive.",
      ],
    },
    quiz: [
      {
        sentence:
          "L'imparfait s'utilise pour exprimer une action ponctuelle et achevée dans le passé.",
        isCorrect: false,
        explanation:
          "FAUX. L'imparfait exprime une action en cours, non bornée, habituelle ou descriptive. Pour une action ponctuelle et achevée, on utilise le passé simple (récit littéraire) ou le passé composé (registre courant).",
      },
      {
        sentence:
          "Le plus-que-parfait exprime une action qui s'est produite avant une autre action passée.",
        isCorrect: true,
        explanation:
          "VRAI. Le plus-que-parfait marque l'antériorité dans le passé : il situe une action achevée avant un autre repère temporel passé. Ex. : « Il avait fini quand je suis arrivé. »",
      },
      {
        sentence:
          "Dans un récit au présent de narration, on peut utiliser le passé composé pour exprimer l'antériorité.",
        isCorrect: true,
        explanation:
          "VRAI. Quand le récit est au présent, le passé composé joue le rôle d'antériorité (comme le plus-que-parfait par rapport au passé). Ex. : « Il sort de la maison. Il a oublié son manteau. »",
      },
      {
        sentence:
          "Le passé simple et le passé composé expriment exactement la même chose et sont toujours interchangeables.",
        isCorrect: false,
        explanation:
          "FAUX. Le passé simple appartient au registre littéraire (récit écrit soutenu) tandis que le passé composé relève du registre courant (oral, presse). Ils expriment tous deux une action achevée, mais dans des contextes différents. Le passé composé peut aussi exprimer un lien avec le présent.",
      },
      {
        sentence:
          "Dans « Pendant qu'il dormait, le téléphone sonna », l'imparfait exprime l'arrière-plan et le passé simple l'événement de premier plan.",
        isCorrect: true,
        explanation:
          "VRAI. L'imparfait (« dormait ») présente l'action en cours, l'arrière-plan. Le passé simple (« sonna ») introduit l'événement ponctuel qui survient au premier plan. C'est la combinaison classique du récit au passé.",
      },
    ],
  },
};

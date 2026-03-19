import type { Fiche } from "@/features/fiches/types";

export const analyseLangueComplementsCirconstancielsSprint: Fiche = {
  id: "analyse-langue-complements-circonstanciels-sprint",
  slug: "complements-circonstanciels-sprint",
  title: "Complements circonstanciels : identifier et distinguer",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "complement circonstanciel",
    "mobilite",
    "suppressibilite",
    "complement essentiel",
    "valence verbale",
    "temps",
    "lieu",
  ],
  notionsLiees: ["fonctions-grammaticales-sprint", "phrase-simple-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche donne les tests les plus rentables pour le CRPE. Ils fonctionnent dans la majorite des cas, mais doivent toujours etre verifies par le sens du verbe et par la construction de la phrase.",
    oneLiner:
      "Un complement circonstanciel precise les circonstances de l'action (temps, lieu, maniere, cause, but...) sans etre impose par la valence du verbe. Les tests utiles sont la mobilite et la suppressibilite ; a l'inverse, un complement essentiel est etroitement commande par le verbe et supporte mal la suppression ou certains deplacements.",
    exampleCorrect: {
      sentence: "\"Demain, les candidats reliront leur synthese dans le calme.\"",
      explanation:
        "\"Demain\" est un complement circonstanciel de temps : on peut le deplacer ou le supprimer. \"dans le calme\" est un complement circonstanciel de maniere. Aucun des deux groupes n'est necessaire pour que le verbe \"reliront\" reste syntaxiquement complet.",
    },
    exampleWrong: {
      sentence: "Dans \"Il va a la bibliotheque\", \"a la bibliotheque\" est forcement un complement circonstanciel parce qu'il indique un lieu.",
      explanation:
        "FAUX. Le sens de lieu ne suffit pas. Avec certains verbes comme \"aller\", le groupe de lieu est essentiel a la construction verbale : *\"Il va\" est incomplet dans cet emploi. Il faut donc distinguer valeur semantique (lieu) et statut syntaxique (essentiel ou circonstanciel).",
    },
    mainTrap:
      "Le piege le plus frequent est de confondre \"ce qui exprime une circonstance\" et \"ce qui est circonstanciel en syntaxe\". Un groupe peut exprimer le lieu ou le temps tout en etant essentiel, parce que le verbe l'exige. Les complements circonstanciels ne se reconnaissent pas seulement par leur sens, mais par leur degre d'autonomie dans la phrase.",
    quiz: [
      {
        sentence:
          "Dans \"Le matin, elle revise\", le groupe \"Le matin\" est bien circonstanciel.",
        isCorrect: true,
        explanation:
          "On peut dire \"Elle revise le matin\" ou simplement \"Elle revise\". Le groupe est mobile et supprimable : c'est un complement circonstanciel de temps.",
      },
      {
        sentence:
          "Le fait qu'un groupe reponde a la question \"ou ?\" suffit a prouver qu'il est circonstanciel.",
        isCorrect: false,
        explanation:
          "FAUX. Avec des verbes comme \"aller\", \"venir\", \"habiter\" ou \"mettre\" dans certains emplois, un groupe de lieu peut etre essentiel. Il faut tester la construction du verbe, pas seulement la question semantique.",
      },
      {
        sentence:
          "Dans \"Elle parle avec assurance\", le groupe \"avec assurance\" peut etre analyse comme complement circonstanciel de maniere.",
        isCorrect: true,
        explanation:
          "Le groupe precise la maniere de parler et peut etre deplace ou supprime sans casser la structure de base : \"Elle parle.\" Il a donc un fonctionnement circonstanciel.",
      },
      {
        sentence:
          "Un complement essentiel est toujours impossible a deplacer, sans aucune exception.",
        isCorrect: false,
        explanation:
          "FAUX. Les tests de mobilite et de suppressibilite sont tres utiles, mais ils ne doivent pas etre transformes en regles absolues. Certains complements essentiels acceptent des deplacements marques ; c'est l'ensemble des indices syntaxiques qu'il faut croiser.",
      },
      {
        sentence:
          "Dans \"Le professeur met les copies sur la table\", le groupe \"sur la table\" est plutot essentiel que purement circonstanciel.",
        isCorrect: true,
        explanation:
          "Avec le verbe \"mettre\", le lieu d'arrivee fait partie de la construction attendue : *\"Le professeur met les copies\" reste incomplet si le contexte n'est pas deja donne. C'est un bon exemple de groupe de lieu a valeur syntaxique essentielle.",
      },
    ],
  },
};

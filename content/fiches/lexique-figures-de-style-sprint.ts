import type { Fiche } from "@/features/fiches/types";

export const figuresDeStyleSprint: Fiche = {
  id: "lexique-figures-de-style-sprint",
  slug: "figures-de-style-sprint",
  title: "Figures de style essentielles",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["figures de style", "métaphore", "comparaison", "métonymie", "hyperbole", "anaphore"],
  notionsLiees: ["formation-des-mots-sprint"],
  exercicesAssocies: ["lex_figures_de_style", "lex_figures_style"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre les figures les plus fréquentes au CRPE. Elle ne prétend pas à l'exhaustivité — l'objectif est de distinguer les figures les plus confondues.",
    oneLiner:
      "Une figure de style produit un écart expressif par rapport à l'usage ordinaire. Les figures de substitution (métaphore, métonymie) remplacent un terme par un autre ; les figures d'analogie (comparaison, allégorie) rapprochent deux réalités ; les figures d'amplification (hyperbole, anaphore, gradation) insistent. La différence comparaison / métaphore est structurelle : la comparaison conserve l'outil comparatif (comme, tel), la métaphore le supprime.",
    exampleCorrect: {
      sentence: "« Il a un cœur de pierre. » → métaphore.",
      explanation:
        "Pas d'outil comparatif (comme, tel…) : le cœur est directement assimilé à la pierre. C'est une métaphore in absentia (le terme comparant seul est présent).",
    },
    exampleWrong: {
      sentence: "« Il est courageux comme un lion. » → métaphore.",
      explanation:
        "FAUX. La présence de l'outil comparatif « comme » en fait une comparaison, non une métaphore.",
    },
    mainTrap:
      "Métaphore vs métonymie : la métaphore crée une ressemblance (le cœur = pierre, par analogie), la métonymie établit une contiguïté réelle (la partie pour le tout, le contenant pour le contenu, le créateur pour l'œuvre). « Boire un verre » → métonymie (le contenant pour le contenu). « Avoir les nerfs à vif » → métaphore (analogie sensorielle). Au CRPE, la confusion la plus sanctionnée est métaphore / comparaison : retenir que la comparaison a toujours un outil explicite.",
    quiz: [
      {
        sentence:
          "« Elle dévore les livres » est une hyperbole.",
        isCorrect: false,
        explanation:
          "C'est une métaphore : dévorer (manger avec voracité) est transposé à la lecture. Il n'y a pas d'exagération chiffrée ou excessive caractéristique de l'hyperbole.",
      },
      {
        sentence:
          "Dans « Paris a décidé de lever le confinement », Paris est une métonymie.",
        isCorrect: true,
        explanation:
          "Le lieu (Paris = le gouvernement français) désigne par contiguïté l'institution qui s'y trouve. C'est une métonymie de lieu pour institution.",
      },
      {
        sentence:
          "« Je t'ai dit mille fois de ranger ta chambre » est une hyperbole.",
        isCorrect: true,
        explanation:
          "Exagération manifeste (mille fois) à visée expressive, sans intention littérale. Caractéristique de l'hyperbole.",
      },
      {
        sentence:
          "« Partir, c'est mourir un peu » est une comparaison.",
        isCorrect: false,
        explanation:
          "Pas d'outil comparatif : partir est identifié à mourir (verbe être). C'est une métaphore (en structure d'équation prédicative).",
      },
      {
        sentence:
          "La répétition du même mot en début de plusieurs phrases successives s'appelle une anaphore.",
        isCorrect: true,
        explanation:
          "L'anaphore est la répétition d'un mot ou groupe de mots en tête de propositions ou vers successifs (ex. : « Je veux la paix. Je veux la justice. Je veux… »).",
      },
    ],
  },
};

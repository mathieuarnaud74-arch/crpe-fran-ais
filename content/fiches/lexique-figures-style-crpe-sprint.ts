import type { Fiche } from "@/features/fiches/types";

export const lexiqueFiguresStyleCrpeSprint: Fiche = {
  id: "lexique-figures-style-crpe-sprint",
  slug: "figures-style-crpe-sprint",
  title: "Les figures de style au CRPE",
  subtitle:
    "Métaphore, comparaison, personnification et les autres figures incontournables",
  domaine: "lexique",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "figure de style",
    "métaphore",
    "comparaison",
    "personnification",
    "hyperbole",
    "litote",
    "anaphore",
    "antithèse",
    "oxymore",
    "euphémisme",
    "métonymie",
  ],
  notionsLiees: [
    "lexique-figures-style-reference",
    "lexique-figures-de-style-sprint",
    "lexique-denotation-connotation-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sprint présente les 10 figures de style les plus fréquentes au CRPE. Pour une étude complète avec davantage d'exemples et de nuances, consultez la fiche de référence.",
    oneLiner:
      "Une figure de style est un procédé d'écriture qui s'écarte de l'usage ordinaire de la langue pour produire un effet expressif — le CRPE évalue la capacité à les identifier, les nommer et analyser leur effet dans un texte.",
    exampleCorrect: {
      sentence:
        "« La terre est bleue comme une orange » (Éluard) est une comparaison, identifiable grâce à l'outil de comparaison « comme » qui relie le comparé (« la terre ») au comparant (« une orange »).",
      explanation:
        "La comparaison se distingue de la métaphore par la présence explicite d'un outil de comparaison (comme, tel, semblable à, pareil à, ainsi que). Sans cet outil, on parlerait de métaphore.",
    },
    exampleWrong: {
      sentence:
        "« La terre est bleue comme une orange » est une métaphore parce qu'elle rapproche deux réalités différentes.",
      explanation:
        "Le rapprochement de deux réalités est commun à la comparaison et à la métaphore. Le critère distinctif est la présence ou l'absence de l'outil de comparaison. Ici, « comme » est présent : c'est donc une comparaison, non une métaphore.",
    },
    mainTrap:
      "La confusion la plus fréquente au CRPE est entre comparaison et métaphore. Règle absolue : la comparaison comporte un outil explicite (comme, tel que, semblable à…), la métaphore opère le rapprochement sans outil. Autre piège courant : confondre litote et euphémisme — la litote dit le moins pour signifier le plus (« Ce n'est pas mauvais » = c'est excellent), tandis que l'euphémisme atténue une réalité désagréable (« Il nous a quittés » pour « Il est mort »).",
    quiz: [
      {
        sentence:
          "Dans « Cet homme est un lion », la figure de style est une métaphore car il n'y a pas d'outil de comparaison explicite.",
        isCorrect: true,
        explanation:
          "Le rapprochement entre « cet homme » et « un lion » se fait directement, sans mot-outil (comme, tel…). C'est bien une métaphore, qui assimile le comparé au comparant de façon implicite.",
      },
      {
        sentence:
          "La personnification consiste à attribuer des caractéristiques humaines à un objet, un animal ou une idée abstraite.",
        isCorrect: true,
        explanation:
          "« La mer en colère grondait » attribue un sentiment (colère) et une action humaine (gronder) à un élément naturel. C'est bien la définition de la personnification.",
      },
      {
        sentence:
          "L'oxymore associe deux termes de sens voisin pour créer un effet de redondance.",
        isCorrect: false,
        explanation:
          "L'oxymore associe deux termes de sens opposé au sein d'un même groupe syntaxique : « une obscure clarté » (Corneille), « un silence assourdissant ». C'est le contraire d'une redondance : c'est une alliance de mots contradictoires.",
      },
      {
        sentence:
          "L'anaphore est la répétition d'un même mot ou groupe de mots en début de phrases ou de vers successifs.",
        isCorrect: true,
        explanation:
          "« Moi, président de la République… Moi, président de la République… » illustre l'anaphore. La figure crée un effet d'insistance et de rythme. Ne pas confondre avec la répétition simple (non positionnée en début).",
      },
      {
        sentence:
          "La litote et l'euphémisme produisent exactement le même effet : ils atténuent l'expression d'une idée.",
        isCorrect: false,
        explanation:
          "Leurs mécanismes diffèrent. La litote dit le moins pour faire entendre le plus (« Va, je ne te hais point » = je t'aime, Corneille). L'euphémisme atténue une réalité jugée trop crue ou blessante (« les non-voyants » pour « les aveugles »). La litote amplifie, l'euphémisme adoucit.",
      },
      {
        sentence:
          "La métonymie remplace un mot par un autre ayant un lien logique avec lui (contenant/contenu, lieu/institution, auteur/œuvre).",
        isCorrect: true,
        explanation:
          "« Boire un verre » (contenant pour le contenu), « L'Élysée a déclaré » (lieu pour l'institution/la personne), « Lire un Molière » (auteur pour l'œuvre) sont des métonymies. Le lien est de contiguïté, contrairement à la métaphore qui repose sur l'analogie.",
      },
    ],
    linkToReference: "lexique-figures-style-reference",
  },
};

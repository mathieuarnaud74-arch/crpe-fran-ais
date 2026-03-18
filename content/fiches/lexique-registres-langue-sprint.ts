import type { Fiche } from "@/features/fiches/types";

export const registresLangueSprint: Fiche = {
  id: "lexique-registres-langue-sprint",
  slug: "registres-langue-sprint",
  title: "Registres et niveaux de langue",
  subtitle: "Révision express — 5 min",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["registre de langue", "niveau de langue", "soutenu", "familier", "communication"],
  notionsLiees: ["champs-lexicaux-sprint", "figures-de-style-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche distingue deux notions souvent amalgamées au CRPE : les niveaux de langue (sociaux) et les registres littéraires (stylistiques). Maîtriser cette distinction est indispensable pour analyser un texte et répondre aux questions de didactique.",
    oneLiner:
      "On distingue trois niveaux de langue (soutenu, courant, familier) et des registres littéraires (comique, tragique, lyrique…). Ne pas confondre les deux : le niveau de langue est une adaptation sociale du discours à la situation de communication ; le registre est un effet stylistique global produit par un texte littéraire.",
    exampleCorrect: {
      sentence:
        "« Je ne suis point en mesure d'acquiescer à votre requête. » → niveau soutenu.",
      explanation:
        "Trois indices convergents : lexique recherché (acquiescer, requête), négation bipartite avec « point » (archaïsant), absence de contraction syntaxique. Ce niveau soutenu convient à un écrit formel ou littéraire mais serait inapproprié dans un échange oral courant.",
    },
    exampleWrong: {
      sentence:
        "Ce texte est écrit dans un registre familier parce qu'il est comique.",
      explanation:
        "FAUX. Le registre comique (effet de rire produit par un texte) n'implique pas le niveau familier. Molière use d'un registre comique avec un niveau de langue souvent soutenu. Comique est un registre littéraire ; familier est un niveau de langue — ce sont deux axes indépendants.",
    },
    mainTrap:
      "Confondre « registre » (effet stylistique d'un texte : tragique, comique, lyrique, épique, satirique, pathétique) et « niveau de langue » (adaptation sociale du discours : soutenu, courant, familier). Un texte peut être lyrique (registre) tout en étant courant (niveau). Au CRPE, la question « Quel registre ? » attend tragique/comique/lyrique… — jamais « familier ».",
    quiz: [
      {
        sentence:
          "« T'as vu le truc qu'il a fait ? C'était trop bien ! » relève du niveau de langue familier.",
        isCorrect: true,
        explanation:
          "Trois marqueurs du niveau familier : élision de « tu as » en « t'as », substantif vague (truc), intensif argotique (trop bien). Ce niveau est acceptable à l'oral informel mais inadapté à l'écrit scolaire.",
      },
      {
        sentence:
          "Le registre tragique d'un texte implique nécessairement un niveau de langue soutenu.",
        isCorrect: false,
        explanation:
          "FAUX. Registre et niveau de langue sont indépendants. Un texte de théâtre contemporain peut mobiliser le registre tragique (destin inéluctable, catharsis) avec un niveau de langue courant, voire familier. Les deux notions ne se conditionnent pas mutuellement.",
      },
      {
        sentence:
          "Au niveau soutenu, on emploiera « je ne sais pas » là où le niveau familier dirait « je sais pas ».",
        isCorrect: true,
        explanation:
          "Le maintien de la négation bipartite (ne + pas) est l'un des critères morphosyntaxiques du niveau soutenu. La chute du « ne » est caractéristique du niveau familier à l'oral. Au niveau courant, les deux sont possibles selon le contexte.",
      },
      {
        sentence:
          "Les registres littéraires (lyrique, épique, comique…) permettent de classer les œuvres par genre.",
        isCorrect: false,
        explanation:
          "FAUX. Les registres décrivent un effet produit sur le lecteur par des procédés stylistiques, ils ne sont pas synonymes de genres. Une même œuvre peut mêler plusieurs registres : Rabelais use du comique et du didactique ; Corneille du tragique et de l'héroïque.",
      },
      {
        sentence:
          "Pour adapter son niveau de langue à la situation, un locuteur peut se fonder sur trois critères : le lexique, la morphologie et la syntaxe.",
        isCorrect: true,
        explanation:
          "Exact. Le lexique (acquiescer vs dire oui), la morphologie (négation bipartite vs simple, subjonctif présent vs passé) et la syntaxe (inversion sujet-verbe, subordination complexe vs parataxe) varient selon le niveau de langue. C'est ce que l'on enseigne en cycle 3 dans la compétence « adapter sa parole à la situation ».",
      },
    ],
  },
};

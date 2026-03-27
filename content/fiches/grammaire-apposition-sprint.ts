import type { Fiche } from "@/features/fiches/types";

export const appositionSprint: Fiche = {
  id: "grammaire-apposition-sprint",
  slug: "apposition-sprint",
  title: "L'apposition",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "apposition",
    "fonction détachée",
    "virgule",
    "relative apposée",
    "relative épithète",
  ],
  notionsLiees: ["fonctions-grammaticales-sprint", "nature-des-mots-sprint"],
  exercicesAssocies: ["grm_fonctions_phrase", "tri_fonctions_grammaticales"],
  content: {
    model: "sprint",
    disclaimer:
      "Connaissance des fonctions grammaticales de base (sujet, COD, épithète) et de la proposition subordonnée relative requise.",
    oneLiner:
      "L'apposition est une fonction détachée : un élément séparé du reste de la phrase par une ou deux virgules, qui apporte une information supplémentaire sur un nom ou un pronom sans le restreindre. Sa nature peut être un adjectif, un GN, un participe (ou groupe participial), ou une proposition subordonnée relative. Distinction capitale au CRPE : la relative épithète (sans virgules) est restrictive — elle sélectionne un sous-ensemble ; la relative apposée (avec virgules) est non restrictive — elle ajoute une précision sur la totalité du référent.",
    exampleCorrect: {
      sentence:
        "Ravie de sa réussite, Marie a sauté de joie. / Les élèves, qui avaient bien révisé, ont tous réussi.",
      explanation:
        "« Ravie de sa réussite » est un adjectif en apposition au sujet « Marie » : il est détaché par une virgule et apporte une information circonstancielle (cause). Dans la seconde phrase, « qui avaient bien révisé » est une relative apposée (entre virgules) : elle ne restreint pas « les élèves » — TOUS les élèves avaient révisé et TOUS ont réussi.",
    },
    exampleWrong: {
      sentence:
        "« Les élèves qui avaient bien révisé ont réussi » contient une apposition.",
      explanation:
        "FAUX. Ici, « qui avaient bien révisé » est une relative épithète (sans virgules) : elle est restrictive et sélectionne seulement les élèves ayant révisé, par opposition à ceux qui ne l'ont pas fait. Ce n'est pas une apposition mais une expansion du nom à fonction d'épithète liée.",
    },
    mainTrap:
      "Ne pas confondre relative épithète et relative apposée. La présence ou l'absence de virgules change radicalement le sens : « Les candidats qui ont triché seront éliminés » (seuls ceux qui ont triché = épithète restrictive) vs « Les candidats, qui ont triché, seront éliminés » (tous ont triché = apposée non restrictive). Au CRPE, la question porte souvent sur cette distinction. Autre piège : l'apposition n'est pas un attribut du sujet — l'attribut est relié au sujet par un verbe attributif (être, sembler, paraître…), alors que l'apposition est simplement juxtaposée et détachée par des virgules.",
    quiz: [
      {
        sentence:
          "Dans « Fatigués par la route, les voyageurs s'arrêtèrent », « fatigués par la route » est une apposition.",
        isCorrect: true,
        explanation:
          "« Fatigués par la route » est un groupe adjectival détaché en tête de phrase par une virgule. Il qualifie « les voyageurs » sans passer par un verbe attributif : c'est bien une apposition (fonction détachée).",
      },
      {
        sentence:
          "Dans « Paris, capitale de la France, attire des millions de touristes », « capitale de la France » est un attribut du sujet.",
        isCorrect: false,
        explanation:
          "FAUX. « Capitale de la France » est un GN en apposition à « Paris » : il est détaché entre deux virgules et ne dépend d'aucun verbe attributif. Un attribut nécessiterait un verbe comme « est » (« Paris est la capitale… »).",
      },
      {
        sentence:
          "La relative « qui coule sous le pont » dans « La Seine, qui coule sous le pont, est en crue » est une relative apposée (non restrictive).",
        isCorrect: true,
        explanation:
          "La relative est encadrée par deux virgules : elle ajoute une information descriptive sans restreindre l'identité de « la Seine » (il n'y a qu'une Seine). C'est une relative apposée, donc une apposition.",
      },
      {
        sentence:
          "Dans « Les enfants qui jouent dans la cour sont bruyants », la relative est apposée car elle qualifie « les enfants ».",
        isCorrect: false,
        explanation:
          "FAUX. L'absence de virgules indique une relative épithète restrictive : seuls les enfants qui jouent dans la cour (et non les autres) sont bruyants. Elle fonctionne comme une expansion du nom à valeur d'épithète, pas comme une apposition.",
      },
      {
        sentence:
          "L'apposition peut être un adjectif, un GN, un groupe participial ou une proposition subordonnée relative détachée par des virgules.",
        isCorrect: true,
        explanation:
          "Correct. L'apposition se définit par sa fonction (détachée, entre virgules) et non par sa nature. Elle accepte des natures variées : adjectif (« Ravi, il sourit »), GN (« Lyon, ville lumière »), groupe participial (« Ayant fini, elle sortit »), relative apposée (« Le chat, qui dormait, sursauta »).",
      },
    ],
  },
};

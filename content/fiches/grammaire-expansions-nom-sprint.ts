import type { Fiche } from "@/features/fiches/types";

export const expansionsNomSprint: Fiche = {
  id: "grammaire-expansions-nom-sprint",
  slug: "expansions-nom-sprint",
  title: "Les expansions du nom",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "expansion du nom",
    "épithète",
    "complément du nom",
    "apposition",
    "groupe nominal",
  ],
  notionsLiees: [
    "nature-des-mots-sprint",
    "fonctions-grammaticales-sprint",
    "types-formes-phrases-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche conforme à la terminologie Éduscol 2021. « Expansion du nom » est le terme général qui englobe épithète, complément du nom et apposition.",
    oneLiner:
      "Le groupe nominal minimal est GN = Dét + N. Les expansions du nom enrichissent ce noyau sans être obligatoires. Il en existe trois : l'épithète (adjectif ou participe directement lié au nom, sans préposition : « un livre passionnant »), le complément du nom (groupe nominal prépositionnel : « un livre de grammaire »), et l'apposition (détachée par des virgules, elle donne une caractéristique du nom : « Paris, capitale de la France, … »). La proposition subordonnée relative (« le livre que je lis ») est aussi une expansion du nom.",
    exampleCorrect: {
      sentence: "Le chat noir de ma voisine dort sur le canapé.",
      explanation:
        "« noir » est une épithète (adjectif directement lié au nom « chat »). « de ma voisine » est un complément du nom (GN prépositionnel introduit par « de »). Ce sont deux expansions du nom « chat ».",
    },
    exampleWrong: {
      sentence:
        "« L'épithète est toujours un adjectif qualificatif. »",
      explanation:
        "FAUX. L'épithète peut aussi être un participe passé ou présent employé comme adjectif (« un enfant fatigué », « une histoire captivante ») ou une proposition subordonnée relative adjective à valeur d'épithète. L'essentiel est qu'elle soit directement liée au nom sans préposition.",
    },
    mainTrap:
      "Ne pas confondre épithète et attribut du sujet. L'épithète est à l'intérieur du GN (« un film excellent ») ; l'attribut est relié au sujet par un verbe attributif (« ce film est excellent »). Autre piège : l'apposition est toujours détachée par des virgules (« Victor Hugo, poète romantique, … »). Sans virgule, « poète romantique » serait une épithète ou un autre type d'expansion. Enfin, « complément du nom » désigne spécifiquement un GN prépositionnel, pas n'importe quelle expansion.",
    quiz: [
      {
        sentence:
          "Dans « une robe en soie magnifique », « en soie » est un complément du nom et « magnifique » est une épithète.",
        isCorrect: true,
        explanation:
          "Correct. « en soie » est un GN prépositionnel qui complète le nom « robe » : c'est un complément du nom. « magnifique » est un adjectif directement lié au nom sans préposition : c'est une épithète.",
      },
      {
        sentence:
          "L'apposition est toujours placée directement après le nom, sans virgule.",
        isCorrect: false,
        explanation:
          "FAUX. L'apposition est caractérisée par son détachement : elle est encadrée par des virgules (ou tirets). « Lyon, deuxième ville de France, accueille… ». Sans virgule, on serait dans un autre type d'expansion.",
      },
      {
        sentence:
          "La proposition subordonnée relative « que j'ai lu » dans « le livre que j'ai lu » est une expansion du nom « livre ».",
        isCorrect: true,
        explanation:
          "Correct. La subordonnée relative est bien une expansion du nom : elle enrichit le GN « le livre » en apportant une information complémentaire. Le pronom relatif « que » tient lieu du GN « le livre » dans la subordonnée.",
      },
      {
        sentence:
          "Dans « Ce gâteau est délicieux », « délicieux » est une épithète du nom « gâteau ».",
        isCorrect: false,
        explanation:
          "FAUX. « délicieux » est attribut du sujet, relié par le verbe attributif « est ». L'épithète est à l'intérieur du GN (« un gâteau délicieux »), sans verbe attributif intermédiaire.",
      },
      {
        sentence:
          "Le groupe nominal minimal se compose d'un déterminant et d'un nom : GN = Dét + N.",
        isCorrect: true,
        explanation:
          "Correct. La structure minimale du GN est Dét + N (« le chat »). Les expansions (épithète, complément du nom, apposition, relative) sont facultatives et enrichissent ce noyau : GN = Dét + N (+ Exp).",
      },
    ],
  },
};

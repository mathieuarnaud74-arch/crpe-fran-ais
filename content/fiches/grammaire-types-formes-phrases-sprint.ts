import type { Fiche } from "@/features/fiches/types";

export const typesFormesPhraseSprint: Fiche = {
  id: "grammaire-types-formes-phrases-sprint",
  slug: "types-formes-phrases-sprint",
  title: "Types et formes de phrases (terminologie Éduscol 2021)",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "types de phrases",
    "formes de phrases",
    "déclaratif",
    "interrogatif",
    "impératif",
    "exclamation",
  ],
  notionsLiees: ["phrase-simple-sprint", "nature-des-mots-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche conforme à la terminologie officielle Éduscol 2021. Attention : l'exclamation est une FORME, pas un type de phrase.",
    oneLiner:
      "Il existe 3 types de phrases : déclaratif (énoncer un fait), interrogatif (poser une question), impératif (donner un ordre ou un conseil). L'exclamation n'est PAS un type : c'est une FORME de phrase, qui peut se combiner avec n'importe quel type. Les autres formes sont : négative, passive, emphatique, impersonnelle. La phrase de base est positive, active et non exclamative. Formule fondamentale : P = [GS + GV] (+ GC).",
    exampleCorrect: {
      sentence: "Comme il fait beau aujourd'hui !",
      explanation:
        "Type : déclaratif (on énonce un constat). Forme : exclamative (émotion marquée par « comme » et le point d'exclamation). L'exclamation est bien une forme qui se superpose au type déclaratif.",
    },
    exampleWrong: {
      sentence:
        "« Quelle belle journée ! » est de type exclamatif.",
      explanation:
        "FAUX selon la terminologie Éduscol 2021. L'exclamation est une FORME, pas un type. Cette phrase est de type déclaratif et de forme exclamative. Les 3 seuls types sont : déclaratif, interrogatif, impératif.",
    },
    mainTrap:
      "Le piège le plus fréquent au CRPE est de citer « exclamatif » comme 4e type de phrase. Depuis la terminologie Éduscol 2021, il n'y a que 3 types (déclaratif, interrogatif, impératif). L'exclamation est une forme qui se combine avec n'importe quel type : « Ne pars pas ! » est impératif + négatif + exclamatif (trois caractéristiques compatibles). Autre piège : confondre type et forme. La négation est une forme, pas un type. La phrase « Il ne vient pas » est de type déclaratif et de forme négative.",
    quiz: [
      {
        sentence:
          "Selon la terminologie Éduscol 2021, l'exclamation est l'un des 4 types de phrases.",
        isCorrect: false,
        explanation:
          "FAUX. Il n'y a que 3 types : déclaratif, interrogatif, impératif. L'exclamation est une FORME de phrase, pas un type. C'est un changement majeur de la terminologie 2021.",
      },
      {
        sentence:
          "La phrase « Ne touche pas à ça ! » cumule le type impératif, la forme négative et la forme exclamative.",
        isCorrect: true,
        explanation:
          "Correct. Type impératif (ordre, verbe à l'impératif). Forme négative (ne… pas). Forme exclamative (émotion, point d'exclamation). Type et formes sont indépendants et se combinent.",
      },
      {
        sentence:
          "La phrase « Est-ce que tu as compris ? » est de type interrogatif. Elle n'est ni négative, ni passive, ni exclamative.",
        isCorrect: true,
        explanation:
          "Correct. Type interrogatif (question). Aucune forme marquée n'est appliquée : pas de négation, pas de passivation, pas d'exclamation. Attention : on ne dit pas « forme positive » ni « forme active » — l'absence de transformation est simplement l'état de la phrase de base.",
      },
      {
        sentence:
          "La phrase « Il pleut » est de forme impersonnelle.",
        isCorrect: true,
        explanation:
          "Correct. Le pronom « il » est un sujet apparent qui ne désigne rien : c'est un verbe impersonnel. La forme impersonnelle est bien une des formes de phrase identifiées par la terminologie officielle.",
      },
      {
        sentence:
          "La phrase de base, selon la terminologie officielle, est positive, active, non exclamative et de type déclaratif.",
        isCorrect: true,
        explanation:
          "Correct. La phrase de base (ou phrase canonique) sert de référence : elle est de type déclaratif, positive, active et non exclamative. On ne dit pas « forme positive » ni « forme active » : c'est simplement l'état de base. Les formes (négative, passive, exclamative, emphatique, impersonnelle) sont des transformations appliquées à partir de cette base.",
      },
    ],
  },
};

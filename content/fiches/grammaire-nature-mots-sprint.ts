import type { Fiche } from "@/features/fiches/types";

export const natureMotsSprint: Fiche = {
  id: "grammaire-nature-mots-sprint",
  slug: "nature-des-mots-sprint",
  title: "Nature des mots",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["nature", "classes grammaticales", "nom", "adverbe", "déterminant"],
  notionsLiees: ["fonctions-grammaticales-sprint", "phrase-simple-sprint"],
  exercicesAssocies: ["gram_nature_fonction", "tri_nature_mots", "tri_nom_verbe_adjectif"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche est un rappel rapide. Pour une étude approfondie des cas ambigus (mots invariables, mots à double nature), consulte la fiche Référence.",
    oneLiner:
      "La nature d'un mot (sa classe grammaticale) est une propriété stable qui définit ce qu'il est : nom, déterminant, adjectif, pronom, verbe, adverbe, préposition, conjonction ou interjection. On l'identifie par des critères morphologiques (peut-il varier en genre/nombre ?) et syntaxiques (quelle position occupe-t-il dans la phrase, par quoi peut-on le remplacer ?). Attention : certains mots changent de nature selon le contexte.",
    exampleCorrect: {
      sentence: "Ces enfants jouent dehors.",
      explanation:
        "« Ces » est un déterminant démonstratif (détermine le nom « enfants »). « dehors » est un adverbe (modifie le verbe, invariable).",
    },
    exampleWrong: {
      sentence: "« Leur » dans « leur maison » est un pronom.",
      explanation:
        "FAUX. Devant un nom, « leur » est un déterminant possessif. Ce n'est un pronom que s'il remplace un GN : « je leur parle ».",
    },
    mainTrap:
      "Les mots « tout », « même », « leur », « son », « quel » changent de nature selon le contexte. « Tout » peut être déterminant (tous les élèves), pronom (ils sont tous là), adjectif (elle est toute surprise) ou adverbe (il est tout petit). Identifier la nature exige de regarder le rôle du mot dans la phrase, pas seulement sa forme.",
    quiz: [
      {
        sentence:
          "Dans la phrase « Elle court vite », le mot « vite » est un adjectif.",
        isCorrect: false,
        explanation:
          "« vite » est ici un adverbe : il modifie le verbe « court » et est invariable. Un adjectif qualifierait un nom ou un pronom.",
      },
      {
        sentence:
          "Dans la phrase « Le livre que je lis est passionnant », le mot « que » est un pronom relatif.",
        isCorrect: true,
        explanation:
          "« que » reprend l'antécédent « le livre » et introduit une proposition subordonnée relative : c'est bien un pronom relatif.",
      },
      {
        sentence:
          "Dans la phrase « Leur travail est remarquable », « leur » est un pronom personnel.",
        isCorrect: false,
        explanation:
          "Placé devant le nom « travail », « leur » est un déterminant possessif. Il serait pronom s'il remplaçait un GN (ex. : « je leur parle »).",
      },
      {
        sentence:
          "Dans la phrase « Pourtant, il refusa », le mot « pourtant » est une conjonction de coordination.",
        isCorrect: false,
        explanation:
          "« Pourtant » est un adverbe de relation (ou connecteur logique). Les conjonctions de coordination sont : mais, ou, et, or, ni, car. Attention : « donc » est un adverbe selon la terminologie Éduscol 2021, et non une conjonction de coordination.",
      },
      {
        sentence:
          "Dans la phrase « Nous partirons avant l'aube », « avant » est une préposition.",
        isCorrect: true,
        explanation:
          "« avant » introduit ici un groupe nominal (« l'aube ») et établit une relation temporelle : c'est bien une préposition.",
      },
    ],
  },
};

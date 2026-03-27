import type { Fiche } from "@/features/fiches/types";

export const majusculesPonctuationSprint: Fiche = {
  id: "orthographe-majuscules-ponctuation-sprint",
  slug: "majuscules-ponctuation-sprint",
  title: "Majuscules et ponctuation",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "majuscule",
    "ponctuation",
    "virgule",
    "deux-points",
    "point-virgule",
    "tiret",
  ],
  notionsLiees: ["phrase-simple-sprint"],
  exercicesAssocies: ["correction_accords"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les règles de majuscule et de ponctuation en français. Pour les cas particuliers (guillemets, parenthèses, ponctuation du dialogue), consulte la fiche Référence.",
    oneLiner:
      "La majuscule est obligatoire en début de phrase, pour les noms propres (personnes, lieux, peuples quand ils désignent le peuple lui-même : « les Français »), les sigles (CRPE, ONU) et les titres d'œuvres. Attention : les adjectifs de nationalité sont en minuscule (« un film français »), de même que les noms de langues (« parler français »). La virgule sert au détachement d'un complément circonstanciel en tête de phrase (« Ce matin, il pleut ») et à l'énumération. Les deux-points introduisent une explication, une citation ou une énumération. Le point-virgule sépare deux propositions juxtaposées de même importance, sans majuscule après lui.",
    exampleCorrect: {
      sentence:
        "Les Français aiment le fromage ; les Italiens préfèrent les pâtes.",
      explanation:
        "« Français » et « Italiens » prennent la majuscule car ils désignent les peuples (noms propres). Le point-virgule sépare deux propositions juxtaposées de même niveau, sans majuscule après lui (« les » en minuscule).",
    },
    exampleWrong: {
      sentence: "Il parle le Français couramment.",
      explanation:
        "FAUX. Les noms de langues s'écrivent en minuscule en français : « il parle le français ». La majuscule est réservée au nom désignant le peuple (« les Français ») ou en début de phrase.",
    },
    mainTrap:
      "La distinction majuscule/minuscule pour les gentilés et les langues est le piège principal. Règle : nom de peuple = majuscule (« un Français, une Espagnole »), adjectif de nationalité = minuscule (« la cuisine française »), nom de langue = minuscule (« apprendre le français »). Autre piège fréquent : la virgule avant « et » dans une énumération n'est en principe pas nécessaire en français (contrairement à l'anglais), sauf si elle lève une ambiguïté. Enfin, ne pas confondre les deux-points (introduction, explication) et le point-virgule (juxtaposition de propositions).",
    quiz: [
      {
        sentence:
          "Dans « Elle étudie l'Histoire de France », le mot « Histoire » doit prendre une majuscule.",
        isCorrect: false,
        explanation:
          "FAUX. Les noms de disciplines (histoire, mathématiques, géographie) s'écrivent en minuscule en français courant : « elle étudie l'histoire de France ». La majuscule ne s'emploie que dans les contextes officiels (intitulé de cours, titre d'ouvrage).",
      },
      {
        sentence:
          "Le point-virgule sépare deux propositions juxtaposées et ne prend pas de majuscule après lui.",
        isCorrect: true,
        explanation:
          "Correct. Le point-virgule marque une pause intermédiaire entre la virgule et le point. Il relie deux propositions indépendantes sans majuscule : « Il pleut ; nous restons à l'intérieur. »",
      },
      {
        sentence:
          "Dans « les français adorent le pain », « français » est correctement écrit en minuscule.",
        isCorrect: false,
        explanation:
          "FAUX. Ici, « français » désigne les membres du peuple français (nom propre). Il faut la majuscule : « les Français adorent le pain ». En revanche, l'adjectif reste en minuscule : « le peuple français ».",
      },
      {
        sentence:
          "La virgule est obligatoire après un complément circonstanciel placé en tête de phrase : « Ce matin, les élèves travaillent. »",
        isCorrect: true,
        explanation:
          "Correct. Quand un complément circonstanciel est détaché en tête de phrase, la virgule est requise pour marquer le détachement. « Ce matin, les élèves travaillent » est correct. Sans détachement en position finale, la virgule disparaît : « Les élèves travaillent ce matin. »",
      },
      {
        sentence:
          "Les deux-points peuvent introduire une explication, une citation ou une énumération.",
        isCorrect: true,
        explanation:
          "Correct. Les deux-points ont trois emplois principaux : introduire une explication (« Il est fatigué : il a couru toute la journée »), une citation (« Il a dit : « Bonjour » ») ou une énumération (« Les couleurs primaires sont : le rouge, le jaune et le bleu »).",
      },
    ],
  },
};

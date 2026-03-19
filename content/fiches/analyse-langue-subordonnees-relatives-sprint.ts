import type { Fiche } from "@/features/fiches/types";

export const analyseLangueRelativesSprint: Fiche = {
  id: "analyse-langue-subordonnees-relatives-sprint",
  slug: "subordonnees-relatives-sprint",
  title: "Les subordonnées relatives",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "subordonnée relative",
    "pronom relatif",
    "antécédent",
    "relative déterminative",
    "relative explicative",
    "dont",
    "fonction",
  ],
  notionsLiees: ["grammaire-fonctions-grammaticales", "grammaire-phrase-complexe"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche cible les points les plus testés au CRPE. Pour l'analyse complète des relatives sans antécédent et des constructions avec « lequel », consulte la fiche Référence.",
    oneLiner:
      "La proposition subordonnée relative est introduite par un pronom relatif (qui, que, dont, où, lequel…) et complète un nom ou pronom appelé antécédent. Pour analyser une relative : 1) identifier l'antécédent du pronom relatif, 2) déterminer la fonction du pronom relatif dans la subordonnée, 3) distinguer relative déterminative (sans virgules, nécessaire au sens) et relative explicative (entre virgules, ajout d'information).",
    exampleCorrect: {
      sentence: "« Le livre dont tu parles est épuisé. »",
      explanation:
        "Antécédent de « dont » : « le livre ». Fonction de « dont » dans la relative : complément du verbe « parler de » (COI). La relative est déterminative (pas de virgules, identifie quel livre).",
    },
    exampleWrong: {
      sentence: "Dans « La maison dont le toit est rouge », « dont » est sujet de la relative.",
      explanation:
        "FAUX. « dont » est complément du nom : il vaut « de laquelle » (le toit de laquelle / de la maison). Le sujet de la relative est « le toit ».",
    },
    mainTrap:
      "« Dont » cumule plusieurs fonctions possibles selon la construction du verbe ou du nom qu'il complète : COI si le verbe se construit avec « de » (parler de, se souvenir de), complément du nom si « dont » vaut « de + antécédent » dans un groupe nominal (la maison dont le toit…), complément circonstanciel dans de rares emplois figés. L'erreur classique est de poser automatiquement « dont » = COI sans analyser la construction réelle de la proposition.",
    quiz: [
      {
        sentence:
          "Dans « Les élèves qui ont rendu leur devoir peuvent sortir », la relative est déterminative.",
        isCorrect: true,
        explanation:
          "Pas de virgules, la relative restreint le groupe nominal à un sous-ensemble (ceux qui ont rendu leur devoir) : elle est bien déterminative.",
      },
      {
        sentence:
          "Dans « La ville où je suis né est en Bretagne », « où » a pour fonction complément circonstanciel de lieu dans la relative.",
        isCorrect: true,
        explanation:
          "« où » reprend « la ville » et indique le lieu dans la proposition subordonnée : il exerce bien la fonction de CCL du verbe « naître ».",
      },
      {
        sentence:
          "Dans « C'est un auteur que j'admire beaucoup », « que » est sujet de la relative.",
        isCorrect: false,
        explanation:
          "« que » est COD du verbe « admirer » (j'admire que = j'admire cet auteur). Le sujet de la relative est le pronom « je ».",
      },
      {
        sentence:
          "Dans « Le film dont les critiques ont été élogieuses a reçu une palme », « dont » est COI du verbe « être ».",
        isCorrect: false,
        explanation:
          "« dont » est complément du nom « les critiques » (les critiques du film). Le verbe de la relative est « être » ; son sujet est « les critiques » et son attribut est « élogieuses ».",
      },
      {
        sentence:
          "La relative explicative peut être supprimée sans modifier le sens fondamental de la phrase.",
        isCorrect: true,
        explanation:
          "La relative explicative (entre virgules) ajoute une information, mais n'est pas nécessaire à l'identification de l'antécédent. Sa suppression ne change pas la référence du groupe nominal.",
      },
    ],
  },
};

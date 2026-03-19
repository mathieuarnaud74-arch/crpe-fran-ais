import type { Fiche } from "@/features/fiches/types";

export const formationMotsSprint: Fiche = {
  id: "lexique-formation-mots-sprint",
  slug: "formation-des-mots-sprint",
  title: "Formation des mots : dérivation et composition",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["dérivation", "composition", "préfixe", "suffixe", "radical", "familles de mots"],
  notionsLiees: ["lexique-sens-des-mots", "lexique-etymologie"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre les mécanismes essentiels de formation des mots. Pour les cas complexes (mots parasynthétiques, néologismes), consulte la fiche Référence.",
    oneLiner:
      "Un mot dérivé est formé par ajout d'un affixe (préfixe ou suffixe) à une base : in- + capable → incapable. Un mot composé associe deux bases autonomes : porte-monnaie, rouge-gorge. Identifier le radical permet de retrouver le sens et d'anticiper l'orthographe des mots d'une même famille.",
    exampleCorrect: {
      sentence: "« Refaire » est un mot dérivé : le préfixe re- s'ajoute au radical « faire ».",
      explanation:
        "re- est un préfixe du français courant (sens itératif) ; « faire » est une base autonome. Dérivation par préfixation : correct.",
    },
    exampleWrong: {
      sentence: "« Téléphone » est un mot dérivé de « phone » par le préfixe « télé- ».",
      explanation:
        "FAUX. « télé- » et « phone » sont deux bases savantes d'origine grecque (tēle = loin ; phōnē = voix) : c'est un mot savant composé, non une dérivation par préfixe du français courant.",
    },
    mainTrap:
      "Les éléments gréco-latins (télé-, micro-, bio-, photo-, graphe…) ressemblent à des préfixes mais sont des bases savantes qui n'existent pas en français ordinaire de façon autonome. Microbiologie n'est pas un dérivé de « biologie » par le préfixe « micro- » : c'est une composition savante. Le jury CRPE teste cette distinction.",
    quiz: [
      {
        sentence: "« Incapable » est un mot dérivé de « capable » par le préfixe in-.",
        isCorrect: true,
        explanation:
          "in- est un préfixe du français (sens négatif) ; « capable » est une base autonome. La dérivation par préfixation est bien à l'œuvre.",
      },
      {
        sentence: "« Portefeuille » est un mot dérivé par suffixation.",
        isCorrect: false,
        explanation:
          "« Portefeuille » est un mot composé : il réunit deux bases (porte- du verbe porter + feuille). Il n'y a pas de suffixe.",
      },
      {
        sentence: "Dans la famille du mot « terre », on trouve : terrestre, enterrer, territoire.",
        isCorrect: true,
        explanation:
          "Les trois mots partagent le radical latin terra. Reconnaître ce radical aide à orthographier et comprendre le sens.",
      },
      {
        sentence: "« Bibliothèque » est formé par dérivation à partir du mot « livre ».",
        isCorrect: false,
        explanation:
          "« Bibliothèque » est un mot savant composé de deux bases grecques : biblion (livre) + thêkê (dépôt). Il n'est pas dérivé du mot français « livre ».",
      },
      {
        sentence: "Le suffixe -tion dans « construction » indique que le mot est un nom verbal d'action.",
        isCorrect: true,
        explanation:
          "-tion est un suffixe nominalisateur qui transforme un verbe (construire) en nom désignant l'action ou son résultat. C'est un outil de dérivation suffixale.",
      },
    ],
  },
};

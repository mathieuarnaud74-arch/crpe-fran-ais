import type { Fiche } from "@/features/fiches/types";

export const pronomsSprint: Fiche = {
  id: "grammaire-pronoms-sprint",
  slug: "pronoms-sprint",
  title: "Les pronoms",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "pronom",
    "pronom personnel",
    "pronom relatif",
    "pronom adverbial",
    "en",
    "y",
  ],
  notionsLiees: ["nature-des-mots-sprint", "determinants-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Connaître la notion de classe grammaticale et le fonctionnement du GN est un prérequis pour cette fiche.",
    oneLiner:
      "Le pronom est un mot qui tient lieu d'un GN (groupe nominal) dans la phrase. On distingue 6 catégories principales : les pronoms personnels (je, tu, il, me, te, se, lui, eux…), démonstratifs (celui, celle, ceux, ceci, cela, ce…), possessifs (le mien, la tienne, les nôtres…), indéfinis (on, tout, rien, chacun, quelqu'un, certains…), interrogatifs (qui, que, quoi, lequel…) et relatifs (qui, que, dont, où, lequel…). S'ajoutent les pronoms adverbiaux « en » et « y », qui tiennent lieu d'un GN prépositionnel (en = de + GN ; y = à + GN / complément de lieu). Attention : un pronom n'est pas simplement un mot qui « remplace un nom » — il tient lieu d'un GN entier, avec son déterminant et ses expansions.",
    exampleCorrect: {
      sentence: "J'aime ces fleurs. Je les achèterai demain.",
      explanation:
        "« Les » est un pronom personnel complément (COD) : il tient lieu du GN « ces fleurs ». Il ne remplace pas seulement le nom « fleurs », mais le GN entier (déterminant + nom).",
    },
    exampleWrong: {
      sentence:
        "Le pronom « en » dans « j'en veux » est un pronom personnel comme « le » ou « la ».",
      explanation:
        "FAUX. « En » est un pronom adverbial (terminologie Éduscol 2021), et non un pronom personnel classique. Il tient lieu d'un GN introduit par « de » : « j'en veux » = « je veux de cela / de ces gâteaux ». De même, « y » est un pronom adverbial tenant lieu d'un GN introduit par « à » ou d'un complément de lieu.",
    },
    mainTrap:
      "Le pronom relatif et le pronom interrogatif partagent souvent les mêmes formes (qui, que, quoi) mais n'ont pas la même fonction : le pronom relatif a un antécédent et introduit une subordonnée relative (« Le livre que je lis »), tandis que le pronom interrogatif pose une question et n'a pas d'antécédent (« Que veux-tu ? »). Autre piège récurrent au CRPE : « en » et « y » ne sont pas des pronoms personnels — ce sont des pronoms adverbiaux. Enfin, il ne faut pas confondre « leur » pronom personnel (je leur parle → COI, tient lieu de « à eux/elles ») et « leur » déterminant possessif (leur maison → devant un nom).",
    quiz: [
      {
        sentence:
          "Dans « Celui qui travaille réussira », « celui » est un pronom démonstratif et « qui » est un pronom relatif.",
        isCorrect: true,
        explanation:
          "Correct. « Celui » est un pronom démonstratif (il désigne une personne sans la nommer). « Qui » est un pronom relatif ayant pour antécédent « celui » : il introduit la subordonnée relative « qui travaille » et y occupe la fonction de sujet.",
      },
      {
        sentence:
          "Les pronoms « en » et « y » sont des pronoms personnels.",
        isCorrect: false,
        explanation:
          "FAUX. Selon la terminologie officielle Éduscol 2021, « en » et « y » sont des pronoms adverbiaux. « En » tient lieu d'un GN introduit par « de » (j'en reviens = je reviens de là), « y » tient lieu d'un GN introduit par « à » ou d'un complément de lieu (j'y pense = je pense à cela).",
      },
      {
        sentence:
          "Dans « On a frappé à la porte », « on » est un pronom indéfini.",
        isCorrect: true,
        explanation:
          "Correct. « On » est un pronom indéfini : il désigne une personne dont l'identité n'est pas précisée. En langue courante, il peut aussi remplacer « nous » (« On part demain »), mais sa nature reste celle d'un pronom indéfini (il se conjugue toujours à la 3e personne du singulier).",
      },
      {
        sentence:
          "Le pronom tient lieu d'un nom.",
        isCorrect: false,
        explanation:
          "FAUX. Le pronom tient lieu d'un GN (groupe nominal), pas simplement d'un nom seul. Par exemple, dans « J'ai vu ces magnifiques roses rouges. Je les ai achetées. », « les » tient lieu du GN entier « ces magnifiques roses rouges » (déterminant + adjectif + nom + adjectif), et non du seul nom « roses ».",
      },
      {
        sentence:
          "Dans « La ville où je vis est grande » et « Où habites-tu ? », le mot « où » a la même nature dans les deux phrases.",
        isCorrect: false,
        explanation:
          "FAUX. Dans « La ville où je vis », « où » est un pronom relatif (antécédent : « la ville » ; il introduit une subordonnée relative). Dans « Où habites-tu ? », « où » est un adverbe interrogatif (il porte sur le lieu et introduit une interrogation directe, sans antécédent).",
      },
    ],
  },
};

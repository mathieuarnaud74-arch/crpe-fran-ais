import type { Fiche } from "@/features/fiches/types";

export const naturePronomsSprint: Fiche = {
  id: "analyse-langue-nature-pronoms-sprint",
  slug: "nature-pronoms-sprint",
  title: "Les pronoms : nature et classification",
  subtitle: "Fiche express",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "pronoms",
    "personnel",
    "possessif",
    "démonstratif",
    "relatif",
    "indéfini",
    "interrogatif",
  ],
  notionsLiees: ["nature-mots-sprint", "grammaire-fonctions-sprint"],
  exercicesAssocies: ["analyse_identifier_nature", "tri_nature_fonction"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la nature (classe grammaticale) des pronoms et leur classification en 7 catégories. Les fonctions du pronom (sujet, COD, COI, etc.) ne sont pas détaillées ici. Au CRPE, il est fréquent de devoir identifier la catégorie exacte d'un pronom et de justifier cette identification.",
    oneLiner:
      "Un pronom remplace un nom ou un groupe nominal. Il en existe 7 catégories : personnel, possessif, démonstratif, relatif, indéfini, interrogatif et numéral.",
    exampleCorrect: {
      sentence:
        "Dans « Marie a pris son livre. Elle le lit. », « elle » est un pronom personnel sujet (remplace Marie) et « le » est un pronom personnel COD (remplace le livre).",
      explanation:
        "L'identification est correcte. Les deux pronoms sont personnels : « elle » (forme tonique sujet, 3e personne du singulier féminin) et « le » (forme atone COD, 3e personne du singulier masculin). Chacun a un référent identifiable dans le contexte, ce qui confirme leur nature pronominale.",
    },
    exampleWrong: {
      sentence:
        "Confondre « leur » déterminant possessif (« leur maison ») avec « leur » pronom personnel COI (« je leur parle »). Le premier accompagne un nom, le second remplace un groupe nominal.",
      explanation:
        "C'est une erreur classique au CRPE. « Leur » déterminant possessif précède un nom et s'accorde en nombre (leur maison / leurs maisons). « Leur » pronom personnel est invariable et occupe la fonction COI (je leur parle = je parle à eux). Le critère discriminant est la présence ou non d'un nom après « leur ».",
    },
    mainTrap:
      "Le pronom relatif « que » peut être confondu avec la conjonction de subordination « que ». Le pronom relatif a un antécédent dans la phrase : « Le livre que je lis » (antécédent = « le livre »). La conjonction de subordination introduit une complétive sans antécédent nominal : « Je pense que tu as raison ». Au CRPE, il faut vérifier la présence d'un antécédent pour trancher.",
    quiz: [
      {
        sentence:
          "Dans « Celui qui travaille réussit », « celui » est un pronom démonstratif et « qui » est un pronom relatif.",
        isCorrect: true,
        explanation:
          "Exact. « Celui » est un pronom démonstratif (forme composée masculin singulier) qui ne désigne pas un référent précis mais est déterminé par la relative qui suit. « Qui » est un pronom relatif sujet dont l'antécédent est « celui ».",
      },
      {
        sentence:
          "Dans « On a frappé à la porte », « on » est un pronom indéfini.",
        isCorrect: true,
        explanation:
          "Exact. « On » est traditionnellement classé comme pronom indéfini (ou pronom personnel indéfini selon les grammaires). Il renvoie à un référent non identifié. Dans l'usage courant, il remplace souvent « nous », mais sa nature grammaticale reste celle d'un pronom indéfini de 3e personne du singulier.",
      },
      {
        sentence:
          "Les pronoms possessifs (le mien, la tienne, les nôtres) s'accordent uniquement avec le possesseur.",
        isCorrect: false,
        explanation:
          "FAUX. Les pronoms possessifs s'accordent en genre et en nombre avec l'objet possédé, pas avec le possesseur. « Le mien » est masculin singulier parce qu'il remplace un nom masculin singulier, quelle que soit l'identité du possesseur. La personne du possesseur détermine la forme (mien/tien/sien), mais le genre et le nombre suivent le référent.",
      },
      {
        sentence:
          "Dans « Lequel préfères-tu ? », « lequel » est un pronom interrogatif.",
        isCorrect: true,
        explanation:
          "Exact. « Lequel » est un pronom interrogatif composé (le + quel). Il varie en genre et en nombre (laquelle, lesquels, lesquelles) et se contracte avec les prépositions à et de (auquel, duquel). Il est employé dans les interrogations directes et indirectes.",
      },
      {
        sentence:
          "Le pronom relatif « dont » peut toujours être remplacé par « duquel ».",
        isCorrect: false,
        explanation:
          "FAUX. « Dont » et « duquel » ne sont pas toujours interchangeables. « Dont » est obligatoire quand l'antécédent est complément du nom ou du verbe directement : « L'homme dont je parle ». « Duquel » s'emploie dans les locutions prépositives complexes : « La table au-dessus de laquelle… ». On ne dirait pas « La table au-dessus dont ».",
      },
    ],
  },
};

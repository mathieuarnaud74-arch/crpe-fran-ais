import type { Fiche } from "@/features/fiches/types";

export const classesMotsSprint: Fiche = {
  id: "grammaire-classes-mots-sprint",
  slug: "classes-mots-sprint",
  title: "Les classes de mots",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 4,
  tags: [
    "classes de mots",
    "nature",
    "variable",
    "invariable",
    "nom",
    "verbe",
    "adjectif",
    "déterminant",
    "pronom",
    "adverbe",
    "préposition",
    "conjonction",
  ],
  notionsLiees: [
    "grammaire-nature-mots-sprint",
    "grammaire-determinants-sprint",
    "grammaire-pronoms-sprint",
    "grammaire-nature-fonction-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la classification des mots en français. Pour l'analyse approfondie de chaque classe (sous-catégories, emplois particuliers), consulte les fiches dédiées (déterminants, pronoms, adjectifs…).",
    oneLiner:
      "On distingue neuf classes grammaticales réparties en deux groupes : les classes variables (nom, verbe, adjectif, déterminant, pronom) qui changent de forme selon le genre, le nombre ou la personne, et les classes invariables (adverbe, préposition, conjonction, interjection) dont la forme ne varie jamais.",
    exampleCorrect: {
      sentence:
        "Dans « Les petites filles chantent joyeusement dans la cour » : Les (déterminant, variable) — petites (adjectif, variable) — filles (nom, variable) — chantent (verbe, variable) — joyeusement (adverbe, invariable) — dans (préposition, invariable) — la (déterminant, variable) — cour (nom, variable).",
      explanation:
        "Chaque mot est identifié par sa classe grammaticale (sa nature). Les mots variables s'accordent ou se conjuguent ; les mots invariables gardent toujours la même forme. « Petites » varie en genre et nombre (petit/petite/petits/petites), tandis que « joyeusement » et « dans » sont figés.",
    },
    exampleWrong: {
      sentence:
        "Dire que « dans » est un adverbe parce qu'il complète le verbe.",
      explanation:
        "FAUX. « Dans » est une préposition : elle introduit un complément (« dans la cour ») et établit un rapport de sens (lieu) entre le verbe et le nom. L'adverbe, lui, modifie directement le verbe, l'adjectif ou un autre adverbe sans introduire de complément (ex. : « joyeusement »). La confusion préposition/adverbe est fréquente au CRPE.",
    },
    mainTrap:
      "Ne pas confondre classe grammaticale (nature) et fonction syntaxique. La classe est une propriété permanente du mot (un nom reste un nom quel que soit son emploi) ; la fonction dépend du rôle du mot dans la phrase (sujet, COD, complément circonstanciel…). « Chat » est toujours un nom (classe), mais il peut être sujet (« Le chat dort »), COD (« Je vois le chat ») ou complément du nom (« la patte du chat »).",
    quiz: [
      {
        sentence:
          "Le français compte cinq classes de mots variables : nom, verbe, adjectif, déterminant et pronom.",
        isCorrect: true,
        explanation:
          "VRAI. Ces cinq classes sont dites variables car elles changent de forme : le nom et l'adjectif varient en genre et en nombre, le verbe se conjugue en personne, temps et mode, le déterminant et le pronom varient en genre, nombre et parfois en personne.",
      },
      {
        sentence:
          "L'adverbe est une classe variable car il peut prendre la marque du pluriel.",
        isCorrect: false,
        explanation:
          "FAUX. L'adverbe est invariable : il ne prend jamais de marque de genre ni de nombre. « Joyeusement », « très », « souvent » gardent toujours la même forme. Exception apparente : « tout » employé comme adverbe varie devant un adjectif féminin commençant par une consonne (« toute contente »), mais c'est une règle d'euphonie, pas un vrai accord.",
      },
      {
        sentence:
          "La préposition et la conjonction sont toutes deux des classes invariables qui servent de mots de liaison.",
        isCorrect: true,
        explanation:
          "VRAI. La préposition (à, de, dans, par, pour…) introduit un complément ; la conjonction (et, mais, ou, car, que, lorsque…) relie des mots, groupes de mots ou propositions. Aucune des deux ne varie en forme.",
      },
      {
        sentence:
          "Dans « Elle les regarde », le mot « les » est un déterminant.",
        isCorrect: false,
        explanation:
          "FAUX. Ici, « les » est un pronom personnel complément (COD) : il remplace un nom (« elle les regarde » = « elle regarde les enfants »). Devant un nom, « les » serait un déterminant (« les enfants »). La classe du mot dépend de son emploi dans la phrase.",
      },
      {
        sentence:
          "L'interjection (oh, hélas, bravo) est une classe grammaticale invariable.",
        isCorrect: true,
        explanation:
          "VRAI. L'interjection exprime une émotion, un appel ou une onomatopée. Elle est toujours invariable et ne s'intègre pas syntaxiquement à la phrase (elle est souvent suivie d'un point d'exclamation et mise en apposition).",
      },
      {
        sentence:
          "Un même mot appartient toujours à la même classe grammaticale, quel que soit le contexte.",
        isCorrect: false,
        explanation:
          "FAUX. Certains mots peuvent appartenir à des classes différentes selon le contexte. « Bien » est un adverbe dans « il chante bien » mais un nom dans « un bien immobilier ». « Tout » peut être déterminant, pronom, adverbe ou nom. C'est le contexte syntaxique qui détermine la classe.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const attributSujetSprint: Fiche = {
  id: "grammaire-attribut-sujet-sprint",
  slug: "attribut-du-sujet-sprint",
  title: "L'attribut du sujet et les verbes attributifs",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "attribut du sujet",
    "verbe attributif",
    "être",
    "sembler",
    "paraître",
    "attribut du COD",
  ],
  notionsLiees: ["fonctions-grammaticales-sprint", "phrase-simple-sprint"],
  exercicesAssocies: ["grm_fonctions_phrase", "tri_fonctions_grammaticales"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur l'attribut du sujet. Pour l'attribut du COD et les cas limites (constructions résultatives), consulte la fiche Référence.",
    oneLiner:
      "L'attribut du sujet est un constituant obligatoire relié au sujet par un verbe attributif (être, sembler, paraître, devenir, rester, demeurer, avoir l'air, passer pour). Il attribue une propriété au sujet : on ne peut ni le supprimer ni le déplacer. L'attribut peut être un adjectif (« Elle semble fatiguée »), un GN (« Il est médecin »), un GNP (« Elle est de Paris »), un pronom (« Il l'est ») ou un infinitif (« Partir, c'est mourir un peu »). À ne pas confondre avec l'attribut du COD, qui attribue une propriété au COD via un verbe comme « rendre, trouver, juger, nommer » : « Je trouve ce film excellent » (« excellent » = attribut du COD « ce film »).",
    exampleCorrect: {
      sentence: "Les élèves semblent motivés.",
      explanation:
        "« motivés » est attribut du sujet « les élèves », relié par le verbe attributif « sembler ». L'adjectif s'accorde avec le sujet (masculin pluriel). On ne peut ni le supprimer (*« Les élèves semblent ») ni le déplacer.",
    },
    exampleWrong: {
      sentence:
        "Dans « Les élèves mangent un repas chaud », « chaud » est attribut du sujet.",
      explanation:
        "FAUX. « chaud » est ici épithète du nom « repas » : il qualifie directement le nom à l'intérieur du GN « un repas chaud ». Il n'y a pas de verbe attributif — « manger » est un verbe transitif direct et « un repas chaud » est COD.",
    },
    mainTrap:
      "Trois confusions fréquentes : 1) Attribut du sujet vs épithète — l'attribut est relié au sujet par un verbe attributif (« L'eau est froide »), l'épithète est directement liée au nom dans le GN (« l'eau froide »). 2) Attribut du sujet vs COD — le COD dépend d'un verbe transitif direct (« Il mange une pomme »), l'attribut dépend d'un verbe attributif et renvoie au sujet (« Il est pompier »). Test : l'attribut peut être remplacé par « le/la/l' » invariable (« Il l'est »), le COD par « le/la/les » variable. 3) Le verbe « être » n'est pas toujours attributif : dans « Il est à Paris », « à Paris » est complément circonstanciel de lieu, pas attribut.",
    quiz: [
      {
        sentence:
          "Dans « Ce gâteau paraît délicieux », « délicieux » est attribut du sujet « ce gâteau ».",
        isCorrect: true,
        explanation:
          "« paraître » est un verbe attributif. « délicieux » est relié au sujet « ce gâteau » par ce verbe : c'est bien un attribut du sujet, qui s'accorde avec le sujet (masculin singulier).",
      },
      {
        sentence:
          "Dans « Il regarde un beau tableau », « beau » est attribut du sujet.",
        isCorrect: false,
        explanation:
          "FAUX. « beau » est épithète du nom « tableau » à l'intérieur du GN « un beau tableau ». Le verbe « regarder » est un verbe transitif direct, pas un verbe attributif. « un beau tableau » est COD.",
      },
      {
        sentence:
          "Les verbes attributifs incluent : être, sembler, paraître, devenir, rester, demeurer, avoir l'air, passer pour.",
        isCorrect: true,
        explanation:
          "Correct. Ce sont les principaux verbes attributifs (terminologie Éduscol 2021 : « verbe attributif », et non « verbe d'état »). Ils relient l'attribut au sujet en lui attribuant une propriété.",
      },
      {
        sentence:
          "Dans « Le directeur a nommé Marie déléguée », « déléguée » est attribut du sujet.",
        isCorrect: false,
        explanation:
          "FAUX. « déléguée » est attribut du COD « Marie », pas du sujet « le directeur ». C'est le verbe « nommer » qui attribue la qualité de « déléguée » au COD. Test : « Marie a été nommée déléguée » (passif) confirme que « déléguée » porte sur « Marie ».",
      },
      {
        sentence:
          "Dans « Ma sœur est devenue avocate », « avocate » est un GN attribut du sujet.",
        isCorrect: true,
        explanation:
          "« devenir » est un verbe attributif. « avocate » (GN sans déterminant, attribut du sujet) attribue une propriété au sujet « ma sœur ». Il s'accorde en genre avec le sujet (féminin).",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const fonctionsGrammaticalesSprint: Fiche = {
  id: "grammaire-fonctions-sprint",
  slug: "fonctions-grammaticales-sprint",
  title: "Fonctions grammaticales",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["fonction", "sujet", "COD", "COI", "attribut", "épithète"],
  notionsLiees: ["nature-des-mots-sprint", "phrase-simple-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide. Pour les fonctions dans la phrase complexe (propositions subordonnées, apposition détachée), consulte la fiche Référence.",
    oneLiner:
      "La fonction d'un groupe indique son rôle dans la phrase, indépendamment de sa nature. On l'identifie par substitution pronominale : le sujet se remplace par « il/elle/ils », le COD par « le/la/les », le COI par « lui/leur/y/en », l'attribut du sujet est relié au sujet par un verbe attributif (être, sembler, paraître…). Un même groupe nominal peut être sujet dans une phrase et COD dans une autre : sa nature (GN) ne change pas, seule sa fonction varie.",
    exampleCorrect: {
      sentence: "Le directeur félicite les élèves.",
      explanation:
        "« Les élèves » est COD : on peut le remplacer par « les » (il les félicite) et le supprimer changerait le sens du verbe transitif direct.",
    },
    exampleWrong: {
      sentence:
        "Dans « il parle à ses élèves », « ses élèves » est un COD car c'est un GN.",
      explanation:
        "FAUX. La nature (GN) ne détermine pas la fonction. Ici, « parler à » est un verbe transitif indirect : « ses élèves » est COI (il leur parle).",
    },
    mainTrap:
      "Ne pas confondre nature et fonction : un GN peut être sujet, COD, COI, complément circonstanciel, attribut du sujet ou épithète selon la phrase. De même, un adjectif peut être épithète (il qualifie directement un nom : « une belle journée ») ou attribut du sujet (il est relié au sujet par un verbe attributif : « la journée est belle »). La nature de l'adjectif ne change pas ; sa fonction, si.",
    quiz: [
      {
        sentence:
          "Dans « Cette décision semble juste », le mot « juste » est attribut du sujet.",
        isCorrect: true,
        explanation:
          "« juste » est relié au sujet « cette décision » par le verbe attributif « sembler » : c'est bien un attribut du sujet.",
      },
      {
        sentence:
          "Dans « Elle pense à son avenir », « à son avenir » est un complément d'objet direct.",
        isCorrect: false,
        explanation:
          "« penser à » est un verbe transitif indirect. « à son avenir » est un COI (on ne peut pas le remplacer par « le/la/les » mais par « y »).",
      },
      {
        sentence:
          "Dans « Les enfants fatigués s'endormirent », « fatigués » est épithète du nom « enfants ».",
        isCorrect: true,
        explanation:
          "« fatigués » qualifie directement le nom « enfants » sans verbe intermédiaire : c'est une fonction épithète.",
      },
      {
        sentence:
          "Dans « Il mange une pomme », « une pomme » a pour fonction GN.",
        isCorrect: false,
        explanation:
          "GN est la nature de « une pomme », pas sa fonction. Sa fonction est COD du verbe « mange » (il la mange).",
      },
      {
        sentence:
          "Dans « Lundi, nous révisions », « lundi » est un complément circonstanciel de temps.",
        isCorrect: true,
        explanation:
          "« lundi » indique le moment de l'action, il est détachable et déplaçable (« nous révisions lundi ») : c'est un CC de temps.",
      },
    ],
  },
};

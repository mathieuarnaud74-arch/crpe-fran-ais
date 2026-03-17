import type { Fiche } from "@/features/fiches/types";

export const accordVerbeSujetSprint: Fiche = {
  id: "orthographe-accord-verbe-sujet-sprint",
  slug: "accord-verbe-sujet",
  title: "Accord du verbe avec le sujet",
  subtitle: "Révision express — 5 min",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["accord", "verbe", "sujet", "sujet inversé", "sujet collectif", "tournure impersonnelle"],
  notionsLiees: ["accord-groupe-nominal", "accord-participe-passe"],
  exercicesAssocies: ["orthographe-accord"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche ciblée sur les cas difficiles évalués au CRPE. Pour les règles de base, consulte la fiche Référence sur l'accord sujet-verbe.",
    oneLiner:
      "Le verbe s'accorde toujours avec son sujet réel, quelle que soit sa position. La procédure : identifier le vrai sujet (poser « qui est-ce qui ? »), ignorer les groupes nominaux intercalés, puis accorder. Dans les tournures impersonnelles (il + verbe + sujet réel), le verbe reste au singulier avec « il ».",
    exampleCorrect: {
      sentence: "Une foule de touristes envahissait la place.",
      explanation:
        "Sujet grammatical : « une foule » (sing. fém.) → verbe au singulier. Le complément « de touristes » (plur.) ne modifie pas l'accord.",
    },
    exampleWrong: {
      sentence: "Une foule de touristes envahissaient la place.",
      explanation:
        "Accord avec le complément du nom « touristes » (plur.) → FAUX. Le nom noyau sujet est « une foule », singulier.",
    },
    mainTrap:
      "Sujet collectif + complément du nom pluriel : « La plupart des élèves réussissent » (accord au pluriel car « la plupart » implique une majorité plurielle) vs « Une foule de spectateurs applaudissait » (accord au singulier car le noyau est « une foule »). La règle n'est pas uniforme : « la plupart », « beaucoup », « nombre de » → pluriel ; « une foule de », « une majorité de », « une série de » → singulier (noyau collectif singulier).",
    quiz: [
      {
        sentence:
          "Des dizaines de candidats se présentait au concours cette année.",
        isCorrect: false,
        explanation:
          "Le sujet est « des dizaines de candidats » : noyau « dizaines » (plur.) → se présentaient.",
      },
      {
        sentence:
          "La plupart des erreurs que commettent les élèves proviennent d'une lecture trop rapide.",
        isCorrect: true,
        explanation:
          "« La plupart » → accord au pluriel avec « erreurs ». La relative « que commettent les élèves » n'interfère pas avec l'accord du verbe principal.",
      },
      {
        sentence: "Il est arrivé plusieurs colis ce matin.",
        isCorrect: true,
        explanation:
          "Tournure impersonnelle : le sujet grammatical est « il » (sing.), le sujet réel « plusieurs colis » reste complément. Le verbe s'accorde avec « il » → singulier.",
      },
      {
        sentence:
          "L'enseignant, ainsi que ses collègues, ont participé à la réunion.",
        isCorrect: false,
        explanation:
          "« Ainsi que » entre virgules est une adjonction, non une coordination : le sujet reste « l'enseignant » seul → a participé.",
      },
      {
        sentence:
          "Ni l'un ni l'autre ne semblent avoir compris la consigne.",
        isCorrect: true,
        explanation:
          "Avec « ni… ni… » suivi de deux éléments distincts, l'accord au pluriel est admis (et même recommandé) lorsque les deux sujets sont envisagés ensemble.",
      },
    ],
  },
};

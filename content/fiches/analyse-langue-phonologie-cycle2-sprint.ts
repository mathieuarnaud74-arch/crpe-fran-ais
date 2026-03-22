import type { Fiche } from "@/features/fiches/types";

export const analyseLanguePhonologieCycle2Sprint: Fiche = {
  id: "analyse-langue-phonologie-cycle2-sprint",
  slug: "phonologie-cycle2-sprint",
  title: "La phonologie au cycle 2",
  subtitle: "Phonèmes, graphèmes et conscience phonologique",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 4,
  tags: [
    "phonologie",
    "phonème",
    "graphème",
    "conscience phonologique",
    "cycle 2",
    "syllabe",
  ],
  notionsLiees: [
    "didactique-conscience-phonologique-sprint",
    "didactique-apprendre-a-lire-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche sprint synthétise les notions clés de phonologie au programme du cycle 2. Pour approfondir la didactique de la conscience phonologique, consultez la fiche dédiée.",
    oneLiner:
      "La phonologie étudie les sons distinctifs de la langue (phonèmes) et leur relation avec les lettres ou groupes de lettres qui les transcrivent (graphèmes) — le français compte 36 phonèmes pour environ 130 graphèmes.",
    exampleCorrect: {
      sentence:
        "Le mot « bateau » comporte 4 phonèmes /b/-/a/-/t/-/o/ mais 6 lettres, car le graphème « eau » transcrit un seul phonème /o/.",
      explanation:
        "On distingue bien phonème (unité sonore minimale) et graphème (lettre ou groupe de lettres correspondant à un phonème). Le décalage entre nombre de phonèmes et nombre de lettres est caractéristique du français, langue à orthographe opaque.",
    },
    exampleWrong: {
      sentence:
        "Le mot « bateau » contient 6 sons parce qu'il a 6 lettres.",
      explanation:
        "Confondre lettre et son est l'erreur la plus fréquente. Le français n'est pas une langue transparente : un graphème peut comporter plusieurs lettres (« eau » = /o/, « ch » = /ʃ/, « an » = /ɑ̃/).",
    },
    mainTrap:
      "Le piège majeur est de confondre syllabe orale et syllabe écrite. Le mot « porte » a 2 syllabes écrites (por-te) mais une seule syllabe orale /pɔʁt/ en français standard. De même, « lecture » a 3 syllabes écrites (lec-tu-re) mais 2 syllabes orales /lɛk-tyʁ/. Au cycle 2, le travail sur la syllabe orale précède celui sur la syllabe écrite.",
    quiz: [
      {
        sentence:
          "Le français compte 36 phonèmes : 16 voyelles, 17 consonnes et 3 semi-voyelles (ou semi-consonnes).",
        isCorrect: true,
        explanation:
          "C'est le décompte de référence en phonologie du français : 16 phonèmes vocaliques (dont les voyelles nasales et le /ə/), 17 consonnes et 3 semi-voyelles (/j/, /w/, /ɥ/).",
      },
      {
        sentence:
          "Un graphème est toujours constitué d'une seule lettre.",
        isCorrect: false,
        explanation:
          "Un graphème peut être composé d'une lettre (« a »), de deux lettres ou digramme (« ou », « ch », « an »), voire de trois lettres ou trigramme (« eau », « ain »). C'est la plus petite unité graphique correspondant à un phonème.",
      },
      {
        sentence:
          "La conscience phonologique est la capacité à identifier et manipuler les unités sonores de la langue (syllabes, rimes, phonèmes).",
        isCorrect: true,
        explanation:
          "Selon les programmes Éduscol, la conscience phonologique est un prédicteur majeur de la réussite en lecture. Elle va du plus global (conscience syllabique) au plus fin (conscience phonémique).",
      },
      {
        sentence:
          "Le nombre de syllabes orales d'un mot correspond toujours au nombre de syllabes écrites.",
        isCorrect: false,
        explanation:
          "En français, la syllabation orale diffère souvent de la syllabation écrite à cause des « e » muets. « Porte » = 2 syllabes écrites mais 1 syllabe orale /pɔʁt/. C'est une source majeure de difficulté pour les élèves de cycle 2.",
      },
      {
        sentence:
          "Le principe alphabétique repose sur la correspondance entre phonèmes et graphèmes.",
        isCorrect: true,
        explanation:
          "Comprendre le principe alphabétique, c'est comprendre que les lettres (graphèmes) codent des sons (phonèmes). C'est le fondement de l'apprentissage de la lecture au cycle 2 selon les programmes 2021.",
      },
    ],
  },
};

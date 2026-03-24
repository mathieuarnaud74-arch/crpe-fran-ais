import type { Fiche } from "@/features/fiches/types";

export const graphophonologieCgpSprint: Fiche = {
  id: "didactique-graphophonologie-cgp-sprint",
  slug: "graphophonologie-cgp-sprint",
  title: "Graphophonologie et CGP",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "graphophonologie",
    "CGP",
    "graphème",
    "phonème",
    "décodage",
    "encodage",
    "cycle 2",
    "CP",
    "lecture",
  ],
  notionsLiees: [
    "conscience-phonologique-sprint",
    "apprendre-a-lire-sprint",
    "enseignement-orthographe-sprint",
  ],
  exercicesAssocies: ["graphophonologie_cgp"],
  content: {
    model: "sprint",
    disclaimer:
      "Les correspondances graphèmes-phonèmes (CGP) sont au cœur de l'enseignement de la lecture au CP. Au CRPE, vous serez évalué sur votre capacité à identifier les graphèmes complexes, analyser les erreurs d'encodage/décodage d'élèves et justifier une progression pédagogique. Ce point est systématiquement présent dans les épreuves de didactique.",
    oneLiner:
      "La graphophonologie désigne l'étude des correspondances entre les unités de l'écrit (graphèmes) et les unités sonores de l'oral (phonèmes). Enseigner le code CGP, c'est apprendre à l'élève à convertir des graphèmes en phonèmes (décodage / lecture) et des phonèmes en graphèmes (encodage / écriture). Le français est une langue à orthographe opaque : un même phonème peut s'écrire de plusieurs façons (/o/ → o, au, eau, ô) et un même graphème peut se lire de plusieurs façons (le 's' → /s/ dans 'sac', /z/ dans 'rose', muet dans 'bras').",
    exampleCorrect: {
      sentence:
        "Dans le mot 'château', le graphème 'ch' correspond au phonème /ʃ/, le graphème 'â' correspond à /a/ (allongé) et le graphème 'eau' correspond à /o/. Cet enseignement relève des CGP.",
      explanation:
        "L'analyse est correcte : on distingue bien le graphème (unité graphique : une ou plusieurs lettres) du phonème (unité sonore). 'ch' est un digramme (2 lettres = 1 son), 'eau' est un trigramme (3 lettres = 1 son). Identifier ces correspondances est l'objectif central de l'enseignement du code au CP. Éduscol recommande un enseignement explicite et systématique des CGP, dans une progression des graphèmes simples (a, i, o) vers les graphèmes complexes (ou, on, eau, gn…).",
    },
    exampleWrong: {
      sentence:
        "La méthode globale est préférable à la méthode syllabique pour enseigner la lecture au CP, car elle permet de lire des textes complets plus rapidement.",
      explanation:
        "FAUX selon les consensus scientifiques actuels. La méthode globale (reconnaitre les mots comme des images sans décoder le code) a été abandonnée car elle ne permet pas de développer la voie phonologique indispensable pour lire les mots nouveaux. Les neurosciences cognitives (Dehaene, 2007) et les rapports officiels (rapport Longuet, 2013 ; Éduscol 2019) convergent vers un enseignement explicite et systématique du code (méthode phonique/syllabique). La méthode syllabique progresse graphème par graphème, puis syllabe par syllabe, pour aboutir à la lecture de mots entiers.",
    },
    mainTrap:
      "Confondre conscience phonologique et graphophonologie (CGP). La conscience phonologique est une compétence ORALE : l'élève manipule les sons sans voir l'écrit (compter les syllabes, trouver les rimes). La graphophonologie établit le LIEN entre l'écrit et l'oral : elle nécessite la présence de lettres/graphèmes. Un élève peut avoir une bonne conscience phonologique mais de mauvaises CGP (il reconnaît les sons à l'oral mais ne sait pas quelles lettres les transcrivent), et inversement. Les deux doivent être enseignées conjointement mais distinctement.",
    quiz: [
      {
        sentence:
          "Dans le mot 'gymnase', le graphème 'y' correspond au phonème /i/.",
        isCorrect: true,
        explanation:
          "Vrai. Le 'y' dans 'gymnase' se prononce /i/ (comme dans 'gris'). C'est une correspondance graphème-phonème irrégulière que les élèves doivent mémoriser. On parle de graphème « polyvalent » car 'y' peut aussi correspondre à /j/ dans 'yeux' ou '/ij/' dans 'crayon'. Ces irrégularités justifient un enseignement explicite et mémorisé (pas devinable par règle).",
      },
      {
        sentence:
          "Le graphème 's' correspond toujours au phonème /s/ en français.",
        isCorrect: false,
        explanation:
          "FAUX. Le 's' est un graphème polyvalent : il correspond à /s/ en début de mot ('sac', 'soleil') ou entre une consonne et une voyelle ('penser'), mais à /z/ entre deux voyelles ('maison', 'rose', 'poison'). Il est également muet dans certains mots ('bras', 'gros', 'pas'). Cette polyvalence est source d'erreurs fréquentes d'encodage chez les élèves de CP-CE1 ('rouze' au lieu de 'rouge').",
      },
      {
        sentence:
          "Un élève de CP qui écrit 'feto' pour 'château' manifeste une erreur de décodage.",
        isCorrect: false,
        explanation:
          "FAUX. C'est une erreur d'ENCODAGE (production écrite), pas de décodage (lecture). L'élève a transcrit les sons entendus avec les graphèmes les plus simples : /ʃ/ → « f » (erreur : le phonème /ʃ/ se transcrit « ch », pas « f »), /a/ → « e » (erreur de vocalisme), /o/ → « o » (graphème régulier mais incorrect pour ce mot : « château » exige le trigramme « eau »). Cette analyse montre que l'élève n'a pas encore mémorisé le graphème 'ch' pour le phonème /ʃ/ ni le graphème 'â' pour /a/. La distinction encodage/décodage est fondamentale pour l'analyse des erreurs d'élèves au CRPE.",
      },
      {
        sentence:
          "La progression CGP recommandée par Éduscol commence par les graphèmes les plus fréquents en français.",
        isCorrect: true,
        explanation:
          "Vrai. Éduscol recommande d'introduire en priorité les graphèmes les plus fréquents et les plus réguliers (a, i, o, u, l, m, r, s…) avant les graphèmes complexes ou les correspondances irrégulières. Cette progression fondée sur la fréquence et la régularité permet aux élèves d'accéder rapidement à la lecture de nombreux mots avec peu de graphèmes. La plupart des méthodes syllabiques actuelles (Boscher, Taoki, Pilotis) suivent ce principe.",
      },
      {
        sentence:
          "En français, le nombre de phonèmes est supérieur au nombre de graphèmes simples (26 lettres).",
        isCorrect: true,
        explanation:
          "Vrai. Le français compte 36 phonèmes environ (selon les variantes dialectales) pour 26 lettres de l'alphabet. L'écart est comblé par les graphèmes complexes (digrammes et trigrammes) : 'ch' /ʃ/, 'ou' /u/, 'eau' /o/, 'gn' /ɲ/, 'oi' /wa/, etc. Cette inadéquation entre nombre de phonèmes et nombre de lettres simples est une source de complexité pour l'apprentissage du code et justifie un enseignement progressif et explicite.",
      },
    ],
  },
};

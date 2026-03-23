import type { Fiche } from "@/features/fiches/types";

export const langageOralMaternelleSprint: Fiche = {
  id: "didactique-langage-oral-maternelle-sprint",
  slug: "langage-oral-maternelle-sprint",
  title: "Langage oral en maternelle",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "langage oral",
    "maternelle",
    "cycle 1",
    "PS",
    "MS",
    "GS",
    "acquisition du langage",
    "dictée à l'adulte",
    "comptines",
  ],
  notionsLiees: [
    "conscience-phonologique-sprint",
    "graphophonologie-cgp-sprint",
    "apprendre-a-lire-sprint",
  ],
  exercicesAssocies: ["did_oral_enjeux", "didactique_oral_ecole"],
  content: {
    model: "sprint",
    disclaimer:
      "Le développement du langage oral en maternelle est un enjeu fondamental du cycle 1 et un point incontournable du CRPE. Les questions portent souvent sur les modalités d'organisation de la classe, les dispositifs adaptés à chaque section, et l'analyse des productions langagières d'élèves. Connaître les repères du développement du langage de 2 à 6 ans est indispensable.",
    oneLiner:
      "La maternelle est le lieu privilégié de l'acquisition et du développement du langage oral. Ses objectifs sont doubles : (1) permettre à chaque élève de construire le langage comme outil de communication et de pensée, et (2) préparer l'entrée dans l'écrit (conscience phonologique, langage décontextualisé). Les programmes 2021 distinguent deux dimensions : le langage en situation (ici et maintenant) et le langage évoqué (parler de ce qui est absent, raconter, imaginer).",
    exampleCorrect: {
      sentence:
        "Un enseignant de GS organise des ateliers de 'dictée à l'adulte' où les élèves dictent collectivement un texte qu'il transcrit. C'est une activité de langage oral permettant de comprendre la fonction de l'écrit.",
      explanation:
        "Vrai. La dictée à l'adulte est un dispositif fondamental recommandé par Éduscol (dès la MS) : l'élève produit un texte à l'oral que l'enseignant écrit sous ses yeux. Ce dispositif remplit plusieurs fonctions : (1) développer le langage évoqué (l'élève formule pour l'absent, de façon décontextualisée), (2) comprendre le principe alphabétique (ce qu'on dit peut être écrit et relu), (3) travailler la syntaxe écrite (l'enseignant reformule 'comme à l'écrit' : « on dit 'il a mangé', mais à l'écrit on écrit... »). C'est un pont décisif entre l'oral et l'écrit.",
    },
    exampleWrong: {
      sentence:
        "En Petite Section, l'objectif principal du langage oral est que les élèves apprennent à tenir une conversation longue et structurée sur des thèmes abstraits.",
      explanation:
        "FAUX. Les objectifs en PS sont adaptés au développement de l'enfant de 2-3 ans. À cet âge, les enfants acquièrent le vocabulaire de base (objets quotidiens, actions, relations spatiales), construisent des phrases simples (sujet-verbe-complément), et entrent dans les échanges ritualisés (bonjour, questions simples). Les conversations longues et abstraites correspondent à des objectifs de Grande Section ou de cycle 2. Une erreur fréquente au CRPE est de ne pas différencier les attentes selon la section (PS/MS/GS). En PS, la priorité est l'entrée dans la communication : comprendre et se faire comprendre.",
    },
    mainTrap:
      "Réduire le travail sur le langage oral à des moments formels (cercle de regroupement, temps de parole). Le langage se développe aussi — et surtout — dans les interactions informelles : lors des ateliers, des jeux, des récréations, des soins (habillage, repas). L'enseignant doit créer des situations de « parler pour apprendre » tout au long de la journée. Le rapport Florin/Léon (2019) et les textes Éduscol insistent sur la nécessité d'interactions langagières individualisées ou en petit groupe, plus efficaces que les échanges en grand groupe où la majorité des élèves reste silencieuse.",
    quiz: [
      {
        sentence:
          "La 'dictée à l'adulte' est réservée à la Grande Section car les élèves de PS et MS n'ont pas les compétences langagières suffisantes.",
        isCorrect: false,
        explanation:
          "FAUX. La dictée à l'adulte peut être pratiquée dès la Moyenne Section, et certaines modalités adaptées dès la PS (dictée collective d'une phrase courte). En MS, les élèves peuvent dicter des légendes d'images, des messages courts, ou co-construire un texte court. En GS, ils dictent des textes plus longs (récit, compte rendu, liste). L'adaptation tient aux supports et à la longueur du texte, pas à l'exclusion des plus jeunes.",
      },
      {
        sentence:
          "Le 'langage évoqué' désigne la capacité à parler de situations non présentes (passé, futur, imaginaire, fiction).",
        isCorrect: true,
        explanation:
          "Exact. C'est la distinction fondamentale des programmes de cycle 1. Le langage en situation s'appuie sur le contexte immédiat (ici et maintenant : « Passe-moi le rouge »), tandis que le langage évoqué se décontextualise : raconter une histoire, décrire ce qui s'est passé hier, expliquer comment on a construit son château. Le langage évoqué est un prérequis pour la compréhension de lecture (les textes parlent d'événements absents) et un marqueur fort des inégalités sociales (Bernstein, Bourdieu).",
      },
      {
        sentence:
          "Les comptines et jeux de langage ont principalement une fonction récréative en maternelle et n'ont pas d'impact sur l'apprentissage.",
        isCorrect: false,
        explanation:
          "FAUX. Les comptines et jeux de langage remplissent plusieurs fonctions pédagogiques documentées : (1) développement de la conscience phonologique (rimes, syllabes, allitérations), (2) mémorisation du vocabulaire et de structures syntaxiques par la répétition, (3) plaisir du langage comme moteur de l'implication, (4) entrée dans la culture commune (patrimoine oral). Elles sont recommandées par Éduscol à toutes les sections et constituent un outil pédagogique à part entière, pas un simple divertissement.",
      },
      {
        sentence:
          "En maternelle, les interactions en petit groupe (3-4 élèves) sont plus favorables au développement du langage oral qu'en grand groupe (classe entière).",
        isCorrect: true,
        explanation:
          "Exact. Les recherches en acquisition du langage (notamment Florin, 1999) montrent que le temps de parole de chaque élève est significativement plus important en petit groupe. En grand groupe, la parole est monopolisée par les élèves les plus à l'aise, tandis que les plus fragiles restent silencieux. Les ateliers langagiers en petits groupes (avec l'enseignant ou un ATSEM formé) permettent des interactions plus individualisées, un étayage plus précis et une meilleure prise de risque langagier pour les élèves timides ou peu scolarisés.",
      },
      {
        sentence:
          "L'objectif du langage oral en GS est de préparer les élèves à la lecture en développant le vocabulaire et la conscience phonologique.",
        isCorrect: true,
        explanation:
          "Exact. En GS, le travail oral prend une orientation pré-scolaire marquée : (1) enrichissement du vocabulaire (objectif de 2 500 à 3 000 mots en réception à l'entrée au CP), (2) conscience phonologique (syllabes, rimes, phonèmes), (3) langage évoqué élaboré (raconter, expliquer, argumenter). Ces compétences sont des prédicteurs robustes de la réussite en lecture-écriture au CP. Les programmes 2021 articulent explicitement les apprentissages du langage oral en GS avec les premières activités d'entrée dans l'écrit.",
      },
    ],
  },
};

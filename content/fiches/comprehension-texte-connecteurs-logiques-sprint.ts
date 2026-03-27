import type { Fiche } from "@/features/fiches/types";

export const connecteursLogiquesSprint: Fiche = {
  id: "comprehension-texte-connecteurs-logiques-sprint",
  slug: "connecteurs-logiques-sprint",
  title: "Les connecteurs logiques",
  subtitle: "Fiche express",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "connecteurs",
    "logique",
    "argumentation",
    "cause",
    "conséquence",
    "opposition",
    "addition",
  ],
  notionsLiees: ["connecteurs-sprint", "texte-argumentatif-sprint"],
  exercicesAssocies: ["comp_connecteurs_argumentation"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche traite des connecteurs logiques (mots ou locutions exprimant des relations logiques entre les idées). Les connecteurs temporels (d'abord, ensuite, enfin) et spatiaux (ici, là-bas) ne sont pas abordés en détail. Au CRPE, il est fréquent de devoir identifier la relation logique exprimée par un connecteur et de justifier son rôle dans la cohérence textuelle.",
    oneLiner:
      "Les connecteurs logiques sont des mots ou locutions qui structurent le discours en exprimant des relations logiques : addition, cause, conséquence, opposition, concession, but, condition.",
    exampleCorrect: {
      sentence:
        "Dans « Il pleut ; cependant, nous sortons quand même », « cependant » est un connecteur d'opposition (ou de concession). Il marque un contraste entre la pluie (argument défavorable à la sortie) et la décision de sortir.",
      explanation:
        "L'identification est correcte. « Cependant » est un adverbe de liaison qui exprime la concession : on reconnaît la validité du premier argument tout en affirmant le contraire. Autres connecteurs de concession : néanmoins, toutefois, pourtant, malgré tout. Au CRPE, il faut distinguer opposition stricte (mais) et concession (cependant, bien que).",
    },
    exampleWrong: {
      sentence:
        "Confondre « en effet » (connecteur de cause ou de justification) avec « en fait » (connecteur de rectification). « Il est absent, en effet il est malade » (justification). « Il semblait calme ; en fait, il était furieux » (rectification).",
      explanation:
        "C'est une confusion fréquente dans les copies. « En effet » introduit une explication ou une preuve qui confirme ce qui précède (relation de cause). « En fait » (ou « en réalité ») rectifie ou contredit une apparence, une idée reçue. Le sens est presque opposé. Au CRPE, cette distinction peut apparaître dans les exercices de réécriture ou d'analyse textuelle.",
    },
    mainTrap:
      "Confondre les connecteurs temporels (puis, ensuite, alors) avec les connecteurs logiques. « Alors » peut exprimer une conséquence logique (« Il pleut, alors je prends un parapluie ») ou une simple succession temporelle (« Il mangea, alors il partit »). Au CRPE, il faut analyser le contexte pour déterminer si la relation est logique (cause-conséquence) ou chronologique (succession dans le temps).",
    quiz: [
      {
        sentence:
          "« Car » et « parce que » expriment tous les deux la cause, mais « car » est une conjonction de coordination et « parce que » une conjonction de subordination.",
        isCorrect: true,
        explanation:
          "Exact. Les deux expriment la cause, mais leur nature grammaticale diffère. « Car » est une conjonction de coordination : elle lie deux propositions indépendantes dont la seconde justifie la première. « Parce que » est une conjonction de subordination : elle subordonne une proposition causale à la principale. Conséquence syntaxique : on ne peut pas commencer une phrase par « car » dans l'usage soutenu (« *Car il pleut, je reste » est incorrect), tandis que « Parce qu'il pleut, je reste » est correct.",
      },
      {
        sentence:
          "Le connecteur « or » exprime l'opposition entre deux idées contraires.",
        isCorrect: false,
        explanation:
          "FAUX. « Or » n'exprime pas l'opposition mais l'introduction d'un fait nouveau qui va orienter l'argumentation. C'est un connecteur d'articulation logique typique du syllogisme : « Tous les hommes sont mortels. Or Socrate est un homme. Donc Socrate est mortel. » Il introduit la mineure d'un raisonnement, pas un contraste.",
      },
      {
        sentence:
          "« Bien que » suivi du subjonctif exprime la concession.",
        isCorrect: true,
        explanation:
          "Exact. « Bien que » est une locution conjonctive de concession qui exige le subjonctif : « Bien qu'il pleuve, nous sortons ». La concession consiste à admettre un argument tout en maintenant une conclusion contraire. Autres locutions concessives au subjonctif : quoique, encore que. C'est un point de grammaire fréquent au CRPE.",
      },
      {
        sentence:
          "Les connecteurs « donc », « par conséquent » et « c'est pourquoi » expriment tous la conséquence.",
        isCorrect: true,
        explanation:
          "Exact. Ces trois connecteurs introduisent une conséquence logique : le fait B découle du fait A. « Donc » est traditionnellement classé parmi les conjonctions de coordination (dans « mais, ou, et, donc, or, ni, car »), bien que de nombreuses grammaires le traitent comme un adverbe de liaison — les deux classements coexistent et sont acceptables au CRPE. « Par conséquent » et « c'est pourquoi » sont des locutions adverbiales. Ces trois connecteurs sont interchangeables du point de vue du sens, mais varient en registre (« donc » est courant, « par conséquent » est plus soutenu).",
      },
      {
        sentence:
          "Dans un texte argumentatif, les connecteurs logiques sont facultatifs car le lecteur peut toujours reconstituer les relations entre les idées.",
        isCorrect: false,
        explanation:
          "FAUX. Les connecteurs logiques sont essentiels à la cohérence et à la lisibilité d'un texte argumentatif. Sans eux, le lecteur doit inférer les relations logiques, ce qui alourdit la compréhension et peut créer des ambiguïtés. Les programmes soulignent l'importance d'enseigner explicitement l'usage des connecteurs en production écrite, dès le cycle 2.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const coherenceTextuelleSprint: Fiche = {
  id: "comprehension-coherence-textuelle-sprint",
  slug: "coherence-textuelle-sprint",
  title: "Cohérence et cohésion textuelle",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "cohérence",
    "cohésion",
    "progression thématique",
    "connecteurs",
    "reprises",
  ],
  notionsLiees: ["anaphores-substitution-sprint", "connecteurs-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche distingue cohérence et cohésion selon la linguistique textuelle et la terminologie Éduscol 2021. Au CRPE, ces notions apparaissent en analyse de texte (repérer les procédés de cohésion, identifier le type de progression thématique) et en didactique (aider un élève à produire un texte à la fois cohérent et cohésif).",
    oneLiner:
      "La cohérence est la logique globale du texte : non-contradiction entre les informations, pertinence par rapport à la situation de communication, et progression de l'information (le texte apporte du nouveau sans perdre le fil). La cohésion repose sur les marques linguistiques observables qui assurent la continuité du texte : connecteurs logiques et temporels, reprises anaphoriques (pronoms, substituts lexicaux, hyperonymes, synonymes), et concordance des temps verbaux. Les progressions thématiques décrivent comment thème (ce dont on parle) et rhème (ce qu'on en dit) s'enchaînent : à thème constant (même sujet, rhèmes différents), linéaire (le rhème d'une phrase devient le thème de la suivante), éclatée (un hyperthème est décliné en sous-thèmes).",
    exampleCorrect: {
      sentence:
        "Progression linéaire : « Les abeilles produisent du miel. Ce miel est récolté par les apiculteurs. Les apiculteurs le vendent sur les marchés. » — Le rhème de chaque phrase devient le thème de la suivante.",
      explanation:
        "C'est un exemple canonique de progression thématique linéaire. Phrase 1 : thème = les abeilles, rhème = produisent du miel. Phrase 2 : « ce miel » (ancien rhème devenu thème), rhème = est récolté par les apiculteurs. Phrase 3 : « les apiculteurs » (ancien rhème devenu thème), rhème = le vendent sur les marchés. L'information avance en cascade : chaque nouvelle information devient le point de départ de la phrase suivante.",
    },
    exampleWrong: {
      sentence:
        "« Le texte est cohérent parce qu'il contient beaucoup de connecteurs : d'abord, ensuite, enfin, donc, cependant. » — Confondre cohésion et cohérence.",
      explanation:
        "FAUX. Les connecteurs sont des marques de cohésion (outils linguistiques de liaison), pas des garanties de cohérence. Un texte peut accumuler les connecteurs tout en étant incohérent : « D'abord, le chat dormait. Ensuite, la Terre est ronde. Enfin, les dinosaures avaient faim. » Ce texte est cohésif en surface (connecteurs temporels) mais totalement incohérent (aucun lien logique entre les propositions). La cohérence est un jugement sur le sens global, pas sur les outils formels.",
    },
    mainTrap:
      "Un texte peut avoir des marques de cohésion (connecteurs, reprises pronominales, temps verbaux cohérents) tout en manquant de cohérence (logique absurde, contradictions internes, hors-sujet). Inversement, un texte oral spontané peut être cohérent (on comprend le message) malgré une cohésion faible (peu de connecteurs, répétitions au lieu de reprises variées). Au CRPE, le piège est double : confondre les deux notions dans l'analyse de texte, et croire en didactique qu'il suffit d'enseigner les connecteurs pour améliorer la qualité des textes d'élèves. Il faut travailler les deux plans : la logique des idées (cohérence) et les outils de liaison (cohésion).",
    quiz: [
      {
        sentence:
          "La progression thématique à thème constant consiste à garder le même sujet (thème) tout au long du passage, en apportant à chaque phrase une information nouvelle (rhème différent).",
        isCorrect: true,
        explanation:
          "Exact. Exemple : « Le chat dort sur le canapé. Le chat a mangé ce matin. Le chat se lèvera bientôt. » Le thème (le chat) reste constant, seul le rhème change. C'est la progression la plus simple, fréquente dans les descriptions et les portraits. En production d'écrit, elle peut mener à la répétition si les reprises anaphoriques ne sont pas variées.",
      },
      {
        sentence:
          "La cohésion est un jugement global du lecteur sur le sens du texte, tandis que la cohérence repose sur les marques linguistiques observables.",
        isCorrect: false,
        explanation:
          "FAUX. C'est exactement l'inverse. La cohérence est le jugement global sur le sens (le texte est-il logique ? non-contradictoire ? pertinent ?). La cohésion repose sur les marques linguistiques observables dans le texte (connecteurs, reprises anaphoriques, temps verbaux, progression thématique). Ne pas inverser les deux est essentiel au CRPE.",
      },
      {
        sentence:
          "La progression thématique éclatée (ou à thèmes dérivés) consiste à décliner un hyperthème en plusieurs sous-thèmes successifs.",
        isCorrect: true,
        explanation:
          "Exact. Exemple avec l'hyperthème « la maison » : « Le salon est lumineux. La cuisine donne sur le jardin. Les chambres sont à l'étage. » Chaque phrase développe un sous-thème (salon, cuisine, chambres) rattaché à l'hyperthème commun (la maison). Cette progression est typique des textes descriptifs et des paragraphes d'énumération.",
      },
      {
        sentence:
          "Un texte qui accumule les connecteurs (« puis, ensuite, alors, donc, cependant ») est nécessairement un texte cohérent.",
        isCorrect: false,
        explanation:
          "FAUX. L'accumulation de connecteurs est une marque de cohésion de surface, mais ne garantit pas la cohérence. Un texte d'élève peut enchaîner « Le soleil brille. Puis la table est carrée. Donc les poissons nagent. Cependant j'aime le chocolat. » : les connecteurs sont présents, le texte est incohérent. En didactique, il faut travailler la logique des idées (plan du texte, enchaînement des arguments) autant que les outils de liaison.",
      },
      {
        sentence:
          "Dans la progression linéaire, le rhème (information nouvelle) de la phrase N devient le thème (point de départ) de la phrase N+1.",
        isCorrect: true,
        explanation:
          "Exact. C'est la définition même de la progression linéaire. Exemple : « L'orage a provoqué une inondation (rhème). Cette inondation (thème) a détruit les récoltes (rhème). Les récoltes détruites (thème) ont entraîné une pénurie (rhème). » L'information progresse en chaîne : chaque information nouvelle sert de tremplin à la phrase suivante. C'est la progression la plus dynamique, typique des textes narratifs et explicatifs.",
      },
    ],
  },
};

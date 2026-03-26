import type { Fiche } from "@/features/fiches/types";

export const participeGerondifSprint: Fiche = {
  id: "conjugaison-participe-gerondif-sprint",
  slug: "participe-present-gerondif-adjectif-verbal",
  title: "Participe présent, gérondif et adjectif verbal",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "participe présent",
    "gérondif",
    "adjectif verbal",
    "accord",
    "invariabilité",
    "forme en -ant",
  ],
  notionsLiees: [
    "participe-passe-sprint",
    "voix-active-passive-sprint",
    "accord-verbe-sujet-sprint",
  ],
  exercicesAssocies: [
    "conj_participe_adjectif_verbal",
    "conj_participe_gerondif",
  ],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche traite des trois formes en -ant, source de confusions fréquentes au CRPE. La distinction repose sur des critères syntaxiques précis : nature (verbe ou adjectif), accord, et possibilité de négation ou de complémentation.",
    oneLiner:
      "Trois formes en -ant à ne pas confondre : le participe présent (forme verbale, INVARIABLE : « des enfants courant dans la cour ») ; le gérondif (participe présent précédé de « en » : « en courant ») ; l'adjectif verbal (adjectif, VARIABLE : « des eaux courantes »). Seul l'adjectif verbal s'accorde en genre et en nombre.",
    exampleCorrect: {
      sentence:
        "« Les fillettes, obéissant à leur mère, rentrèrent. » → participe présent (invariable, équivaut à « qui obéissaient »). « Elles sont très obéissantes. » → adjectif verbal (s'accorde, modifiable par « très »).",
      explanation:
        "Le participe présent est toujours invariable et exprime une action (on peut le remplacer par une relative « qui + verbe conjugué »). L'adjectif verbal exprime un état ou une qualité durable, s'accorde, et peut être modifié par un adverbe de degré (très, peu, assez). Cette distinction est le cœur du sujet au CRPE.",
    },
    exampleWrong: {
      sentence:
        "« Des personnes courantes dans le parc » avec accord de « courant ».",
      explanation:
        "FAUX. Ici « courant » exprime une action en cours (= qui courent), c'est donc un participe présent : il reste INVARIABLE → « des personnes courant dans le parc ». L'adjectif verbal « courant(e)(s) » existe mais signifie « habituel, ordinaire » (eau courante, usage courant), pas « en train de courir ». Le sens change !",
    },
    mainTrap:
      "Certains verbes ont un participe présent et un adjectif verbal qui s'écrivent DIFFÉREMMENT. Les cas les plus fréquents au CRPE : « fatiguant » (participe, invariable) vs « fatigant » (adjectif, variable) ; « convainquant » vs « convaincant » ; « provoquant » vs « provocant » ; « négligeant » (participe) vs « négligent » (adjectif) ; « précédant » vs « précédent » ; « différant » vs « différent ». Règle : quand l'orthographe diffère, la forme en -quant/-geant est le participe présent (verbal), la forme en -cant/-gent est l'adjectif verbal.",
    quiz: [
      {
        sentence:
          "Le participe présent est toujours invariable.",
        isCorrect: true,
        explanation:
          "VRAI. Le participe présent est une forme verbale : il ne s'accorde jamais. « Les filles chantant dans la chorale » (pas « chantantes »). Seul l'adjectif verbal s'accorde. C'est la règle fondamentale de ce chapitre, fixée depuis l'arrêté de 1900.",
      },
      {
        sentence:
          "Le gérondif est formé de « en » + participe présent et exprime la simultanéité ou la manière.",
        isCorrect: true,
        explanation:
          "VRAI. « En marchant, il réfléchissait » (simultanéité). « Elle a réussi en travaillant dur » (manière/moyen). Le gérondif a toujours le même sujet que le verbe principal. Il est invariable comme le participe présent. Sa structure est : en + radical + -ant.",
      },
      {
        sentence:
          "« Fatigant » et « fatiguant » sont deux orthographes du même mot.",
        isCorrect: false,
        explanation:
          "FAUX. Ce sont deux mots différents. « Fatiguant » (avec -gu-) est le participe présent du verbe fatiguer (invariable) : « Ces exercices fatiguant les élèves… ». « Fatigant » (sans -u-) est l'adjectif verbal (variable) : « Ces exercices sont fatigants. » La différence d'orthographe signale la différence de nature.",
      },
      {
        sentence:
          "On peut remplacer un participe présent par « qui + verbe conjugué » pour le distinguer de l'adjectif verbal.",
        isCorrect: true,
        explanation:
          "VRAI. C'est le test le plus fiable. « Des enfants courant dans la cour » = « des enfants qui courent dans la cour » → participe présent. Mais « une eau courante » ≠ « une eau qui court » (le sens change) → adjectif verbal. Si la substitution par « qui + verbe » conserve le sens, c'est un participe présent.",
      },
      {
        sentence:
          "Le gérondif peut avoir un sujet différent de celui du verbe principal.",
        isCorrect: false,
        explanation:
          "FAUX. Le gérondif doit avoir le même sujet que le verbe principal. « En arrivant, Pierre a vu le chat » = Pierre arrive ET Pierre voit. « En arrivant, le chat a miaulé » est incorrect si c'est Pierre qui arrive (sujet différent → anacoluthe, faute de construction). Cette contrainte de coréférence du sujet est un point de grammaire fréquemment testé.",
      },
    ],
  },
};

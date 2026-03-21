import type { Fiche } from "@/features/fiches/types";

export const attributVerbesAttributifsSprint: Fiche = {
  id: "grammaire-attribut-verbes-attributifs-sprint",
  slug: "attribut-verbes-attributifs-sprint",
  title: "L'attribut du sujet et les verbes attributifs",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "attribut",
    "verbe attributif",
    "être",
    "sembler",
    "attribut du COD",
  ],
  notionsLiees: ["fonctions-grammaticales-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Connaître les fonctions grammaticales de base (sujet, COD, COI) est un prérequis pour cette fiche.",
    oneLiner:
      "L'attribut du sujet est une fonction grammaticale : il exprime une qualité ou une identité attribuée au sujet par l'intermédiaire d'un verbe attributif. Les principaux verbes attributifs sont : être, sembler, paraître, devenir, rester, demeurer, avoir l'air, passer pour. ATTENTION : la terminologie officielle (Éduscol 2021) impose le terme « verbe attributif » et non « verbe d'état ». L'attribut du sujet ne peut être ni supprimé ni déplacé : il est essentiel à la construction du verbe. Il s'accorde en genre et en nombre avec le sujet quand c'est un adjectif ou un participe. Il existe aussi un attribut du COD, qui attribue une qualité au COD par l'intermédiaire du verbe.",
    exampleCorrect: {
      sentence: "Cette élève semble motivée.",
      explanation:
        "« Motivée » est attribut du sujet « cette élève » par l'intermédiaire du verbe attributif « semble ». L'adjectif s'accorde au féminin singulier avec le sujet. On ne peut ni le supprimer (*« Cette élève semble ») ni le déplacer (*« Motivée cette élève semble »).",
    },
    exampleWrong: {
      sentence:
        "« Semble » est un verbe d'état, donc « motivée » est attribut du sujet.",
      explanation:
        "Le raisonnement arrive à la bonne conclusion (« motivée » est bien attribut du sujet), mais le terme « verbe d'état » est erroné. La terminologie officielle Éduscol 2021 impose « verbe attributif ». Au CRPE, utiliser « verbe d'état » dans une copie serait considéré comme une erreur terminologique.",
    },
    mainTrap:
      "Le piège le plus fréquent au CRPE est d'utiliser le terme « verbe d'état » au lieu de « verbe attributif » (terminologie officielle Éduscol 2021). Autre piège : confondre attribut du sujet et COD. L'attribut du sujet désigne la même entité ou qualifie le sujet (« Marie est médecin » → Marie = médecin), tandis que le COD désigne une entité différente du sujet (« Marie appelle le médecin » → Marie ≠ le médecin). Test : si l'on peut remplacer le verbe par le signe « = » entre le sujet et le complément, c'est un attribut. Enfin, ne pas oublier l'attribut du COD : « Je trouve ce film passionnant » → « passionnant » est attribut du COD « ce film » (ce film = passionnant selon le locuteur).",
    quiz: [
      {
        sentence:
          "Dans « Les enfants paraissent fatigués », « fatigués » est attribut du sujet construit avec un verbe d'état.",
        isCorrect: false,
        explanation:
          "« Fatigués » est bien attribut du sujet « les enfants », mais le terme correct est « verbe attributif » (terminologie Éduscol 2021), et non « verbe d'état ». « Paraître » est un verbe attributif.",
      },
      {
        sentence:
          "L'attribut du sujet peut être un adjectif, un GN, un infinitif ou un pronom.",
        isCorrect: true,
        explanation:
          "Correct. L'attribut du sujet peut prendre plusieurs formes : adjectif (« Elle est gentille »), GN (« Il est médecin »), infinitif (« Vivre, c'est agir »), pronom (« Il le devient » — « le » reprend un attribut déjà mentionné). La nature varie, mais la fonction reste la même.",
      },
      {
        sentence:
          "Dans « Je trouve ce film passionnant », « passionnant » est attribut du COD « ce film ».",
        isCorrect: true,
        explanation:
          "Correct. « Passionnant » attribue une qualité au COD « ce film » par l'intermédiaire du verbe « trouver » (ici en emploi attributif). On a bien : sujet (je) + verbe + COD (ce film) + attribut du COD (passionnant). Le test « ce film = passionnant » (selon le locuteur) confirme la relation attributive.",
      },
      {
        sentence:
          "L'attribut du sujet peut être supprimé de la phrase sans la rendre agrammaticale.",
        isCorrect: false,
        explanation:
          "FAUX. L'attribut du sujet est essentiel : on ne peut pas le supprimer. « Marie est intelligente » → *« Marie est » n'est pas grammatical (la phrase est incomplète). C'est une différence fondamentale avec un complément circonstanciel, qui est facultatif.",
      },
      {
        sentence:
          "Seul le verbe « être » peut introduire un attribut du sujet.",
        isCorrect: false,
        explanation:
          "FAUX. De nombreux verbes attributifs peuvent introduire un attribut du sujet : être, sembler, paraître, devenir, rester, demeurer, avoir l'air, passer pour, s'avérer, se révéler, etc. Exemples : « Il demeure silencieux », « Elle a l'air ravie », « Ce projet s'avère complexe ». Tous ces verbes sont des verbes attributifs.",
      },
    ],
  },
};

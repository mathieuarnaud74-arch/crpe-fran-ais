import type { Fiche } from "@/features/fiches/types";

export const voixPronominaleSprint: Fiche = {
  id: "conjugaison-voix-pronominale-sprint",
  slug: "voix-pronominale-sprint",
  title: "La voix pronominale",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "voix pronominale",
    "pronominal",
    "réfléchi",
    "réciproque",
    "essentiellement pronominal",
  ],
  notionsLiees: ["grammaire-voix-passive-sprint"],
  exercicesAssocies: ["conj_voix_modes_temps"],
  content: {
    model: "sprint",
    disclaimer:
      "Connaissance de la voix active et de la voix passive recommandée. La terminologie suit le cadre Éduscol 2021.",
    oneLiner:
      "La voix pronominale se caractérise par la présence d'un pronom réfléchi (me, te, se, nous, vous, se) coréférent au sujet. Selon la terminologie Éduscol 2021, on distingue quatre sous-types : (1) réfléchi — le sujet exerce l'action sur lui-même (« Elle se regarde ») ; (2) réciproque — les sujets agissent l'un sur l'autre (« Ils se parlent ») ; (3) à sens passif — le sujet subit l'action sans agent exprimé (« Ce livre se vend bien ») ; (4) essentiellement pronominal (ou à sens actif) — le verbe n'existe pas ou change de sens sans le pronom (« Elle s'évanouit », « Il se souvient »). Tous les verbes pronominaux se conjuguent avec l'auxiliaire être aux temps composés.",
    exampleCorrect: {
      sentence: "Elles se sont parlé pendant une heure.",
      explanation:
        "« Se parler » est un verbe pronominal réciproque (elles parlent l'une à l'autre). Le pronom « se » est COI (parler à quelqu'un), donc le participe passé « parlé » ne s'accorde pas — règle : avec un pronominal réciproque ou réfléchi, le PP s'accorde avec le COD si celui-ci précède le verbe ; ici « se » est COI, pas COD.",
    },
    exampleWrong: {
      sentence:
        "« Ce produit se vend facilement » est à la voix passive car le sujet subit l'action.",
      explanation:
        "FAUX. Il ne s'agit pas de la voix passive (qui nécessite l'auxiliaire être + PP + complément d'agent potentiel). C'est un verbe pronominal à sens passif : le pronom « se » donne au verbe actif une interprétation passive, mais la construction reste pronominale. On ne peut pas ajouter de complément d'agent (*« ce produit se vend par les clients »).",
    },
    mainTrap:
      "L'accord du participe passé des verbes pronominaux est le piège majeur au CRPE. Règle Éduscol : (1) Verbes essentiellement pronominaux → le PP s'accorde toujours avec le sujet (« Elles se sont évanouies »). (2) Verbes occasionnellement pronominaux (réfléchis, réciproques) → on analyse la fonction du pronom « se » : s'il est COD et précède le verbe, accord avec le sujet (« Elle s'est lavée ») ; s'il est COI, pas d'accord (« Elle s'est lavé les mains » — « les mains » est COD, « se » est COI). (3) Pronominaux à sens passif → accord avec le sujet (« Les pommes se sont bien vendues »). Ne pas confondre construction pronominale et voix passive.",
    quiz: [
      {
        sentence:
          "Dans « Ils se regardent », le verbe pronominal est de type réciproque.",
        isCorrect: true,
        explanation:
          "« Se regarder » implique ici que chacun regarde l'autre (l'un regarde l'autre et réciproquement). Le pronom « se » a une valeur réciproque. On pourrait ajouter « l'un l'autre » pour le confirmer.",
      },
      {
        sentence:
          "Le verbe « s'évanouir » est un verbe pronominal réfléchi car le sujet s'évanouit lui-même.",
        isCorrect: false,
        explanation:
          "FAUX. « S'évanouir » est un verbe essentiellement pronominal : le verbe « évanouir » n'existe pas seul (on ne dit pas *« j'évanouis quelqu'un »). Le pronom « se » n'a pas de fonction analysable (ni COD ni COI). Conséquence : le participe passé s'accorde toujours avec le sujet (« Elle s'est évanouie »).",
      },
      {
        sentence:
          "Dans « Elles se sont lavé les mains », le participe passé ne s'accorde pas avec le sujet car « se » est COI.",
        isCorrect: true,
        explanation:
          "Correct. « Se laver les mains » : le COD est « les mains » (placé après le verbe), et « se » est COI (= à elles-mêmes). Le PP ne s'accorde ni avec le sujet ni avec le COI. Si le COD précédait (« les mains qu'elles se sont lavées »), l'accord se ferait avec « les mains ».",
      },
      {
        sentence:
          "Dans « Cette maison s'est vendue rapidement », le verbe est à la voix passive.",
        isCorrect: false,
        explanation:
          "FAUX. C'est un verbe pronominal à sens passif, pas une voix passive. La voix passive aurait la forme « Cette maison a été vendue rapidement » (auxiliaire être + PP + complément d'agent possible). Ici, la construction pronominale « se vendre » donne un sens passif sans recourir à la transformation passive. Le PP s'accorde avec le sujet : « vendue ».",
      },
      {
        sentence:
          "Aux temps composés, tous les verbes pronominaux se conjuguent avec l'auxiliaire être.",
        isCorrect: true,
        explanation:
          "Correct. Quel que soit le sous-type (réfléchi, réciproque, à sens passif, essentiellement pronominal), les verbes pronominaux utilisent toujours l'auxiliaire être aux temps composés : « Elle s'est regardée », « Ils se sont parlé », « Ce livre s'est bien vendu », « Elle s'est souvenue ».",
      },
    ],
  },
};

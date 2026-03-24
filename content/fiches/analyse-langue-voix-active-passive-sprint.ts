import type { Fiche } from "@/features/fiches/types";

export const analyseLangueVoixActivePassiveSprint: Fiche = {
  id: "analyse-langue-voix-active-passive-sprint",
  slug: "voix-active-passive-sprint",
  title: "Voix active et voix passive",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "voix active",
    "voix passive",
    "transformation",
    "complément d'agent",
    "participe passé",
    "attribut du sujet",
  ],
  notionsLiees: ["voix-passive-sprint", "phrase-complexe-sprint"],
  exercicesAssocies: ["formes_de_phrase_et_voix_passive", "transformations_de_phrase_crpe"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche va plus loin que le simple repérage. Au CRPE, on attend une vraie justification : conditions de passivation, conservation du temps et distinction entre passif réel et construction attributive.",
    oneLiner:
      "Pour passer de l'actif au passif, il faut en principe un verbe transitif direct : le COD actif devient sujet passif, le verbe prend la forme ÊTRE + participe passé accordé avec le sujet, et l'ancien sujet devient un complément d'agent facultatif. Vérifiez toujours trois points : la transformation est-elle possible, le temps est-il conservé, et la phrase est-elle vraiment passive plutôt qu'attributive ?",
    exampleCorrect: {
      sentence: "Le jury corrigera les copies. → Les copies seront corrigées par le jury.",
      explanation:
        "La transformation est correcte : le verbe transitif direct « corriger » admet le passif, le COD « les copies » devient sujet, le futur est conservé avec « seront corrigées », et le participe passé s'accorde avec le sujet féminin pluriel.",
    },
    exampleWrong: {
      sentence: "Il est fatigué par la chaleur, donc la phrase est à la voix passive.",
      explanation:
        "FAUX. Ici, « fatigué » peut être interprété comme adjectif attribut du sujet. Le bon test consiste à reconstruire une phrase active canonique : « La chaleur le fatigue » est la forme active naturelle, mais l'énoncé d'origine décrit plutôt un état. Sans vrai complément d'agent ni transformation active univoque, on ne valide pas une passive.",
    },
    mainTrap:
      "La grande confusion du CRPE est double : 1) croire que toute phrase avec ÊTRE + participe passé est passive, alors qu'on peut avoir un attribut du sujet (« La porte est fermée » peut décrire un état) ; 2) oublier que beaucoup de verbes ne se passivent pas canoniquement, surtout les intransitifs et les transitifs indirects (« téléphoner à », « obéir à », « répondre à »). Une passive correcte doit rester grammaticale, conserver le sens utile et laisser apparaître la logique sujet / COD de la phrase de départ.",
    quiz: [
      {
        sentence:
          "Dans « Les candidats sont encouragés par leur formateur », on a bien une vraie phrase passive.",
        isCorrect: true,
        explanation:
          "Le verbe « encourager » est transitif direct à l'actif, « les candidats » correspond à l'ancien COD, et « par leur formateur » est un complément d'agent. Tous les indices d'une passive canonique sont réunis.",
      },
      {
        sentence:
          "Dans « La salle est silencieuse », la structure est passive parce que le verbe est « être ».",
        isCorrect: false,
        explanation:
          "Le verbe « être » ne suffit jamais à lui seul. « Silencieuse » est ici un adjectif attribut du sujet, pas un participe passé marquant une action subie ni le résultat d'une transformation actif → passif.",
      },
      {
        sentence:
          "La phrase active « Le directeur a annoncé la décision » devient correctement « La décision a été annoncée par le directeur ».",
        isCorrect: true,
        explanation:
          "Le passé composé actif est bien transformé en passé composé passif. Le participe passé « annoncée » s'accorde avec « la décision », sujet féminin singulier.",
      },
      {
        sentence:
          "On peut transformer « Les élèves parlent à leur enseignant » en « Leur enseignant est parlé par les élèves ».",
        isCorrect: false,
        explanation:
          "Le verbe « parler à » construit un complément indirect, pas un COD. Sans objet direct dans la phrase active, la passivation canonique n'est pas recevable.",
      },
      {
        sentence:
          "Quand le complément d'agent n'est pas exprimé, la phrase peut rester passive si la construction est syntaxiquement valable.",
        isCorrect: true,
        explanation:
          "Le complément d'agent est facultatif : « Les copies ont été corrigées » reste une vraie passive. On peut retrouver un agent implicite, souvent reformulable par « on » dans la phrase active.",
      },
    ],
  },
};

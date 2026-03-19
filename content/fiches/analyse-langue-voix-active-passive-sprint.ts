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
    "complement d'agent",
    "participe passe",
    "attribut du sujet",
  ],
  notionsLiees: ["voix-passive-sprint", "phrase-complexe-sprint"],
  exercicesAssocies: ["formes_de_phrase_et_voix_passive", "transformations_de_phrase_crpe"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche va plus loin que le simple reperage. Au CRPE, on attend une vraie justification: conditions de passivation, conservation du temps et distinction entre passif reel et construction attributive.",
    oneLiner:
      "Pour passer de l'actif au passif, il faut en principe un verbe transitif direct: le COD actif devient sujet passif, le verbe prend la forme ETRE + participe passe accorde avec le sujet, et l'ancien sujet devient un complement d'agent facultatif. Verifiez toujours trois points: la transformation est-elle possible, le temps est-il conserve, et la phrase est-elle vraiment passive plutot qu'attributive ?",
    exampleCorrect: {
      sentence: "Le jury corrigera les copies. -> Les copies seront corrigees par le jury.",
      explanation:
        "La transformation est correcte: le verbe transitif direct 'corriger' admet le passif, le COD 'les copies' devient sujet, le futur est conserve avec 'seront corrigees', et le participe passe s'accorde avec le sujet feminin pluriel.",
    },
    exampleWrong: {
      sentence: "Il est fatigue par la chaleur, donc la phrase est a la voix passive.",
      explanation:
        "FAUX. Ici, 'fatigue' peut etre interprete comme adjectif attribut du sujet. Le bon test consiste a reconstruire une phrase active canonique: *'La chaleur fatigue il' est impossible. Sans transformation active naturelle ni vrai complement d'agent, on ne valide pas une passive.",
    },
    mainTrap:
      "La grande confusion du CRPE est double: 1) croire que toute phrase avec ETRE + participe passe est passive, alors qu'on peut avoir un attribut du sujet ('La porte est fermee' peut decrire un etat) ; 2) oublier que beaucoup de verbes ne se passivent pas canoniquement, surtout les intransitifs et les transitifs indirects ('telephoner a', 'obeir a', 'repondre a'). Une passive correcte doit rester grammaticale, conserver le sens utile et laisser apparaitre la logique sujet / COD de la phrase de depart.",
    quiz: [
      {
        sentence:
          "Dans 'Les candidats sont encourages par leur formateur', on a bien une vraie phrase passive.",
        isCorrect: true,
        explanation:
          "Le verbe 'encourager' est transitif direct a l'actif, 'les candidats' correspond a l'ancien COD, et 'par leur formateur' est un complement d'agent. Tous les indices d'une passive canonique sont reunis.",
      },
      {
        sentence:
          "Dans 'La salle est silencieuse', la structure est passive parce que le verbe est 'etre'.",
        isCorrect: false,
        explanation:
          "Le verbe 'etre' ne suffit jamais a lui seul. 'Silencieuse' est ici un adjectif attribut du sujet, pas un participe passe marquant une action subie ni le resultat d'une transformation actif -> passif.",
      },
      {
        sentence:
          "La phrase active 'Le directeur a annonce la decision' devient correctement 'La decision a ete annoncee par le directeur'.",
        isCorrect: true,
        explanation:
          "Le passe compose actif est bien transforme en passe compose passif. Le participe passe 'annoncee' s'accorde avec 'la decision', sujet feminin singulier.",
      },
      {
        sentence:
          "On peut transformer 'Les eleves parlent a leur enseignant' en 'Leur enseignant est parle par les eleves'.",
        isCorrect: false,
        explanation:
          "Le verbe 'parler a' construit un complement indirect, pas un COD. Sans objet direct dans la phrase active, la passivation canonique n'est pas recevable.",
      },
      {
        sentence:
          "Quand le complement d'agent n'est pas exprime, la phrase peut rester passive si la construction est syntaxiquement valable.",
        isCorrect: true,
        explanation:
          "Le complement d'agent est facultatif: 'Les copies ont ete corrigees' reste une vraie passive. On peut retrouver un agent implicite, souvent reformulable par 'on' dans la phrase active.",
      },
    ],
  },
};

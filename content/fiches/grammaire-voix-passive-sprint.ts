import type { Fiche } from "@/features/fiches/types";

export const grammaireVoixPassiveSprint: Fiche = {
  id: "grammaire-voix-passive-sprint",
  slug: "voix-passive-sprint",
  title: "La voix passive",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["voix passive", "transformation", "complément d'agent", "auxiliaire être"],
  notionsLiees: ["phrase-complexe-sprint", "fonctions-sprint"],
  exercicesAssocies: ["gram_voix_passive_active"],
  content: {
    model: "sprint",
    disclaimer: "Connaissance des fonctions grammaticales (sujet, COD) et des temps verbaux requise.",
    oneLiner:
      "Voix passive = ÊTRE (conjugué au temps voulu) + participe passé accordé avec le sujet. L'agent (facultatif) est introduit par \"par\" ou \"de\". Seuls les verbes transitifs directs admettent la voix passive.",
    exampleCorrect: {
      sentence: "La décision a été prise par le directeur.",
      explanation:
        "\"a été prise\" = passé composé passif (auxiliaire être au passé composé + PP \"prise\" accordé avec le sujet féminin \"la décision\"). \"par le directeur\" = complément d'agent.",
    },
    exampleWrong: {
      sentence: "Il est fatigué par le travail, c'est donc une voix passive.",
      explanation:
        "FAUX. \"Est fatigué\" peut être lu comme attribut du sujet (adjectif \"fatigué\") → construction attributive avec être, pas voix passive. Test : peut-on reconstruire une phrase active naturelle ? \"La chaleur le fatigue\" fonctionne, mais l'énoncé d'origine décrit un état plutôt qu'une action subie → ce n'est pas une vraie passive.",
    },
    mainTrap:
      "Les verbes intransitifs (dormir, tomber, partir, naître…) ne peuvent PAS se mettre au passif : on ne dit pas *\"Il a été dormi\" ni *\"La ville a été tombée\". De même, les verbes transitifs indirects (parler à, obéir à, nuire à) n'admettent pas la voix passive en français standard — *\"Il a été obéi\" est incorrect.",
    quiz: [
      {
        sentence:
          "\"Le gâteau est mangé par les enfants\" est la transformation passive de \"Les enfants mangent le gâteau.\"",
        isCorrect: true,
        explanation:
          "Transformation correcte : COD actif (\"le gâteau\") devient sujet passif ; sujet actif (\"les enfants\") devient complément d'agent introduit par \"par\" ; \"mange\" → \"est mangé\" (présent passif, PP accordé avec \"le gâteau\").",
      },
      {
        sentence:
          "\"Elle semblait heureuse\" est une forme passive car \"semblait\" est un auxiliaire être.",
        isCorrect: false,
        explanation:
          "FAUX. \"Sembler\" est un verbe attributif, pas l'auxiliaire être de la voix passive. \"Heureuse\" est un attribut du sujet, pas un participe passé d'un verbe transitif. Il n'y a pas de complément d'agent possible.",
      },
      {
        sentence:
          "Au passé composé passif, la forme est : \"a été\" + participe passé accordé avec le sujet.",
        isCorrect: true,
        explanation:
          "Correct. Passé composé passif = avoir (passé composé) + été + PP. Exemple : \"La lettre a été écrite.\" — \"a été\" = passé composé de être, \"écrite\" accordé avec \"la lettre\" (fém. sing.).",
      },
      {
        sentence:
          "\"Les élèves ont été punis\" peut se transformer en actif : \"On a puni les élèves.\"",
        isCorrect: true,
        explanation:
          "Correct. Quand le complément d'agent est absent, la transformation actif → sujet indéfini \"on\" est la solution standard. \"On a puni les élèves\" est la forme active équivalente.",
      },
      {
        sentence:
          "\"Il a été répondu à toutes les questions\" est une construction passive correcte.",
        isCorrect: false,
        explanation:
          "FAUX. \"Répondre à\" est transitif indirect → en français standard, ce verbe ne forme pas de passive. La tournure impersonnelle \"il a été répondu\" est parfois admise à l'écrit administratif mais reste hors norme grammaticale standard. À éviter au CRPE.",
      },
    ],
  },
};

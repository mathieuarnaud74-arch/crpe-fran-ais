import type { Fiche } from "@/features/fiches/types";

export const passeComposeImparfaitSprint: Fiche = {
  id: "conjugaison-passe-compose-imparfait-sprint",
  slug: "passe-compose-imparfait-sprint",
  title: "Passé composé ou imparfait ?",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "passé composé",
    "imparfait",
    "temps composé",
    "aspect",
    "récit",
  ],
  notionsLiees: [
    "imparfait-ou-passe-simple",
    "conditionnel-sprint",
    "groupes-verbes-sprint",
  ],
  exercicesAssocies: ["conj_temps_simples_composes"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche traite de l'opposition passé composé / imparfait, essentielle à l'oral et dans les récits au passé. Pour l'opposition imparfait / passé simple (récit écrit littéraire), voir la fiche dédiée.",
    oneLiner:
      "Le passé composé exprime une action achevée, ponctuelle ou bornée dans le passé (aspect accompli). Il se forme avec l'auxiliaire « être » ou « avoir » conjugué au présent + le participe passé (j'ai mangé, je suis parti). L'imparfait exprime une action en cours, habituelle ou descriptive dans le passé (aspect non accompli). Il se forme avec le radical du verbe + les terminaisons -ais, -ais, -ait, -ions, -iez, -aient. Dans un récit oral, le passé composé fait avancer l'action (premier plan) tandis que l'imparfait pose le décor (arrière-plan).",
    exampleCorrect: {
      sentence:
        "Il pleuvait quand je suis arrivé à la gare.",
      explanation:
        "« pleuvait » (imparfait) : décor, situation en cours au moment de l'événement. « suis arrivé » (passé composé) : événement ponctuel qui survient dans ce décor. Opposition classique arrière-plan / premier plan.",
    },
    exampleWrong: {
      sentence:
        "Hier, je mangeais une pizza à midi.",
      explanation:
        "FAUX si l'on veut exprimer un événement ponctuel et achevé. Il faut le passé composé : « Hier, j'ai mangé une pizza à midi. » L'imparfait suggérerait une action en cours, interrompue ou habituelle, ce qui ne correspond pas au contexte ponctuel de « hier à midi ».",
    },
    mainTrap:
      "Le piège classique est de confondre l'aspect accompli (passé composé) et l'aspect non accompli (imparfait). L'imparfait n'indique PAS que l'action est « plus ancienne » : les deux temps situent dans le passé, mais diffèrent par le bornage. Test : si l'action est terminée et datable → passé composé (« J'ai fini à 17 h »). Si l'action est en cours, habituelle ou descriptive → imparfait (« Je finissais toujours à 17 h »). Attention aussi à l'accord du participe passé avec « être » (il s'accorde avec le sujet) et « avoir » (il s'accorde avec le COD placé avant).",
    quiz: [
      {
        sentence:
          "Le passé composé se forme avec l'auxiliaire « être » ou « avoir » au présent + le participe passé.",
        isCorrect: true,
        explanation:
          "Correct. C'est la structure d'un temps composé : auxiliaire conjugué au temps simple correspondant + participe passé. « J'ai chanté » (avoir + pp), « Je suis parti » (être + pp).",
      },
      {
        sentence:
          "Dans « Quand j'étais enfant, je jouais au ballon tous les jours », les deux imparfaits expriment des actions ponctuelles.",
        isCorrect: false,
        explanation:
          "FAUX. « étais » exprime un état durable (arrière-plan) et « jouais » exprime une habitude répétée (valeur itérative). L'imparfait marque ici la durée et la répétition, pas le ponctuel.",
      },
      {
        sentence:
          "Les terminaisons de l'imparfait sont les mêmes pour tous les groupes de verbes : -ais, -ais, -ait, -ions, -iez, -aient.",
        isCorrect: true,
        explanation:
          "Correct. C'est l'un des grands avantages de l'imparfait : ses terminaisons sont universelles, identiques pour les verbes du 1er, 2e et 3e groupe. Seul le radical peut varier.",
      },
      {
        sentence:
          "Dans « Il a plu pendant trois heures puis le soleil est revenu », les deux verbes au passé composé expriment des actions d'arrière-plan.",
        isCorrect: false,
        explanation:
          "FAUX. Les deux passés composés expriment des événements de premier plan : actions achevées et bornées (« pendant trois heures », « puis ») qui font avancer le récit. L'arrière-plan serait à l'imparfait (« il pleuvait »).",
      },
      {
        sentence:
          "Le passé composé est le temps composé qui correspond au présent de l'indicatif.",
        isCorrect: true,
        explanation:
          "Correct. Chaque temps simple a son temps composé correspondant : présent → passé composé, imparfait → plus-que-parfait, passé simple → passé antérieur, futur simple → futur antérieur. L'auxiliaire du passé composé est bien au présent.",
      },
    ],
  },
};

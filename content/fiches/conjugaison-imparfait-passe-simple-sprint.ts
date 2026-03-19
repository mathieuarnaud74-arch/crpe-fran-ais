import type { Fiche } from "@/features/fiches/types";

export const imparfaitPasseSimpleSprint: Fiche = {
  id: "conjugaison-imparfait-passe-simple-sprint",
  slug: "imparfait-ou-passe-simple",
  title: "Imparfait ou passé simple ?",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["imparfait", "passé simple", "valeurs aspectuelles", "récit", "arrière-plan", "premier plan"],
  notionsLiees: ["valeurs-du-present"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche traite de l'opposition aspectuelle imparfait / passé simple à l'écrit. Le passé composé, qui remplace le passé simple à l'oral, n'est pas abordé ici.",
    oneLiner:
      "L'opposition imparfait / passé simple est aspectuelle, pas temporelle : les deux situent dans le passé, mais l'imparfait présente l'action comme non bornée, en cours, en arrière-plan (description, habitude, état) ; le passé simple présente l'action comme bornée, accomplie, au premier plan du récit (événement qui fait avancer l'histoire).",
    exampleCorrect: {
      sentence: "La pluie tombait. Soudain, un éclair traversa le ciel.",
      explanation:
        "« tombait » (imparfait) : décor, arrière-plan, action en cours. « traversa » (passé simple) : événement ponctuel qui surgit et fait avancer le récit.",
    },
    exampleWrong: {
      sentence: "Il travaillait toute sa vie dans cette usine.",
      explanation:
        "FAUX si on veut exprimer un fait global et révolu. Il faut le passé simple (bornage temporel) : « Il travailla toute sa vie… ». L'imparfait suggère une durée sans fin définie.",
    },
    mainTrap:
      "Le test du bornage : si on peut ajouter « pendant X heures » → imparfait possible (durée non bornée) ; si on peut ajouter « en X secondes / soudain / puis » → passé simple (événement borné). Piège classique : « Il vivait/vécut cent ans ». Les deux sont possibles mais avec une nuance : l'imparfait insiste sur le déroulement (sa vie longue) ; le passé simple sur le fait global et révolu (durée bornée dans le passé). Au CRPE, la distinction arrière-plan / premier plan est la clé attendue.",
    quiz: [
      {
        sentence:
          "Dans « Chaque été, ils partaient en vacances », l'imparfait exprime une habitude passée.",
        isCorrect: true,
        explanation:
          "L'adverbe « chaque été » marque la répétition. L'imparfait itératif (ou d'habitude) est bien à l'œuvre.",
      },
      {
        sentence:
          "Dans « Elle ouvrit la porte et entra », le passé simple indique des actions d'arrière-plan.",
        isCorrect: false,
        explanation:
          "Le passé simple marque des actions de premier plan : événements bornés qui font avancer le récit. L'arrière-plan, c'est l'imparfait.",
      },
      {
        sentence:
          "L'imparfait et le passé simple situent tous les deux dans le passé.",
        isCorrect: true,
        explanation:
          "Oui : l'opposition n'est pas temporelle mais aspectuelle. Les deux ancrent l'action dans le passé, mais diffèrent par le bornage et la mise en relief.",
      },
      {
        sentence:
          "Dans « Le vent soufflait tandis qu'ils marchaient vers le village », les deux imparfaits décrivent des actions de premier plan.",
        isCorrect: false,
        explanation:
          "Les deux imparfaits décrivent l'arrière-plan (décor, simultanéité en cours). Pour un événement de premier plan, il faudrait le passé simple.",
      },
      {
        sentence:
          "On peut utiliser l'imparfait pour exprimer une action passée soudaine et brève, à condition d'un contexte stylistique particulier.",
        isCorrect: true,
        explanation:
          "C'est l'imparfait pittoresque (ou de rupture) : « Une heure plus tard, le bateau coulait. » Valeur stylistique acceptable à l'écrit littéraire, reconnue par le jury CRPE.",
      },
    ],
  },
};

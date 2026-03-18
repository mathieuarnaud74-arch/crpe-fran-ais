import type { Fiche } from "@/features/fiches/types";

export const subjonctifSprint: Fiche = {
  id: "conjugaison-subjonctif-sprint",
  slug: "subjonctif-sprint",
  title: "Le subjonctif",
  subtitle: "Révision express — 5 min",
  domaine: "conjugaison",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["subjonctif", "mode", "verbes introducteurs", "conjonctions"],
  notionsLiees: ["subordonnees-circonstancielles-sprint", "concordance-temps-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche liste les déclencheurs du subjonctif. Pour la formation des formes, consulter une conjugaison de référence. Pour les circonstancielles et leur mode, voir la fiche dédiée.",
    oneLiner:
      "Subjonctif obligatoire après : vouloir/souhaiter/falloir/craindre/douter/regretter + que ; bien que/quoique/pour que/avant que/à moins que. JAMAIS après \"espérer que\" à la forme affirmative (→ indicatif futur) ni après \"après que\" (→ indicatif).",
    exampleCorrect: {
      sentence: "Il faut qu'il vienne avant que la réunion commence.",
      explanation:
        "\"Il faut que\" → subjonctif obligatoire (\"vienne\"). \"Avant que\" → subjonctif obligatoire (\"commence\"). Deux déclencheurs corrects dans la même phrase.",
    },
    exampleWrong: {
      sentence: "J'espère qu'il vienne rapidement.",
      explanation:
        "FAUX. \"Espérer que\" à la forme affirmative → indicatif obligatoire, pas subjonctif. Correct : \"J'espère qu'il viendra rapidement.\" (futur de l'indicatif). En revanche, à la forme négative ou interrogative : \"Je n'espère pas qu'il vienne\" → subjonctif admis.",
    },
    mainTrap:
      "\"Penser que\" et \"croire que\" à la forme affirmative → INDICATIF. Mais à la forme négative ou interrogative, ces verbes peuvent déclencher le subjonctif : \"Je ne pense pas qu'il soit prêt.\" / \"Pensez-vous qu'il soit possible ?\" La polarité de la principale change le mode de la subordonnée.",
    quiz: [
      {
        sentence: "\"Je doute qu'il ait raison.\" — le subjonctif est justifié.",
        isCorrect: true,
        explanation:
          "Correct. \"Douter que\" exprime l'incertitude → subjonctif obligatoire. \"Ait\" = subjonctif présent de \"avoir\". Forme correcte.",
      },
      {
        sentence: "\"Il est certain qu'elle réussisse.\" — le subjonctif est correct après \"être certain\".",
        isCorrect: false,
        explanation:
          "FAUX. \"Il est certain que\" exprime la certitude → INDICATIF obligatoire. Correct : \"Il est certain qu'elle réussira.\" Les verbes et expressions de certitude (il est évident que, il est sûr que, il est clair que) imposent l'indicatif.",
      },
      {
        sentence: "\"Quoiqu'il soit difficile, ce problème est soluble.\" — le mode est correct.",
        isCorrect: true,
        explanation:
          "Correct. \"Quoique\" (= bien que) est une conjonction de concession → subjonctif obligatoire. \"Soit\" = subjonctif présent de \"être\". Attention à l'orthographe : \"quoique\" (conjonction, en un mot) ≠ \"quoi que\" (pronom relatif indéfini, en deux mots).",
      },
      {
        sentence: "\"Je souhaite qu'il réussit son examen.\" est correctement conjugué.",
        isCorrect: false,
        explanation:
          "FAUX. \"Souhaiter que\" → subjonctif obligatoire. \"Réussit\" est l'indicatif présent → FAUX. Correct : \"Je souhaite qu'il réussisse son examen.\" (subjonctif présent de \"réussir\").",
      },
      {
        sentence: "\"Bien qu'ayant travaillé, il a échoué.\" — le subjonctif est ici remplacé par un participe présent.",
        isCorrect: true,
        explanation:
          "Correct. Quand les deux propositions ont le même sujet, on peut remplacer \"bien que + subjonctif\" par \"bien que + participe présent\" (ou passé) → construction elliptique correcte et stylistiquement soignée.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const analyseLangueSubordonneesConjonctivesSprint: Fiche = {
  id: "analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint",
  slug: "subordonnees-conjonctives-completives-circonstancielles-sprint",
  title: "Subordonnees conjonctives: completives et circonstancielles",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "subordonnee conjonctive",
    "completive",
    "circonstancielle",
    "conjonction",
    "indicatif",
    "subjonctif",
    "fonction",
  ],
  notionsLiees: [
    "subordonnees-relatives-sprint",
    "subordonnees-circonstancielles-sprint",
    "conjugaison-subjonctif-sprint",
  ],
  exercicesAssocies: ["subordonnees_completives", "subordonnees_circonstancielles"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche cible le tri le plus rentable au CRPE: ne pas confondre une subordonnee qui complete le verbe principal avec une subordonnee qui exprime une circonstance de temps, cause, but, concession ou condition.",
    oneLiner:
      "Une subordonnee conjonctive introduite par 'que' n'est pas automatiquement une circonstancielle. La completive remplit en general une fonction essentielle (souvent COD, parfois sujet reel) apres un verbe ou une tournure comme 'je pense que', 'il faut que', 'je veux que'. La circonstancielle, elle, apporte une information de temps, cause, but, concession, condition ou consequence, introduite par une locution conjonctive comme 'parce que', 'bien que', 'pour que', 'si', 'avant que'. Pour trancher, posez la bonne question: la subordonnee est-elle exigee par le verbe principal ou ajoute-t-elle une circonstance ?",
    exampleCorrect: {
      sentence: "Je veux qu'il revise ce point avant qu'il ne soit trop tard.",
      explanation:
        "'Qu'il revise ce point' est une completive COD du verbe 'veux'. 'Avant qu'il ne soit trop tard' est une circonstancielle de temps. On a donc deux subordonnees conjonctives de nature proche, mais de fonction differente. Le mode varie aussi: subjonctif apres 'vouloir que' et apres 'avant que'.",
    },
    exampleWrong: {
      sentence: "Dans 'Je pense qu'il reussira', 'qu'il reussira' est une subordonnee circonstancielle de cause.",
      explanation:
        "FAUX. La proposition ne donne pas la cause: elle complete le verbe de pensee 'penser'. C'est une completive, le plus souvent analysable comme COD. Le bon reflexe est de regarder la dependance syntaxique avant de chercher une valeur de sens.",
    },
    mainTrap:
      "Le piege classique est de classer selon le seul mot introducteur. Or 'que' peut introduire une completive ('Je crois qu'il vient') ou entrer dans une locution conjonctive circonstancielle ('bien que', 'pour que', 'afin que'). Deuxieme piege: confondre nature et fonction. 'Subordonnee completive' designe une nature ; sa fonction peut etre COD, sujet reel ou attribut. 'Subordonnee circonstancielle' designe deja une valeur de fonction-semantique dans la phrase. Au CRPE, il faut souvent donner les deux niveaux d'analyse: type de subordonnee et role exact dans l'enonce.",
    quiz: [
      {
        sentence:
          "Dans 'Il faut que tu relises', la subordonnee est une completive liee a la tournure impersonnelle, pas une circonstancielle.",
        isCorrect: true,
        explanation:
          "La proposition 'que tu relises' est exigee par la structure 'il faut que'. Elle correspond au contenu necessaire de l'obligation et s'analyse comme une completive, souvent sujet reel de la tournure impersonnelle.",
      },
      {
        sentence:
          "Dans 'Bien qu'il connaisse la regle, il hesite', la subordonnee est completive parce qu'elle commence par 'que'.",
        isCorrect: false,
        explanation:
          "'Bien que' est une locution conjonctive de concession. La proposition exprime un obstacle surmonte: c'est une circonstancielle, pas une completive.",
      },
      {
        sentence:
          "Le choix du mode peut aider a l'analyse: 'je pense qu'il vient' prend l'indicatif, alors que 'je veux qu'il vienne' impose le subjonctif.",
        isCorrect: true,
        explanation:
          "Le verbe introducteur oriente le mode dans la completive. Verbe d'opinion affirmative -> indicatif ; verbe de volonte, souhait ou necessite -> subjonctif.",
      },
      {
        sentence:
          "Dans 'Nous partirons si le temps se degage', la subordonnee introduite par 'si' est une interrogative indirecte.",
        isCorrect: false,
        explanation:
          "Ici, 'si' marque la condition: on a une circonstancielle de condition. L'interrogative indirecte apparait plutot dans 'Je me demande si le temps se degagera'.",
      },
      {
        sentence:
          "Pour analyser correctement une subordonnee conjonctive, il faut regarder a la fois le mot introducteur, la fonction dans la phrase et le sens du lien logique.",
        isCorrect: true,
        explanation:
          "C'est la methode fiable: l'introducteur seul ne suffit pas. Une bonne copie de CRPE justifie le classement par plusieurs indices convergents.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const analyseLangueSubordonneesConjonctivesSprint: Fiche = {
  id: "analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint",
  slug: "subordonnees-conjonctives-completives-circonstancielles-sprint",
  title: "Subordonnées conjonctives : complétives et circonstancielles",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "subordonnée conjonctive",
    "complétive",
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
      "Cette fiche cible le tri le plus rentable au CRPE : ne pas confondre une subordonnée qui complète le verbe principal avec une subordonnée qui exprime une circonstance de temps, cause, but, concession ou condition.",
    oneLiner:
      "Une subordonnée conjonctive introduite par « que » n'est pas automatiquement une circonstancielle. La complétive remplit en général une fonction essentielle (souvent COD, parfois sujet réel) après un verbe ou une tournure comme « je pense que », « il faut que », « je veux que ». La circonstancielle, elle, apporte une information de temps, cause, but, concession, condition ou conséquence, introduite par une locution conjonctive comme « parce que », « bien que », « pour que », « si », « avant que ». Pour trancher, posez la bonne question : la subordonnée est-elle exigée par le verbe principal ou ajoute-t-elle une circonstance ?",
    exampleCorrect: {
      sentence: "Je veux qu'il révise ce point avant qu'il ne soit trop tard.",
      explanation:
        "« Qu'il révise ce point » est une complétive COD du verbe « veux ». « Avant qu'il ne soit trop tard » est une circonstancielle de temps. On a donc deux subordonnées conjonctives de nature proche, mais de fonction différente. Le mode varie aussi : subjonctif après « vouloir que » et après « avant que ».",
    },
    exampleWrong: {
      sentence: "Dans « Je pense qu'il réussira », « qu'il réussira » est une subordonnée circonstancielle de cause.",
      explanation:
        "FAUX. La proposition ne donne pas la cause : elle complète le verbe de pensée « penser ». C'est une complétive, le plus souvent analysable comme COD. Le bon réflexe est de regarder la dépendance syntaxique avant de chercher une valeur de sens.",
    },
    mainTrap:
      "Le piège classique est de classer selon le seul mot introducteur. Or « que » peut introduire une complétive (« Je crois qu'il vient ») ou entrer dans une locution conjonctive circonstancielle (« bien que », « pour que », « afin que »). Deuxième piège : confondre nature et fonction. « Subordonnée complétive » désigne une nature ; sa fonction peut être COD, sujet réel ou attribut. « Subordonnée circonstancielle » désigne déjà une valeur de fonction-sémantique dans la phrase. Au CRPE, il faut souvent donner les deux niveaux d'analyse : type de subordonnée et rôle exact dans l'énoncé.",
    quiz: [
      {
        sentence:
          "Dans « Il faut que tu relises », la subordonnée est une complétive liée à la tournure impersonnelle, pas une circonstancielle.",
        isCorrect: true,
        explanation:
          "La proposition « que tu relises » est exigée par la structure « il faut que ». Elle correspond au contenu nécessaire de l'obligation et s'analyse comme une complétive, souvent sujet réel de la tournure impersonnelle.",
      },
      {
        sentence:
          "Dans « Bien qu'il connaisse la règle, il hésite », la subordonnée est complétive parce qu'elle commence par « que ».",
        isCorrect: false,
        explanation:
          "« Bien que » est une locution conjonctive de concession. La proposition exprime un obstacle surmonté : c'est une circonstancielle, pas une complétive.",
      },
      {
        sentence:
          "Le choix du mode peut aider à l'analyse : « je pense qu'il vient » prend l'indicatif, alors que « je veux qu'il vienne » impose le subjonctif.",
        isCorrect: true,
        explanation:
          "Le verbe introducteur oriente le mode dans la complétive. Verbe d'opinion affirmative → indicatif ; verbe de volonté, souhait ou nécessité → subjonctif.",
      },
      {
        sentence:
          "Dans « Nous partirons si le temps se dégage », la subordonnée introduite par « si » est une interrogative indirecte.",
        isCorrect: false,
        explanation:
          "Ici, « si » marque la condition : on a une circonstancielle de condition. L'interrogative indirecte apparaît plutôt dans « Je me demande si le temps se dégagera ».",
      },
      {
        sentence:
          "Pour analyser correctement une subordonnée conjonctive, il faut regarder à la fois le mot introducteur, la fonction dans la phrase et le sens du lien logique.",
        isCorrect: true,
        explanation:
          "C'est la méthode fiable : l'introducteur seul ne suffit pas. Une bonne copie de CRPE justifie le classement par plusieurs indices convergents.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const erreursElevesSprint: Fiche = {
  id: "didactique-erreurs-eleves-sprint",
  slug: "erreurs-eleves-sprint",
  title: "Erreurs d'élèves et remédiation",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["erreurs d'élèves", "remédiation", "didactique", "représentations", "obstacles"],
  notionsLiees: ["evaluation-francais-sprint", "differentiation-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche est de niveau avancé et mobilise des notions de didactique générale (obstacle épistémologique, constructivisme) appliquées au français. Elle est centrale pour les questions sur la gestion des apprentissages dans les épreuves CRPE.",
    oneLiner:
      "Une erreur d'élève n'est pas un accident : c'est un indice sur sa représentation du système linguistique. Analyser l'erreur (systématique → représentation erronée ; accidentelle → faute) permet de choisir la remédiation efficace — agir sur l'obstacle, pas seulement corriger la surface.",
    exampleCorrect: {
      sentence:
        "Élève qui écrit systématiquement « *il sait » pour « il sait » [correct] mais « *je saisis » pour « je sais » → erreur d'analogie morphologique.",
      explanation:
        "L'élève applique par analogie le paradigme verbal régulier (-is, -is, -it) à un verbe irrégulier. Cette erreur est systématique et révèle une représentation construite (les verbes ont tous des terminaisons régulières). La remédiation cible l'obstacle : comparer les paradigmes, travailler la mémorisation des formes irrégulières fréquentes, non répéter la règle générale qui ne s'applique pas ici.",
    },
    exampleWrong: {
      sentence:
        "Corriger l'erreur en rouge et écrire la forme correcte au-dessus suffit à remédier efficacement.",
      explanation:
        "FAUX. Corriger sans analyser l'origine de l'erreur est inefficace : l'élève voit la forme correcte mais ne comprend pas pourquoi sa représentation était fausse. Sans travail sur l'obstacle cognitif, l'erreur se reproduira. La correction de surface ne constitue pas une remédiation au sens didactique.",
    },
    mainTrap:
      "Corriger toutes les erreurs à la fois noie l'élève et disperse son attention. Une remédiation efficace cible un seul obstacle à la fois, formulé en termes compréhensibles pour l'élève. De plus, toutes les erreurs ne méritent pas le même traitement : certaines sont développementales (normales à un stade donné) et se résorberont sans intervention spécifique ; d'autres révèlent un obstacle persistant qui nécessite une remédiation explicite.",
    quiz: [
      {
        sentence:
          "Une erreur systématique (reproduite dans des contextes variés) révèle une représentation erronée du système et nécessite une remédiation ciblée.",
        isCorrect: true,
        explanation:
          "C'est le principe fondamental de la distinction erreur/faute en didactique. L'erreur systématique témoigne d'une règle implicite fausse construite par l'élève. La remédiation doit viser cette règle implicite, pas l'occurrence isolée.",
      },
      {
        sentence:
          "La surgénéralisation (ex. : « *les chevals » pour « les chevaux ») est un signe que l'élève n'a rien compris à la morphologie du pluriel.",
        isCorrect: false,
        explanation:
          "FAUX. La surgénéralisation est au contraire la preuve que l'élève a construit une règle (ajouter -s au pluriel) — il l'applique là où elle ne fonctionne pas. C'est une étape normale du développement linguistique. La remédiation vise à compléter la règle (exceptions) plutôt qu'à la contester entièrement.",
      },
      {
        sentence:
          "L'évaluation formative, contrairement à l'évaluation sommative, vise à réguler les apprentissages en cours de séquence.",
        isCorrect: true,
        explanation:
          "Exact. L'évaluation formative est au service de l'apprentissage : elle permet à l'enseignant de repérer les erreurs en temps réel et d'ajuster la progression (remédiation, étayage renforcé, groupes de besoin). L'évaluation sommative fait un bilan à la fin d'une période — elle n'est pas conçue pour réguler.",
      },
      {
        sentence:
          "Les interférences de la langue maternelle (L1) dans l'apprentissage du français (L2) sont toujours des erreurs à corriger immédiatement.",
        isCorrect: false,
        explanation:
          "FAUX. Les interférences révèlent que l'élève s'appuie sur ses ressources linguistiques existantes — c'est une stratégie d'apprentissage. Certaines interférences se résorberont naturellement avec l'exposition à la langue cible ; d'autres nécessitent un enseignement explicite. Corriger toutes les interférences immédiatement et systématiquement peut inhiber la prise de risque communicative.",
      },
      {
        sentence:
          "Un groupe de besoin en français est une forme de différenciation pédagogique réactive, formée à partir de l'analyse des erreurs communes à plusieurs élèves.",
        isCorrect: true,
        explanation:
          "Exact. Le groupe de besoin est constitué temporairement autour d'un obstacle identifié (ex. : confusion homophones a/à) repéré dans les productions des élèves. Il permet une remédiation ciblée et homogène sur cet obstacle précis, avant réintégration dans le groupe classe. C'est une forme de différenciation efficace car fondée sur le diagnostic.",
      },
    ],
  },
};

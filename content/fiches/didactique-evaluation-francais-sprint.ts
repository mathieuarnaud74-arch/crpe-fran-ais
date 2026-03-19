import type { Fiche } from "@/features/fiches/types";

export const evaluationFrancaisSprint: Fiche = {
  id: "didactique-evaluation-francais-sprint",
  slug: "evaluer-en-francais-a-l-ecole",
  title: "Évaluer en français à l'école",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["évaluation", "formative", "diagnostique", "sommative", "niveaux de maîtrise", "compétences"],
  notionsLiees: [],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur les principes institutionnels d'évaluation en français à l'école primaire (cadre français). Elle ne couvre pas les outils d'évaluation spécifiques par domaine.",
    oneLiner:
      "L'évaluation sert principalement à faire progresser l'élève (formative), pas à le classer (sommative). À l'école primaire, l'évaluation par niveaux de maîtrise (1 à 4) remplace la note chiffrée. L'évaluation diagnostique identifie les acquis pour ajuster l'enseignement — elle peut intervenir à tout moment, pas seulement en début d'année.",
    exampleCorrect: {
      sentence:
        "L'enseignant corrige les brouillons de ses élèves en indiquant les points à améliorer avant la version finale.",
      explanation:
        "C'est une évaluation formative : elle intervient pendant le processus d'apprentissage pour guider l'élève. Le feedback est orienté vers la progression, pas vers le classement.",
    },
    exampleWrong: {
      sentence:
        "Pour évaluer la maîtrise de l'orthographe en fin de CE1, l'enseignant note la dictée sur 20.",
      explanation:
        "FAUX de plusieurs façons. L'école primaire utilise les niveaux de maîtrise (1 à 4), pas les notes chiffrées. De plus, une seule dictée ne suffit pas à évaluer une compétence — il faut plusieurs situations et contextes différents.",
    },
    mainTrap:
      "Le piège récurrent au CRPE : confondre évaluation diagnostique et évaluation initiale ponctuelle. L'évaluation diagnostique peut se faire à tout moment pour identifier une difficulté — pas seulement en début d'année. Elle cherche à comprendre pourquoi l'élève échoue, pas seulement à constater qu'il échoue.",
    quiz: [
      {
        sentence:
          "L'évaluation formative a pour objectif principal de mesurer les acquis en fin de séquence pour établir un bilan.",
        isCorrect: false,
        explanation:
          "FAUX. C'est la définition de l'évaluation sommative. L'évaluation formative intervient en cours d'apprentissage pour réguler et guider — elle ne sert pas à établir un bilan final.",
      },
      {
        sentence:
          "À l'école primaire, le cadre institutionnel préconise une évaluation par niveaux de maîtrise (1 à 4) plutôt que par notes chiffrées.",
        isCorrect: true,
        explanation:
          "Le livret scolaire unique (LSU) utilise 4 niveaux : 1 — maîtrise insuffisante, 2 — fragile, 3 — satisfaisante, 4 — très bonne maîtrise. Ce système évite les effets de classement et donne une image plus précise des compétences.",
      },
      {
        sentence:
          "Évaluer une compétence en lecture nécessite plusieurs situations différentes, pas une seule épreuve.",
        isCorrect: true,
        explanation:
          "Une compétence est stable et transférable. Pour la mesurer, il faut observer l'élève dans plusieurs contextes. Un seul exercice de lecture dit si l'élève a réussi ce texte particulier — pas s'il sait lire.",
      },
      {
        sentence:
          "L'auto-évaluation par les élèves n'est pas recommandée en français car elle manque d'objectivité.",
        isCorrect: false,
        explanation:
          "FAUX. L'auto-évaluation est une pratique valorisée : elle développe la métacognition et la capacité à se situer dans les apprentissages. L'objectivité n'est pas le seul critère d'une évaluation pertinente.",
      },
      {
        sentence:
          "L'évaluation diagnostique peut être réalisée en cours de séquence pour identifier une difficulté spécifique.",
        isCorrect: true,
        explanation:
          "L'évaluation diagnostique n'est pas réservée au début d'année. Elle peut intervenir à tout moment pour comprendre un blocage ou un besoin particulier et adapter l'enseignement en conséquence.",
      },
    ],
  },
};

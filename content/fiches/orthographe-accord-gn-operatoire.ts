import type { Fiche } from "@/features/fiches/types";

export const accordGnOperatoire: Fiche = {
  id: "orthographe-accord-gn-operatoire",
  slug: "accord-gn-operatoire",
  title: "Accorder dans le groupe nominal",
  subtitle: "Arbre de décision",
  domaine: "orthographe",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 6,
  tags: [
    "accord",
    "groupe nominal",
    "adjectif",
    "déterminant",
    "couleur",
    "genre",
    "nombre",
  ],
  notionsLiees: [
    "orthographe-accord-gn-sprint",
    "orthographe-accord-adjectif-operatoire",
    "orthographe-tout-meme-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Comment vérifier les accords dans un groupe nominal ?",
    decisionTree: {
      type: "question",
      text: "Le GN contient-il un adjectif de couleur ?",
      yes: {
        type: "question",
        text: "L'adjectif de couleur est-il un nom employé comme adjectif (orange, marron, cerise, crème, ivoire, noisette…) ?",
        yes: {
          type: "leaf",
          label: "Nom employé comme adjectif de couleur → invariable",
          rule: "Les noms utilisés comme adjectifs de couleur restent invariables : des chaussures marron, des robes orange, des murs crème. Exceptions historiques : rose, mauve, écarlate, fauve et pourpre s'accordent.",
          example: "Des pulls orange. Des jupes marron. MAIS : des joues roses.",
        },
        no: {
          type: "question",
          text: "L'adjectif de couleur est-il composé (deux mots ou plus : bleu marine, vert foncé, rouge vif) ?",
          yes: {
            type: "leaf",
            label: "Adjectif de couleur composé → invariable",
            rule: "Les adjectifs de couleur composés (formés de deux mots ou plus) sont invariables : des yeux bleu clair, des chemises vert foncé, des rubans bleu marine.",
            example:
              "Des écharpes bleu marine. Des yeux vert clair. Aucune marque de pluriel ni de féminin.",
          },
          no: {
            type: "leaf",
            label: "Adjectif de couleur simple → accord normal",
            rule: "Les adjectifs de couleur simples (un seul mot, adjectif d'origine) s'accordent en genre et en nombre avec le nom noyau : bleu/bleue/bleus/bleues, vert/verte/verts/vertes, blanc/blanche/blancs/blanches.",
            example:
              "Des robes bleues. Des murs blancs. Des feuilles vertes.",
          },
        },
      },
      no: {
        type: "question",
        text: "Le GN contient-il « tout », « même » ou « chaque » ?",
        yes: {
          type: "question",
          text: "Le mot est-il « chaque » ?",
          yes: {
            type: "leaf",
            label: "« Chaque » → toujours singulier",
            rule: "« Chaque » est un déterminant indéfini singulier. Il impose le singulier au nom qu'il détermine. Il n'a pas de forme plurielle.",
            example:
              "Chaque élève a un cahier. (Jamais *chaque élèves.)",
          },
          no: {
            type: "question",
            text: "Le mot est-il « tout » employé comme déterminant ?",
            yes: {
              type: "leaf",
              label: "« Tout » déterminant → accord en genre et nombre",
              rule: "« Tout » déterminant s'accorde avec le nom : tout le jour, toute la nuit, tous les jours, toutes les nuits. Attention : « tout » adverbe (= entièrement) est normalement invariable, sauf devant un adjectif féminin commençant par une consonne ou un h aspiré (toute contente, toutes honteuses).",
              example:
                "Tous les enfants jouent. Toute la classe travaille. Elles sont tout étonnées (adverbe, invariable). Elles sont toutes contentes (adverbe, variable par euphonie).",
            },
            no: {
              type: "leaf",
              label: "« Même » → accord selon la fonction",
              rule: "« Même » adjectif (= identique, semblable) s'accorde : les mêmes erreurs, ces problèmes mêmes. « Même » adverbe (= aussi, y compris) est invariable : même les enfants rient.",
              example:
                "Les mêmes causes produisent les mêmes effets. (adjectif → accord) Même les adultes ont eu peur. (adverbe → invariable)",
            },
          },
        },
        no: {
          type: "leaf",
          label: "Accord classique : dét. + nom + adj.",
          rule: "Règle générale : dans le groupe nominal, le déterminant et tous les adjectifs (épithètes, apposés) s'accordent en genre et en nombre avec le nom noyau. Identifier le nom noyau, déterminer son genre et son nombre, puis accorder tous les éléments qui s'y rapportent.",
          example:
            "Les longues journées ensoleillées. Nom noyau : journées (fém. plur.) → les (plur.), longues (fém. plur.), ensoleillées (fém. plur.).",
        },
      },
    },
    workedExample: {
      phrase: "Les belles robes bleues",
      steps: [
        "Étape 1 — Identifier le nom noyau du GN : « robes ». C'est un nom féminin pluriel.",
        "Étape 2 — Vérifier le déterminant : « les » est un article défini pluriel → accord correct avec « robes » (pluriel).",
        "Étape 3 — Analyser « belles » : adjectif qualificatif épithète antéposé. Il doit s'accorder avec « robes » → féminin pluriel : beau → belle → belles. Accord correct.",
        "Étape 4 — Analyser « bleues » : adjectif de couleur. Est-ce un nom employé comme adjectif ? Non (bleu est un vrai adjectif). Est-il composé ? Non (un seul mot). Donc accord normal → féminin pluriel : bleu → bleue → bleues. Accord correct.",
        "Étape 5 — Vérification finale : tous les éléments du GN (déterminant, adjectifs) sont bien accordés en genre (féminin) et en nombre (pluriel) avec le nom noyau « robes ».",
      ],
    },
    quiz: [
      {
        sentence:
          "Dans « des chaussures marron foncé », les deux mots de couleur restent invariables.",
        isCorrect: true,
        explanation:
          "VRAI. « Marron » est un nom employé comme adjectif de couleur (invariable). « Marron foncé » est en outre un adjectif de couleur composé (deux mots), ce qui confirme l'invariabilité. Aucune marque de pluriel.",
      },
      {
        sentence:
          "Dans « toutes les belles maisons blanches », « toutes » est un adverbe.",
        isCorrect: false,
        explanation:
          "FAUX. Ici, « toutes » est un déterminant (il détermine « les maisons ») et s'accorde au féminin pluriel avec le nom noyau « maisons ». « Tout » n'est adverbe que lorsqu'il signifie « entièrement » devant un adjectif (ex. : « elles sont tout étonnées »).",
      },
      {
        sentence:
          "L'adjectif de couleur « rose » s'accorde en genre et en nombre, contrairement à « marron ».",
        isCorrect: true,
        explanation:
          "VRAI. « Rose » fait partie des exceptions historiques : bien qu'étant à l'origine un nom, il s'accorde comme un adjectif ordinaire (des joues roses). « Marron », « orange », « crème » restent invariables.",
      },
      {
        sentence:
          "Dans « chaque enfants doivent lever la main », l'accord est correct.",
        isCorrect: false,
        explanation:
          "FAUX. « Chaque » est un déterminant singulier : il impose le singulier au nom et au verbe. On doit écrire « chaque enfant doit lever la main ». C'est une erreur très fréquente chez les élèves.",
      },
    ],
    didacticNote:
      "Pour les élèves de cycle 3, commencer par la règle générale (dét. + nom + adj. s'accordent) et multiplier les manipulations (changer le genre ou le nombre du nom noyau et observer les répercussions). Introduire les cas particuliers (couleurs, tout/même/chaque) dans un second temps, avec des corpus de phrases à trier.",
  },
};

import type { Fiche } from "@/features/fiches/types";

export const ppAvoirSprint: Fiche = {
  id: "orthographe-participe-passe-avoir-sprint",
  slug: "participe-passe-avoir-sprint",
  title: "Accord du participe passé avec avoir",
  subtitle: "Révision express — 5 min",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["participe passé", "avoir", "COD antéposé", "accord"],
  notionsLiees: ["accord-participe-passe-sprint", "accord-groupe-nominal"],
  exercicesAssocies: ["orthographe-participe-passe"],
  content: {
    model: "sprint",
    disclaimer: "Cette fiche se concentre sur l'accord du PP avec AVOIR. Pour l'accord avec ÊTRE et les pronominaux, voir la fiche dédiée.",
    oneLiner:
      "Avec AVOIR : le PP s'accorde avec le COD UNIQUEMENT s'il est placé AVANT le verbe (COD antéposé : pronom relatif \"que\", pronoms le/la/les). EN comme COD → TOUJOURS invariable. FAIRE + infinitif → TOUJOURS invariable.",
    exampleCorrect: {
      sentence: "Les poèmes qu'il a écrits sont magnifiques.",
      explanation:
        "\"que\" reprend \"les poèmes\" (masc. plur.) et est COD antéposé → accord du PP en -s : \"écrits\". Test : *il a écrit quoi ? → \"que\" (= les poèmes) → COD placé avant → accord.",
    },
    exampleWrong: {
      sentence: "Il a écrits plusieurs poèmes.",
      explanation:
        "FAUX. \"Plusieurs poèmes\" est COD POSTPOSÉ (après le verbe) → PP invariable. Correct : \"Il a écrit plusieurs poèmes.\"",
    },
    mainTrap:
      "\"Des romans, j'en ai lu des dizaines.\" → PP INVARIABLE. \"En\" est un pronom partitif qui représente un COD, mais la règle dit que EN comme COD antéposé → PP invariable sans exception. Même si \"en\" est bien avant le verbe, on n'accorde jamais.",
    quiz: [
      {
        sentence: "\"Combien de fautes as-tu faites ?\" — l'accord de \"faites\" est correct.",
        isCorrect: true,
        explanation:
          "\"Combien\" reprend implicitement \"des fautes\" et est COD antéposé de \"faire\" → accord au féminin pluriel : \"faites\". L'interrogatif portant sur le COD antépose ce dernier.",
      },
      {
        sentence: "\"Les enfants que j'ai fait travailler\" — le participe \"fait\" devrait s'accorder : \"faits\".",
        isCorrect: false,
        explanation:
          "FAUX. FAIRE + infinitif → PP toujours INVARIABLE, même si le COD est antéposé. \"Fait\" reste invariable : \"les enfants que j'ai fait travailler\". C'est une règle absolue.",
      },
      {
        sentence: "\"La décision qu'il a prise\" est correctement accordé.",
        isCorrect: true,
        explanation:
          "\"que\" reprend \"la décision\" (fém. sing.) → COD antéposé → accord : \"prise\". Correct.",
      },
      {
        sentence: "\"Des films, j'en ai vus beaucoup.\" est correctement accordé.",
        isCorrect: false,
        explanation:
          "FAUX. \"En\" comme COD antéposé → PP INVARIABLE. Correct : \"Des films, j'en ai vu beaucoup.\" L'invariabilité avec EN est absolue, quelle que soit la valeur du complément.",
      },
      {
        sentence: "\"Quelle belle robe elle a portée !\" — l'accord est correct.",
        isCorrect: true,
        explanation:
          "\"Quelle belle robe\" est COD antéposé (exclamative directe) reprenant un nom féminin singulier → accord : \"portée\". L'antéposition par construction exclamative déclenche l'accord.",
      },
    ],
  },
};

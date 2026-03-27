import type { Fiche } from "@/features/fiches/types";

export const subordonnéesRelativesSprint: Fiche = {
  id: "grammaire-subordonnees-relatives-sprint",
  slug: "propositions-subordonnees-relatives",
  title: "Propositions subordonnées relatives",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["subordonnée relative", "pronom relatif", "antécédent", "qui", "que", "dont"],
  notionsLiees: ["nature-des-mots-sprint", "fonctions-grammaticales-sprint"],
  exercicesAssocies: ["gram_subordonnees_relatives", "gram_pronoms_relatifs"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche cible les pronoms relatifs simples (qui, que, dont, où). Les pronoms relatifs composés (lequel, auquel, duquel…) ne sont pas traités ici.",
    oneLiner:
      "Une proposition subordonnée relative complète ou détermine un nom (ou pronom) appelé antécédent. Elle est introduite par un pronom relatif dont la forme dépend de la fonction qu'il occupe dans la subordonnée : qui (sujet), que (COD), dont (complément introduit par de), où (lieu ou temps).",
    exampleCorrect: {
      sentence: "Le livre que j'ai lu hier était passionnant.",
      explanation:
        "« que » est pronom relatif COD du verbe « lire » ; son antécédent est « le livre ». La relative « que j'ai lu hier » est épithète de « livre ».",
    },
    exampleWrong: {
      sentence: "L'élève dont j'ai expliqué à sa mère l'exercice.",
      explanation:
        "FAUX. « dont » remplace un complément introduit par de, pas par à. Il faut : « L'élève à la mère duquel j'ai expliqué l'exercice » ou reformuler.",
    },
    mainTrap:
      "Confondre « qui » et « que » selon la fonction : « qui » est toujours sujet (La fille qui chante), « que » est toujours COD (La fille que j'entends). Un piège classique : « C'est lui qui a raison » vs « C'est lui que j'entends ». Autre piège : « dont » absorbe le de, donc on n'écrit jamais « dont … de lui » (redondance). Ex. : « Le roman dont je parle » (parler de) mais pas « Le roman dont j'en parle ».",
    quiz: [
      {
        sentence:
          "Dans « La professeure que les élèves écoutent attentivement », le pronom relatif « que » a pour fonction sujet.",
        isCorrect: false,
        explanation:
          "« que » est COD du verbe « écoutent » (les élèves écoutent qui ? que ?). Le sujet est « les élèves ». Sujet → qui ; COD → que.",
      },
      {
        sentence:
          "Dans « Le film dont je t'ai parlé est sorti », « dont » remplace « de ce film ».",
        isCorrect: true,
        explanation:
          "Parler de quelque chose : « dont » remplace le complément prépositionnel en de. La phrase de base est : « Je t'ai parlé de ce film ».",
      },
      {
        sentence:
          "« C'est là où nous nous sommes rencontrés » : « où » est un pronom relatif complément de lieu.",
        isCorrect: true,
        explanation:
          "« où » peut reprendre un antécédent de lieu (là, endroit, ville…) ou de temps (le jour où). Ici antécédent : « là » → complément circonstanciel de lieu.",
      },
      {
        sentence:
          "Dans « Je connais l'enfant dont la mère est médecin », on peut remplacer « dont » par « de qui ».",
        isCorrect: true,
        explanation:
          "« dont » remplace « de l'enfant » dans « la mère de l'enfant ». Pour un antécédent humain, « de qui » est une variante correcte : « l'enfant de qui la mère est médecin ».",
      },
      {
        sentence:
          "« L'auteur dont j'en ai lu tous les livres » est une phrase correcte.",
        isCorrect: false,
        explanation:
          "Redondance : « dont » remplace déjà « de l'auteur ». Le pronom « en » est superflu. Correct : « L'auteur dont j'ai lu tous les livres ».",
      },
    ],
  },
};

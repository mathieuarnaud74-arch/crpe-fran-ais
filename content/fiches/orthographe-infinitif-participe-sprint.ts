import type { Fiche } from "@/features/fiches/types";

export const infinitifParticipeSprint: Fiche = {
  id: "orthographe-infinitif-participe-sprint",
  slug: "infinitif-ou-participe-passe",
  title: "Infinitif ou participe passé (-er / -é) ?",
  subtitle: "Révision express — 4 min",
  domaine: "orthographe",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 4,
  tags: ["infinitif", "participe passé", "-er", "-é", "homophones", "1er groupe"],
  notionsLiees: ["accord-participe-passe", "homophones-grammaticaux"],
  exercicesAssocies: ["orthographe-accord"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche limitée aux verbes du 1er groupe (homophones -er / -é). Pour l'accord du participe passé en -é, consulte la fiche dédiée.",
    oneLiner:
      "Test de substitution : remplace le verbe par un verbe du 3e groupe à l'infinitif ou au participe (ex. vendre / vendu, prendre / pris). Si la phrase accepte l'infinitif → écris -er. Si elle exige le participe → écris -é. Une préposition (à, de, pour, sans, par, en) impose toujours l'infinitif ; un auxiliaire (avoir, être) impose toujours le participe passé.",
    exampleCorrect: {
      sentence: "Il faut vérifier ce résultat.",
      explanation:
        "On peut dire « il faut vendre ce résultat » → infinitif confirmé : vérifier (-er).",
    },
    exampleWrong: {
      sentence: "Il faut vérifiez ce résultat.",
      explanation:
        "Confusion avec la 2e personne du pluriel. Le test (il faut vendre…) confirme l'infinitif : vérifier, pas vérifiez.",
    },
    mainTrap:
      "Après une préposition (à, de, pour, sans, par, après, en train de…), la forme est TOUJOURS l'infinitif (-er) : « sans hésiter », « pour avancer », « après avoir mangé ». Après un auxiliaire (avoir, être, se faire…), la forme est TOUJOURS le participe passé (-é) : « il a mangé », « elle est arrivée ». L'erreur classique au CRPE : « Il a commencé à travaillé » (faux) → « à travailler » (correct, préposition impose l'infinitif).",
    quiz: [
      {
        sentence: "Les élèves ont été invités à présenté leur travail.",
        isCorrect: false,
        explanation:
          "Après la préposition « à » → infinitif obligatoire : à présenter. (Test : à vendre leur travail ✓.)",
      },
      {
        sentence: "Le rapport a été validé par l'inspecteur.",
        isCorrect: true,
        explanation:
          "Auxiliaire « été » (être) → participe passé -é. Test : a été vendu ✓ → validé est correct.",
      },
      {
        sentence: "Sans hésiter, elle a répondu correctement.",
        isCorrect: true,
        explanation:
          "Préposition « sans » → infinitif -er. Et « a répondu » : auxiliaire avoir → participe passé -u (3e groupe, correct).",
      },
      {
        sentence: "Il a décidé de commencer à travailler dès demain.",
        isCorrect: true,
        explanation:
          "« a décidé » : auxiliaire → participe -é ✓. « de commencer » : préposition de → infinitif ✓. « à travailler » : préposition à → infinitif ✓.",
      },
      {
        sentence: "Elle s'est laissé convaincre sans trop résistée.",
        isCorrect: false,
        explanation:
          "Après « sans » (préposition) → infinitif obligatoire : résister, pas résistée. Par ailleurs, laisser + infinitif → participe invariable.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const oralEcoleSprint: Fiche = {
  id: "didactique-oral-ecole-sprint",
  slug: "oral-ecole-sprint",
  title: "L'oral \u00e0 l'\u00e9cole primaire",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["oral", "langage", "cycle 1", "d\u00e9bat", "expos\u00e9", "langage d'\u00e9vocation"],
  notionsLiees: ["conscience-phonologique-sprint", "apprendre-a-lire-sprint"],
  exercicesAssocies: ["oral_ecole"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche incontournable pour la partie didactique du CRPE. L\u2019oral est au c\u0153ur des programmes de maternelle (cycle 1) et traverse tous les cycles. Les sujets de concours interrogent fr\u00e9quemment la distinction entre oral-outil et oral-objet, ainsi que les dispositifs p\u00e9dagogiques sp\u00e9cifiques (d\u00e9bat r\u00e9gl\u00e9, expos\u00e9, langage d\u2019\u00e9vocation).",
    oneLiner:
      "L\u2019oral est un objet d\u2019enseignement \u00e0 part enti\u00e8re, pas seulement un outil de communication en classe. Il faut distinguer l\u2019oral spontan\u00e9, l\u2019oral scriptural (structur\u00e9 comme l\u2019\u00e9crit) et l\u2019oral r\u00e9flexif (m\u00e9talinguistique). Au cycle 1, le langage d\u2019\u00e9vocation \u2014 raconter au pass\u00e9 un \u00e9v\u00e9nement v\u00e9cu \u2014 est central. Au cycle 3, le d\u00e9bat r\u00e9gl\u00e9 et l\u2019expos\u00e9 structur\u00e9 sont les genres oraux vis\u00e9s.",
    exampleCorrect: {
      sentence:
        "Un enseignant de GS propose une activit\u00e9 de langage d\u2019\u00e9vocation : les \u00e9l\u00e8ves racontent collectivement la sortie au zoo faite la veille, en utilisant le pass\u00e9 compos\u00e9 et des connecteurs temporels.",
      explanation:
        "Le langage d\u2019\u00e9vocation (Boisseau) est une comp\u00e9tence-cl\u00e9 du cycle 1 : l\u2019\u00e9l\u00e8ve quitte le langage en situation (ici et maintenant) pour \u00e9voquer un \u00e9v\u00e9nement absent. L\u2019enseignant \u00e9tayage la production par des relances et des reformulations, et l\u2019activit\u00e9 est un enseignement explicite de l\u2019oral, pas un simple \u00e9change informel.",
    },
    exampleWrong: {
      sentence:
        "Consid\u00e9rer que l\u2019oral \u00ab s\u2019apprend naturellement \u00bb au fil des interactions quotidiennes et ne n\u00e9cessite pas d\u2019enseignement explicite.",
      explanation:
        "FAUX. Les programmes insistent sur l\u2019enseignement explicite de l\u2019oral. Sans enseignement structur\u00e9, les \u00e9carts langagiers entre \u00e9l\u00e8ves se creusent. L\u2019oral n\u00e9cessite des s\u00e9ances d\u00e9di\u00e9es avec des objectifs langagiers pr\u00e9cis, des crit\u00e8res d\u2019\u00e9valuation et un \u00e9tayage diff\u00e9renci\u00e9.",
    },
    mainTrap:
      "Confondre \u00ab parler en classe \u00bb (l\u2019oral comme m\u00e9dium \u2014 l\u2019\u00e9l\u00e8ve r\u00e9pond \u00e0 des questions, participe \u00e0 un \u00e9change) et \u00ab enseigner l\u2019oral \u00bb (l\u2019oral comme objet \u2014 l\u2019\u00e9l\u00e8ve apprend \u00e0 structurer un propos, argumenter, reformuler). Le CRPE teste syst\u00e9matiquement cette distinction. L\u2019oral-objet suppose des s\u00e9ances planifi\u00e9es, des genres oraux identifi\u00e9s (r\u00e9cit, expos\u00e9, d\u00e9bat) et des crit\u00e8res d\u2019\u00e9valuation explicites.",
    quiz: [
      {
        sentence:
          "\u00c9valuer l\u2019oral est impossible car il est \u00e9ph\u00e9m\u00e8re et subjectif.",
        isCorrect: false,
        explanation:
          "FAUX. L\u2019\u00e9valuation de l\u2019oral est exigeante mais r\u00e9alisable : grilles d\u2019observation crit\u00e9ri\u00e9es, enregistrements audio/vid\u00e9o, auto-\u00e9valuation guid\u00e9e. Les programmes pr\u00e9voient des attendus de fin de cycle pour l\u2019oral (clart\u00e9, coh\u00e9rence, prise en compte de l\u2019interlocuteur). L\u2019enjeu est de d\u00e9finir des crit\u00e8res observables en amont.",
      },
      {
        sentence:
          "Les interactions entre pairs (travail en groupe, d\u00e9bat) contribuent au d\u00e9veloppement des comp\u00e9tences orales si elles sont pilot\u00e9es par l\u2019enseignant.",
        isCorrect: true,
        explanation:
          "Exact. Les interactions entre \u00e9l\u00e8ves sont un levier majeur (Vygotski, conflit sociocognitif), \u00e0 condition que l\u2019enseignant structure le dispositif : r\u00e8gles du d\u00e9bat, r\u00f4les distribu\u00e9s (rapporteur, mod\u00e9rateur), relances cibl\u00e9es, temps de reformulation. Sans pilotage, les \u00e9changes restent superficiels et profitent surtout aux \u00e9l\u00e8ves d\u00e9j\u00e0 \u00e0 l\u2019aise.",
      },
      {
        sentence:
          "Le continuum oral-\u00e9crit signifie qu\u2019il existe une fronti\u00e8re nette entre langue orale et langue \u00e9crite.",
        isCorrect: false,
        explanation:
          "FAUX. Le continuum oral-\u00e9crit (Blanche-Benveniste) montre que les deux modalit\u00e9s ne sont pas oppos\u00e9es mais forment un continuum. L\u2019oral scriptural (un expos\u00e9 pr\u00e9par\u00e9, un r\u00e9cit structur\u00e9) emprunte des traits de l\u2019\u00e9crit (syntaxe complexe, connecteurs). L\u2019\u00e9crit conversationnel (SMS, chat) emprunte des traits de l\u2019oral.",
      },
      {
        sentence:
          "Le d\u00e9bat interpr\u00e9tatif en litt\u00e9rature de jeunesse est un genre oral qui d\u00e9veloppe \u00e0 la fois les comp\u00e9tences langagi\u00e8res et la compr\u00e9hension de texte.",
        isCorrect: true,
        explanation:
          "Exact. Le d\u00e9bat interpr\u00e9tatif (programmes cycle 3) articule oral et lecture litt\u00e9raire : les \u00e9l\u00e8ves confrontent leurs interpr\u00e9tations d\u2019un texte, argumentent, \u00e9tayent leur lecture par des indices textuels. C\u2019est un dispositif doublement formateur qui travaille l\u2019oral argumentatif et la compr\u00e9hension fine.",
      },
      {
        sentence:
          "La reformulation par l\u2019enseignant (reprise en \u00e9cho corrective) est une strat\u00e9gie d\u2019\u00e9tayage fondamentale pour le d\u00e9veloppement du langage oral, notamment au cycle 1.",
        isCorrect: true,
        explanation:
          "Exact. La reformulation corrective (\u00ab feed-back correctif implicite \u00bb) consiste \u00e0 reprendre l\u2019\u00e9nonc\u00e9 de l\u2019\u00e9l\u00e8ve en le corrigeant sans stigmatiser l\u2019erreur : l\u2019\u00e9l\u00e8ve dit \u00ab il a mett\u00e9 \u00bb, l\u2019enseignant r\u00e9pond \u00ab oui, il a mis son manteau \u00bb. C\u2019est une strat\u00e9gie cl\u00e9 de l\u2019\u00e9tayage (Bruner) au cycle 1.",
      },
    ],
  },
};

import type { Fiche } from "@/features/fiches/types";

export const strategiesComprehensionSprint: Fiche = {
  id: "didactique-strategies-comprehension-sprint",
  slug: "strategies-comprehension-sprint",
  title: "Strat\u00e9gies de compr\u00e9hension en lecture",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["compr\u00e9hension", "inf\u00e9rence", "Narramus", "Lectorino", "strat\u00e9gies", "enseignement explicite"],
  notionsLiees: ["apprendre-a-lire-sprint", "litterature-jeunesse-sprint"],
  exercicesAssocies: ["lecture_comprehension_strategies"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche cl\u00e9 pour le CRPE. L\u2019enseignement explicite de la compr\u00e9hension est un axe fort des programmes depuis 2015. Les sujets de concours portent r\u00e9guli\u00e8rement sur l\u2019analyse de dispositifs p\u00e9dagogiques (Narramus, Lectorino, enseignement r\u00e9ciproque) et sur la distinction entre \u00e9valuer la compr\u00e9hension et enseigner la compr\u00e9hension.",
    oneLiner:
      "Comprendre un texte ne s\u2019enseigne pas seulement par des questions apr\u00e8s lecture. L\u2019enseignement explicite des strat\u00e9gies (pr\u00e9dire, questionner, clarifier, r\u00e9sumer) est indispensable. Narramus (C\u00e8be & Goigoux, cycles 1-2) fait raconter l\u2019histoire aux \u00e9l\u00e8ves ; Lectorino & Lectorinette (CE1-CE2) enseigne les inf\u00e9rences. L\u2019enseignement r\u00e9ciproque (Palincsar & Brown) structure le travail en groupe autour de quatre strat\u00e9gies.",
    exampleCorrect: {
      sentence:
        "L\u2019enseignant mod\u00e9lise la strat\u00e9gie de pr\u00e9diction en pensant \u00e0 voix haute avant de tourner la page : \u00ab D\u2019apr\u00e8s le titre et l\u2019image, je pense que le personnage va\u2026 parce que\u2026 \u00bb",
      explanation:
        "La pens\u00e9e \u00e0 voix haute (think-aloud) est une technique d\u2019enseignement explicite : l\u2019enseignant rend visible un processus cognitif habituellement invisible. Il mod\u00e9lise la strat\u00e9gie (pr\u00e9diction), la nomme, l\u2019explicite, puis guide les \u00e9l\u00e8ves vers une pratique autonome. C\u2019est le c\u0153ur de l\u2019enseignement explicite de la compr\u00e9hension.",
    },
    exampleWrong: {
      sentence:
        "Se limiter \u00e0 poser des questions de rep\u00e9rage apr\u00e8s lecture (\u00ab O\u00f9 se passe l\u2019histoire ? \u00bb, \u00ab Qui est le personnage principal ? \u00bb) sans enseigner les strat\u00e9gies qui permettent de comprendre.",
      explanation:
        "FAUX. Poser des questions apr\u00e8s lecture \u00e9value la compr\u00e9hension mais ne l\u2019enseigne pas. L\u2019\u00e9l\u00e8ve qui ne comprend pas avant le questionnaire ne comprendra pas mieux apr\u00e8s. L\u2019enseignement explicite des strat\u00e9gies (avant, pendant et apr\u00e8s la lecture) est n\u00e9cessaire pour outiller les \u00e9l\u00e8ves faibles lecteurs.",
    },
    mainTrap:
      "Croire que la compr\u00e9hension est automatique d\u00e8s que le d\u00e9codage est acquis. De nombreux \u00e9l\u00e8ves d\u00e9codent sans comprendre (\u00ab word callers \u00bb). L\u2019enseignement de la compr\u00e9hension doit \u00eatre aussi explicite et syst\u00e9matique que celui du code. C\u2019est un pi\u00e8ge classique au CRPE : le d\u00e9codage est n\u00e9cessaire mais pas suffisant pour comprendre un texte.",
    quiz: [
      {
        sentence:
          "Narramus (C\u00e8be & Goigoux) est un outil p\u00e9dagogique qui demande aux \u00e9l\u00e8ves de raconter eux-m\u00eames l\u2019histoire \u00e9tudi\u00e9e, avec leurs propres mots et \u00e0 l\u2019aide d\u2019une maquette ou de figurines.",
        isCorrect: true,
        explanation:
          "Exact. Le principe fondateur de Narramus est \u00ab apprendre \u00e0 comprendre en apprenant \u00e0 raconter \u00bb. Les \u00e9l\u00e8ves s\u2019approprient le r\u00e9cit en le reformulant (narration), en manipulant des figurines (th\u00e9\u00e2tralisation) et en m\u00e9morisant le vocabulaire cl\u00e9. Cet outil est valid\u00e9 par la recherche et tr\u00e8s r\u00e9f\u00e9renc\u00e9 dans les sujets de concours.",
      },
      {
        sentence:
          "Les inf\u00e9rences sont des informations que le lecteur doit d\u00e9duire du texte car elles ne sont pas explicitement \u00e9nonc\u00e9es.",
        isCorrect: true,
        explanation:
          "Exact. Une inf\u00e9rence est une information non \u00e9crite que le lecteur construit en croisant des indices textuels et ses connaissances du monde. Par exemple, si le texte dit \u00ab Il enfila son manteau et prit son parapluie \u00bb, le lecteur inf\u00e8re qu\u2019il pleut. L\u2019enseignement des inf\u00e9rences est central dans Lectorino & Lectorinette.",
      },
      {
        sentence:
          "Le vocabulaire n\u2019a pas d\u2019impact significatif sur la compr\u00e9hension en lecture : un \u00e9l\u00e8ve qui d\u00e9code bien compensera les mots inconnus par le contexte.",
        isCorrect: false,
        explanation:
          "FAUX. Le vocabulaire est un pr\u00e9dicteur majeur de la compr\u00e9hension (Biemiller, Nation). Un \u00e9l\u00e8ve qui ne conna\u00eet pas les mots cl\u00e9s d\u2019un texte ne peut pas en construire le sens, m\u00eame s\u2019il d\u00e9code parfaitement. Narramus pr\u00e9voit d\u2019ailleurs un travail syst\u00e9matique du vocabulaire en amont de la lecture de chaque \u00e9pisode.",
      },
      {
        sentence:
          "L\u2019enseignement r\u00e9ciproque (Palincsar & Brown) organise le travail en groupe autour de quatre strat\u00e9gies : pr\u00e9dire, questionner, clarifier et r\u00e9sumer.",
        isCorrect: true,
        explanation:
          "Exact. L\u2019enseignement r\u00e9ciproque est un dispositif valid\u00e9 par la recherche (1984). Chaque \u00e9l\u00e8ve du groupe prend en charge une strat\u00e9gie \u00e0 tour de r\u00f4le. L\u2019enseignant mod\u00e9lise d\u2019abord, puis transf\u00e8re progressivement la responsabilit\u00e9 aux \u00e9l\u00e8ves. C\u2019est un exemple paradigmatique de l\u2019\u00e9tayage puis du d\u00e9s\u00e9tayage (Bruner).",
      },
      {
        sentence:
          "Comprendre les \u00e9tats mentaux des personnages (leurs pens\u00e9es, \u00e9motions, intentions) est un aspect secondaire de la compr\u00e9hension de r\u00e9cit.",
        isCorrect: false,
        explanation:
          "FAUX. La compr\u00e9hension des \u00e9tats mentaux des personnages (th\u00e9orie de l\u2019esprit appliqu\u00e9e au r\u00e9cit) est un axe central de la compr\u00e9hension narrative. Lectorino & Lectorinette y consacre un module entier. C\u2019est souvent l\u00e0 que se jouent les difficult\u00e9s de compr\u00e9hension : comprendre pourquoi un personnage agit, ce qu\u2019il ressent, ce qu\u2019il sait ou ignore.",
      },
    ],
  },
};

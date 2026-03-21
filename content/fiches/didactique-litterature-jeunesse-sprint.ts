import type { Fiche } from "@/features/fiches/types";

export const litteratureJeunesseSprint: Fiche = {
  id: "didactique-litterature-jeunesse-sprint",
  slug: "litterature-jeunesse-sprint",
  title: "Litt\u00e9rature de jeunesse \u00e0 l\u2019\u00e9cole",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["litt\u00e9rature", "lecture", "mise en r\u00e9seau", "carnet de lecteur", "cercle de lecture", "albums"],
  notionsLiees: ["apprendre-a-lire-sprint", "strategies-comprehension-sprint"],
  exercicesAssocies: ["litterature_jeunesse"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche essentielle pour les \u00e9preuves de didactique du CRPE. La litt\u00e9rature de jeunesse est un axe majeur des programmes de fran\u00e7ais. Les sujets interrogent r\u00e9guli\u00e8rement la distinction entre lecture compr\u00e9hension et lecture litt\u00e9raire, ainsi que les dispositifs p\u00e9dagogiques (mise en r\u00e9seau, carnet de lecteur, d\u00e9bat interpr\u00e9tatif).",
    oneLiner:
      "La litt\u00e9rature de jeunesse est un pilier des programmes : elle construit une culture commune (listes de r\u00e9f\u00e9rence MEN), d\u00e9veloppe l\u2019interpr\u00e9tation et la subjectivit\u00e9 du lecteur, et se travaille par la mise en r\u00e9seau (grouper les \u0153uvres par th\u00e8me, genre, auteur ou proc\u00e9d\u00e9). Le carnet de lecteur permet de garder trace de la r\u00e9ception personnelle de chaque \u00e9l\u00e8ve.",
    exampleCorrect: {
      sentence:
        "Un enseignant propose un r\u00e9seau d\u2019albums autour du personnage du loup : le loup m\u00e9chant classique (Le Petit Chaperon rouge) vs le loup d\u00e9construit et comique (Le loup est revenu, Geoffroy de Pennart). Les \u00e9l\u00e8ves comparent les repr\u00e9sentations et interpr\u00e8tent les \u00e9carts.",
      explanation:
        "La mise en r\u00e9seau est le dispositif cl\u00e9 de l\u2019enseignement de la litt\u00e9rature \u00e0 l\u2019\u00e9cole. Elle permet la construction d\u2019une culture litt\u00e9raire (intertextualit\u00e9), le d\u00e9veloppement de l\u2019interpr\u00e9tation (comparer, rep\u00e9rer des invariants et des variations) et l\u2019acc\u00e8s \u00e0 la dimension symbolique des textes.",
    },
    exampleWrong: {
      sentence:
        "R\u00e9duire l\u2019\u00e9tude d\u2019une \u0153uvre litt\u00e9raire \u00e0 un questionnaire de compr\u00e9hension avec r\u00e9ponses \u00e0 rep\u00e9rer dans le texte (lecture utilitaire).",
      explanation:
        "FAUX. Cette approche rel\u00e8ve de la lecture compr\u00e9hension (extraire des informations explicites), non de la lecture litt\u00e9raire. La lecture litt\u00e9raire suppose l\u2019interpr\u00e9tation (textes r\u00e9sistants, polys\u00e9mie), l\u2019expression de la subjectivit\u00e9 du lecteur et le tissage de liens intertextuels. Les programmes valorisent les deux, mais le CRPE sanctionne la r\u00e9duction \u00e0 la seule compr\u00e9hension litt\u00e9rale.",
    },
    mainTrap:
      "Confondre lecture compr\u00e9hension (extraire des informations, r\u00e9pondre \u00e0 des questions factuelles) et lecture litt\u00e9raire (interpr\u00e9ter, ressentir, tisser des liens intertextuels). Le CRPE valorise la lecture litt\u00e9raire et attend des candidats qu\u2019ils sachent proposer des dispositifs qui vont au-del\u00e0 du questionnaire : d\u00e9bat interpr\u00e9tatif, carnet de lecteur, mise en r\u00e9seau, lecture \u00e0 voix haute expressive.",
    quiz: [
      {
        sentence:
          "Les listes de r\u00e9f\u00e9rence du minist\u00e8re de l\u2019\u00c9ducation nationale proposent des \u0153uvres de litt\u00e9rature pour chaque cycle afin de construire une culture litt\u00e9raire commune.",
        isCorrect: true,
        explanation:
          "Exact. Les listes de r\u00e9f\u00e9rence MEN (actualis\u00e9es r\u00e9guli\u00e8rement) constituent un r\u00e9pertoire d\u2019\u0153uvres class\u00e9es par cycle. Elles visent l\u2019\u00e9quit\u00e9 culturelle : garantir \u00e0 tous les \u00e9l\u00e8ves l\u2019acc\u00e8s \u00e0 un patrimoine litt\u00e9raire partag\u00e9, quelle que soit leur origine sociale. L\u2019enseignant y puise pour construire ses parcours de lecture.",
      },
      {
        sentence:
          "La lecture offerte (lue \u00e0 voix haute par l\u2019enseignant) n\u2019a pas de valeur p\u00e9dagogique car les \u00e9l\u00e8ves ne lisent pas eux-m\u00eames.",
        isCorrect: false,
        explanation:
          "FAUX. La lecture offerte est un dispositif p\u00e9dagogique essentiel, notamment en cycle 1 et d\u00e9but de cycle 2. Elle permet l\u2019acc\u00e8s \u00e0 des textes que les \u00e9l\u00e8ves ne pourraient pas lire seuls, construit une culture de l\u2019\u00e9crit, d\u00e9veloppe la compr\u00e9hension orale et nourrit l\u2019imaginaire. Elle donne aussi un mod\u00e8le de lecture expressive.",
      },
      {
        sentence:
          "Dans un album, le rapport texte-image peut \u00eatre de redondance, de compl\u00e9mentarit\u00e9 ou de contradiction, et cette relation est un objet d\u2019apprentissage \u00e0 part enti\u00e8re.",
        isCorrect: true,
        explanation:
          "Exact. L\u2019album est un genre litt\u00e9raire o\u00f9 le sens na\u00eet de l\u2019interaction texte-image. Quand l\u2019image contredit le texte (ironie visuelle, double narration), l\u2019\u00e9l\u00e8ve doit inf\u00e9rer le sens global. Analyser cette relation est un objectif d\u2019apprentissage explicite dans les programmes et un sujet r\u00e9current au CRPE.",
      },
      {
        sentence:
          "Le conte, la fable, le roman, la po\u00e9sie et la bande dessin\u00e9e sont tous des genres litt\u00e9raires \u00e9tudi\u00e9s \u00e0 l\u2019\u00e9cole primaire selon les programmes.",
        isCorrect: true,
        explanation:
          "Exact. Les programmes pr\u00e9voient la fr\u00e9quentation de genres litt\u00e9raires vari\u00e9s : contes et fables (patrimoine), romans (y compris courts, cycle 3), po\u00e9sie, th\u00e9\u00e2tre, bande dessin\u00e9e et albums. La diversit\u00e9 g\u00e9n\u00e9rique est un crit\u00e8re de programmation : chaque ann\u00e9e, les \u00e9l\u00e8ves doivent rencontrer plusieurs genres.",
      },
      {
        sentence:
          "Le d\u00e9bat interpr\u00e9tatif consiste \u00e0 faire voter les \u00e9l\u00e8ves pour la \u00ab bonne \u00bb interpr\u00e9tation d\u2019un texte litt\u00e9raire.",
        isCorrect: false,
        explanation:
          "FAUX. Le d\u00e9bat interpr\u00e9tatif ne vise pas une interpr\u00e9tation unique : il confronte les lectures plurielles d\u2019un texte r\u00e9sistant (polys\u00e9mique). Les \u00e9l\u00e8ves \u00e9tayent leur interpr\u00e9tation par des indices textuels. Toute interpr\u00e9tation est recevable si elle est fond\u00e9e sur le texte. L\u2019enjeu n\u2019est pas le consensus mais la capacit\u00e9 \u00e0 argumenter sa lecture.",
      },
    ],
  },
};

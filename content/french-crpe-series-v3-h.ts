import { ExerciseRecord, RevisionSession } from "@/types/domain";

const createdAt = "2026-03-20T08:00:00.000Z";

type QuestionInput = Omit<
  ExerciseRecord,
  "subject" | "validation_status" | "source" | "is_published" | "created_at" | "updated_at" | "level" | "access_tier"
>;

type SessionInput = Omit<RevisionSession, "questionCount" | "level" | "estimatedMinutes" | "access_tier">;

function question(data: QuestionInput): ExerciseRecord {
  return {
    subject: "Francais",
    validation_status: "valide",
    source: "Serie CRPE Francais V3",
    is_published: true,
    created_at: createdAt,
    updated_at: createdAt,
    common_mistake: null,
    ...data,
  };
}

function buildSession(data: SessionInput): RevisionSession {
  return { ...data, questionCount: data.questions.length };
}

function qcm(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  instruction: string,
  choices: Array<{ id: string; label: string }>,
  value: string,
  explanation: string,
  commonMistake: string,
) {
  return question({
    id,
    subdomain,
    exercise_type: "qcm",
    instruction,
    support_text: null,
    choices,
    expected_answer: { mode: "single_choice", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null,
    topic_label: null,
  });
}

function vraiFaux(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  instruction: string,
  value: boolean,
  explanation: string,
  commonMistake: string,
) {
  return question({
    id,
    subdomain,
    exercise_type: "vrai_faux",
    instruction,
    support_text: null,
    choices: [{ id: "true", label: "Vrai" }, { id: "false", label: "Faux" }],
    expected_answer: { mode: "boolean", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null,
    topic_label: null,
  });
}

function reponseCourte(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  instruction: string,
  acceptableAnswers: string[],
  explanation: string,
  commonMistake: string,
  exercise_type: ExerciseRecord["exercise_type"] = "reponse_courte",
  support_text: string | null = null,
) {
  return question({
    id,
    subdomain,
    exercise_type,
    instruction,
    support_text,
    choices: null,
    expected_answer: { mode: "text", acceptableAnswers },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null,
    topic_label: null,
  });
}

export const seriesV3BatchH: RevisionSession[] = [
  // ─── Série 1 : Hyperonymie, hyponymie et relations sémantiques ───
  buildSession({
    id: "fr-v3-serie-hyperonymie-hyponymie",
    title: "Hyperonymie, hyponymie et relations sémantiques",
    summary: "Identifier les relations d'inclusion sémantique entre mots génériques (hyperonymes) et mots spécifiques (hyponymes).",
    objective: "Maîtriser les notions d'hyperonymie et d'hyponymie pour enrichir le vocabulaire et faciliter la reformulation.",
    introduction:
      "En lexique, les mots s'organisent en réseaux hiérarchiques : un hyperonyme est un mot de sens général qui englobe des mots plus précis, les hyponymes. Savoir repérer ces relations aide les élèves à reformuler, à classer et à mieux comprendre les textes.",
    subdomain: "lexique",
    topicKey: "hyperonymie_hyponymie",
    topicLabel: "Hyperonymie, hyponymie et relations sémantiques",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 37,
    completionSummary: {
      skill: "Identifier hyperonymes et hyponymes dans un ensemble lexical",
      keyPoints: [
        "L'hyperonyme est le mot générique qui englobe les autres (animal englobe chat, chien, oiseau).",
        "L'hyponyme est le mot spécifique inclus dans le sens de l'hyperonyme (tulipe est hyponyme de fleur).",
        "Cette relation d'inclusion sémantique est essentielle pour la reformulation et l'enrichissement du vocabulaire.",
      ],
      retryAdvice:
        "Posez-vous toujours la question : lequel des deux mots inclut l'autre ? Le mot qui inclut est l'hyperonyme.",
    },
    questions: [
      qcm(
        "v3h-hh-1",
        "lexique",
        "Quel terme désigne un mot de sens général qui englobe d'autres mots de sens plus précis ?",
        [
          { id: "a", label: "Synonyme" },
          { id: "b", label: "Hyperonyme" },
          { id: "c", label: "Hyponyme" },
          { id: "d", label: "Antonyme" },
        ],
        "b",
        "L'hyperonyme est le mot générique qui inclut sémantiquement d'autres mots plus spécifiques. Par exemple, \"animal\" est l'hyperonyme de \"chat\", \"chien\" et \"oiseau\". Cette relation d'inclusion est au cœur de l'organisation hiérarchique du lexique. Ne pas confondre avec le synonyme, qui désigne un mot de sens proche et interchangeable dans certains contextes.",
        "Confondre hyperonyme et synonyme en pensant que le mot générique est simplement un équivalent du mot spécifique.",
      ),
      qcm(
        "v3h-hh-2",
        "lexique",
        "Dans la liste suivante, lequel est l'hyperonyme des autres : chaise, meuble, table, armoire ?",
        [
          { id: "a", label: "Chaise" },
          { id: "b", label: "Table" },
          { id: "c", label: "Meuble" },
          { id: "d", label: "Armoire" },
        ],
        "c",
        "\"Meuble\" est le terme générique qui englobe \"chaise\", \"table\" et \"armoire\". Chacun de ces trois mots est un hyponyme de \"meuble\" car il désigne un type particulier de meuble. L'hyperonyme se reconnaît au fait qu'il peut remplacer chacun des autres mots dans un contexte général sans perte de vérité logique (une chaise est un meuble).",
        "Choisir le mot le plus courant plutôt que le mot le plus englobant.",
      ),
      vraiFaux(
        "v3h-hh-3",
        "lexique",
        "Vrai ou faux : \"rose\" est un hyperonyme de \"fleur\".",
        false,
        "C'est l'inverse : \"fleur\" est l'hyperonyme de \"rose\". La rose est un type particulier de fleur, donc \"rose\" est l'hyponyme de \"fleur\". L'hyperonyme est toujours le terme le plus général, celui qui englobe l'autre. On peut dire \"une rose est une fleur\" mais pas \"une fleur est une rose\".",
        "Inverser le sens de la relation d'inclusion en ne vérifiant pas quel mot englobe l'autre.",
      ),
      qcm(
        "v3h-hh-4",
        "lexique",
        "Parmi ces mots, lequel est un hyponyme de \"véhicule\" ?",
        [
          { id: "a", label: "Transport" },
          { id: "b", label: "Déplacement" },
          { id: "c", label: "Camionnette" },
          { id: "d", label: "Mobilité" },
        ],
        "c",
        "\"Camionnette\" est un hyponyme de \"véhicule\" car c'est un type spécifique de véhicule. Les mots \"transport\", \"déplacement\" et \"mobilité\" appartiennent au même champ lexical mais ne sont pas des hyponymes de \"véhicule\" : ce ne sont pas des types de véhicules. L'hyponyme doit pouvoir s'inscrire dans la phrase \"X est un type de Y\".",
        "Confondre champ lexical et relation d'hyponymie : tous les mots liés au thème ne sont pas forcément des hyponymes.",
      ),
      reponseCourte(
        "v3h-hh-5",
        "lexique",
        "Quel est l'hyperonyme commun à \"pomme\", \"banane\" et \"cerise\" ?",
        ["fruit", "fruits", "un fruit"],
        "\"Fruit\" est l'hyperonyme qui englobe \"pomme\", \"banane\" et \"cerise\". Chacun de ces mots désigne un type particulier de fruit. En classe, cette relation d'inclusion aide les élèves à organiser le vocabulaire en catégories et à enrichir leurs productions écrites par des reformulations plus générales ou plus précises.",
        "Répondre par un mot du même niveau (par exemple \"orange\") au lieu de chercher le terme englobant.",
      ),
      vraiFaux(
        "v3h-hh-6",
        "lexique",
        "Vrai ou faux : la relation hyperonyme/hyponyme est une relation d'inclusion sémantique.",
        true,
        "L'hyperonymie et l'hyponymie reposent bien sur une relation d'inclusion sémantique : le sens de l'hyponyme est inclus dans celui de l'hyperonyme. Dire que \"chat\" est hyponyme de \"animal\" revient à dire que le sens de \"chat\" inclut tous les traits sémantiques de \"animal\" plus des traits spécifiques. Cette relation structure l'organisation hiérarchique du lexique.",
        "Confondre inclusion sémantique et synonymie, qui est une relation d'équivalence et non d'inclusion.",
      ),
      qcm(
        "v3h-hh-7",
        "lexique",
        "Comment appelle-t-on les mots \"guitare\", \"piano\" et \"violon\" par rapport au mot \"instrument de musique\" ?",
        [
          { id: "a", label: "Des synonymes" },
          { id: "b", label: "Des hyponymes" },
          { id: "c", label: "Des hyperonymes" },
          { id: "d", label: "Des antonymes" },
        ],
        "b",
        "\"Guitare\", \"piano\" et \"violon\" sont des hyponymes de \"instrument de musique\". Ils désignent des types spécifiques inclus dans la catégorie plus générale. Ensemble, ils forment des co-hyponymes, c'est-à-dire des mots qui partagent le même hyperonyme. Cette terminologie est celle préconisée par les programmes officiels (Éduscol 2021).",
        "Répondre synonymes en pensant que les mots désignant des objets similaires sont des synonymes.",
      ),
      reponseCourte(
        "v3h-hh-8",
        "lexique",
        "Donnez un hyponyme du mot \"arbre\".",
        ["chêne", "sapin", "bouleau", "érable", "pin", "olivier", "platane", "peuplier", "hêtre", "frêne", "tilleul", "noyer", "pommier", "cerisier", "poirier", "prunier", "cèdre", "cyprès", "saule", "marronnier", "acacia", "baobab", "séquoia", "magnolia", "eucalyptus", "palmier"],
        "Tout nom d'essence d'arbre est un hyponyme correct : chêne, sapin, bouleau, érable, etc. L'hyponyme doit désigner un type spécifique d'arbre, c'est-à-dire un mot dont le sens est inclus dans celui de \"arbre\". Un mot comme \"forêt\" ne conviendrait pas car une forêt n'est pas un type d'arbre mais un ensemble d'arbres.",
        "Proposer un mot du champ lexical de l'arbre (branche, racine, forêt) qui n'est pas un type d'arbre.",
      ),
      vraiFaux(
        "v3h-hh-9",
        "lexique",
        "Vrai ou faux : \"mammifère\" est un hyponyme de \"chat\".",
        false,
        "C'est l'inverse : \"mammifère\" est un hyperonyme de \"chat\" car il désigne une catégorie plus large qui inclut le chat. Le chat est un type de mammifère, donc \"chat\" est l'hyponyme et \"mammifère\" l'hyperonyme. La relation d'inclusion va toujours du spécifique (hyponyme) vers le général (hyperonyme).",
        "Inverser la hiérarchie en confondant le mot englobant et le mot inclus.",
      ),
      qcm(
        "v3h-hh-10",
        "lexique",
        "Quel intérêt pédagogique principal présente le travail sur l'hyperonymie et l'hyponymie en classe de français ?",
        [
          { id: "a", label: "Améliorer uniquement l'orthographe" },
          { id: "b", label: "Aider à la reformulation et à l'enrichissement du vocabulaire" },
          { id: "c", label: "Travailler exclusivement la conjugaison" },
          { id: "d", label: "Apprendre les règles de ponctuation" },
        ],
        "b",
        "Le travail sur l'hyperonymie et l'hyponymie aide directement les élèves à reformuler (remplacer un mot précis par un terme général ou inversement), à éviter les répétitions et à enrichir leur vocabulaire. En lecture, savoir identifier l'hyperonyme permet de comprendre des reprises anaphoriques (\"le félin\" pour reprendre \"le chat\"). C'est un levier majeur pour la compréhension et la production d'écrits.",
        "Réduire l'intérêt de ces notions à un simple exercice de classement sans voir l'impact sur la compréhension et la production.",
      ),
    ],
  }),

  // ─── Série 2 : Familles de mots (base, radical, racine) ───
  buildSession({
    id: "fr-v3-serie-familles-de-mots",
    title: "Familles de mots (base, radical, racine)",
    summary: "Comprendre la formation des familles de mots en distinguant base, radical et racine selon la terminologie Éduscol.",
    objective: "Maîtriser les notions de base, radical et racine pour analyser la formation des mots et identifier les familles lexicales.",
    introduction:
      "Une famille de mots regroupe les mots partageant un même radical. Mais attention : les programmes officiels distinguent la base (mot de départ pour la dérivation), le radical (forme prise par la base avec un affixe) et la racine (élément étymologique, souvent latin ou grec). Ces distinctions sont essentielles au CRPE.",
    subdomain: "lexique",
    topicKey: "familles_de_mots",
    topicLabel: "Familles de mots (base, radical, racine)",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 38,
    completionSummary: {
      skill: "Analyser la formation des mots et identifier les familles lexicales",
      keyPoints: [
        "La base est le mot servant de point de départ à la dérivation (nation est la base de national).",
        "Le radical est la forme que prend la base en construction avec un affixe (chant- dans chanteur).",
        "La racine est l'élément étymologique, souvent latin ou grec (cor, cordis pour cœur, cardiaque, cordial).",
      ],
      retryAdvice:
        "Pour chaque mot, demandez-vous : quel est le mot de départ (base) ? quelle forme prend-il avec les affixes (radical) ? et d'où vient-il étymologiquement (racine) ?",
    },
    questions: [
      qcm(
        "v3h-fm-1",
        "lexique",
        "Selon la terminologie Éduscol, comment appelle-t-on le mot qui sert de point de départ à la dérivation ?",
        [
          { id: "a", label: "Le radical" },
          { id: "b", label: "La racine" },
          { id: "c", label: "La base" },
          { id: "d", label: "Le préfixe" },
        ],
        "c",
        "La base est le mot qui sert de point de départ à la dérivation. Par exemple, \"nation\" est la base de \"national\", \"nationaliser\", \"nationalité\". Il ne faut pas confondre la base avec le radical, qui est la forme que prend la base lorsqu'elle se combine avec un affixe, ni avec la racine, qui est l'élément étymologique d'origine latine ou grecque.",
        "Confondre base et radical en utilisant les deux termes comme synonymes.",
      ),
      vraiFaux(
        "v3h-fm-2",
        "lexique",
        "Vrai ou faux : les mots \"cœur\", \"cardiaque\", \"cordial\" et \"cordialité\" appartiennent à la même famille de mots.",
        true,
        "Ces quatre mots partagent la même racine latine cor, cordis (le cœur). Ils forment une famille de mots dite savante car ils sont reliés par une racine étymologique gréco-latine plutôt que par un radical français évident. \"Cœur\" est la forme populaire, tandis que \"cardiaque\" vient du grec kardia et \"cordial\" du latin cordialis. La famille de mots se définit comme l'ensemble des mots partageant un même radical.",
        "Penser que des mots de forme très différente ne peuvent pas appartenir à la même famille.",
      ),
      qcm(
        "v3h-fm-3",
        "lexique",
        "Dans le mot \"chanteur\", quelle est la forme du radical ?",
        [
          { id: "a", label: "Chant" },
          { id: "b", label: "Chante" },
          { id: "c", label: "Chanteur" },
          { id: "d", label: "-eur" },
        ],
        "a",
        "Le radical est la forme que prend la base en construction avec un affixe. Dans \"chanteur\", le radical est \"chant-\" auquel s'ajoute le suffixe \"-eur\". La base est le verbe \"chanter\", mais quand il entre en dérivation, c'est la forme \"chant-\" qui apparaît. Le suffixe \"-eur\" n'est pas le radical mais l'affixe qui s'y ajoute.",
        "Répondre \"chanteur\" en prenant le mot entier pour le radical au lieu d'isoler la partie commune.",
      ),
      reponseCourte(
        "v3h-fm-4",
        "lexique",
        "Comment appelle-t-on l'élément étymologique d'origine latine ou grecque à partir duquel se sont formés des mots en français ?",
        ["racine", "la racine"],
        "La racine est l'élément étymologique, souvent d'origine latine ou grecque, qui se retrouve dans plusieurs mots français. Par exemple, la racine latine spir- (souffle) se retrouve dans \"respirer\", \"inspirer\", \"expirer\", \"aspirer\". Contrairement à la base (mot de départ en français) et au radical (forme du mot avec un affixe), la racine renvoie à l'étymologie et permet d'expliquer les familles dites savantes.",
        "Répondre radical ou base sans faire la distinction avec l'élément étymologique.",
      ),
      qcm(
        "v3h-fm-5",
        "lexique",
        "Quelle est la base dans la série \"terrasse, terrain, terrestre, enterrer\" ?",
        [
          { id: "a", label: "Terr-" },
          { id: "b", label: "Terre" },
          { id: "c", label: "Terra" },
          { id: "d", label: "Enterrer" },
        ],
        "b",
        "La base est le mot \"terre\", c'est-à-dire le mot existant en français qui sert de point de départ à la dérivation. \"Terr-\" est le radical, la forme que prend la base quand elle se combine avec des affixes. \"Terra\" est la racine latine. La distinction base/radical/racine est un point clé de la terminologie Éduscol 2021 pour le CRPE.",
        "Confondre la base (mot complet) avec le radical (forme tronquée servant à la dérivation).",
      ),
      vraiFaux(
        "v3h-fm-6",
        "lexique",
        "Vrai ou faux : une famille de mots savante est une famille dont les membres sont reliés par une racine gréco-latine.",
        true,
        "Les familles savantes sont effectivement reliées par une racine étymologique gréco-latine. Par exemple, la racine grecque graph- (écrire) relie \"graphie\", \"orthographe\", \"calligraphie\", \"biographie\". Ces mots ne partagent pas un radical français évident mais un élément étymologique commun. À l'inverse, une famille populaire repose sur un radical français reconnaissable (chant-, dans chanter, chanteur, chanson).",
        "Penser que savant signifie simplement difficile ou rare, sans lien avec l'étymologie gréco-latine.",
      ),
      qcm(
        "v3h-fm-7",
        "lexique",
        "Dans la famille du mot \"voir\", quel mot relève d'une formation savante à partir de la racine latine vid- (voir) ?",
        [
          { id: "a", label: "Revoir" },
          { id: "b", label: "Visible" },
          { id: "c", label: "Voyant" },
          { id: "d", label: "Vue" },
        ],
        "b",
        "\"Visible\" est formé sur la racine latine vid- (videre = voir) avec le suffixe \"-ible\". C'est une formation savante. En revanche, \"revoir\", \"voyant\" et \"vue\" sont des formations populaires construites sur la base française \"voir\" avec des affixes courants. Reconnaître cette double filiation (populaire et savante) est important pour comprendre les familles de mots au CRPE.",
        "Ne pas repérer la racine latine vid- dans \"visible\" et le classer comme un mot sans rapport avec \"voir\".",
      ),
      reponseCourte(
        "v3h-fm-8",
        "lexique",
        "Quel est le radical commun aux mots \"fleuriste\", \"fleurir\" et \"défleurir\" ?",
        ["fleur", "fleur-"],
        "Le radical commun est \"fleur-\", la forme que prend la base \"fleur\" en construction avec les différents affixes : le suffixe \"-iste\" (fleuriste), le suffixe \"-ir\" (fleurir) et le préfixe \"dé-\" (défleurir). On retrouve cette forme stable dans tous les mots dérivés, ce qui permet de les regrouper en une même famille lexicale.",
        "Répondre \"fleurir\" (un mot dérivé) au lieu d'isoler le radical commun à tous les membres de la famille.",
      ),
      vraiFaux(
        "v3h-fm-9",
        "lexique",
        "Vrai ou faux : \"aquatique\" et \"eau\" appartiennent à la même famille de mots malgré des formes très différentes.",
        true,
        "\"Eau\" et \"aquatique\" appartiennent bien à la même famille de mots. \"Eau\" est issu de la forme populaire du latin aqua, tandis que \"aquatique\" conserve la racine latine aqua- sous sa forme savante. C'est un cas typique de doublet populaire/savant dans une même famille. D'autres mots de cette famille savante incluent \"aquarium\", \"aquarelle\", \"aqueduc\".",
        "Exclure les mots de forme très différente d'une même famille en oubliant les racines étymologiques.",
      ),
      qcm(
        "v3h-fm-10",
        "lexique",
        "Parmi ces ensembles, lequel constitue une véritable famille de mots (mots partageant un même radical) ?",
        [
          { id: "a", label: "Mer, marin, maritime, amerrir" },
          { id: "b", label: "Mer, bleu, vague, sable" },
          { id: "c", label: "Mer, mère, maire, amer" },
          { id: "d", label: "Mer, eau, lac, rivière" },
        ],
        "a",
        "Seule la série \"mer, marin, maritime, amerrir\" constitue une famille de mots : tous partagent le radical \"mer-/mar-\" issu du latin mare. La série B (mer, bleu, vague, sable) forme un champ lexical (mots liés au thème de la mer dans un texte) mais pas une famille morphologique. La série C regroupe des homophones sans lien de radical. La série D rassemble des hyponymes de \"étendue d'eau\".",
        "Confondre famille de mots (lien morphologique par le radical) et champ lexical (lien thématique dans un texte).",
      ),
    ],
  }),

  // ─── Série 3 : Sens figuré et évolution sémantique ───
  buildSession({
    id: "fr-v3-serie-sens-figure-evolution",
    title: "Sens figuré et évolution sémantique",
    summary: "Comprendre les mécanismes du sens figuré (métaphore, métonymie) et les processus d'évolution sémantique (extension, restriction, polysémie).",
    objective: "Distinguer dénotation et connotation, identifier les différents types de sens figuré et analyser l'évolution du sens des mots.",
    introduction:
      "Les mots n'ont pas un sens figé : ils évoluent par métaphore, métonymie, extension ou restriction. Comprendre ces mécanismes est essentiel pour enseigner la compréhension en lecture et pour distinguer polysémie (un même mot avec plusieurs sens liés) et homonymie (des mots différents de même forme).",
    subdomain: "lexique",
    topicKey: "sens_figure_evolution",
    topicLabel: "Sens figuré et évolution sémantique",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 39,
    completionSummary: {
      skill: "Analyser les mécanismes du sens figuré et l'évolution sémantique des mots",
      keyPoints: [
        "La dénotation est le sens objectif et référentiel du mot ; la connotation porte les valeurs subjectives, affectives ou culturelles.",
        "La métaphore repose sur une ressemblance (pied de la montagne), la métonymie sur une contiguïté (boire un verre).",
        "La polysémie (un même mot avec plusieurs sens liés) se distingue de l'homonymie (mots différents de même forme).",
      ],
      retryAdvice:
        "Pour chaque emploi figuré, cherchez le lien avec le sens premier : ressemblance (métaphore) ou contiguïté (métonymie).",
    },
    questions: [
      qcm(
        "v3h-sfe-1",
        "lexique",
        "Comment appelle-t-on le sens objectif et référentiel d'un mot, par opposition à ses valeurs subjectives ou affectives ?",
        [
          { id: "a", label: "La connotation" },
          { id: "b", label: "La dénotation" },
          { id: "c", label: "La polysémie" },
          { id: "d", label: "L'homonymie" },
        ],
        "b",
        "La dénotation désigne le sens objectif, référentiel d'un mot, celui qu'on trouve dans le dictionnaire. Par exemple, la dénotation de \"rouge\" est la couleur située entre l'orange et le violet dans le spectre lumineux. La connotation, en revanche, porte les valeurs subjectives, affectives ou culturelles associées au mot (\"rouge\" connote la passion, le danger, la révolution selon les contextes).",
        "Confondre dénotation et connotation en pensant que la définition du dictionnaire inclut les valeurs affectives.",
      ),
      qcm(
        "v3h-sfe-2",
        "lexique",
        "Dans l'expression \"le pied de la montagne\", quel mécanisme sémantique est à l'œuvre ?",
        [
          { id: "a", label: "Une métonymie" },
          { id: "b", label: "Une extension de sens" },
          { id: "c", label: "Une métaphore" },
          { id: "d", label: "Une restriction de sens" },
        ],
        "c",
        "\"Le pied de la montagne\" est une métaphore : le mot \"pied\" est employé par analogie de forme et de position avec le pied du corps humain (la partie la plus basse). La métaphore repose toujours sur une ressemblance entre le sens premier et le sens figuré. Ce n'est pas une métonymie (qui reposerait sur un rapport de contiguïté) ni une extension de sens (qui élargirait la catégorie de référents).",
        "Répondre métonymie en confondant le rapport de ressemblance (métaphore) avec le rapport de contiguïté (métonymie).",
      ),
      vraiFaux(
        "v3h-sfe-3",
        "lexique",
        "Vrai ou faux : dans \"boire un verre\", le mot \"verre\" est employé par métonymie.",
        true,
        "C'est bien une métonymie : on désigne le contenu (la boisson) par le contenant (le verre). La métonymie repose sur un rapport de contiguïté — ici, le verre et la boisson sont physiquement liés (l'un contient l'autre). Ce n'est pas une métaphore car il n'y a pas de rapport de ressemblance entre le verre et la boisson, mais un rapport de proximité spatiale ou logique.",
        "Dire que c'est une métaphore en ne distinguant pas ressemblance (métaphore) et contiguïté (métonymie).",
      ),
      qcm(
        "v3h-sfe-4",
        "lexique",
        "Le mot \"viande\" désignait autrefois toute nourriture, puis s'est restreint à la chair animale. Quel processus sémantique est à l'œuvre ?",
        [
          { id: "a", label: "Une extension de sens" },
          { id: "b", label: "Une métaphore" },
          { id: "c", label: "Une restriction de sens" },
          { id: "d", label: "Une métonymie" },
        ],
        "c",
        "Le mot \"viande\" illustre une restriction de sens : son sens s'est rétréci au fil du temps, passant de \"toute nourriture\" (du latin vivenda, ce qui sert à vivre) au sens actuel de \"chair animale destinée à l'alimentation\". La restriction de sens réduit le nombre de référents possibles. C'est l'inverse de l'extension de sens, qui élargit la portée du mot.",
        "Confondre restriction et extension de sens en ne vérifiant pas si le sens s'est élargi ou rétréci.",
      ),
      reponseCourte(
        "v3h-sfe-5",
        "lexique",
        "Comment appelle-t-on le fait qu'un même mot possède plusieurs sens liés entre eux (par exemple \"souris\" désignant le rongeur et le périphérique informatique) ?",
        ["polysémie", "la polysémie"],
        "La polysémie désigne le fait qu'un même mot possède plusieurs sens liés entre eux. \"Souris\" (rongeur) et \"souris\" (périphérique informatique) sont deux sens d'un même mot, reliés par une métaphore de forme. Il ne faut pas confondre avec l'homonymie, qui concerne des mots différents ayant la même forme par hasard historique (\"mousse\" la plante et \"mousse\" le marin n'ont aucun lien sémantique).",
        "Répondre homonymie en ne percevant pas le lien sémantique entre les différents sens du mot.",
      ),
      qcm(
        "v3h-sfe-6",
        "lexique",
        "Quelle est la différence fondamentale entre polysémie et homonymie ?",
        [
          { id: "a", label: "La polysémie concerne les mots rares, l'homonymie les mots courants" },
          { id: "b", label: "La polysémie relève d'un même mot avec des sens liés, l'homonymie de mots différents de même forme" },
          { id: "c", label: "La polysémie est orale, l'homonymie est écrite" },
          { id: "d", label: "Il n'y a aucune différence, les deux termes sont synonymes" },
        ],
        "b",
        "La distinction est essentielle : la polysémie concerne un même mot dont les différents sens sont reliés par un lien sémantique (métaphore, métonymie, extension). L'homonymie concerne des mots différents qui ont la même forme (graphique ou phonique) par hasard historique, sans lien de sens. Par exemple, \"avocat\" (fruit) et \"avocat\" (juriste) sont des homonymes ; \"feuille\" (d'arbre) et \"feuille\" (de papier) relèvent de la polysémie (lien métaphorique de forme).",
        "Traiter polysémie et homonymie comme synonymes ou croire que la distinction est arbitraire.",
      ),
      vraiFaux(
        "v3h-sfe-7",
        "lexique",
        "Vrai ou faux : le mot \"panier\" a subi une extension de sens lorsqu'il est passé de l'objet en osier au \"panier\" de basket.",
        true,
        "Le mot \"panier\" a effectivement connu une extension de sens. À l'origine, il désignait un objet en osier servant à transporter des marchandises. Par métaphore de forme (cercle ouvert dans lequel on dépose quelque chose), il a désigné l'anneau du terrain de basket. L'extension de sens élargit le nombre de référents possibles d'un mot, ici de l'objet artisanal au domaine sportif.",
        "Confondre extension de sens et création d'un mot nouveau : c'est le même mot dont le champ d'application s'élargit.",
      ),
      qcm(
        "v3h-sfe-8",
        "lexique",
        "Dans \"Paris a voté pour le projet\", quel procédé sémantique permet d'utiliser le nom de la ville pour désigner ses habitants ?",
        [
          { id: "a", label: "Une métaphore" },
          { id: "b", label: "Une métonymie" },
          { id: "c", label: "Une restriction de sens" },
          { id: "d", label: "Une polysémie" },
        ],
        "b",
        "C'est une métonymie : on désigne les habitants par le lieu qu'ils occupent. Le rapport est un rapport de contiguïté spatiale (la ville et ses habitants coexistent dans le même espace). Ce n'est pas une métaphore car il n'y a pas de rapport de ressemblance entre la ville et les habitants, mais un rapport de proximité logique. Ce type de métonymie (lieu pour les gens) est très courant dans la langue.",
        "Répondre métaphore en ne voyant pas que le rapport est de contiguïté (lieu/habitants) et non de ressemblance.",
      ),
      reponseCourte(
        "v3h-sfe-9",
        "lexique",
        "Comment appelle-t-on les valeurs subjectives, affectives ou culturelles associées à un mot, par opposition à son sens référentiel ?",
        ["connotation", "la connotation", "connotations", "les connotations"],
        "La connotation désigne les valeurs subjectives, affectives ou culturelles qui s'ajoutent au sens référentiel (la dénotation) d'un mot. Par exemple, \"demeure\" et \"baraque\" dénotent toutes deux un lieu d'habitation, mais \"demeure\" connote le luxe et la noblesse tandis que \"baraque\" connote la précarité ou la familiarité. Les connotations varient selon les locuteurs, les époques et les contextes culturels.",
        "Confondre connotation et registre de langue, qui est une notion liée mais distincte.",
      ),
      qcm(
        "v3h-sfe-10",
        "lexique",
        "Pourquoi le travail sur le sens figuré est-il essentiel pour la compréhension en lecture à l'école primaire ?",
        [
          { id: "a", label: "Parce qu'il permet de mémoriser plus de définitions du dictionnaire" },
          { id: "b", label: "Parce que les textes littéraires et courants utilisent massivement des emplois figurés que les élèves doivent apprendre à interpréter" },
          { id: "c", label: "Parce qu'il améliore uniquement la production écrite" },
          { id: "d", label: "Parce qu'il est nécessaire uniquement pour l'analyse grammaticale" },
        ],
        "b",
        "Le sens figuré est omniprésent dans les textes, tant littéraires que courants (expressions idiomatiques, métaphores lexicalisées, métonymies). Un élève qui ne sait pas interpréter \"il pleut des cordes\" ou \"la tête du cortège\" risque un contresens. Enseigner les mécanismes du sens figuré (métaphore par ressemblance, métonymie par contiguïté) donne aux élèves des outils pour décrypter ces emplois et accéder à une compréhension fine des textes.",
        "Réduire le sens figuré à un ornement littéraire sans voir son rôle fondamental dans la compréhension de tout type de texte.",
      ),
    ],
  }),
];

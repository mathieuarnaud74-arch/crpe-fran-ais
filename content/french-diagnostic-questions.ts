export type FrenchDiagnosticSubdomainKey =
  | "grammaire"
  | "orthographe"
  | "conjugaison"
  | "lexique"
  | "analyse_langue"
  | "comprehension_texte"
  | "didactique_francais";

export type FrenchDiagnosticQuestion = {
  id: string;
  subdomain: FrenchDiagnosticSubdomainKey;
  subdomainLabel: string;
  href: string;
  competency: string;
  instruction: string;
  choices: string[];
  correctIndex: number;
  explanation: string;
  retryAdvice: string;
};

const SUBDOMAIN_META: Record<
  FrenchDiagnosticSubdomainKey,
  {
    label: string;
    href: string;
  }
> = {
  grammaire: {
    label: "Grammaire",
    href: "/francais/grammaire",
  },
  orthographe: {
    label: "Orthographe",
    href: "/francais/orthographe",
  },
  conjugaison: {
    label: "Conjugaison",
    href: "/francais/grammaire?subdomain=conjugaison",
  },
  lexique: {
    label: "Lexique",
    href: "/francais/lexique",
  },
  analyse_langue: {
    label: "Analyse de la langue",
    href: "/francais/analyse-de-la-langue",
  },
  comprehension_texte: {
    label: "Compréhension de texte",
    href: "/francais/analyse-de-la-langue",
  },
  didactique_francais: {
    label: "Didactique du français",
    href: "/francais/didactique-du-francais",
  },
};

export const FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER: FrenchDiagnosticSubdomainKey[] = [
  "grammaire",
  "orthographe",
  "conjugaison",
  "lexique",
  "analyse_langue",
  "comprehension_texte",
  "didactique_francais",
];

export const FRENCH_DIAGNOSTIC_SESSION_SIZE = 25;

type QuestionTuple = readonly [
  id: string,
  competency: string,
  instruction: string,
  choices: [string, string, string, string],
  correctIndex: number,
  explanation: string,
  retryAdvice: string,
];

function buildQuestion(
  subdomain: FrenchDiagnosticSubdomainKey,
  tuple: QuestionTuple,
): FrenchDiagnosticQuestion {
  return {
    id: tuple[0],
    subdomain,
    subdomainLabel: SUBDOMAIN_META[subdomain].label,
    href: SUBDOMAIN_META[subdomain].href,
    competency: tuple[1],
    instruction: tuple[2],
    choices: [...tuple[3]],
    correctIndex: tuple[4],
    explanation: tuple[5],
    retryAdvice: tuple[6],
  };
}

// ── Grammaire (4 questions) ──────────────────────────────────────────

const grammaireQuestions: FrenchDiagnosticQuestion[] = [
  buildQuestion("grammaire", [
    "diag-gram-1",
    "Identifier une proposition infinitive",
    "Dans \"J'entends les enfants chanter dans la cour\", le groupe \"les enfants chanter\" est :",
    ["Un groupe nominal COD", "Une proposition subordonnée complétive", "Une proposition infinitive", "Un groupe verbal apposé"],
    2,
    "Ce groupe a son propre sujet (\"les enfants\") ET un verbe à l'infinitif (\"chanter\") — c'est une proposition infinitive, COD du verbe de perception \"entendre\". Deux éléments à repérer ensemble !",
    "Cherche d'abord si le groupe a son propre sujet exprimé. Si oui → proposition infinitive. Si non → infinitif COD simple.",
  ]),
  buildQuestion("grammaire", [
    "diag-gram-4",
    "Identifier une proposition participiale absolue",
    "Dans \"Le cours terminé, les élèves s'en allèrent\", \"Le cours terminé\" est :",
    ["Un groupe nominal en apposition", "Une proposition participiale absolue", "Une subordonnée circonstancielle de temps", "Un participe passé épithète"],
    1,
    "C'est la règle clé : une participiale absolue a son propre sujet (\"le cours\"), distinct du sujet de la principale. Elle exprime une circonstance et vaut comme un CC.",
    "Une participiale absolue a toujours son propre sujet exprimé — c'est ce qui la distingue du participe épithète ou attribut.",
  ]),
  buildQuestion("grammaire", [
    "diag-gram-9",
    "Identifier un attribut du COD",
    "Dans \"Les jurés ont déclaré l'accusé coupable\", la fonction de \"coupable\" est :",
    ["Apposition au COD", "Épithète du COD", "Attribut du COD", "Attribut du sujet"],
    2,
    "\"Coupable\" attribue une qualité au COD \"l'accusé\" via le verbe d'opinion \"déclarer\" — c'est un attribut du COD. Il ne qualifie pas le sujet, il est relié au complément d'objet.",
    "L'attribut du COD accompagne des verbes comme trouver, juger, déclarer, rendre, élire… et qualifie leur complément d'objet direct.",
  ]),
  buildQuestion("grammaire", [
    "diag-gram-15",
    "Identifier la négation expletive",
    "Dans \"Je crains qu'il ne soit trop tard\", le \"ne\" expletif :",
    ["Exprime une négation complète et nie le contenu de la subordonnée", "Est une erreur de style à éviter dans tous les contextes", "Est obligatoire après tous les verbes de sentiment", "N'a pas de valeur négative : c'est un marqueur stylistique après certains verbes de crainte"],
    3,
    "Le \"ne\" expletif apparaît seul (sans \"pas\") après les verbes de crainte, de doute et dans certaines comparatives. Il ne nie pas la proposition : \"Je crains qu'il ne soit trop tard\" signifie qu'on craint que ce soit trop tard. Il relève du registre soutenu.",
    "Distingue le \"ne\" de négation (ne…pas/plus/jamais) du \"ne\" expletif, qui survient seul dans des contextes précis (craindre, éviter, avant que, à moins que…).",
  ]),
];

// ── Orthographe (4 questions) ────────────────────────────────────────

const orthographeQuestions: FrenchDiagnosticQuestion[] = [
  buildQuestion("orthographe", [
    "diag-ortho-3",
    "Accorder le participe passé avec le pronom 'en'",
    "Dans \"Des romans, j'en ai lu beaucoup\", pourquoi \"lu\" reste-t-il invariable ?",
    ["Le pronom 'en' est un COD sans genre ni nombre précis", "Le participe passé avec avoir ne s'accorde jamais", "Le sujet est masculin singulier", "Le verbe lire est toujours invariable"],
    0,
    "Oui, et c'est logique : quand le COD est le pronom \"en\", le participe passé reste invariable — \"en\" est un pronom partitif, il n'a pas de genre ni de nombre précis.",
    "Distingue \"en\" (pas d'accord) des autres pronoms COD antéposés comme \"les\", \"la\" ou \"que\" (accord obligatoire).",
  ]),
  buildQuestion("orthographe", [
    "diag-ortho-6",
    "Accorder le participe passé suivi d'un infinitif avec verbe de perception",
    "Dans \"Les élèves que j'ai entendus chanter\", pourquoi \"entendus\" s'accorde-t-il ?",
    ["Parce que le COD antéposé \"que\" représente les élèves qui accomplissent l'action de chanter", "Parce que le PP avec avoir s'accorde toujours avec le pronom relatif \"que\"", "Parce que \"entendus\" est attribut du COD", "Parce que le PP précède un infinitif et s'accorde automatiquement"],
    0,
    "La règle : le PP d'un verbe de perception suivi d'un infinitif s'accorde avec le COD antéposé seulement si ce COD est le sujet logique de l'infinitif. Ici \"les élèves\" (= que) font l'action de chanter → accord obligatoire. Si le COD subit l'action, il n'y a pas d'accord.",
    "Pose la question : le COD antéposé accomplit-il l'action de l'infinitif ? Si oui → accord ; sinon → pas d'accord (ex. : les chansons que j'ai entendu chanter).",
  ]),
  buildQuestion("orthographe", [
    "diag-ortho-9",
    "Accorder le participe passé d'un verbe essentiellement pronominal",
    "Laquelle de ces formes est correcte pour le verbe \"se souvenir\" au passé composé, sujet \"elles\" ?",
    ["Elles se sont souvenu.", "Elles se sont souvenies.", "Elles se sont souvenues.", "Elles se sont souvenue."],
    2,
    "\"Se souvenir\" est essentiellement pronominal → son PP s'accorde avec le sujet. Le sujet \"elles\" est féminin pluriel. Le PP de \"souvenir\" est \"souvenu\" → féminin pluriel : \"souvenues\". La forme \"souvenies\" est un barbarisme : le PP suit le paradigme en -u, pas en -ir.",
    "Pour les verbes essentiellement pronominaux, le PP s'accorde avec le sujet. Vérifie aussi la morphologie exacte du PP (souvenu → souvenues, et non *souvenies).",
  ]),
  buildQuestion("orthographe", [
    "diag-ortho-11",
    "Maîtriser l'accord de \"tout\" adverbe devant un adjectif féminin",
    "Quelle écriture est correcte ?",
    ["Elles sont tout étonnées.", "Elles sont toutes étonnées.", "Elles sont tout émues.", "Les propositions B et C sont correctes."],
    3,
    "\"Tout\" adverbe (= entièrement) est normalement invariable, SAUF devant un adjectif féminin commençant par une consonne ou un h aspiré : il s'accorde pour éviter le hiatus. Devant une voyelle ou h muet, il reste invariable. Donc : \"toutes étonnées\" (consonne) mais \"tout émues\" (voyelle). Les deux sont corrects.",
    "\"Tout\" adverbe : invariable sauf devant adjectif féminin débutant par consonne ou h aspiré → accord (toute/toutes). Devant voyelle ou h muet → invariable.",
  ]),
];

// ── Conjugaison (4 questions) ────────────────────────────────────────

const conjugaisonQuestions: FrenchDiagnosticQuestion[] = [
  buildQuestion("conjugaison", [
    "diag-conj-1",
    "Identifier le conditionnel passé 2e forme",
    "Dans \"S'il eût su la vérité, il eût agi différemment\", les formes verbales appartiennent à :",
    ["Le subjonctif plus-que-parfait valant conditionnel passé", "Le plus-que-parfait de l'indicatif", "L'imparfait du subjonctif", "Le conditionnel passé 1re forme"],
    0,
    "Dans les textes littéraires soutenus, le subjonctif plus-que-parfait peut remplacer le conditionnel passé — c'est le conditionnel passé 2e forme. \"Eût su\" = \"aurait su\".",
    "Retiens : dans un texte littéraire, \"eût + participe passé\" = conditionnel passé 2e forme.",
  ]),
  buildQuestion("conjugaison", [
    "diag-conj-6",
    "Identifier le passé antérieur dans une subordonnée temporelle",
    "Dans \"Dès qu'il eut fini, il se leva\", quel est le temps de \"eut fini\" et pourquoi l'emploie-t-on ici ?",
    ["Plus-que-parfait : il exprime une antériorité générale par rapport à l'action principale", "Passé antérieur : il exprime l'antériorité immédiate dans une subordonnée temporelle dont la principale est au passé simple", "Conditionnel passé 2e forme : il remplace le conditionnel dans un registre littéraire", "Subjonctif plus-que-parfait : il est requis après \"dès que\""],
    1,
    "Le passé antérieur (auxiliaire au passé simple + PP) s'emploie dans les subordonnées temporelles introduites par \"dès que\", \"aussitôt que\", \"lorsque\"… quand la principale est au passé simple. Il exprime l'antériorité immédiate. Ne pas confondre avec le plus-que-parfait (auxiliaire à l'imparfait).",
    "Passé antérieur = auxiliaire au passé simple + PP. Il n'apparaît que dans des subordonnées temporelles avec une principale au passé simple. Hors de ce contexte, on trouve le PQP.",
  ]),
  buildQuestion("conjugaison", [
    "diag-conj-7",
    "Choisir entre subjonctif présent et imparfait du subjonctif en registre soutenu",
    "Dans un registre littéraire soutenu, quelle forme est correcte dans : \"Bien qu'il ___ présent hier, il ne dit rien\" ?",
    ["soit", "fût", "serait", "était"],
    1,
    "Dans le registre littéraire soutenu, la concordance des temps stricte s'applique : quand la principale est au passé (passé simple \"dit\"), la subordonnée subjonctive prend l'imparfait du subjonctif. \"Fût\" est l'imparfait du subjonctif de \"être\", équivalent soutenu du subjonctif présent \"soit\".",
    "Concordance des temps en registre soutenu : principale au passé → subordonnée subjonctive à l'imparfait du subjonctif (fût, eût, allât, vînt…).",
  ]),
  buildQuestion("conjugaison", [
    "diag-conj-10",
    "Distinguer le participe présent de l'adjectif verbal (orthographe et accord)",
    "Laquelle de ces affirmations est correcte concernant \"communicant\" et \"communicante\" ?",
    ["\"Communicante\" est le participe présent accordé ; \"communiquant\" est une erreur", "\"Communiquant\" est le participe présent (invariable, peut avoir un COD) ; \"communicante\" est l'adjectif verbal (accordé)", "Les deux formes sont des participes présents invariables selon la règle générale", "\"Communicant\" est l'adjectif verbal ; \"communiquant\" est une forme verbale inexistante"],
    1,
    "Le participe présent est invariable et peut régir un COD : \"une élève communiquant bien sa pensée\". L'adjectif verbal s'accorde et peut avoir une orthographe différente : \"une personne communicante\". Autres paires célèbres : convaincant/convaincant, négligent/négligent, convergent/convergeant.",
    "Participe présent = invariable, forme verbale (-quant, -guant conservés). Adjectif verbal = accordé, peut avoir une orthographe différente. Mémorise les paires : provoquant/provocant, fatigant/fatiguant, navigant/naviguant.",
  ]),
];

// ── Lexique (3 questions) ────────────────────────────────────────────

const lexiqueQuestions: FrenchDiagnosticQuestion[] = [
  buildQuestion("lexique", [
    "diag-lex-3",
    "Distinguer métonymie, métaphore et synecdoque",
    "Dans \"Le Quai d'Orsay a réagi vivement à ces déclarations\", quel procédé désigne le ministère des Affaires étrangères ?",
    ["Une métaphore : le bâtiment ressemble symboliquement à l'institution", "Une synecdoque : on prend la partie pour le tout", "Une métonymie : le lieu désigne par contiguïté l'institution qui y réside", "Un euphémisme : on atténue la portée de la réaction diplomatique"],
    2,
    "Nommer un lieu pour désigner l'institution qui s'y trouve, c'est une métonymie de lieu — la relation est de contiguïté spatiale réelle, pas de ressemblance (≠ métaphore) ni d'inclusion partie/tout (≠ synecdoque). La métonymie repose toujours sur un lien objectif entre deux entités distinctes.",
    "Métonymie = relation réelle entre entités distinctes (lieu/institution, auteur/œuvre, cause/effet, contenant/contenu). Métaphore = ressemblance. Synecdoque = inclusion (partie/tout).",
  ]),
  buildQuestion("lexique", [
    "diag-lex-7",
    "Distinguer polysémie et homonymie",
    "\"Avocat\" désignant à la fois le fruit et le professionnel du droit est un exemple de :",
    ["Paronymie — deux mots qui se ressemblent sans être identiques", "Homonymie — deux mots distincts qui ont la même forme", "Polysémie — un même mot qui a développé plusieurs sens", "Synonymie — deux mots de sens voisin"],
    1,
    "\"Avocat\" (juriste, du latin advocatus) et \"avocat\" (fruit, du nahuatl ahuacatl via l'espagnol) ont des étymologies complètement distinctes — c'est de l'homonymie. La polysémie concerne un seul et même mot qui a développé plusieurs sens à partir d'une même origine (ex. : \"vol\" le déplacement / \"vol\" le larcin, tous deux issus du latin volare).",
    "Homonymie = deux mots d'origine différente, même forme. Polysémie = un seul mot, plusieurs sens liés (même origine étymologique). Test : les sens partagent-ils une étymologie commune ?",
  ]),
  buildQuestion("lexique", [
    "diag-lex-11",
    "Identifier un calque sémantique de l'anglais",
    "L'emploi de \"réaliser\" au sens de \"se rendre compte de\" (ex. : \"Je réalise maintenant mon erreur\") est :",
    ["Une évolution sémantique ancienne du français, attestée depuis le XVIIe siècle", "Un emprunt de forme à l'anglais (importation du mot)", "Un calque sémantique de l'anglais \"to realize\"", "Un archaïsme du français classique récemment réhabilité"],
    2,
    "En français classique, \"réaliser\" signifie uniquement \"concrétiser, rendre réel\". L'emploi au sens de \"se rendre compte\" est un calque sémantique de l'anglais \"to realize\" — le mot français a adopté un sens de son équivalent anglais sans changer de forme. C'est différent de l'emprunt (importation du mot lui-même : parking, weekend).",
    "Distingue l'emprunt (mot importé : parking), le calque (traduction mot à mot : gratte-ciel ← skyscraper) et le calque sémantique (un mot déjà existant adopte un sens étranger : réaliser, supporter…).",
  ]),
];

// ── Analyse de la langue (4 questions) ───────────────────────────────

const analyseQuestions: FrenchDiagnosticQuestion[] = [
  buildQuestion("analyse_langue", [
    "diag-analyse-3",
    "Identifier un discours indirect libre",
    "Dans \"Elle rentra chez elle. La journée avait été épuisante, vraiment.\", le second énoncé est :",
    ["Un discours indirect libre", "Un discours direct", "Une narration omnisciente neutre", "Un discours indirect introduit par un verbe de parole"],
    0,
    "Le discours indirect libre intègre les pensées d'un personnage dans la narration sans marque introductive — et l'adverbe \"vraiment\" trahit clairement la voix du personnage.",
    "Cherche les adverbes ou interjections modaux (\"vraiment\", \"décidément\"…) qui signalent une voix intérieure dans la narration.",
  ]),
  buildQuestion("analyse_langue", [
    "diag-analyse-6",
    "Analyser la nature d'une subordonnée comparative",
    "Dans \"Elle travaille plus vite qu'elle ne le faisait\", la proposition \"qu'elle ne le faisait\" est :",
    ["Une subordonnée relative avec \"que\" pronom relatif", "Une subordonnée conjonctive complétive COD", "Une subordonnée comparative dépendante du terme comparatif", "Une subordonnée consécutive introduite par \"que\""],
    2,
    "La proposition introduite par \"que\" dans une structure comparative (plus vite…que) est une subordonnée comparative, dépendante du terme comparatif \"plus vite\". Le \"ne\" est ici expletif (sans valeur négative). Ne pas confondre avec la relative (qui complète un nom) ni la complétive (COD ou sujet du verbe principal).",
    "Repère d'abord la structure comparative dans la principale (plus/aussi/moins + adv/adj), puis identifie la subordonnée introduite par \"que\" comme comparative. Le \"ne\" expletif y est fréquent.",
  ]),
  buildQuestion("analyse_langue", [
    "diag-analyse-8",
    "Analyser la fonction de \"dont\" dans un GN complexe",
    "Dans \"le professeur dont les élèves respectent les décisions\", \"dont\" remplace :",
    ["Le COD du verbe \"respecter\"", "Le sujet de \"respectent\"", "Le complément du nom \"décisions\" (= les décisions du professeur)", "Le complément circonstanciel de la relative"],
    2,
    "Pour analyser \"dont\", reconstituez la phrase sans relatif : \"les élèves respectent les décisions DU PROFESSEUR\" → \"dont\" = \"du professeur\", complément du nom \"décisions\". \"Dont\" peut représenter n'importe quelle fonction impliquant \"de\". Ici ce n'est pas le COD de \"respecter\" (qui est \"les décisions\").",
    "Pour analyser \"dont\" : reconstituez la phrase sans le relatif en remplaçant \"dont\" par \"de + antécédent\", puis identifiez la fonction du groupe ainsi obtenu.",
  ]),
  buildQuestion("analyse_langue", [
    "diag-analyse-12",
    "Analyser la valeur d'une subordonnée circonstancielle introduite par \"alors que\"",
    "Dans \"Alors qu'il faisait beau, la sortie fut annulée\", la subordonnée est :",
    ["Circonstancielle de temps (simultanéité)", "Circonstancielle d'opposition ou concessive", "Circonstancielle de cause", "Circonstancielle de condition"],
    1,
    "\"Alors que\" peut exprimer la simultanéité (valeur temporelle) ou l'opposition. Ici, le fait qu'il fasse beau va à l'encontre de l'annulation — c'est une opposition (ou concession). La valeur est déterminée par la sémantique des propositions, pas uniquement par le connecteur.",
    "\"Alors que\" est ambigu : temporel si les deux faits coexistent naturellement, oppositif si les faits sont en contradiction. Le contexte et la sémantique des propositions décident.",
  ]),
];

// ── Compréhension de texte (3 questions) ─────────────────────────────

const comprehensionQuestions: FrenchDiagnosticQuestion[] = [
  buildQuestion("comprehension_texte", [
    "diag-comp-6",
    "Analyser l'effet rhétorique d'un énoncé performatif",
    "Dans \"La séance est levée\" prononcé par le président d'une assemblée, l'énoncé est :",
    ["Un constat descriptif d'un état existant avant l'énonciation", "Un performatif : l'acte d'énonciation accomplit lui-même l'acte désigné", "Un jugement de valeur subjectif sur la qualité de la séance", "Une injonction indirecte adressée aux membres de l'assemblée"],
    1,
    "Un énoncé performatif (Austin, Searle) fait ce qu'il dit dans le contexte approprié : dire \"la séance est levée\" lève effectivement la séance — l'énonciation crée la réalité institutionnelle. Ce n'est pas une description d'un fait préexistant. Autres performatifs : \"je promets\", \"je vous déclare mariés\", \"je baptise ce navire\".",
    "Les performatifs accomplissent un acte par leur énonciation même (promettre, déclarer, ordonner, baptiser…). Ils s'opposent aux constatifs qui décrivent le monde sans le modifier.",
  ]),
  buildQuestion("comprehension_texte", [
    "diag-comp-9",
    "Distinguer présupposé et posé dans un énoncé complexe",
    "Dans \"La réforme a finalement convaincu même les plus sceptiques\", qu'est-ce qui est présupposé (et non posé) ?",
    ["Que la réforme a convaincu tout le monde sans exception", "Qu'il existait des sceptiques avant la réforme", "Que les sceptiques avaient tort de douter initialement", "Que personne n'était convaincu avant l'entrée en vigueur de la réforme"],
    1,
    "L'information posée (affirmée explicitement) est que la réforme a convaincu même les plus sceptiques. Le présupposé — assumé sans être énoncé — est qu'il existait des sceptiques. Test de la négation : \"La réforme n'a pas convaincu les plus sceptiques\" présuppose toujours qu'ils existaient. Le posé change à la négation ; le présupposé, non.",
    "Test du présupposé : s'il reste vrai quand on nie la phrase, c'est un présupposé. Le posé disparaît à la négation ; le présupposé résiste.",
  ]),
  buildQuestion("comprehension_texte", [
    "diag-comp-10",
    "Analyser une stratégie rhétorique de captation de l'énonciateur",
    "Dans \"Nul n'ignore que cette politique a échoué\", l'auteur :",
    ["Exprime directement son opinion en assumant la responsabilité de l'énoncé", "Présente une information objective, vérifiable et consensuelle", "Attribue implicitement la position à l'ensemble des lecteurs pour l'imposer comme évidente", "Rapporte le discours d'une autre voix sans y adhérer (discours indirect libre)"],
    2,
    "La formule \"nul n'ignore que\" est une stratégie rhétorique de captation : elle présente comme universellement connue une affirmation qui peut être contestée. L'auteur s'efface derrière un \"tout le monde sait\" qui rend la contestation difficile. C'est un procédé de pseudo-évidence.",
    "Repère les formules qui masquent l'énonciateur derrière une pseudo-universalité : \"il est évident que\", \"nul n'ignore\", \"force est de constater\", \"tout le monde sait\"… Elles sont rhétoriquement prescriptives.",
  ]),
];

// ── Didactique du français (3 questions) ─────────────────────────────

const didactiqueQuestions: FrenchDiagnosticQuestion[] = [
  buildQuestion("didactique_francais", [
    "diag-did-2",
    "Reconnaître une pratique d'étayage",
    "Une enseignante de CE1 fournit une grille de relecture pour réviser les textes. Au fil de l'année, elle réduit progressivement le nombre d'items de la grille au fur et à mesure que les élèves automatisent les procédures. Cette pratique relève de :",
    ["La différenciation pédagogique : elle adapte les objectifs selon le niveau des élèves", "L'étayage : elle offre un soutien calibré qu'elle retire progressivement", "L'évaluation formative : elle mesure les acquis pour informer ses choix d'enseignement", "La pédagogie de projet : elle organise les apprentissages autour d'une production finale"],
    1,
    "L'étayage (Bruner) consiste à fournir un soutien adapté aux besoins actuels de l'élève, puis à le retirer progressivement à mesure que les compétences s'automatisent. La réduction des items de la grille est la marque du désétayage — étape essentielle souvent négligée. Ce n'est pas de la différenciation, qui adapte les objectifs durablement, ni de l'évaluation formative.",
    "Étayage ≠ aide permanente. La clé est le désétayage progressif : on retire le soutien au fur et à mesure que l'élève gagne en autonomie. Différenciation = adaptation durable ; étayage = soutien temporaire.",
  ]),
  buildQuestion("didactique_francais", [
    "diag-did-5",
    "Identifier une pratique d'enseignement explicite",
    "L'enseignement explicite d'une stratégie de lecture consiste principalement à :",
    ["Modéliser la stratégie à voix haute, guider les élèves, puis les laisser l'appliquer de façon autonome", "Laisser les élèves découvrir la stratégie par eux-mêmes en silence", "Donner une liste de règles à mémoriser sans les contextualiser", "Évaluer la stratégie sans l'enseigner préalablement"],
    0,
    "L'enseignement explicite suit trois phases : modelage (je fais en pensant à voix haute), pratique guidée, pratique autonome. Pas de découverte silencieuse — on rend la stratégie visible.",
    "Retiens la progression : \"je fais\" → \"on fait ensemble\" → \"tu fais seul\".",
  ]),
  buildQuestion("didactique_francais", [
    "diag-did-13",
    "Comprendre la notion de conflit socio-cognitif selon Perret-Clermont",
    "Le conflit socio-cognitif en pédagogie désigne :",
    ["Un désaccord entre l'enseignant et les parents d'élèves sur les méthodes", "La résistance individuelle d'un élève à changer de représentation face à une correction", "Une confrontation entre pairs qui déstabilise les représentations et stimule la construction collective du savoir", "L'opposition théorique entre deux méthodes d'enseignement incompatibles"],
    2,
    "Le conflit socio-cognitif (Perret-Clermont, Doise et Mugny) est une confrontation entre pairs où le désaccord force une décentration et une réélaboration du savoir. L'aspect \"socio\" (confrontation entre élèves) est indissociable du \"cognitif\" (construction du savoir). Il diffère du conflit cognitif individuel et de la simple correction magistrale.",
    "Distingue : conflit cognitif (entre la représentation de l'élève et un obstacle) et conflit socio-cognitif (entre élèves, mobilisant la dimension sociale de l'apprentissage pour faire avancer la compréhension).",
  ]),
];

// ── Export : les 25 questions du diagnostic ──────────────────────────

export const FRENCH_DIAGNOSTIC_QUESTIONS: FrenchDiagnosticQuestion[] = [
  ...grammaireQuestions,
  ...orthographeQuestions,
  ...conjugaisonQuestions,
  ...lexiqueQuestions,
  ...analyseQuestions,
  ...comprehensionQuestions,
  ...didactiqueQuestions,
];

function shuffle<T>(items: T[], randomFn: () => number) {
  const copy = items.slice();

  for (let index = copy.length - 1; index > 0; index -= 1) {
    const swapIndex = Math.floor(randomFn() * (index + 1));
    [copy[index], copy[swapIndex]] = [copy[swapIndex], copy[index]];
  }

  return copy;
}

export function buildDiagnosticSession(
  randomFn: () => number = Math.random,
): FrenchDiagnosticQuestion[] {
  return shuffle(FRENCH_DIAGNOSTIC_QUESTIONS, randomFn);
}

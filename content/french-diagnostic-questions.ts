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
    href: "/francais/analyse-de-la-langue?subdomain=comprehension_texte",
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
    "Identifier une proposition subordonnée participiale",
    "Dans \"Le cours terminé, les élèves s'en allèrent\", \"Le cours terminé\" est :",
    ["Un groupe nominal en apposition", "Une proposition subordonnée participiale", "Une subordonnée circonstancielle de temps", "Un participe passé épithète"],
    1,
    "C'est la règle clé : une subordonnée participiale a son propre sujet (\"le cours\"), distinct du sujet de la principale. Elle exprime une circonstance et vaut comme un complément circonstanciel.",
    "Une subordonnée participiale a toujours son propre sujet exprimé — c'est ce qui la distingue du participe épithète ou attribut.",
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
    "Identifier le ne expletif",
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
    "Le participe présent est invariable et peut régir un COD : \"une élève communiquant bien sa pensée\". L'adjectif verbal s'accorde et peut avoir une orthographe différente : \"une personne communicante\". Autres paires célèbres : convainquant/convaincant, négligeant/négligent, convergeant/convergent.",
    "Participe présent = invariable, forme verbale (-quant, -guant conservés). Adjectif verbal = accordé, peut avoir une orthographe différente. Mémorise les paires : provoquant/provocant, fatiguant/fatigant, naviguant/navigant.",
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
    "\"Avocat\" (juriste, du latin advocatus) et \"avocat\" (fruit, du nahuatl ahuacatl via l'espagnol) ont des étymologies complètement distinctes — c'est de l'homonymie. La polysémie concerne un seul et même mot qui a développé plusieurs sens à partir d'une même origine (ex. : \"feuille\" d'arbre / \"feuille\" de papier, tous deux issus du latin folium par extension de sens).",
    "Homonymie = deux mots d'origine différente, même forme. Polysémie = un seul mot, plusieurs sens liés (même origine étymologique). Test : les sens partagent-ils une étymologie commune ?",
  ]),
  buildQuestion("lexique", [
    "diag-lex-16",
    "Analyser la formation d'un mot par dérivation",
    "Le mot \"impardonnable\" est formé par :",
    ["Composition : deux mots lexicaux autonomes soudés", "Dérivation par suffixation uniquement : pardonnable + un suffixe", "Dérivation par préfixation et suffixation : im- (préfixe privatif) + pardonn- (radical) + -able (suffixe)", "Emprunt direct au latin médiéval impardonabilis"],
    2,
    "\"Impardonnable\" se décompose en trois éléments : le préfixe privatif im- (variante de in- devant p/b/m), le radical verbal pardonn- (de \"pardonner\"), et le suffixe adjectival -able (= qui peut être). C'est une double dérivation par affixation, pas une composition (qui soude deux mots lexicaux autonomes comme \"porte-manteau\").",
    "Composition = soudure de deux mots lexicaux autonomes. Dérivation = ajout d'un ou plusieurs affixes (préfixe et/ou suffixe) à un radical. Analyse toujours le mot en identifiant radical, préfixe(s) et suffixe(s).",
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
    "diag-comp-16",
    "Identifier le type de texte à partir d'un extrait",
    "Un extrait débute ainsi : \"Pour que l'apprentissage soit efficace, il convient de distinguer décodage et compréhension. Le décodage permet d'identifier les mots ; la compréhension, d'en construire le sens.\" Ce texte est de type :",
    ["Injonctif : il guide le lecteur vers une action à réaliser", "Narratif : il raconte des événements dans un ordre chronologique", "Argumentatif : il défend une thèse en réfutant des positions adverses", "Explicatif : il vise à faire comprendre un phénomène ou une notion"],
    3,
    "Ce passage expose une distinction conceptuelle (décodage vs compréhension) sans donner d'ordre ni raconter d'histoire — c'est un texte explicatif. Un texte injonctif contiendrait des impératifs ou infinitifs d'instruction (\"Proposez… Évitez…\"). La visée communicative — faire comprendre — est le critère décisif.",
    "Visée communicative : faire comprendre = explicatif ; faire agir = injonctif ; convaincre = argumentatif ; raconter = narratif. C'est l'intention de l'auteur qui tranche, pas la forme verbale seule.",
  ]),
  buildQuestion("comprehension_texte", [
    "diag-comp-17",
    "Comprendre l'implicite dans un récit",
    "Dans l'extrait : \"Paul serra son manteau contre lui et pressa le pas. Les rues étaient désertes ; seul un réverbère clignotait au bout de l'allée.\", on peut inférer que :",
    ["Paul est en retard à un rendez-vous important", "Paul se trouve dans un lieu chaleureux et accueillant", "La scène se déroule probablement par temps froid, de nuit, dans une atmosphère inquiétante", "Paul est joyeux et se promène tranquillement"],
    2,
    "Plusieurs indices convergent : serrer son manteau (froid), presser le pas (urgence ou inconfort), rues désertes, réverbère clignotant (nuit, atmosphère inquiétante). Aucune de ces informations n'est dite explicitement — c'est l'inférence qui permet de reconstituer le cadre spatio-temporel et l'atmosphère.",
    "Pour comprendre l'implicite d'un texte, repère les indices convergents : gestes, décor, lexique. La cohérence entre ces indices te permet de déduire ce que l'auteur ne dit pas directement.",
  ]),
  buildQuestion("comprehension_texte", [
    "diag-comp-18",
    "Identifier la visée argumentative d'un texte",
    "Un texte s'achève ainsi : \"C'est pourquoi la lecture à voix haute, loin d'être un exercice désuet, reste un levier essentiel pour la compréhension et la fluence. Il serait regrettable de la négliger.\" La visée dominante de cette conclusion est :",
    ["Descriptive : l'auteur dépeint une situation sans prendre parti", "Narrative : l'auteur raconte une expérience personnelle de lecture", "Argumentative : l'auteur défend la valeur de la lecture à voix haute et cherche à convaincre", "Explicative : l'auteur décrit le fonctionnement cognitif de la lecture"],
    2,
    "Les marqueurs \"c'est pourquoi\" (connecteur de conclusion), \"loin d'être\" (concession réfutée), \"levier essentiel\" (jugement de valeur) et \"il serait regrettable\" (modalisation engagée) montrent une visée argumentative : l'auteur défend une position et cherche à convaincre le lecteur. Un texte explicatif se contenterait de décrire sans prendre parti.",
    "Repère les indices de la visée argumentative : connecteurs logiques (donc, c'est pourquoi), jugements de valeur (essentiel, regrettable), modalisateurs engagés. Ils distinguent l'argumentation de la simple explication.",
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
    "Comprendre la notion de conflit socio-cognitif",
    "Lors d'un travail de groupe en lecture, deux élèves ne sont pas d'accord sur l'interprétation d'un passage. Ils argumentent chacun leur point de vue, ce qui les amène tous deux à nuancer leur compréhension. Ce mécanisme relève du :",
    ["Conflit d'autorité : l'un des deux élèves finit par imposer son interprétation", "Conflit socio-cognitif : la confrontation entre pairs déstabilise les représentations et stimule la construction du savoir", "Conflit cognitif individuel : chaque élève progresse seul face à l'obstacle", "Tutorat entre pairs : un élève expert aide un élève en difficulté"],
    1,
    "Le conflit socio-cognitif est une confrontation entre pairs où le désaccord force une décentration et une réélaboration du savoir. L'aspect \"socio\" (confrontation entre élèves) est indissociable du \"cognitif\" (construction du savoir). Il diffère du conflit cognitif individuel (face à un obstacle seul) et du tutorat (relation asymétrique expert/novice).",
    "Distingue : conflit cognitif (entre la représentation de l'élève et un obstacle, individuel) et conflit socio-cognitif (entre élèves, mobilisant la dimension sociale pour faire avancer la compréhension).",
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

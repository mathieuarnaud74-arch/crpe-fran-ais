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
    id, subdomain, exercise_type: "qcm",
    instruction, support_text: null, choices,
    expected_answer: { mode: "single_choice", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null, topic_label: null,
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
    id, subdomain, exercise_type: "vrai_faux",
    instruction, support_text: null,
    choices: [{ id: "true", label: "Vrai" }, { id: "false", label: "Faux" }],
    expected_answer: { mode: "boolean", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null, topic_label: null,
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
    id, subdomain, exercise_type,
    instruction, support_text, choices: null,
    expected_answer: { mode: "text", acceptableAnswers },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null, topic_label: null,
  });
}

export const seriesV3BatchJ: RevisionSession[] = [
  // ──────────────────────────────────────────────────────────────
  // Série 1 : L'oral à l'école primaire
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-oral-ecole",
    title: "L'oral à l'école primaire",
    summary: "Maîtriser les enjeux didactiques de l'enseignement de l'oral : ses différentes formes, sa place dans les programmes, les dispositifs pour l'enseigner et les difficultés spécifiques de son évaluation.",
    objective: "Connaître les principes didactiques de l'enseignement de l'oral du cycle 1 au cycle 3, savoir distinguer l'oral comme objet d'enseignement de l'oral comme outil de communication, et identifier les dispositifs adaptés.",
    introduction: "L'oral est un domaine fondamental de l'enseignement du français à l'école primaire. Pourtant, il est souvent le parent pauvre de la classe : on parle beaucoup en classe, mais on enseigne rarement l'oral de manière explicite. Cette série interroge vos connaissances sur l'oral comme objet d'enseignement, ses différentes formes, sa progression du cycle 1 au cycle 3, et les défis que pose son évaluation.",
    subdomain: "didactique_francais",
    topicKey: "oral_ecole",
    topicLabel: "L'oral à l'école primaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 43,
    completionSummary: {
      skill: "Concevoir et justifier des séances d'enseignement de l'oral conformes aux programmes",
      keyPoints: [
        "L'oral doit être enseigné explicitement comme un objet d'apprentissage, et pas seulement pratiqué comme outil de communication en classe",
        "Le langage d'évocation (raconter un événement passé ou futur) est un objectif central du cycle 1, préparant le passage à l'écrit",
        "L'évaluation de l'oral est plus complexe que celle de l'écrit car elle repose sur l'observation en situation et nécessite des grilles critériées",
      ],
      retryAdvice: "Relisez les programmes concernant le domaine « Langage oral » du cycle 1 au cycle 3 et les documents d'accompagnement Éduscol sur l'oral. Entraînez-vous à distinguer les différents types d'oral et à concevoir des grilles d'évaluation.",
    },
    questions: [
      qcm(
        "v3j-oe-1", "didactique_francais",
        "Quelle distinction fondamentale les programmes du français établissent-ils concernant l'oral à l'école primaire ?",
        [
          { id: "a", label: "L'oral sert uniquement à vérifier la compréhension des leçons écrites" },
          { id: "b", label: "L'oral est à la fois un outil de communication au service des autres apprentissages et un objet d'enseignement à part entière" },
          { id: "c", label: "L'oral n'est un objet d'enseignement qu'au cycle 1, puis devient un simple outil au cycle 2 et 3" },
          { id: "d", label: "L'oral et l'écrit relèvent de compétences identiques et ne nécessitent pas de didactique spécifique" },
        ],
        "b",
        "Les programmes distinguent clairement deux statuts de l'oral. Comme outil, il sert à communiquer, à apprendre dans toutes les disciplines (interactions, consignes, échanges). Comme objet d'enseignement, il fait l'objet de séances spécifiques où l'on apprend à présenter un exposé, à argumenter, à reformuler, à adapter son registre de langue. Cette double dimension est présente du cycle 1 au cycle 3. L'enseignant doit programmer des séances dédiées à l'oral et ne pas se contenter des interactions spontanées de la classe.",
        "Penser que l'oral s'apprend naturellement par la pratique quotidienne en classe, sans séances d'enseignement explicite dédiées.",
      ),
      vraiFaux(
        "v3j-oe-2", "didactique_francais",
        "Au cycle 1, le langage d'évocation désigne la capacité de l'enfant à parler d'événements passés ou futurs, hors du contexte immédiat de l'action.",
        true,
        "Le langage d'évocation est un concept central du cycle 1. Il se distingue du langage en situation (parler de ce qu'on fait au moment où on le fait) par le fait qu'il permet de raconter un événement passé, d'anticiper un projet, de rappeler une histoire entendue. Ce passage du « langage en situation » au « langage d'évocation » est un objectif majeur de la maternelle, car il constitue un précurseur essentiel de l'écrit. En effet, l'écrit est par nature un langage décontextualisé, qui exige de construire du sens hors de la situation immédiate.",
        "Confondre le langage d'évocation avec le simple fait de parler en classe. Le langage d'évocation implique spécifiquement la décontextualisation : parler de ce qui n'est pas présent, ni visible, ni en train de se produire.",
      ),
      qcm(
        "v3j-oe-3", "didactique_francais",
        "Au cycle 3, les programmes prévoient deux formes de débat. Le débat réglé porte sur des questions citoyennes ou d'actualité. Sur quoi porte le débat interprétatif littéraire ?",
        [
          { id: "a", label: "Sur la biographie de l'auteur et les conditions de publication de l'œuvre" },
          { id: "b", label: "Sur les zones de résistance du texte littéraire : significations possibles, intentions des personnages, symboles, choix narratifs" },
          { id: "c", label: "Sur les erreurs grammaticales présentes dans le texte" },
          { id: "d", label: "Sur le classement du livre dans un genre littéraire unique et définitif" },
        ],
        "b",
        "Le débat interprétatif littéraire est un dispositif didactique propre au cycle 3 qui exploite les zones d'ombre, les ambiguïtés et les implicites d'un texte littéraire. Les élèves confrontent leurs interprétations en s'appuyant sur des indices textuels : pourquoi le personnage agit-il ainsi ? Que signifie cette fin ouverte ? L'auteur cherche-t-il à nous émouvoir ou à nous faire réfléchir ? Ce dispositif développe à la fois les compétences orales (argumenter, écouter, reformuler) et les compétences de lecture littéraire (interprétation, sensibilité esthétique).",
        "Réduire le débat interprétatif à un simple échange d'opinions personnelles sans ancrage dans le texte. Le débat interprétatif exige que chaque interprétation soit justifiée par des indices textuels précis.",
      ),
      reponseCourte(
        "v3j-oe-4", "didactique_francais",
        "Comment appelle-t-on un échange oral dans lequel plusieurs locuteurs construisent collectivement le discours ?",
        ["oral polygéré", "oral polygeré", "oral polyphonique", "interaction langagiere", "interaction langagière", "interactions langagieres", "interactions langagières", "Oral polygéré", "Oral polyphonique", "Interaction langagière", "Interactions langagières"],
        "L'oral polygéré (ou polyphonique) désigne un échange où la construction du discours est partagée entre plusieurs locuteurs, par opposition à l'oral monogéré (exposé, récitation). Les programmes insistent sur ces interactions langagières pour développer les compétences orales des élèves.",
        "Confondre oral polygéré et oral monogéré. L'oral monogéré est pris en charge par un seul locuteur (exposé, récitation), tandis que l'oral polygéré implique une co-construction du discours par plusieurs participants.",
      ),
      vraiFaux(
        "v3j-oe-5", "didactique_francais",
        "L'oral scriptural désigne un oral qui présente les caractéristiques de l'écrit : phrases complètes, vocabulaire précis, structuration logique du discours, absence de reprises et d'hésitations.",
        true,
        "L'oral scriptural (ou « oral scripturalisé ») est un registre d'oral qui se rapproche des normes de l'écrit. Il se distingue de l'oral spontané (conversationnel, avec hésitations, reprises, phrases inachevées) par sa structuration, sa précision lexicale et sa cohérence textuelle. L'exposé oral, le compte rendu de lecture, la restitution d'une expérience scientifique sont des exemples d'oral scriptural. Enseigner l'oral à l'école, c'est notamment aider les élèves à maîtriser ce registre plus élaboré, qui constitue un continuum entre l'oral spontané et l'écrit.",
        "Croire que tout oral scolaire est spontané. L'enseignement de l'oral vise précisément à faire accéder les élèves à un oral structuré (scriptural), distinct de la conversation ordinaire.",
      ),
      qcm(
        "v3j-oe-6", "didactique_francais",
        "Un enseignant prépare un exposé oral pour ses élèves de CM2. Quelle démarche didactique est la plus pertinente pour enseigner cette compétence ?",
        [
          { id: "a", label: "Demander directement à chaque élève de présenter un exposé devant la classe sans préparation guidée" },
          { id: "b", label: "Travailler en amont les étapes de l'exposé (recherche, sélection, organisation, supports visuels, entraînement) puis donner des critères de réussite explicites" },
          { id: "c", label: "Se contenter de montrer un modèle d'exposé et demander aux élèves de l'imiter" },
          { id: "d", label: "Évaluer uniquement le contenu de l'exposé sans prêter attention à la prestation orale" },
        ],
        "b",
        "L'enseignement de l'exposé oral nécessite un travail explicite sur chaque étape : rechercher et sélectionner l'information, organiser son propos (introduction, développement, conclusion), préparer des supports visuels, s'entraîner à la prise de parole (volume, débit, regard, posture). L'enseignant doit fournir des critères de réussite qui couvrent à la fois le contenu (pertinence, exactitude) et la forme orale (clarté, articulation, contact avec l'auditoire). Sans cet enseignement explicite, l'exposé ne bénéficie qu'aux élèves déjà à l'aise à l'oral.",
        "Penser que demander de « faire un exposé » suffit à enseigner cette compétence. Sans enseignement explicite des étapes et des critères, seuls les élèves déjà compétents réussissent, ce qui creuse les inégalités.",
      ),
      reponseCourte(
        "v3j-oe-7", "didactique_francais",
        "Dans les programmes du cycle 1, environ quelle proportion du temps d'enseignement doit être consacrée au domaine « Mobiliser le langage dans toutes ses dimensions » (incluant le langage oral) ?",
        ["30%", "30 %", "30 pour cent", "un tiers", "1/3"],
        "Les programmes du cycle 1 prévoient qu'environ 30 % du temps d'enseignement soit consacré au domaine « Mobiliser le langage dans toutes ses dimensions ». Ce domaine inclut le langage oral (compréhension, production, échanges) et la première approche de l'écrit. Cette proportion importante reflète le rôle central du langage en maternelle : c'est le premier outil de la pensée et de la socialisation. L'enseignant de maternelle doit créer des situations langagières riches et variées tout au long de la journée, au-delà des seules séances de langage.",
        "Sous-estimer le temps dédié au langage en maternelle ou penser que les activités langagières se limitent au « moment du regroupement ». Le langage traverse toutes les activités de la journée.",
      ),
      vraiFaux(
        "v3j-oe-8", "didactique_francais",
        "L'évaluation de l'oral est plus difficile que celle de l'écrit car l'oral est fugace, ne laisse pas de trace permanente et met en jeu de nombreux paramètres simultanés (verbal, paraverbal, non verbal).",
        true,
        "L'évaluation de l'oral pose des défis spécifiques par rapport à l'écrit. L'oral est éphémère : une fois prononcé, l'énoncé disparaît (sauf enregistrement). Il mobilise simultanément le verbal (choix des mots, syntaxe), le paraverbal (intonation, débit, volume) et le non verbal (gestes, postures, regards). L'évaluation en temps réel est donc très exigeante pour l'enseignant. C'est pourquoi les didacticiens recommandent l'utilisation de grilles d'observation critériées, l'enregistrement audio ou vidéo, et l'auto-évaluation par les élèves comme outils complémentaires.",
        "Renoncer à évaluer l'oral sous prétexte que c'est trop complexe. Des outils existent (grilles critériées, enregistrements, co-évaluation) pour rendre l'évaluation de l'oral rigoureuse et formative.",
      ),
      reponseCourte(
        "v3j-oe-9", "didactique_francais",
        "Comment appelle-t-on le type d'oral dans lequel l'élève revient sur son propre raisonnement ou ses démarches d'apprentissage pour les analyser et les expliciter (par exemple : « J'ai fait comme ça parce que... ») ?",
        ["oral réflexif", "Oral réflexif", "l'oral réflexif", "L'oral réflexif", "oral reflexif", "Oral reflexif", "l'oral reflexif", "L'oral reflexif", "oral métacognitif", "Oral métacognitif"],
        "L'oral réflexif (ou oral métacognitif) est un type d'oral dans lequel l'élève prend du recul sur ses propres processus de pensée et d'apprentissage. Il verbalise ses stratégies, justifie ses choix, explique ses erreurs. Cet oral est fondamental pour le développement des compétences métacognitives. On le retrouve dans de nombreuses situations scolaires : retour sur une démarche de résolution de problème, justification d'un choix orthographique, explication d'une stratégie de lecture. Il est distinct de l'oral spontané (conversationnel) et de l'oral scriptural (formel et structuré).",
        "Confondre l'oral réflexif avec le simple fait de « donner la bonne réponse ». L'oral réflexif implique que l'élève explicite le comment et le pourquoi de sa démarche, pas seulement le résultat.",
      ),
      qcm(
        "v3j-oe-10", "didactique_francais",
        "En matière d'enseignement de l'oral, que désigne le « continuum langagier » entre oral et écrit ?",
        [
          { id: "a", label: "Le fait que les élèves doivent toujours écrire avant de parler" },
          { id: "b", label: "L'idée que l'oral et l'écrit ne sont pas deux systèmes séparés mais forment un continuum avec des formes intermédiaires (oral scriptural, écrit oralisé)" },
          { id: "c", label: "La nécessité de dicter tous les textes aux élèves avant qu'ils les écrivent" },
          { id: "d", label: "Le passage obligatoire par le langage des signes entre l'oral et l'écrit" },
        ],
        "b",
        "Le continuum langagier est un concept didactique qui remet en question la séparation stricte entre oral et écrit. Il montre qu'il existe des formes intermédiaires : l'oral scriptural (un exposé structuré comme un texte écrit), l'écrit oralisé (la lecture à voix haute), la dictée à l'adulte (l'élève produit un oral que l'adulte transcrit). Comprendre ce continuum permet à l'enseignant de concevoir des activités de transition entre oral et écrit, et de montrer aux élèves que certaines compétences sont transversales aux deux modalités.",
        "Opposer radicalement oral et écrit comme deux domaines sans rapport, alors que les recherches montrent un continuum avec des zones de passage qui sont des leviers didactiques essentiels.",
      ),
    ],
  }),

  // ──────────────────────────────────────────────────────────────
  // Série 2 : Littérature de jeunesse à l'école
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-litterature-jeunesse",
    title: "Littérature de jeunesse à l'école",
    summary: "Connaître les enjeux didactiques de la littérature de jeunesse : listes de référence, mise en réseau d'œuvres, parcours de lecture, lecture littéraire et construction d'une culture commune.",
    objective: "Savoir sélectionner, programmer et exploiter des œuvres de littérature de jeunesse dans une perspective didactique, du cycle 1 au cycle 3.",
    introduction: "La littérature de jeunesse occupe une place centrale dans les programmes de français à l'école primaire. Elle contribue à la construction d'une culture littéraire commune, au développement des compétences de compréhension et d'interprétation, et à la formation du lecteur autonome. Cette série interroge vos connaissances sur les dispositifs didactiques, les outils du lecteur et les enjeux spécifiques de la lecture littéraire à l'école.",
    subdomain: "didactique_francais",
    topicKey: "litterature_jeunesse",
    topicLabel: "Littérature de jeunesse à l'école",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 44,
    completionSummary: {
      skill: "Concevoir un parcours de lecture littéraire cohérent et justifier ses choix d'œuvres et de dispositifs",
      keyPoints: [
        "Le MEN publie des listes de référence d'œuvres pour les cycles 2 et 3, qui constituent un patrimoine littéraire commun à tous les élèves",
        "La mise en réseau d'œuvres (par thème, auteur, genre ou procédé) est un outil didactique essentiel pour construire la culture littéraire",
        "Le carnet de lecteur est un outil personnel de réception qui permet à l'élève de garder trace de ses lectures et de développer sa subjectivité de lecteur",
      ],
      retryAdvice: "Consultez les listes de référence du MEN pour les cycles 2 et 3, les documents d'accompagnement Éduscol sur la littérature et les travaux de Catherine Tauveron sur la lecture littéraire à l'école.",
    },
    questions: [
      qcm(
        "v3j-lj-1", "didactique_francais",
        "Le Ministère de l'Éducation nationale publie des listes de référence d'œuvres de littérature de jeunesse. Quel est le principal objectif de ces listes ?",
        [
          { id: "a", label: "Imposer un programme de lectures obligatoires que tous les élèves doivent lire intégralement" },
          { id: "b", label: "Proposer un répertoire d'œuvres de qualité pour garantir une culture littéraire commune et aider les enseignants dans leurs choix" },
          { id: "c", label: "Remplacer les manuels de lecture par des œuvres complètes" },
          { id: "d", label: "Classer les œuvres par niveau de difficulté pour individualiser la lecture" },
        ],
        "b",
        "Les listes de référence du MEN (cycle 2 et cycle 3) proposent un répertoire d'œuvres variées en termes de genres, d'époques et de cultures. Leur objectif est double : guider les enseignants dans le choix d'œuvres de qualité littéraire et garantir que tous les élèves, quelle que soit leur école, aient accès à un patrimoine littéraire commun. Ces listes ne sont pas un programme obligatoire : l'enseignant y puise en fonction de son projet pédagogique, en veillant à la diversité des genres et à la progressivité des difficultés.",
        "Croire que les listes de référence sont un programme imposé que les élèves doivent lire de bout en bout. Ce sont des outils d'aide au choix, pas un programme prescriptif.",
      ),
      reponseCourte(
        "v3j-lj-2", "didactique_francais",
        "En didactique de la littérature, comment appelle-t-on le dispositif qui consiste à regrouper plusieurs œuvres autour d'un point commun (thème, auteur, genre, procédé narratif) pour enrichir la compréhension et la culture littéraire des élèves ?",
        ["mise en réseau", "Mise en réseau", "la mise en réseau", "La mise en réseau", "mise en réseau d'œuvres", "Mise en réseau d'œuvres", "réseau littéraire", "Réseau littéraire"],
        "La mise en réseau est un dispositif didactique fondamental en littérature à l'école primaire. Elle consiste à mettre en relation plusieurs œuvres partageant un point commun : un thème (la peur, le voyage), un genre (le conte de ruse), un auteur (découvrir l'univers de Claude Ponti), un procédé narratif (les récits en boucle), un personnage archétypal (le loup). Ce dispositif favorise l'intertextualité : les élèves construisent des liens entre les œuvres, repèrent des invariants et des variations, et développent ainsi une véritable culture littéraire.",
        "Confondre la mise en réseau avec le simple fait de lire plusieurs livres. La mise en réseau implique un point commun explicite et un travail de comparaison entre les œuvres.",
      ),
      vraiFaux(
        "v3j-lj-3", "didactique_francais",
        "À l'école primaire, la lecture intégrale d'une œuvre est toujours préférable à la lecture d'extraits, quels que soient le contexte et les objectifs pédagogiques.",
        false,
        "Lecture intégrale et lecture d'extraits sont deux modalités complémentaires qui répondent à des objectifs différents. La lecture intégrale permet de suivre un récit dans sa globalité, de comprendre la structure narrative et de développer le plaisir de la lecture longue. La lecture d'extraits est pertinente pour travailler un point précis (un type de description, un procédé stylistique, un passage clé) ou pour donner envie de lire l'œuvre complète. Les programmes recommandent de varier les deux approches. En cycle 2, on privilégie souvent des textes courts lus intégralement ; en cycle 3, on alterne œuvres intégrales et anthologies.",
        "Opposer systématiquement lecture intégrale et lecture d'extraits, alors que les deux sont complémentaires et répondent à des objectifs didactiques distincts.",
      ),
      qcm(
        "v3j-lj-4", "didactique_francais",
        "Le carnet de lecteur est un outil utilisé en littérature à l'école. Quelle est sa fonction principale ?",
        [
          { id: "a", label: "Servir de fiche de lecture standardisée avec résumé, personnages et avis noté sur 10" },
          { id: "b", label: "Permettre à l'élève de garder une trace personnelle de ses lectures : impressions, dessins, citations, questions, liens entre œuvres" },
          { id: "c", label: "Remplacer le cahier de français pour y coller les textes étudiés en classe" },
          { id: "d", label: "Évaluer la vitesse de lecture de chaque élève" },
        ],
        "b",
        "Le carnet de lecteur est un outil personnel de réception littéraire. Contrairement à la fiche de lecture normée, il laisse une grande liberté à l'élève pour exprimer sa relation au texte : dessins, citations préférées, questions que le texte suscite, avis argumentés, liens avec d'autres livres ou des expériences personnelles. Il développe la posture de sujet lecteur et la subjectivité interprétative. L'enseignant peut le consulter pour comprendre le rapport de l'élève à la lecture, mais il ne doit pas le transformer en exercice scolaire contrôlé.",
        "Transformer le carnet de lecteur en fiche de lecture standardisée avec des rubriques imposées, ce qui détruit sa dimension personnelle et subjective.",
      ),
      reponseCourte(
        "v3j-lj-5", "didactique_francais",
        "En didactique de la lecture littéraire, comment Catherine Tauveron nomme-t-elle les textes qui comportent des zones d'ombre, des ambiguïtés ou des blancs intentionnels nécessitant un travail d'interprétation de la part du lecteur ?",
        ["textes résistants", "Textes résistants", "texte résistant", "Texte résistant", "textes resistants", "Textes resistants"],
        "Catherine Tauveron distingue les « textes lisses » (dont la compréhension ne pose pas de difficulté majeure) des « textes résistants » (qui comportent des obstacles intentionnels à la compréhension). Parmi les textes résistants, elle distingue les « textes réticents » (qui masquent volontairement une information, brouillent les pistes, jouent sur les non-dits) et les « textes proliférants » (qui offrent de multiples interprétations possibles). Le travail sur les textes résistants est essentiel pour développer la compétence interprétative des élèves et les former à la lecture littéraire.",
        "Confondre « texte résistant » avec « texte difficile ». Un texte peut être linguistiquement simple mais résistant sur le plan interprétatif (ironie, fin ouverte, point de vue non fiable).",
      ),
      vraiFaux(
        "v3j-lj-6", "didactique_francais",
        "La lecture offerte par l'enseignant (lecture à voix haute d'une œuvre aux élèves) est un dispositif pertinent uniquement en cycle 1 et n'a plus sa place au cycle 3.",
        false,
        "La lecture offerte (ou lecture magistrale, lecture épicée) est un dispositif pertinent à tous les cycles. En cycle 1, elle est le principal mode d'accès aux textes. En cycle 2, elle permet de faire découvrir des textes plus complexes que ceux que les élèves peuvent lire seuls, enrichissant ainsi leur culture littéraire et leur compréhension orale. En cycle 3, elle reste précieuse pour créer un moment de plaisir partagé, pour introduire une œuvre longue qui sera lue ensuite de façon autonome, ou pour travailler la compréhension de textes résistants grâce aux arrêts et aux échanges qu'elle permet.",
        "Abandonner la lecture offerte dès que les élèves savent lire seuls, alors qu'elle reste un levier puissant de motivation, de construction de la culture littéraire et de compréhension à tous les cycles.",
      ),
      qcm(
        "v3j-lj-7", "didactique_francais",
        "L'album de jeunesse, particulièrement utilisé en cycle 1 et en cycle 2, se caractérise par un rapport spécifique entre texte et image. Quelle affirmation est exacte ?",
        [
          { id: "a", label: "Dans un album, l'image ne fait qu'illustrer le texte et n'apporte aucune information supplémentaire" },
          { id: "b", label: "Dans un album, texte et image peuvent entretenir des rapports variés : redondance, complémentarité, ou même contradiction, ce qui enrichit la signification" },
          { id: "c", label: "L'album est un support exclusivement destiné aux élèves qui ne savent pas encore lire" },
          { id: "d", label: "La lecture d'un album ne mobilise aucune compétence spécifique car les images remplacent la compréhension du texte" },
        ],
        "b",
        "L'album de jeunesse est un objet littéraire complexe où texte et image interagissent de façons variées. Quand l'image reprend exactement ce que dit le texte, on parle de redondance. Quand elle ajoute des informations que le texte ne donne pas, on parle de complémentarité. Quand elle contredit le texte (procédé d'ironie ou de décalage), on parle de contradiction. Apprendre à lire un album, c'est apprendre à articuler ces deux codes sémiotiques. C'est une compétence de lecture à part entière qui nécessite un enseignement explicite, en particulier pour les albums où l'image porte une partie essentielle du récit.",
        "Considérer l'album comme un support « facile » destiné aux petits, alors que certains albums sont de grande complexité narrative et interprétative (albums d'Anthony Browne, de Claude Ponti, de Kitty Crowther).",
      ),
      reponseCourte(
        "v3j-lj-8", "didactique_francais",
        "Comment appelle-t-on le dispositif dans lequel un petit groupe d'élèves lit la même œuvre puis échange sur celle-ci selon des rôles répartis (meneur de discussion, chercheur de passages, illustrateur, connecteur...) ?",
        ["cercle de lecture", "Cercle de lecture", "le cercle de lecture", "Le cercle de lecture", "cercles de lecture", "Cercles de lecture"],
        "Le cercle de lecture (inspiré des « literature circles » anglo-saxons, notamment les travaux de Harvey Daniels) est un dispositif dans lequel un groupe de 4 à 6 élèves lit la même œuvre et se réunit régulièrement pour en discuter. Chaque élève se voit attribuer un rôle qui tourne d'une séance à l'autre : meneur de discussion (prépare des questions), chercheur de passages (sélectionne des extraits marquants), illustrateur (représente une scène clé), connecteur (fait des liens avec d'autres textes ou la vie réelle). Ce dispositif développe l'autonomie du lecteur et les compétences orales d'argumentation littéraire.",
        "Confondre le cercle de lecture (dispositif structuré avec des rôles) avec un simple échange libre sur un livre. La structuration par rôles est ce qui distingue le cercle de lecture d'une discussion informelle.",
      ),
      vraiFaux(
        "v3j-lj-9", "didactique_francais",
        "Les programmes préconisent d'étudier en classe uniquement les genres narratifs (conte, roman, nouvelle). La poésie, le théâtre et la bande dessinée ne font pas partie de la littérature enseignée à l'école primaire.",
        false,
        "Les programmes de littérature à l'école primaire englobent une grande diversité de genres : le conte et le récit bien sûr, mais aussi la poésie (récitation, écriture poétique, rencontre avec des poètes), le théâtre (lecture de pièces, mise en voix, jeu théâtral), la bande dessinée (lecture de l'image séquentielle, rapport texte-image), l'album et le documentaire narratif. Les listes de référence du MEN incluent des œuvres de tous ces genres. Cette diversité générique est essentielle pour construire une culture littéraire riche et pour que chaque élève puisse trouver des genres qui lui plaisent.",
        "Réduire la littérature scolaire aux seuls récits narratifs, alors que les programmes et les listes de référence insistent sur la diversité des genres : poésie, théâtre, BD, album, conte.",
      ),
      qcm(
        "v3j-lj-10", "didactique_francais",
        "Quel est l'objectif principal de la construction d'une « culture littéraire commune » visée par les programmes de l'école primaire ?",
        [
          { id: "a", label: "Préparer les élèves à réussir les épreuves du brevet des collèges" },
          { id: "b", label: "Permettre à tous les élèves, quelle que soit leur origine sociale, de partager des références littéraires communes et de développer leur capacité à interpréter les textes" },
          { id: "c", label: "S'assurer que les élèves connaissent par cœur le résumé de 50 œuvres classiques" },
          { id: "d", label: "Remplacer l'enseignement de la grammaire par la lecture d'œuvres intégrales" },
        ],
        "b",
        "La construction d'une culture littéraire commune est un objectif à forte dimension démocratique. Les programmes visent à ce que tous les élèves, indépendamment de leur milieu familial, aient accès à un patrimoine littéraire partagé. Cette culture commune permet de tisser des liens entre les textes (intertextualité), de reconnaître des archétypes, des genres, des procédés narratifs. Elle développe la capacité d'interprétation et nourrit l'imaginaire. Les listes de référence sont l'un des outils de cette ambition : elles garantissent une base commune tout en laissant une liberté de choix à l'enseignant.",
        "Réduire la culture littéraire commune à un catalogue de titres à connaître. L'enjeu est la capacité à mobiliser ces références pour interpréter, comparer et apprécier les textes, pas la simple mémorisation de titres.",
      ),
    ],
  }),

  // ──────────────────────────────────────────────────────────────
  // Série 3 : Stratégies de compréhension en lecture
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-lecture-comprehension-strategies",
    title: "Stratégies de compréhension en lecture",
    summary: "Maîtriser les principaux dispositifs d'enseignement de la compréhension en lecture : enseignement explicite des stratégies, Narramus, Lectorino & Lectorinette, enseignement réciproque, et travail sur les inférences.",
    objective: "Connaître les stratégies de compréhension enseignées à l'école primaire, les outils didactiques de référence et les fondements théoriques de l'enseignement explicite de la compréhension.",
    introduction: "La compréhension en lecture ne va pas de soi : elle s'enseigne. Les recherches en didactique ont montré que les bons lecteurs utilisent des stratégies de compréhension que les lecteurs fragiles ne mobilisent pas spontanément. L'enseignement explicite de ces stratégies est au cœur des programmes. Cette série vous interroge sur les principaux dispositifs, outils et fondements de cet enseignement.",
    subdomain: "didactique_francais",
    topicKey: "lecture_comprehension_strategies",
    topicLabel: "Stratégies de compréhension en lecture",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 45,
    completionSummary: {
      skill: "Identifier et mettre en œuvre les stratégies de compréhension en lecture dans une démarche d'enseignement explicite",
      keyPoints: [
        "Les quatre stratégies fondamentales de compréhension sont : prédire, questionner, clarifier, résumer — elles sont au cœur de l'enseignement réciproque de Palincsar et Brown",
        "Narramus (Cèbe & Goigoux) est un outil pour la maternelle et le début du cycle 2 qui enseigne la compréhension avant la lecture autonome",
        "L'enseignement explicite de la compréhension passe par le modelage (l'enseignant montre ses propres stratégies), la pratique guidée puis la pratique autonome",
      ],
      retryAdvice: "Étudiez les ouvrages de Cèbe et Goigoux (Narramus, Lectorino & Lectorinette) et les documents Éduscol sur l'enseignement de la compréhension. Entraînez-vous à décrire comment vous modéliseriez une stratégie de compréhension devant une classe.",
    },
    questions: [
      qcm(
        "v3j-lcs-1", "didactique_francais",
        "L'enseignement explicite de la compréhension en lecture repose sur une démarche en trois temps. Lesquels ?",
        [
          { id: "a", label: "Lecture silencieuse, questionnaire écrit, correction collective" },
          { id: "b", label: "Modelage par l'enseignant (je fais), pratique guidée (on fait ensemble), pratique autonome (tu fais seul)" },
          { id: "c", label: "Déchiffrage des mots, copie du texte, récitation par cœur" },
          { id: "d", label: "Lecture offerte, résumé dicté par l'enseignant, illustration du texte" },
        ],
        "b",
        "L'enseignement explicite de la compréhension suit le modèle du « gradual release of responsibility » (Pearson & Gallagher). D'abord, l'enseignant modélise la stratégie en « pensant à voix haute » devant les élèves (modelage) : il montre comment il fait pour prédire, questionner, clarifier ou résumer. Ensuite, les élèves pratiquent la stratégie avec l'aide de l'enseignant (pratique guidée). Enfin, ils l'appliquent de manière autonome. Cette démarche rend visibles les processus cognitifs de compréhension, habituellement invisibles, et permet aux élèves fragiles de s'approprier les stratégies des bons lecteurs.",
        "Se contenter de poser des questions de compréhension après la lecture sans jamais enseigner comment comprendre. Questionner un texte évalue la compréhension mais ne l'enseigne pas.",
      ),
      vraiFaux(
        "v3j-lcs-2", "didactique_francais",
        "Le dispositif Narramus, conçu par Sylvie Cèbe et Roland Goigoux, est un outil destiné à enseigner la compréhension de récits en maternelle et au début du cycle 2, avant même que les élèves sachent lire de manière autonome.",
        true,
        "Narramus est un outil didactique innovant qui enseigne la compréhension de récits aux élèves de maternelle et de CP. Son principe fondamental est que la compréhension de textes peut et doit être enseignée avant que les élèves maîtrisent le déchiffrage. L'enseignant lit le texte aux élèves, puis travaille avec eux le vocabulaire, la représentation mentale de l'histoire (le « film de l'histoire dans la tête »), les états mentaux des personnages, et la capacité à raconter l'histoire avec ses propres mots. Narramus montre que la compréhension orale est un précurseur essentiel de la compréhension en lecture.",
        "Croire qu'on ne peut pas enseigner la compréhension tant que les élèves ne savent pas lire. Narramus prouve le contraire : la compréhension orale de récits prépare la compréhension écrite.",
      ),
      reponseCourte(
        "v3j-lcs-3", "didactique_francais",
        "Dans le dispositif Narramus (Cèbe & Goigoux), les élèves sont invités à se construire une représentation mentale de l'histoire. Comment les auteurs nomment-ils métaphoriquement cette représentation que les élèves doivent élaborer dans leur tête ?",
        ["le film de l'histoire", "Le film de l'histoire", "film de l'histoire", "le film", "un film dans la tête", "le film dans la tête", "film dans la tête"],
        "Dans Narramus, Cèbe et Goigoux utilisent la métaphore du « film de l'histoire dans la tête » pour aider les jeunes élèves à comprendre ce que signifie comprendre un récit. Comprendre, c'est se fabriquer un film mental : visualiser les lieux, les personnages, les actions, les émotions. Cette métaphore rend concret un processus cognitif abstrait. Les élèves apprennent progressivement à « faire tourner le film » : actualiser leur représentation au fil du récit, intégrer les nouvelles informations, anticiper la suite. Ce processus de construction du modèle de situation est au cœur de la compréhension narrative.",
        "Penser que la compréhension se réduit au décodage des mots ou à la restitution d'informations factuelles, sans comprendre que le lecteur doit construire une représentation mentale cohérente et dynamique du texte.",
      ),
      qcm(
        "v3j-lcs-4", "didactique_francais",
        "Lectorino & Lectorinette (Cèbe & Goigoux) est un outil d'enseignement de la compréhension pour le CE1-CE2. Parmi les compétences suivantes, laquelle est travaillée de manière spécifique dans cet outil ?",
        [
          { id: "a", label: "La fluence de lecture (nombre de mots lus par minute)" },
          { id: "b", label: "La compréhension des états mentaux des personnages (ce qu'ils pensent, ressentent, veulent)" },
          { id: "c", label: "La calligraphie et la copie de textes" },
          { id: "d", label: "L'analyse grammaticale des phrases du texte" },
        ],
        "b",
        "Lectorino & Lectorinette accorde une place centrale à la compréhension des états mentaux des personnages. Les élèves apprennent à inférer ce que les personnages pensent, ressentent, désirent, croient, et comment ces états mentaux motivent leurs actions. Cette compétence est souvent déficitaire chez les lecteurs fragiles qui se limitent à la compréhension des événements explicites sans percevoir les intentions et les émotions sous-jacentes. L'outil propose des activités de théâtralisation, de reformulation et de mise en mots des pensées des personnages pour rendre explicites ces processus inférentiels.",
        "Réduire la compréhension d'un récit aux événements factuels (qui fait quoi, où, quand) sans travailler les états mentaux des personnages, qui sont la clé de la compréhension fine des motivations et des relations.",
      ),
      vraiFaux(
        "v3j-lcs-5", "didactique_francais",
        "Les inférences sont des informations que le lecteur déduit du texte sans qu'elles soient explicitement écrites. Elles ne mobilisent que des indices présents dans le texte lui-même.",
        false,
        "Les inférences mobilisent deux types de sources : les indices du texte (inférences internes ou logiques) et les connaissances du monde du lecteur (inférences de connaissances ou pragmatiques). Par exemple, comprendre qu'un pronom « il » renvoie à un personnage mentionné plus haut est une inférence anaphorique (basée sur le texte). Mais comprendre que « Marie enfila son manteau et prit son parapluie » signifie qu'il pleut est une inférence pragmatique qui mobilise les connaissances du monde du lecteur. L'enseignement explicite doit porter sur les deux types d'inférences, car les élèves fragiles manquent souvent de connaissances du monde nécessaires à la compréhension.",
        "Ignorer le rôle des connaissances du monde dans la compréhension. Beaucoup d'échecs en compréhension viennent de lacunes encyclopédiques, pas seulement de difficultés de décodage ou de raisonnement.",
      ),
      reponseCourte(
        "v3j-lcs-6", "didactique_francais",
        "Comment appelle-t-on la capacité d'un lecteur à reformuler un texte lu avec ses propres mots, ce qui constitue un indicateur fiable de sa compréhension ?",
        ["reformulation", "Reformulation", "la reformulation", "La reformulation", "rappel de récit", "Rappel de récit", "le rappel de récit", "Le rappel de récit"],
        "La reformulation (ou « rappel de récit » dans le cadre narratif) est un indicateur robuste de la compréhension. Quand un élève peut raconter un texte lu avec ses propres mots en restituant les éléments essentiels (personnages, actions, relations causales, chronologie), cela prouve qu'il s'est construit un modèle de situation cohérent. À l'inverse, un élève qui ne peut pas reformuler ou qui restitue des éléments incohérents signale une compréhension défaillante. C'est pourquoi Narramus fait de la capacité à « raconter l'histoire » un objectif central : reformuler est à la fois un indicateur et un outil d'apprentissage de la compréhension.",
        "Se fier uniquement aux questionnaires de compréhension (QCM, questions fermées), qui peuvent être réussis par repérage de mots sans véritable compréhension. La reformulation avec ses propres mots est un indicateur plus fiable.",
      ),
      qcm(
        "v3j-lcs-7", "didactique_francais",
        "L'enseignement réciproque (Palincsar & Brown) repose sur quatre stratégies que les élèves appliquent à tour de rôle en petit groupe. Quelles sont ces quatre stratégies ?",
        [
          { id: "a", label: "Copier, souligner, surligner, recopier" },
          { id: "b", label: "Prédire, questionner, clarifier, résumer" },
          { id: "c", label: "Lire à voix haute, lire silencieusement, écouter, écrire" },
          { id: "d", label: "Identifier le genre, repérer le narrateur, trouver le thème, donner un avis" },
        ],
        "b",
        "L'enseignement réciproque (reciprocal teaching) de Palincsar et Brown (1984) est un dispositif d'enseignement explicite de la compréhension fondé sur quatre stratégies : prédire (anticiper ce qui va se passer), questionner (poser des questions sur le texte), clarifier (identifier et résoudre les difficultés de compréhension : mots inconnus, passages obscurs), résumer (reformuler l'essentiel). Les élèves, en petit groupe, prennent à tour de rôle le rôle de « l'enseignant » qui applique ces stratégies. Ce dispositif a fait l'objet de nombreuses recherches validant son efficacité.",
        "Ne retenir qu'une ou deux stratégies sur les quatre. L'efficacité de l'enseignement réciproque repose sur l'articulation des quatre stratégies, qui couvrent l'ensemble du processus de compréhension.",
      ),
      vraiFaux(
        "v3j-lcs-8", "didactique_francais",
        "Le vocabulaire est un levier majeur de la compréhension en lecture : un élève qui ne connaît pas le sens de plus de 5 % des mots d'un texte risque de ne pas le comprendre, même s'il déchiffre correctement.",
        true,
        "La recherche (notamment les travaux de Nagy et Anderson) a établi un seuil critique : lorsqu'un lecteur ne connaît pas le sens de plus de 5 % des mots d'un texte, sa compréhension globale est sérieusement compromise. Cela signifie que le vocabulaire est un levier décisif de la compréhension. C'est pourquoi l'enseignement du vocabulaire en amont de la lecture (pré-enseignement des mots clés) est une stratégie didactique recommandée. Narramus, par exemple, consacre une part importante de chaque séance au travail sur le vocabulaire du texte avant de le lire aux élèves.",
        "Penser que le contexte suffit toujours pour deviner le sens des mots inconnus. Si trop de mots sont inconnus, le contexte lui-même devient incompréhensible et la stratégie de devinement échoue.",
      ),
      reponseCourte(
        "v3j-lcs-9", "didactique_francais",
        "En compréhension de texte, comment appelle-t-on les reprises d'un même référent par des mots différents (pronom, groupe nominal, synonyme) qui assurent la cohésion textuelle et dont la compréhension nécessite un travail inférentiel ?",
        ["anaphores", "Anaphores", "les anaphores", "Les anaphores", "reprises anaphoriques", "Reprises anaphoriques", "les reprises anaphoriques", "Les reprises anaphoriques", "chaînes anaphoriques", "Chaînes anaphoriques"],
        "Les anaphores (ou reprises anaphoriques, ou chaînes anaphoriques) sont les différentes expressions qui désignent un même référent tout au long d'un texte. Par exemple, « le loup » peut être repris par « il », « l'animal », « la bête féroce », « le prédateur ». Comprendre ces reprises exige un travail inférentiel : le lecteur doit identifier que ces expressions différentes renvoient au même personnage ou objet. C'est une source majeure de difficultés de compréhension chez les jeunes lecteurs. L'enseignement explicite des chaînes anaphoriques (qui est « il » ? qui est « celui-ci » ?) est donc un levier didactique important.",
        "Sous-estimer la difficulté des anaphores pour les jeunes lecteurs. Les reprises pronominales et les substituts lexicaux sont une cause fréquente d'incompréhension, surtout quand plusieurs personnages sont en jeu.",
      ),
      qcm(
        "v3j-lcs-10", "didactique_francais",
        "Au cycle 1, la compréhension de l'oral (écouter et comprendre des histoires lues par l'enseignant) est considérée comme un précurseur de la compréhension en lecture. Pourquoi ?",
        [
          { id: "a", label: "Parce que les compétences de compréhension mobilisées (inférer, construire un modèle de situation, anticiper) sont les mêmes que celles nécessaires en lecture autonome" },
          { id: "b", label: "Parce que l'oral est plus facile que l'écrit et permet de commencer par le niveau le plus bas" },
          { id: "c", label: "Parce que les élèves de maternelle ne peuvent pas manipuler de livres" },
          { id: "d", label: "Parce que la compréhension orale ne mobilise pas les mêmes processus cognitifs que la compréhension écrite" },
        ],
        "a",
        "La compréhension orale et la compréhension écrite partagent les mêmes processus cognitifs de haut niveau : construire un modèle de situation, inférer les informations implicites, comprendre les relations causales, identifier les états mentaux des personnages, mobiliser ses connaissances du monde. Ce qui les distingue, c'est le code (oral vs écrit). En travaillant la compréhension orale au cycle 1, on développe ces compétences de haut niveau sans la charge cognitive du déchiffrage. Quand l'élève apprend ensuite à décoder, il peut mobiliser ces compétences de compréhension déjà construites. C'est le fondement de la démarche Narramus.",
        "Croire que la compréhension orale et la compréhension écrite sont deux compétences sans rapport. Elles partagent les mêmes processus cognitifs de haut niveau ; seul le canal d'entrée diffère.",
      ),
    ],
  }),

  // ──────────────────────────────────────────────────────────────
  // Série 4 : La dictée et ses formes didactiques
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-dictee-formes-didactiques",
    title: "La dictée et ses formes didactiques",
    summary: "Connaître les différentes formes de dictée et leurs enjeux didactiques : dictée négociée, phrase dictée du jour, atelier de négociation graphique, et comprendre la place de la dictée dans une séquence d'orthographe.",
    objective: "Distinguer les dictées d'apprentissage des dictées d'évaluation, maîtriser les principaux dispositifs de dictée innovante et savoir analyser les erreurs des élèves selon la typologie de Catach.",
    introduction: "La dictée est un exercice emblématique de l'école française, mais ses formes ont considérablement évolué sous l'impulsion de la recherche didactique. Loin de se réduire à la dictée traditionnelle (l'enseignant dicte, l'élève écrit, l'enseignant corrige), la dictée peut devenir un puissant outil d'apprentissage quand elle est conçue pour faire réfléchir les élèves sur la langue. Cette série explore ces formes didactiques variées.",
    subdomain: "didactique_francais",
    topicKey: "dictee_formes_didactiques",
    topicLabel: "La dictée et ses formes didactiques",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 46,
    completionSummary: {
      skill: "Choisir et justifier la forme de dictée adaptée à un objectif d'apprentissage ou d'évaluation orthographique",
      keyPoints: [
        "La dictée traditionnelle est un outil d'évaluation ; les dictées négociée, phrase du jour et ANG sont des outils d'apprentissage qui font verbaliser les raisonnements orthographiques",
        "La phrase dictée du jour (Cogis) rend visibles les conceptions orthographiques des élèves en les invitant à expliquer leurs choix graphiques",
        "La typologie de Catach distingue les erreurs phonogrammiques (lien son-lettre), morphogrammiques (accords, marques de temps) et logogrammiques (homophones)",
      ],
      retryAdvice: "Étudiez les ouvrages de Danièle Cogis sur l'orthographe et les travaux de Nina Catach sur la linguistique de l'orthographe. Entraînez-vous à classer des erreurs d'élèves selon la typologie de Catach.",
    },
    questions: [
      qcm(
        "v3j-dfd-1", "didactique_francais",
        "Quelle est la principale limite de la dictée traditionnelle (l'enseignant dicte un texte, l'élève écrit sous la dictée, l'enseignant corrige) en tant qu'outil d'apprentissage de l'orthographe ?",
        [
          { id: "a", label: "Elle est trop longue à corriger pour l'enseignant" },
          { id: "b", label: "Elle évalue les connaissances orthographiques de l'élève mais ne lui enseigne pas de stratégie pour résoudre les problèmes orthographiques" },
          { id: "c", label: "Elle ne peut porter que sur des mots isolés, jamais sur des phrases" },
          { id: "d", label: "Elle est interdite par les programmes depuis 2015" },
        ],
        "b",
        "La dictée traditionnelle est essentiellement un outil d'évaluation sommative : elle mesure ce que l'élève sait déjà écrire correctement, mais elle n'enseigne pas comment résoudre un problème orthographique. L'élève qui ne sait pas accorder un participe passé avant la dictée ne le saura pas davantage après, même après correction. C'est pourquoi la recherche didactique a développé des formes de dictée d'apprentissage (négociée, phrase du jour, ANG) où le but n'est pas de « bien écrire du premier coup » mais de verbaliser ses raisonnements orthographiques et de confronter ses stratégies.",
        "Considérer la dictée traditionnelle comme un outil d'apprentissage suffisant, alors qu'elle évalue sans enseigner. Les programmes recommandent de la compléter par des dictées d'apprentissage.",
      ),
      vraiFaux(
        "v3j-dfd-2", "didactique_francais",
        "La dictée négociée est un dispositif dans lequel les élèves, après avoir écrit individuellement sous la dictée, confrontent leurs graphies en petits groupes et doivent se mettre d'accord sur l'orthographe correcte en argumentant.",
        true,
        "La dictée négociée est un dispositif d'apprentissage en deux temps. D'abord, chaque élève écrit le texte dicté individuellement. Ensuite, par groupes de 3 ou 4, les élèves comparent leurs productions, repèrent les divergences et doivent se mettre d'accord sur la graphie correcte de chaque mot ou accord en justifiant leurs choix. Ce dispositif est puissant car il oblige les élèves à verbaliser leurs raisonnements orthographiques : « J'ai mis -ent parce que le sujet est au pluriel ». Le conflit sociocognitif entre pairs est un levier d'apprentissage plus efficace que la simple correction par l'enseignant.",
        "Croire que la négociation entre pairs conduit à des erreurs. En réalité, les recherches montrent que les groupes aboutissent très majoritairement à la graphie correcte, car l'argumentation permet d'éliminer les graphies non justifiables.",
      ),
      reponseCourte(
        "v3j-dfd-3", "didactique_francais",
        "Quel est le nom du dispositif didactique conçu par Danièle Cogis, dans lequel l'enseignant dicte une phrase, recueille au tableau toutes les graphies proposées par les élèves pour chaque mot, puis anime une discussion collective pour justifier les choix et éliminer les graphies incorrectes ?",
        ["la phrase dictée du jour", "La phrase dictée du jour", "phrase dictée du jour", "Phrase dictée du jour", "la phrase du jour", "La phrase du jour", "phrase du jour", "Phrase du jour"],
        "La phrase dictée du jour, conceptualisée par Danièle Cogis, est un dispositif qui rend visibles les conceptions orthographiques des élèves. L'enseignant dicte une seule phrase. Il recueille ensuite au tableau les différentes graphies proposées par les élèves pour chaque mot. Puis il anime un débat collectif : les élèves argumentent pour défendre ou rejeter chaque graphie en mobilisant leurs connaissances grammaticales. Ce dispositif est particulièrement efficace car il fait émerger les raisonnements erronés (morphologiques, par analogie) et permet de les corriger collectivement par l'argumentation.",
        "Confondre la phrase dictée du jour avec une simple dictée courte. La spécificité de ce dispositif est la collecte de toutes les graphies au tableau et le débat argumenté sur chacune d'elles.",
      ),
      qcm(
        "v3j-dfd-4", "didactique_francais",
        "L'atelier de négociation graphique (ANG) est un dispositif de dictée d'apprentissage. Quelle est sa caractéristique distinctive ?",
        [
          { id: "a", label: "L'enseignant n'intervient jamais et laisse les élèves s'auto-corriger sans aide" },
          { id: "b", label: "Les élèves justifient entre pairs leurs choix orthographiques en mobilisant explicitement les règles et procédures, avec un rôle de médiation de l'enseignant" },
          { id: "c", label: "Chaque élève travaille seul avec un dictionnaire sans interaction avec les autres" },
          { id: "d", label: "L'enseignant dicte un texte entier que les élèves doivent mémoriser avant de l'écrire" },
        ],
        "b",
        "L'atelier de négociation graphique (ANG), développé par Ghislaine Haas et Danielle Lorrot, est un dispositif dans lequel un petit groupe d'élèves discute des problèmes orthographiques d'un court texte dicté. La spécificité de l'ANG est l'exigence de justification explicite : les élèves doivent formuler les règles qu'ils appliquent, nommer les catégories grammaticales, expliquer les procédures d'accord. L'enseignant ne valide ni n'invalide mais relance et questionne pour approfondir les raisonnements. Ce dispositif développe les compétences métalinguistiques des élèves et rend observables leurs procédures orthographiques.",
        "Penser que l'ANG est une simple correction en groupe. Sa spécificité est la justification explicite des choix graphiques avec un vocabulaire grammatical précis, pas la simple recherche de la « bonne réponse ».",
      ),
      vraiFaux(
        "v3j-dfd-5", "didactique_francais",
        "La dictée à trous est un dispositif pertinent lorsque l'enseignant souhaite cibler un phénomène orthographique précis (par exemple, les accords dans le groupe nominal) sans surcharger l'élève par d'autres difficultés simultanées.",
        true,
        "La dictée à trous permet de focaliser l'attention de l'élève sur un phénomène orthographique ciblé. Le texte est déjà écrit, seuls certains mots ou certaines terminaisons sont à compléter. Cela réduit la surcharge cognitive : l'élève n'a pas à gérer simultanément le déchiffrage, la segmentation en mots, la graphie de tous les mots et les accords. Il peut concentrer toute son attention sur le phénomène visé (par exemple, les accords sujet-verbe). Ce dispositif est particulièrement adapté en début d'apprentissage d'une notion ou pour les élèves en difficulté qui seraient submergés par une dictée complète.",
        "Dévaloriser la dictée à trous comme une dictée « trop facile ». Elle a une réelle valeur didactique car elle isole un phénomène et réduit la surcharge cognitive pour permettre un travail ciblé.",
      ),
      reponseCourte(
        "v3j-dfd-6", "didactique_francais",
        "Comment appelle-t-on le dispositif dans lequel l'élève observe un court texte pendant un temps limité, puis le texte est caché et l'élève doit le réécrire de mémoire, ce qui l'oblige à mémoriser l'orthographe des mots ?",
        ["copie différée", "Copie différée", "la copie différée", "La copie différée", "copie differee", "Copie differee"],
        "La copie différée est un dispositif qui développe la mémoire orthographique. L'élève dispose d'un temps d'observation d'un court texte (une phrase, un court paragraphe), pendant lequel il doit mémoriser activement l'orthographe des mots. Le texte est ensuite caché et l'élève le réécrit de mémoire. Ce dispositif oblige l'élève à dépasser la stratégie de copie lettre à lettre pour adopter une stratégie de mémorisation par groupes de mots, ce qui renforce la trace orthographique en mémoire. Il développe aussi les stratégies d'auto-vérification (l'élève compare ensuite sa production au texte original).",
        "Confondre la copie différée avec la copie simple. Dans la copie simple, l'élève peut regarder le modèle à tout moment ; dans la copie différée, le modèle est caché, ce qui oblige à une mémorisation active.",
      ),
      qcm(
        "v3j-dfd-7", "didactique_francais",
        "Dans une séquence d'orthographe bien conçue, quelle est la place idéale de la dictée traditionnelle (dictée de contrôle) ?",
        [
          { id: "a", label: "En début de séquence, avant tout enseignement, pour évaluer les prérequis" },
          { id: "b", label: "En fin de séquence, comme outil d'évaluation des acquis, après un enseignement explicite et des dictées d'apprentissage" },
          { id: "c", label: "Chaque jour, comme unique activité d'orthographe" },
          { id: "d", label: "Uniquement en période d'examens et de concours" },
        ],
        "b",
        "La dictée de contrôle (dictée traditionnelle évaluative) a sa place en fin de séquence d'orthographe, après que la notion a été enseignée explicitement, travaillée à travers des exercices d'entraînement et consolidée par des dictées d'apprentissage (négociée, phrase du jour, etc.). Ainsi positionnée, elle remplit pleinement sa fonction d'évaluation : elle vérifie que les élèves maîtrisent la notion étudiée en situation de production sous la dictée. La placer avant tout enseignement évaluerait des compétences non encore enseignées, ce qui serait injuste et peu informatif.",
        "Utiliser la dictée de contrôle comme seul et unique dispositif de travail de l'orthographe, sans phase d'apprentissage préalable. La dictée de contrôle évalue ; elle doit être précédée d'un enseignement.",
      ),
      vraiFaux(
        "v3j-dfd-8", "didactique_francais",
        "L'auto-dictée, dans laquelle l'élève mémorise un texte puis l'écrit de mémoire sans aucune aide, travaille exclusivement la mémoire et n'a aucun lien avec l'apprentissage de l'orthographe.",
        false,
        "L'auto-dictée travaille le lien entre mémoire et orthographe. En mémorisant un texte pour le réécrire sans aide, l'élève ne mémorise pas seulement le sens mais aussi l'orthographe des mots et les accords. Ce dispositif est particulièrement efficace pour les mots fréquents irréguliers dont l'orthographe doit être automatisée. Il développe aussi la conscience de la norme orthographique : l'élève sait qu'il devra réécrire exactement le texte, ce qui l'incite à porter attention à chaque graphie lors de la mémorisation. L'auto-dictée peut être combinée avec un travail explicite sur les règles qui sous-tendent les accords du texte mémorisé.",
        "Considérer l'auto-dictée comme un exercice purement mnémonique sans valeur orthographique. La mémorisation d'un texte correct renforce les représentations orthographiques stockées en mémoire à long terme.",
      ),
      reponseCourte(
        "v3j-dfd-9", "didactique_francais",
        "Dans la typologie de Nina Catach, comment appelle-t-on les erreurs qui portent sur la transcription des sons en lettres (par exemple, écrire « farmasi » au lieu de « pharmacie ») ?",
        ["erreurs phonogrammiques", "Erreurs phonogrammiques", "phonogrammiques", "Phonogrammiques", "erreur phonogrammique", "Erreur phonogrammique"],
        "Nina Catach distingue trois grands types d'erreurs orthographiques selon leur niveau linguistique. Les erreurs phonogrammiques portent sur la correspondance phonème-graphème : l'élève ne transcrit pas correctement le son en lettres (par exemple, « mèzon » pour « maison »). Les erreurs morphogrammiques portent sur les marques grammaticales non audibles (accords en nombre, en genre, terminaisons verbales muettes). Les erreurs logogrammiques portent sur les homophones (« vert/vers/verre/ver »). Cette classification permet à l'enseignant d'analyser finement les erreurs des élèves et de concevoir des remédiations ciblées.",
        "Traiter toutes les erreurs orthographiques de la même façon sans les analyser. La typologie de Catach permet de distinguer la nature de l'erreur et d'adapter la remédiation : un élève qui fait des erreurs phonogrammiques a besoin d'un travail sur le code, pas sur les accords.",
      ),
      qcm(
        "v3j-dfd-10", "didactique_francais",
        "Un élève de CE2 écrit « les chien mange » au lieu de « les chiens mangent ». Selon la typologie de Catach, de quel type d'erreurs s'agit-il principalement ?",
        [
          { id: "a", label: "Erreurs phonogrammiques : l'élève ne transcrit pas correctement les sons" },
          { id: "b", label: "Erreurs morphogrammiques : l'élève n'inscrit pas les marques grammaticales non audibles (pluriel du nom et du verbe)" },
          { id: "c", label: "Erreurs logogrammiques : l'élève confond des homophones" },
          { id: "d", label: "Erreurs idéogrammiques : l'élève oublie les majuscules et la ponctuation" },
        ],
        "b",
        "L'erreur « les chien mange » au lieu de « les chiens mangent » relève du domaine morphogrammique. Les morphogrammes sont des lettres ou groupes de lettres qui ne s'entendent pas à l'oral mais portent des informations grammaticales : le -s du pluriel nominal et le -ent du pluriel verbal sont des morphogrammes grammaticaux. L'élève a correctement transcrit les sons (la prononciation de « chien » et « chiens », de « mange » et « mangent » est identique) mais n'a pas inscrit les marques écrites du pluriel. Ce type d'erreur est le plus fréquent en français, langue où de nombreuses marques grammaticales sont muettes.",
        "Classer cette erreur comme phonogrammique alors que la transcription des sons est correcte. Le problème porte sur les marques grammaticales silencieuses, ce qui est typiquement morphogrammique.",
      ),
    ],
  }),

  // ──────────────────────────────────────────────────────────────
  // Série 5 : L'écriture au cycle 2
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-ecriture-cycle2",
    title: "L'écriture au cycle 2",
    summary: "Maîtriser les enjeux didactiques de l'enseignement de l'écriture au cycle 2 : geste graphique, écriture cursive, copie, dictée à l'adulte, écriture inventée, production autonome progressive et évaluation.",
    objective: "Connaître les étapes de l'apprentissage de l'écriture au cycle 2, les dispositifs de transition avec le cycle 1 et les principes d'une progression vers la production autonome de textes.",
    introduction: "L'écriture au cycle 2 est un domaine qui articule des compétences motrices (le geste graphique), linguistiques (orthographe, grammaire, vocabulaire) et textuelles (cohérence, organisation). L'enseignant doit accompagner les élèves depuis le geste d'écriture jusqu'à la production autonome de textes courts, en s'appuyant sur des dispositifs de transition comme la dictée à l'adulte et l'écriture tâtonnée. Cette série interroge vos connaissances sur ces enjeux didactiques.",
    subdomain: "didactique_francais",
    topicKey: "ecriture_cycle2",
    topicLabel: "L'écriture au cycle 2",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 47,
    completionSummary: {
      skill: "Concevoir une progression d'écriture au cycle 2, du geste graphique à la production autonome de textes courts",
      keyPoints: [
        "L'écriture cursive est le choix institutionnel français ; son enseignement exige un travail explicite sur le ductus (sens et ordre de tracé des lettres), la tenue du crayon et la posture",
        "La dictée à l'adulte est un dispositif de transition qui permet à l'élève de produire un texte élaboré avant de maîtriser l'écriture autonome",
        "L'écriture tâtonnée (Ferreiro) n'est pas une erreur à corriger mais une étape normale du développement qui révèle la compréhension du système d'écriture par l'enfant",
      ],
      retryAdvice: "Consultez les guides Éduscol « Pour enseigner l'écriture » et les travaux d'Emilia Ferreiro sur la psychogenèse de l'écrit. Entraînez-vous à décrire les étapes d'une séance de copie active et les principes de la dictée à l'adulte.",
    },
    questions: [
      qcm(
        "v3j-ec2-1", "didactique_francais",
        "En France, quel type d'écriture les programmes prescrivent-ils d'enseigner à l'école primaire pour l'écriture manuscrite courante ?",
        [
          { id: "a", label: "L'écriture scripte (lettres détachées type imprimerie)" },
          { id: "b", label: "L'écriture cursive (lettres liées entre elles)" },
          { id: "c", label: "L'écriture en majuscules d'imprimerie exclusivement" },
          { id: "d", label: "Au choix de l'élève, sans prescription institutionnelle" },
        ],
        "b",
        "L'écriture cursive est le choix institutionnel français. Les programmes prescrivent son enseignement dès le cycle 1 (tracés préparatoires) et son apprentissage systématique au cycle 2. Ce choix repose sur plusieurs arguments : la cursive favorise la fluidité du geste (les lettres sont liées, limitant les levers de crayon), elle aide à la segmentation en mots (on lève le crayon entre les mots) et elle contribue à la mémorisation orthographique (le mot est tracé comme une unité). D'autres pays ont fait des choix différents (script aux États-Unis, par exemple), mais en France la cursive reste la norme scolaire.",
        "Ignorer que l'écriture cursive est un choix institutionnel spécifiquement français, ou croire que l'écriture scripte serait équivalente. Au CRPE, il faut connaître et justifier ce choix.",
      ),
      vraiFaux(
        "v3j-ec2-2", "didactique_francais",
        "Le ductus d'une lettre désigne le sens et l'ordre dans lequel on trace les différents traits qui la composent. Son enseignement explicite est essentiel pour acquérir une écriture fluide et lisible.",
        true,
        "Le ductus est le « programme moteur » d'une lettre : il définit le point de départ, le sens de rotation, l'ordre des traits et les enchaînements. Un ductus correct permet une écriture fluide, rapide et lisible ; un ductus incorrect (par exemple, tracer un « o » dans le sens des aiguilles d'une montre au lieu du sens inverse) crée des difficultés de liaison entre les lettres et ralentit le geste. L'enseignement du ductus doit être explicite : l'enseignant montre le tracé, verbalise les gestes, guide la main si nécessaire. C'est un préalable indispensable avant de demander aux élèves de copier ou d'écrire de manière autonome.",
        "Négliger l'enseignement du ductus en pensant que les élèves trouveront naturellement le bon geste. Sans enseignement explicite, beaucoup d'élèves développent des tracés inefficaces difficiles à corriger ultérieurement.",
      ),
      reponseCourte(
        "v3j-ec2-3", "didactique_francais",
        "Comment appelle-t-on le dispositif de transition entre le cycle 1 et le cycle 2, dans lequel l'élève compose oralement un texte et l'enseignant l'écrit sous ses yeux en négociant la mise en mots ?",
        ["dictée à l'adulte", "Dictée à l'adulte", "la dictée à l'adulte", "La dictée à l'adulte", "dictee a l'adulte", "Dictee a l'adulte"],
        "La dictée à l'adulte est un dispositif créé par Laurence Lentin dans lequel l'élève qui ne maîtrise pas encore l'écriture autonome dicte un texte à l'enseignant. Ce n'est pas une simple transcription : l'enseignant négocie la mise en mots avec l'élève, l'aide à passer du langage oral au langage écrit (« On ne peut pas écrire ça comme ça, comment pourrais-tu le dire autrement ? »). Ce dispositif permet à l'élève de se concentrer sur les opérations de haut niveau (planification, choix des mots, organisation des idées) sans être freiné par le geste graphique et l'orthographe. Il est particulièrement utilisé en GS et en CP.",
        "Croire que la dictée à l'adulte consiste à écrire mot pour mot ce que dit l'élève. C'est un dispositif interactif où l'enseignant aide l'élève à transformer son oral en un écrit recevable.",
      ),
      qcm(
        "v3j-ec2-4", "didactique_francais",
        "Les travaux d'Emilia Ferreiro sur l'écriture inventée (écriture tâtonnée) ont montré que les jeunes enfants traversent des étapes dans leur compréhension du système d'écriture. Quelle affirmation est correcte ?",
        [
          { id: "a", label: "L'écriture inventée est une erreur pédagogique car elle fixe des orthographes fausses dans la mémoire de l'enfant" },
          { id: "b", label: "L'écriture inventée révèle le niveau de conceptualisation du système d'écriture par l'enfant et constitue une étape normale du développement" },
          { id: "c", label: "Seuls les enfants en difficulté passent par le stade de l'écriture inventée" },
          { id: "d", label: "L'écriture inventée n'est possible qu'en langue anglaise car le français est trop complexe" },
        ],
        "b",
        "Les travaux d'Emilia Ferreiro (psychogenèse de l'écrit) ont montré que les enfants passent par des étapes de conceptualisation du système d'écriture : stade pré-syllabique (les lettres ne correspondent pas aux sons), stade syllabique (une lettre par syllabe), stade syllabico-alphabétique (entre syllabique et alphabétique), stade alphabétique (une lettre par phonème). Ces étapes sont universelles et révèlent la compréhension progressive du principe alphabétique. L'écriture inventée n'est pas une erreur à corriger mais un indicateur diagnostique précieux pour l'enseignant, qui permet d'adapter son enseignement au niveau de chaque élève.",
        "Interdire l'écriture inventée de peur qu'elle ne fixe des erreurs. Les recherches montrent au contraire qu'elle développe la conscience phonologique et la compréhension du principe alphabétique.",
      ),
      vraiFaux(
        "v3j-ec2-5", "didactique_francais",
        "La copie à l'école primaire est un exercice purement mécanique de reproduction graphique, sans enjeu d'apprentissage orthographique ou de compréhension.",
        false,
        "La copie est bien plus qu'un exercice mécanique si elle est conçue comme un outil d'apprentissage. La copie active (ou copie intelligente) demande à l'élève de mémoriser des segments de texte (mots, groupes de mots) avant de les écrire, ce qui mobilise la mémoire orthographique. L'élève ne copie pas lettre par lettre mais par unités signifiantes, ce qui renforce la mémorisation de la forme orthographique des mots. La copie développe aussi la compréhension (on comprend mieux ce que l'on copie avec attention) et l'automatisation du geste graphique. Les programmes font de la copie un véritable exercice d'apprentissage, pas une tâche occupationnelle.",
        "Confondre copie mécanique (lettre par lettre, sans compréhension) et copie active (par segments mémorisés). Seule la copie active est un outil d'apprentissage efficace.",
      ),
      qcm(
        "v3j-ec2-6", "didactique_francais",
        "Qu'appelle-t-on les « écrits intermédiaires » dans la didactique de l'écriture au cycle 2 ?",
        [
          { id: "a", label: "Les textes écrits par l'enseignant pour modéliser l'écriture attendue" },
          { id: "b", label: "Les écrits de travail produits par les élèves (brouillons, listes, schémas, notes) qui accompagnent le processus d'écriture sans être des textes finalisés" },
          { id: "c", label: "Les textes photocopiés distribués aux élèves pour éviter la copie" },
          { id: "d", label: "Les évaluations écrites de mi-parcours" },
        ],
        "b",
        "Les écrits intermédiaires sont des écrits de travail qui ne sont pas destinés à être « mis au propre » ou évalués comme des productions finales. Ils incluent les brouillons (lieu d'élaboration et de ratures), les listes (inventaires de mots, d'idées, de personnages), les schémas (plans, cartes mentales), les notes de lecture, les essais d'écriture. Ces écrits jouent un rôle cognitif essentiel : ils aident l'élève à planifier, à organiser ses idées, à mémoriser. Dominique Bucheton a montré leur importance dans le processus d'apprentissage de l'écriture. L'enseignant doit valoriser ces écrits et les enseigner explicitement.",
        "Dévaloriser les écrits intermédiaires comme des productions inachevées ou insuffisantes. Ce sont des outils cognitifs essentiels qui soutiennent le processus d'écriture.",
      ),
      reponseCourte(
        "v3j-ec2-7", "didactique_francais",
        "Au cycle 2, les programmes prévoient une progression en production d'écrits : de la phrase à un type d'écrit plus long. Comment les programmes désignent-ils cette production d'écrit progressivement plus élaborée que les élèves doivent atteindre en fin de cycle 2 ?",
        ["texte court", "Texte court", "un texte court", "Un texte court", "textes courts", "Textes courts", "des textes courts", "Des textes courts", "le texte court", "Le texte court"],
        "Les programmes du cycle 2 prévoient une progression qui va de la phrase (CP) au texte court (CE1-CE2). En fin de cycle 2, les élèves doivent être capables de produire de manière autonome un texte court (une demi-page environ) cohérent, ponctué et orthographiquement correct dans ses parties les plus fréquentes. Cette progression est essentielle : on ne demande pas à un élève de CP d'écrire un récit complet, mais on construit progressivement les compétences nécessaires, de la phrase isolée au texte de quelques phrases articulées par des connecteurs.",
        "Brûler les étapes en demandant trop tôt des textes longs, ou au contraire, rester trop longtemps au niveau de la phrase sans aborder la production de textes courts articulés.",
      ),
      qcm(
        "v3j-ec2-8", "didactique_francais",
        "Les contraintes d'écriture inspirées de l'Oulipo (acrostiche, lipogramme, texte à la manière de...) sont parfois utilisées à l'école. Quel est leur principal intérêt didactique ?",
        [
          { id: "a", label: "Elles n'ont aucun intérêt pédagogique et relèvent du pur divertissement" },
          { id: "b", label: "Elles libèrent la créativité en fournissant un cadre structurant, réduisent l'angoisse de la page blanche et développent l'attention à la langue" },
          { id: "c", label: "Elles remplacent l'enseignement de l'orthographe" },
          { id: "d", label: "Elles ne sont adaptées qu'aux adultes et ne peuvent pas être transposées à l'école primaire" },
        ],
        "b",
        "Les contraintes d'écriture oulipiennes ont un réel intérêt didactique à l'école primaire. Le lipogramme (écrire sans une lettre donnée), l'acrostiche (les premières lettres de chaque vers forment un mot), le « texte à la manière de » (imiter la structure d'un texte modèle) fournissent un cadre qui libère paradoxalement la créativité : l'élève sait quoi faire et peut concentrer son énergie sur le comment. Ces contraintes développent aussi l'attention à la langue (choisir ses mots avec soin, jouer sur les sonorités) et le plaisir d'écrire. Elles constituent un excellent dispositif de mise en écriture, complémentaire des écrits fonctionnels et narratifs.",
        "Rejeter les contraintes oulipiennes comme de simples jeux sans valeur didactique. La contrainte formelle est un outil pédagogique reconnu qui développe la conscience linguistique et le plaisir d'écrire.",
      ),
      vraiFaux(
        "v3j-ec2-9", "didactique_francais",
        "Lors d'une séance de production d'écrits au cycle 2, l'enseignant doit intervenir le moins possible pendant que les élèves écrivent, afin de ne pas brider leur créativité et de favoriser leur autonomie.",
        false,
        "L'étayage de l'enseignant pendant la phase d'écriture est essentiel, surtout au cycle 2 où les élèves ne sont pas encore autonomes. L'enseignant circule, observe, relance les élèves bloqués (« De quoi voulais-tu parler ensuite ? »), aide à résoudre un problème orthographique (« Comment pourrais-tu vérifier l'orthographe de ce mot ? »), rappelle les critères de réussite. L'enjeu est d'aider sans faire à la place : l'enseignant questionne, oriente, fournit un outil (affichage, dictionnaire), mais laisse l'élève prendre les décisions. Cet étayage est d'autant plus crucial pour les élèves fragiles, qui se retrouvent souvent en échec sans accompagnement.",
        "Confondre étayage et « faire à la place ». Étayer, c'est fournir juste assez d'aide pour que l'élève puisse avancer seul, pas lui dicter la réponse.",
      ),
      reponseCourte(
        "v3j-ec2-10", "didactique_francais",
        "En évaluation de la production d'écrits au cycle 2, quels sont les trois grands critères que l'enseignant prend généralement en compte pour apprécier un texte d'élève ? Citez-en au moins deux.",
        ["lisibilité", "Lisibilité", "cohérence", "Cohérence", "correction", "Correction", "lisibilité et cohérence", "cohérence et correction", "lisibilité et correction", "lisibilité, cohérence, correction", "la lisibilité, la cohérence et la correction"],
        "L'évaluation d'un texte d'élève au cycle 2 s'appuie généralement sur trois grands critères. La lisibilité porte sur le geste graphique : l'écriture est-elle déchiffrable, les lettres sont-elles bien formées, l'espace entre les mots est-il respecté ? La cohérence porte sur le contenu et l'organisation du texte : le texte a-t-il du sens, les idées s'enchaînent-elles logiquement, la consigne est-elle respectée ? La correction linguistique porte sur l'orthographe, la grammaire et la syntaxe. L'enseignant doit évaluer ces trois dimensions séparément pour identifier les points forts et les axes de progrès de chaque élève, et éviter de tout ramener à l'orthographe.",
        "Réduire l'évaluation de l'écriture à la seule correction orthographique, en négligeant la lisibilité du tracé et la cohérence textuelle, qui sont aussi des compétences d'écriture à part entière.",
      ),
    ],
  }),
];

import { ExerciseRecord, RevisionSession } from "@/types/domain";

const createdAt = "2026-03-20T08:00:00.000Z";

type QuestionInput = Omit<
  ExerciseRecord,
  "subject" | "validation_status" | "source" | "is_published" | "created_at" | "updated_at"
>;

type SessionInput = Omit<RevisionSession, "questionCount">;

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
  level: string,
  instruction: string,
  choices: Array<{ id: string; label: string }>,
  value: string,
  explanation: string,
  commonMistake: string,
  access_tier: ExerciseRecord["access_tier"],
) {
  return question({
    id, subdomain, level, exercise_type: "qcm",
    instruction, support_text: null, choices,
    expected_answer: { mode: "single_choice", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    access_tier,
    topic_key: null, topic_label: null,
  });
}

function vraiFaux(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  level: string,
  instruction: string,
  value: boolean,
  explanation: string,
  commonMistake: string,
  access_tier: ExerciseRecord["access_tier"],
) {
  return question({
    id, subdomain, level, exercise_type: "vrai_faux",
    instruction, support_text: null,
    choices: [{ id: "true", label: "Vrai" }, { id: "false", label: "Faux" }],
    expected_answer: { mode: "boolean", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    access_tier,
    topic_key: null, topic_label: null,
  });
}

function reponseCourte(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  level: string,
  instruction: string,
  acceptableAnswers: string[],
  explanation: string,
  commonMistake: string,
  access_tier: ExerciseRecord["access_tier"],
  exercise_type: ExerciseRecord["exercise_type"] = "reponse_courte",
  support_text: string | null = null,
) {
  return question({
    id, subdomain, level, exercise_type,
    instruction, support_text, choices: null,
    expected_answer: { mode: "text", acceptableAnswers },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    access_tier,
    topic_key: null, topic_label: null,
  });
}

export const seriesV3BatchI: RevisionSession[] = [
  // ──────────────────────────────────────────────────────────────
  // Série 1 : Enseignement explicite de la grammaire
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-enseignement-grammaire-explicite",
    title: "Enseignement explicite de la grammaire à l'école primaire",
    summary: "Maîtriser la démarche explicite en grammaire : de l'observation à l'institutionnalisation, en passant par la manipulation et la terminologie officielle Éduscol 2021.",
    objective: "Connaître les principes didactiques de l'enseignement de la grammaire au cycle 2 et au cycle 3, et savoir justifier ses choix pédagogiques.",
    introduction: "L'enseignement de la grammaire à l'école primaire repose sur une démarche explicite structurée en étapes : observation d'un corpus, manipulation linguistique, formulation de la règle (institutionnalisation), puis entraînement systématique. Cette série interroge vos connaissances sur cette démarche, les progressions attendues et la terminologie officielle.",
    subdomain: "didactique_francais",
    topicKey: "enseignement_grammaire_explicite",
    topicLabel: "Enseignement explicite de la grammaire",
    level: "Intermediaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    estimatedMinutes: 14,
    access_tier: "free",
    recommendedOrder: 40,
    completionSummary: {
      skill: "Concevoir et justifier une séance de grammaire explicite conforme aux programmes",
      keyPoints: [
        "La démarche explicite suit quatre étapes : observation → manipulation → institutionnalisation → entraînement",
        "Au cycle 2, on travaille d'abord la nature des mots (classes grammaticales) avant d'aborder les fonctions au cycle 3",
        "La terminologie officielle (Éduscol 2021) utilise « verbe attributif » et non « verbe d'état », et classe le conditionnel parmi les temps de l'indicatif",
      ],
      retryAdvice: "Relisez les documents Éduscol 2021 sur la terminologie grammaticale et les guides « Pour enseigner la lecture et l'écriture ». Entraînez-vous à décrire les étapes d'une séance type.",
    },
    questions: [
      qcm(
        "v3i-ege-1", "didactique_francais", "Intermediaire",
        "Dans une démarche d'enseignement explicite de la grammaire, quelle est la première étape d'une séance portant sur une notion nouvelle ?",
        [
          { id: "a", label: "L'entraînement sur des exercices d'application" },
          { id: "b", label: "L'observation et le tri d'un corpus de phrases" },
          { id: "c", label: "La dictée de la règle à copier dans le cahier de leçons" },
          { id: "d", label: "L'évaluation diagnostique individuelle écrite" },
        ],
        "b",
        "La démarche explicite en grammaire commence toujours par l'observation d'un corpus de phrases soigneusement choisies par l'enseignant. Les élèves trient, comparent et manipulent ces phrases pour dégager des régularités. Ce n'est qu'ensuite que la règle est formulée collectivement (institutionnalisation), puis consolidée par l'entraînement. Commencer par la règle relèverait d'une démarche transmissive, moins efficace pour la construction des savoirs grammaticaux.",
        "Confondre la démarche explicite (inductive : du corpus vers la règle) avec une démarche transmissive (donner la règle d'abord, puis faire des exercices).",
        "free",
      ),
      vraiFaux(
        "v3i-ege-2", "didactique_francais", "Intermediaire",
        "Selon les programmes, au cycle 2, les élèves doivent maîtriser les fonctions grammaticales (sujet, complément d'objet, complément circonstanciel) avant d'étudier les classes de mots.",
        false,
        "C'est l'inverse : au cycle 2, la priorité est donnée à l'identification des classes de mots (nom, déterminant, adjectif, verbe, pronom). Les fonctions grammaticales (sujet, compléments) sont abordées progressivement au cycle 2 puis approfondies au cycle 3. La logique de progression va de la nature des mots vers leurs fonctions dans la phrase, car il faut d'abord savoir reconnaître un nom pour comprendre qu'il peut être sujet.",
        "Inverser la progression : croire que les fonctions sont enseignées avant les classes de mots, alors que les programmes prévoient explicitement l'ordre inverse.",
        "free",
      ),
      qcm(
        "v3i-ege-3", "didactique_francais", "Intermediaire",
        "Un enseignant prépare un corpus de phrases pour une séance sur le groupe nominal. Quelle est la meilleure pratique pour constituer ce corpus ?",
        [
          { id: "a", label: "Utiliser uniquement des phrases trouvées par les élèves dans leurs lectures" },
          { id: "b", label: "Mélanger des phrases données (construites par l'enseignant) et des phrases trouvées (tirées de textes lus en classe)" },
          { id: "c", label: "Utiliser exclusivement des phrases très longues et littéraires pour enrichir le vocabulaire" },
          { id: "d", label: "Donner une seule phrase exemple puis passer directement aux exercices" },
        ],
        "b",
        "Les recommandations didactiques préconisent de combiner des « phrases données » (construites par l'enseignant pour cibler précisément le fait de langue étudié, avec des cas réguliers et des contre-exemples) et des « phrases trouvées » (extraites de textes lus en classe, qui ancrent la grammaire dans des contextes authentiques). Les phrases données permettent de contrôler les variables, tandis que les phrases trouvées montrent la grammaire en usage réel.",
        "Se limiter à un seul type de phrases. Les phrases données seules manquent d'authenticité ; les phrases trouvées seules ne permettent pas de contrôler les variables didactiques.",
        "free",
      ),
      reponseCourte(
        "v3i-ege-4", "didactique_francais", "Intermediaire",
        "Dans la terminologie grammaticale officielle (Éduscol 2021), quel terme doit-on utiliser à la place de « verbe d'état » pour désigner des verbes comme « être », « sembler », « paraître » ?",
        ["verbe attributif", "Verbe attributif", "verbes attributifs", "Verbes attributifs"],
        "La terminologie officielle Éduscol 2021 abandonne l'appellation « verbe d'état » au profit de « verbe attributif ». Ce choix terminologique est plus précis car il décrit la fonction syntaxique de ces verbes : ils introduisent un attribut du sujet. L'enseignant du primaire doit utiliser cette terminologie dans ses séances pour être en conformité avec les programmes et éviter toute confusion lors des évaluations.",
        "Continuer à utiliser « verbe d'état » par habitude, alors que cette appellation n'est plus conforme à la terminologie officielle depuis 2021.",
        "free",
      ),
      qcm(
        "v3i-ege-5", "didactique_francais", "Intermediaire",
        "Dans une séance de grammaire, l'étape d'« institutionnalisation » consiste à :",
        [
          { id: "a", label: "Faire manipuler les phrases par substitution, déplacement ou suppression" },
          { id: "b", label: "Formuler collectivement la règle et la consigner dans le cahier de leçons" },
          { id: "c", label: "Proposer des exercices d'entraînement variés et progressifs" },
          { id: "d", label: "Évaluer les acquis des élèves par une dictée" },
        ],
        "b",
        "L'institutionnalisation est le moment où la classe, guidée par l'enseignant, formule explicitement la règle grammaticale dégagée lors des phases d'observation et de manipulation. Cette règle est ensuite consignée dans le cahier de leçons sous une forme claire et mémorisable. C'est une étape charnière : elle transforme les observations empiriques des élèves en savoir stabilisé, avant la phase d'entraînement qui consolidera l'apprentissage.",
        "Confondre l'institutionnalisation (formulation de la règle) avec la phase de manipulation (qui précède) ou la phase d'entraînement (qui suit).",
        "free",
      ),
      vraiFaux(
        "v3i-ege-6", "didactique_francais", "Intermediaire",
        "Selon la terminologie officielle Éduscol 2021, le conditionnel est considéré comme un mode à part entière, distinct de l'indicatif.",
        false,
        "La terminologie Éduscol 2021 classe le conditionnel parmi les temps de l'indicatif, et non comme un mode séparé. C'est un changement important par rapport à la grammaire traditionnelle qui distinguait un « mode conditionnel ». L'enseignant doit intégrer cette évolution dans sa pratique : on parlera de « conditionnel présent » et « conditionnel passé » comme temps de l'indicatif, à côté du présent, de l'imparfait, du futur simple, etc.",
        "Considérer le conditionnel comme un mode autonome, par habitude de la grammaire scolaire traditionnelle, alors que la terminologie officielle l'intègre désormais à l'indicatif.",
        "free",
      ),
      qcm(
        "v3i-ege-7", "didactique_francais", "Intermediaire",
        "Le tri de phrases est une activité centrale dans l'enseignement de la grammaire. Quel est son principal intérêt didactique ?",
        [
          { id: "a", label: "Il permet aux élèves de mémoriser les phrases du corpus par cœur" },
          { id: "b", label: "Il oblige les élèves à comparer les phrases, à identifier des critères et à justifier leurs classements, ce qui construit la notion grammaticale" },
          { id: "c", label: "Il sert uniquement à vérifier les acquis des élèves en début de séance" },
          { id: "d", label: "Il remplace l'institutionnalisation et rend la leçon inutile" },
        ],
        "b",
        "Le tri de phrases est un outil didactique puissant car il engage les élèves dans une activité de comparaison et de catégorisation. En cherchant des critères de classement, les élèves construisent eux-mêmes les distinctions grammaticales (par exemple : phrases avec/sans verbe attributif, phrases affirmatives/négatives). Les échanges sur les critères de tri et les justifications permettent de faire émerger les propriétés du fait de langue étudié, préparant ainsi l'institutionnalisation.",
        "Penser que le tri est une simple activité occupationnelle, sans voir qu'il constitue le cœur de la démarche d'observation-manipulation qui permet aux élèves de construire activement les notions grammaticales.",
        "free",
      ),
      reponseCourte(
        "v3i-ege-8", "didactique_francais", "Intermediaire",
        "En didactique de la grammaire, on distingue deux niveaux d'analyse linguistique. L'un porte sur les relations entre les mots à l'intérieur de la phrase (grammaire de phrase), l'autre porte sur les relations entre les phrases dans un texte. Comment appelle-t-on ce second niveau ?",
        ["grammaire de texte", "Grammaire de texte", "la grammaire de texte", "La grammaire de texte"],
        "La grammaire de texte s'intéresse aux phénomènes linguistiques qui assurent la cohérence et la cohésion d'un texte : reprises anaphoriques (pronoms, substituts), connecteurs logiques et temporels, progression thématique, concordance des temps. Elle complète la grammaire de phrase qui analyse les relations syntaxiques à l'intérieur d'une phrase unique (sujet-verbe, compléments, expansions du nom). À l'école primaire, les deux niveaux sont travaillés, notamment en lien avec la production d'écrits.",
        "Ignorer la grammaire de texte ou la confondre avec la grammaire de phrase. Au CRPE, il est essentiel de montrer qu'on connaît les deux niveaux d'analyse et qu'on sait les articuler dans l'enseignement.",
        "free",
      ),
      vraiFaux(
        "v3i-ege-9", "didactique_francais", "Intermediaire",
        "La dictée est uniquement un outil d'évaluation et ne peut pas servir de support à l'enseignement de la grammaire.",
        false,
        "La dictée peut être utilisée comme un véritable outil d'apprentissage grammatical, et pas seulement comme évaluation. La dictée négociée (les élèves discutent de l'orthographe entre eux), la dictée sans erreur (l'élève peut consulter le texte), la phrase dictée du jour (discussion collective des graphies proposées) sont autant de dispositifs où la dictée sert de support à l'enseignement explicite de la grammaire et de l'orthographe. Ces formes de dictée permettent de verbaliser les raisonnements orthographiques et grammaticaux.",
        "Réduire la dictée à un simple outil d'évaluation sommative, alors que les programmes et les recherches didactiques mettent en avant de nombreuses formes de dictées d'apprentissage (négociée, sans erreur, phrase du jour).",
        "free",
      ),
      qcm(
        "v3i-ege-10", "didactique_francais", "Intermediaire",
        "Lors d'une correction collective après un exercice de grammaire, quelle posture de l'enseignant est la plus efficace selon les principes de l'enseignement explicite ?",
        [
          { id: "a", label: "Donner directement la bonne réponse pour ne pas perdre de temps" },
          { id: "b", label: "Demander aux élèves de justifier leurs réponses en explicitant leur raisonnement grammatical, puis valider ou corriger collectivement" },
          { id: "c", label: "Interroger uniquement les élèves qui ont trouvé la bonne réponse" },
          { id: "d", label: "Faire corriger les copies par un autre élève sans retour collectif" },
        ],
        "b",
        "La correction collective est un moment didactique essentiel dans l'enseignement explicite. L'enseignant doit amener les élèves à verbaliser leur raisonnement : « Comment as-tu fait pour trouver ? Quel indice t'a aidé ? Quelle règle as-tu appliquée ? ». Cette explicitation permet d'identifier les procédures efficaces et les erreurs de raisonnement. Les erreurs sont traitées comme des leviers d'apprentissage, et non sanctionnées. Ce retour métacognitif renforce la compréhension de tous les élèves.",
        "Se contenter de donner les réponses correctes sans faire verbaliser les raisonnements, ce qui prive les élèves du retour métacognitif indispensable à l'apprentissage explicite.",
        "free",
      ),
    ],
  }),

  // ──────────────────────────────────────────────────────────────
  // Série 2 : Didactique de la production d'écrits
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-production-ecrits",
    title: "Didactique de la production d'écrits à l'école primaire",
    summary: "Connaître les fondements didactiques de l'enseignement de l'écriture : planification, mise en texte, révision, et les dispositifs qui permettent aux élèves de progresser en production d'écrits.",
    objective: "Savoir concevoir, conduire et justifier des séances de production d'écrits conformes aux programmes du cycle 2 et du cycle 3.",
    introduction: "La production d'écrits est un domaine central de l'enseignement du français à l'école primaire. Elle mobilise simultanément des compétences linguistiques (orthographe, grammaire, vocabulaire), textuelles (cohérence, cohésion) et pragmatiques (adaptation au destinataire, au type d'écrit). Cette série vous interroge sur les principes didactiques fondamentaux et les dispositifs recommandés par la recherche et les programmes.",
    subdomain: "didactique_francais",
    topicKey: "production_ecrits",
    topicLabel: "Didactique de la production d'écrits",
    level: "Intermediaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    estimatedMinutes: 14,
    access_tier: "free",
    recommendedOrder: 41,
    completionSummary: {
      skill: "Concevoir des séquences de production d'écrits intégrant planification, mise en texte et révision",
      keyPoints: [
        "L'écriture est un processus en trois phases : planification (projet, plan), mise en texte (rédaction), révision (relecture, amélioration)",
        "Le brouillon est un outil d'apprentissage à part entière, pas un simple premier jet à recopier au propre",
        "Le lien lecture-écriture est essentiel : on lit pour nourrir l'écriture, on écrit pour mieux comprendre les textes lus",
      ],
      retryAdvice: "Relisez les attendus des programmes pour la production d'écrits aux cycles 2 et 3, et les guides Éduscol sur l'écriture. Entraînez-vous à décrire une séquence complète avec ses étapes.",
    },
    questions: [
      qcm(
        "v3i-pe-1", "didactique_francais", "Intermediaire",
        "Selon les modèles didactiques de l'écriture, le processus rédactionnel comprend trois grandes opérations. Lesquelles ?",
        [
          { id: "a", label: "Copie, dictée, rédaction libre" },
          { id: "b", label: "Planification, mise en texte, révision" },
          { id: "c", label: "Grammaire, orthographe, vocabulaire" },
          { id: "d", label: "Lecture silencieuse, lecture à voix haute, écriture" },
        ],
        "b",
        "Le modèle de Hayes et Flower (repris par les programmes) identifie trois opérations cognitives dans la production d'écrits : la planification (concevoir le projet d'écriture, organiser ses idées, élaborer un plan), la mise en texte (transformer les idées en langage écrit en gérant les contraintes linguistiques et textuelles) et la révision (relire, évaluer et améliorer le texte produit). Ces trois opérations ne sont pas linéaires mais récursives : le scripteur peut revenir à la planification en cours de rédaction.",
        "Confondre les opérations du processus rédactionnel avec les sous-domaines du français (grammaire, orthographe, vocabulaire) qui sont des outils au service de l'écriture, mais pas le processus lui-même.",
        "free",
      ),
      vraiFaux(
        "v3i-pe-2", "didactique_francais", "Intermediaire",
        "En didactique de l'écriture, le brouillon doit être considéré uniquement comme un premier jet destiné à être recopié au propre sans modifications.",
        false,
        "Le brouillon est un outil d'apprentissage à part entière. La recherche didactique (Claudine Garcia-Debanc, Dominique Bucheton) montre que le brouillon est le lieu où s'élabore la pensée et où le scripteur travaille son texte. L'enseignant doit encourager les élèves à raturer, ajouter, déplacer, supprimer des passages sur leur brouillon. Un brouillon « propre » recopié tel quel est le signe d'un brouillon qui n'a pas joué son rôle. Apprendre à se servir du brouillon comme outil de travail est un objectif d'apprentissage explicite.",
        "Exiger des élèves un brouillon propre et linéaire, ce qui revient à en faire une simple copie préparatoire au lieu d'un espace de travail et de réflexion sur le texte.",
        "free",
      ),
      qcm(
        "v3i-pe-3", "didactique_francais", "Intermediaire",
        "Un enseignant de CE2 souhaite travailler la production d'écrits narratifs. Quel dispositif est le plus pertinent pour aider les élèves à planifier leur texte ?",
        [
          { id: "a", label: "Donner une liste de mots à inclure obligatoirement dans le texte" },
          { id: "b", label: "Faire élaborer collectivement une trame narrative (situation initiale, élément perturbateur, péripéties, résolution, situation finale)" },
          { id: "c", label: "Laisser les élèves écrire librement sans aucune consigne de structure" },
          { id: "d", label: "Faire copier un texte modèle que les élèves transformeront ensuite" },
        ],
        "b",
        "L'élaboration collective d'une trame narrative est un outil de planification efficace. Elle permet aux élèves de s'approprier la structure du récit (schéma narratif) et de prévoir le contenu de leur texte avant de se lancer dans la rédaction. Cette étape réduit la surcharge cognitive lors de la mise en texte, car l'élève peut se concentrer sur le « comment écrire » plutôt que sur le « quoi écrire ». L'enseignant guide cette planification tout en laissant de la liberté dans les choix narratifs.",
        "Penser que la planification bride la créativité des élèves. En réalité, elle la libère en déchargeant la mémoire de travail de l'organisation globale du texte.",
        "free",
      ),
      reponseCourte(
        "v3i-pe-4", "didactique_francais", "Intermediaire",
        "En production d'écrits, comment appelle-t-on les indicateurs précis donnés aux élèves avant l'écriture, qui leur permettent de savoir ce que l'on attend de leur texte et de vérifier eux-mêmes s'ils ont réussi ?",
        ["critères de réussite", "Critères de réussite", "les critères de réussite", "Les critères de réussite", "criteres de reussite", "Criteres de reussite"],
        "Les critères de réussite (ou « grille de relecture ») sont des indicateurs explicites que l'enseignant construit avec ou pour les élèves avant la tâche d'écriture. Ils portent sur différents niveaux du texte : respect de la consigne et du type d'écrit, cohérence narrative ou argumentative, utilisation de connecteurs, correction orthographique et grammaticale, qualité du vocabulaire. Ces critères servent à la fois de guide pendant l'écriture et d'outil d'auto-évaluation lors de la révision.",
        "Confondre « critères de réussite » avec « consigne d'écriture ». La consigne dit quoi écrire ; les critères de réussite précisent les attendus qualitatifs du texte.",
        "free",
      ),
      vraiFaux(
        "v3i-pe-5", "didactique_francais", "Intermediaire",
        "L'écriture collaborative (écriture à plusieurs) est un dispositif recommandé car les échanges entre élèves rendent visibles les opérations cognitives habituellement invisibles de la production d'écrits.",
        true,
        "L'écriture collaborative est un dispositif didactique particulièrement efficace. Quand des élèves écrivent ensemble, ils sont obligés de verbaliser leurs choix : « Ici, on met un point parce que... », « On devrait plutôt utiliser le mot... », « Il faut ajouter un connecteur pour que le lecteur comprenne... ». Ces échanges rendent explicites les opérations cognitives de planification, de mise en texte et de révision qui restent intériorisées en écriture individuelle. Le conflit sociocognitif qui en résulte est un puissant moteur d'apprentissage.",
        "Sous-estimer l'écriture collaborative en pensant qu'elle empêche l'évaluation individuelle. C'est un dispositif d'apprentissage, pas d'évaluation : il rend visibles les processus rédactionnels.",
        "free",
      ),
      qcm(
        "v3i-pe-6", "didactique_francais", "Intermediaire",
        "Parmi les cinq types d'écrits suivants, lequel a pour fonction principale de convaincre le destinataire en défendant une thèse ?",
        [
          { id: "a", label: "Le texte narratif" },
          { id: "b", label: "Le texte descriptif" },
          { id: "c", label: "Le texte argumentatif" },
          { id: "d", label: "Le texte injonctif" },
        ],
        "c",
        "Le texte argumentatif a pour visée de convaincre ou persuader le lecteur en soutenant une thèse à l'aide d'arguments et d'exemples. Il se distingue du texte narratif (raconter), descriptif (décrire), explicatif (faire comprendre) et injonctif (faire agir). À l'école primaire, les élèves rencontrent et produisent progressivement ces différents types d'écrits. La capacité à identifier la visée d'un texte et à produire un écrit adapté fait partie des compétences travaillées en production d'écrits.",
        "Confondre le texte argumentatif avec le texte explicatif. Le texte explicatif vise à faire comprendre un phénomène (neutralité), tandis que le texte argumentatif vise à convaincre (prise de position).",
        "free",
      ),
      reponseCourte(
        "v3i-pe-7", "didactique_francais", "Intermediaire",
        "En didactique de l'écriture, quel terme désigne l'aide apportée par l'enseignant pendant que les élèves écrivent (reformulation, questionnement, suggestion), qui sera progressivement retirée à mesure que l'élève gagne en autonomie ?",
        ["étayage", "Étayage", "l'étayage", "L'étayage", "etayage", "Etayage", "l'etayage", "L'etayage"],
        "L'étayage (concept de Bruner) désigne l'ensemble des interventions de l'enseignant pour soutenir l'élève dans une tâche qu'il ne peut pas encore réaliser seul. En production d'écrits, l'étayage prend des formes variées : reformuler l'idée de l'élève pour l'aider à la mettre en mots, poser des questions pour relancer l'écriture, suggérer un connecteur, rappeler un critère de réussite. L'objectif est de retirer progressivement cet étayage (« désétayage ») pour que l'élève devienne un scripteur autonome.",
        "Confondre étayage et correction. L'étayage intervient pendant l'écriture pour accompagner le processus ; la correction intervient après, sur le produit fini.",
        "free",
      ),
      vraiFaux(
        "v3i-pe-8", "didactique_francais", "Intermediaire",
        "Le lien lecture-écriture est à sens unique : on lit pour nourrir l'écriture, mais l'écriture ne contribue pas à améliorer les compétences en lecture.",
        false,
        "Le lien lecture-écriture est bidirectionnel. On lit pour nourrir l'écriture : la lecture fournit des modèles de textes, du vocabulaire, des structures syntaxiques, des connaissances sur les genres. Mais on écrit aussi pour mieux lire : la pratique de l'écriture développe la conscience de la structure des textes, de l'intention de l'auteur, des choix stylistiques. Un élève qui a écrit un récit comprend mieux comment fonctionne un récit quand il en lit un. Les programmes insistent sur cette articulation constante entre lecture et écriture.",
        "Considérer le lien lecture-écriture comme à sens unique (lire pour écrire), en ignorant que l'écriture est aussi un levier puissant pour améliorer la compréhension en lecture.",
        "free",
      ),
      qcm(
        "v3i-pe-9", "didactique_francais", "Intermediaire",
        "La phase de révision d'un texte par les élèves est souvent difficile. Quel outil est le plus adapté pour guider cette relecture ?",
        [
          { id: "a", label: "Un dictionnaire de langue uniquement" },
          { id: "b", label: "Une grille de relecture construite à partir des critères de réussite" },
          { id: "c", label: "Le texte d'un autre élève pour comparaison libre" },
          { id: "d", label: "Un chronomètre pour limiter le temps de relecture" },
        ],
        "b",
        "La grille de relecture, construite à partir des critères de réussite définis avant l'écriture, est l'outil le plus efficace pour guider la révision. Elle permet à l'élève de vérifier point par point si son texte répond aux attendus : « Mon texte a-t-il un titre ? Ai-je utilisé des connecteurs temporels ? Mes phrases commencent-elles par une majuscule ? ». Cet outil structure la révision, qui est la phase la plus difficile pour les jeunes scripteurs car elle nécessite de prendre du recul sur son propre texte.",
        "Réduire la révision à la seule correction orthographique, en oubliant les dimensions textuelles (cohérence, cohésion, structure) et pragmatiques (adaptation au destinataire) qui figurent aussi dans les critères de réussite.",
        "free",
      ),
      qcm(
        "v3i-pe-10", "didactique_francais", "Intermediaire",
        "En production d'écrits, les connecteurs logiques et temporels jouent un rôle essentiel. Lequel des dispositifs suivants est le plus pertinent pour enseigner leur usage aux élèves de cycle 3 ?",
        [
          { id: "a", label: "Faire apprendre par cœur une liste de connecteurs classés par catégorie" },
          { id: "b", label: "Observer leur emploi dans des textes lus, les classer collectivement, puis les réinvestir dans des productions guidées" },
          { id: "c", label: "Interdire l'usage de « et » et « puis » pour forcer l'utilisation de connecteurs variés" },
          { id: "d", label: "Corriger les connecteurs mal employés dans les copies sans retour explicite" },
        ],
        "b",
        "La démarche la plus efficace articule lecture et écriture : on repère d'abord les connecteurs dans des textes lus (observation en contexte), on les classe selon leur valeur (addition, opposition, cause, conséquence, temps), puis on les réinvestit dans des productions guidées (textes à compléter, puis écriture avec consigne d'utiliser certains connecteurs). Cette approche donne du sens aux connecteurs en les inscrivant dans une pratique authentique. Faire mémoriser une liste isolée ne garantit pas le transfert en écriture.",
        "Croire qu'une liste mémorisée de connecteurs suffit pour que les élèves les utilisent correctement en production. L'apprentissage en contexte (lecture + écriture guidée) est bien plus efficace.",
        "free",
      ),
    ],
  }),

  // ──────────────────────────────────────────────────────────────
  // Série 3 : Fluence et lecture à voix haute
  // ──────────────────────────────────────────────────────────────
  buildSession({
    id: "fr-v3-serie-fluence-lecture",
    title: "Fluence et lecture à voix haute",
    summary: "Maîtriser les enjeux didactiques de la fluence en lecture : définition, évaluation, seuils attendus, activités de remédiation, et articulation avec la compréhension.",
    objective: "Connaître les fondements scientifiques et didactiques de l'enseignement de la fluence et savoir concevoir des activités pour la développer.",
    introduction: "La fluence en lecture est la capacité à lire un texte avec exactitude, rapidité et expression. Elle constitue un indicateur fiable du niveau de lecture des élèves et un prédicteur de la compréhension. Cette série vous interroge sur la définition de la fluence, ses composantes, les seuils attendus, les outils de mesure et les activités didactiques pour la développer.",
    subdomain: "didactique_francais",
    topicKey: "fluence_lecture",
    topicLabel: "Fluence et lecture à voix haute",
    level: "Intermediaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    estimatedMinutes: 14,
    access_tier: "premium",
    recommendedOrder: 42,
    completionSummary: {
      skill: "Évaluer et développer la fluence en lecture des élèves du cycle 2 au cycle 3",
      keyPoints: [
        "La fluence se définit par trois composantes : la vitesse (nombre de mots lus par minute), la précision (exactitude du décodage) et la prosodie (respect de l'intonation et de la ponctuation)",
        "Le seuil de 50 MCLM (mots correctement lus par minute) en fin de CP est un repère fondamental pour détecter les élèves en difficulté",
        "L'automatisation du décodage est une condition nécessaire à la compréhension : tant que le décodage mobilise trop de ressources cognitives, la compréhension est compromise",
      ],
      retryAdvice: "Relisez les guides Éduscol « Pour enseigner la lecture et l'écriture au CP » et les travaux de Cognisciences sur la fluence. Mémorisez les seuils MCLM par niveau et les activités de remédiation recommandées.",
    },
    questions: [
      qcm(
        "v3i-fl-1", "didactique_francais", "Intermediaire",
        "La fluence en lecture se définit par trois composantes. Lesquelles ?",
        [
          { id: "a", label: "Déchiffrage, compréhension, mémorisation" },
          { id: "b", label: "Vitesse, précision, prosodie" },
          { id: "c", label: "Vocabulaire, syntaxe, inférence" },
          { id: "d", label: "Articulation, volume, rythme" },
        ],
        "b",
        "La fluence en lecture repose sur trois composantes complémentaires : la vitesse (nombre de mots lus par minute, qui reflète le degré d'automatisation du décodage), la précision (exactitude de la lecture, c'est-à-dire le nombre de mots correctement lus) et la prosodie (respect de l'intonation, des pauses liées à la ponctuation, de l'expressivité). Un lecteur fluent lit vite, sans erreur, et avec l'expression appropriée. Ces trois composantes sont indissociables pour une lecture de qualité.",
        "Oublier la prosodie et réduire la fluence à la seule vitesse de lecture. La fluence n'est pas un simple chronomètre : un élève qui lit vite mais de façon monotone, sans respecter la ponctuation, n'est pas fluent.",
        "premium",
      ),
      reponseCourte(
        "v3i-fl-2", "didactique_francais", "Intermediaire",
        "Quel est le seuil de fluence attendu en fin de CP, exprimé en MCLM (mots correctement lus par minute), qui sert de repère pour identifier les élèves en difficulté ?",
        ["50", "50 MCLM", "50 mots", "50 mots correctement lus par minute"],
        "Le seuil de 50 MCLM (mots correctement lus par minute) en fin de CP est un repère fondamental issu des travaux de Cognisciences et repris par les évaluations nationales. En dessous de ce seuil, l'élève est considéré comme en difficulté de lecture et nécessite une prise en charge spécifique. Ce seuil correspond au niveau minimal pour que le décodage soit suffisamment automatisé afin de libérer des ressources cognitives pour la compréhension. En fin de CE1, le seuil attendu est d'environ 70 MCLM.",
        "Confondre le nombre de mots lus (y compris les erreurs) avec le nombre de mots correctement lus (MCLM). C'est la précision qui compte, pas la seule vitesse brute.",
        "premium",
      ),
      vraiFaux(
        "v3i-fl-3", "didactique_francais", "Intermediaire",
        "L'automatisation du décodage est une condition nécessaire mais non suffisante à la compréhension en lecture.",
        true,
        "Cette affirmation est au cœur de la didactique de la lecture. Tant que le décodage n'est pas automatisé, l'élève consacre l'essentiel de ses ressources cognitives (mémoire de travail) au déchiffrage des mots, et il ne lui reste plus assez de ressources pour construire le sens du texte. L'automatisation libère la mémoire de travail pour les opérations de compréhension (inférences, mise en relation, construction d'un modèle mental). Cependant, l'automatisation seule ne suffit pas : un élève peut décoder parfaitement sans comprendre, s'il manque de vocabulaire ou de connaissances sur le monde.",
        "Croire que l'automatisation du décodage suffit à garantir la compréhension. C'est une condition nécessaire (on ne comprend pas bien si l'on déchiffre péniblement), mais non suffisante (vocabulaire, connaissances, stratégies de compréhension sont aussi indispensables).",
        "premium",
      ),
      qcm(
        "v3i-fl-4", "didactique_francais", "Intermediaire",
        "Parmi les activités suivantes, laquelle est la plus recommandée par la recherche pour améliorer la fluence en lecture ?",
        [
          { id: "a", label: "La lecture silencieuse autonome prolongée" },
          { id: "b", label: "La lecture répétée d'un même texte court avec feedback de l'enseignant" },
          { id: "c", label: "La copie intégrale du texte à lire" },
          { id: "d", label: "L'apprentissage par cœur du texte sans le lire" },
        ],
        "b",
        "La lecture répétée (repeated reading) est le dispositif dont l'efficacité est la mieux documentée par la recherche pour améliorer la fluence. Le principe est simple : l'élève relit plusieurs fois un même texte court (50 à 200 mots) jusqu'à atteindre un seuil de fluidité satisfaisant. Le feedback de l'enseignant (ou d'un pair tuteur) est essentiel pour corriger les erreurs et améliorer la prosodie. Ce dispositif développe à la fois la vitesse, la précision et l'expressivité, et ses effets se transfèrent partiellement à de nouveaux textes.",
        "Penser que la lecture silencieuse prolongée suffit pour développer la fluence. La recherche montre que c'est la lecture orale répétée avec feedback qui est la plus efficace, car elle permet de corriger les erreurs et d'améliorer la prosodie.",
        "premium",
      ),
      reponseCourte(
        "v3i-fl-5", "didactique_francais", "Intermediaire",
        "Quel est le nom du test de fluence développé par le laboratoire Cognisciences de Grenoble, largement utilisé dans les écoles françaises pour évaluer la fluence de lecture ?",
        ["ELFE", "E.L.Fe", "test ELFE", "Test ELFE", "Évaluation de la Lecture en FluencE", "elfe", "test elfe"],
        "Le test E.L.Fe (Évaluation de la Lecture en FluencE), développé par le laboratoire Cognisciences de l'Université de Grenoble, est l'outil de référence en France pour évaluer la fluence de lecture. Il propose un texte étalonné que l'élève lit à voix haute pendant une minute. L'enseignant note le nombre de mots correctement lus par minute (MCLM) et compare le résultat aux normes par niveau scolaire. Cet outil permet d'identifier les élèves en difficulté et de mesurer leurs progrès au fil de l'année.",
        "Confondre le test de fluence E.L.Fe avec d'autres outils d'évaluation de la lecture (comme les évaluations nationales, qui incluent une épreuve de fluence mais ne sont pas un outil de suivi régulier).",
        "premium",
      ),
      vraiFaux(
        "v3i-fl-6", "didactique_francais", "Intermediaire",
        "Au cycle 2, l'enseignement des correspondances graphèmes-phonèmes est la base de l'apprentissage du décodage, et il doit être systématique et explicite.",
        true,
        "L'enseignement systématique et explicite des correspondances graphèmes-phonèmes (CGP) est le socle de l'apprentissage du décodage au cycle 2, conformément aux programmes et aux recommandations scientifiques (rapport Dehaene, guide « Pour enseigner la lecture et l'écriture au CP »). « Systématique » signifie que toutes les correspondances sont enseignées selon une progression structurée ; « explicite » signifie que chaque correspondance est nommée, montrée, pratiquée, et non laissée à la découverte implicite de l'élève. Cette approche est validée par les sciences cognitives comme la plus efficace pour tous les élèves, en particulier les plus fragiles.",
        "Penser qu'une approche globale ou semi-globale suffit. La recherche internationale converge : l'enseignement systématique et explicite des CGP est le plus efficace pour apprendre à décoder.",
        "premium",
      ),
      qcm(
        "v3i-fl-7", "didactique_francais", "Intermediaire",
        "Quelle est la différence fondamentale entre le déchiffrage et la reconnaissance directe des mots ?",
        [
          { id: "a", label: "Le déchiffrage est plus rapide que la reconnaissance directe" },
          { id: "b", label: "Le déchiffrage procède par conversion graphème-phonème (voie indirecte), tandis que la reconnaissance directe accède au mot mémorisé dans le lexique mental (voie directe)" },
          { id: "c", label: "La reconnaissance directe ne fonctionne que pour les mots courts" },
          { id: "d", label: "Le déchiffrage est réservé aux lecteurs experts" },
        ],
        "b",
        "Le modèle à double voie (Coltheart) distingue deux procédures de lecture : la voie indirecte (déchiffrage) où le lecteur convertit chaque graphème en phonème puis assemble les sons pour reconstituer le mot oral, et la voie directe (reconnaissance globale) où le mot est identifié instantanément par appariement avec sa forme stockée dans le lexique orthographique mental. Le lecteur débutant utilise principalement le déchiffrage ; à force de rencontrer les mêmes mots, il les mémorise et passe progressivement à la reconnaissance directe, ce qui accélère la lecture et libère des ressources pour la compréhension.",
        "Croire que le déchiffrage est une « mauvaise » stratégie à abandonner au plus vite. Le déchiffrage est le mécanisme fondamental par lequel les mots entrent dans le lexique orthographique : c'est en déchiffrant un mot plusieurs fois qu'on finit par le reconnaître directement.",
        "premium",
      ),
      vraiFaux(
        "v3i-fl-8", "didactique_francais", "Intermediaire",
        "La lecture à voix haute est un exercice utile uniquement pour évaluer la fluence et n'a pas d'intérêt pour la compréhension.",
        false,
        "La lecture à voix haute a de multiples intérêts didactiques au-delà de l'évaluation de la fluence. Elle permet de travailler la prosodie (qui reflète et renforce la compréhension : bien lire un texte à voix haute suppose de l'avoir compris), de partager un texte avec un auditoire (situation de communication authentique), et de développer des compétences orales. La mise en voix d'un texte (théâtre, poésie, lecture offerte préparée) est aussi un puissant levier de motivation et de compréhension fine, car l'élève doit interpréter le texte pour le restituer.",
        "Réduire la lecture à voix haute à une simple activité d'évaluation. C'est aussi un outil d'apprentissage et de compréhension, particulièrement quand elle est préparée et investie d'un enjeu de communication.",
        "premium",
      ),
      qcm(
        "v3i-fl-9", "didactique_francais", "Intermediaire",
        "Les évaluations nationales de début de CE1 et de début de 6e incluent une épreuve de fluence. Quel est le principal objectif de cette épreuve dans le dispositif d'évaluation ?",
        [
          { id: "a", label: "Classer les élèves du meilleur au moins bon lecteur" },
          { id: "b", label: "Repérer les élèves dont la fluence est insuffisante pour permettre une compréhension autonome, afin de mettre en place un accompagnement ciblé" },
          { id: "c", label: "Évaluer la capacité des élèves à lire silencieusement" },
          { id: "d", label: "Mesurer la qualité de l'enseignement dispensé par le professeur" },
        ],
        "b",
        "L'épreuve de fluence dans les évaluations nationales vise à identifier les élèves dont le décodage n'est pas suffisamment automatisé pour leur permettre de comprendre seuls un texte. En repérant précocement ces élèves (dès le début de CE1), l'institution permet aux enseignants de mettre en place un accompagnement personnalisé : ateliers de lecture répétée, groupes de besoin, aide du RASED. L'objectif n'est ni de classer les élèves ni d'évaluer les enseignants, mais de déclencher une aide appropriée.",
        "Percevoir l'épreuve de fluence comme un outil de classement ou de sanction, alors qu'elle est conçue comme un outil de repérage pour déclencher une aide adaptée.",
        "premium",
      ),
      reponseCourte(
        "v3i-fl-10", "didactique_francais", "Intermediaire",
        "Citez une activité scolaire, particulièrement motivante pour les élèves, qui permet de travailler la fluence et la prosodie en donnant un objectif de communication authentique à la lecture à voix haute.",
        ["le théâtre", "théâtre", "Théâtre", "Le théâtre", "la mise en voix", "mise en voix", "lecture théâtralisée", "théâtralisation", "le théâtre à l'école", "lecture à voix haute théâtralisée"],
        "Le théâtre (ou la mise en voix théâtralisée) est une activité particulièrement efficace pour travailler la fluence et la prosodie. L'élève doit lire et relire son texte (lecture répétée) pour le mémoriser et le restituer avec expressivité devant un public (prosodie). La situation de représentation donne un sens authentique à la lecture à voix haute : on lit bien parce qu'on veut être compris et apprécié par le public. D'autres activités comme la lecture offerte préparée, la lecture de poèmes ou la mise en voix de dialogues poursuivent les mêmes objectifs.",
        "Ne citer que des activités sans enjeu de communication (lire à voix haute pour le maître uniquement), en oubliant les dispositifs à visée artistique et communicative qui motivent les élèves et donnent du sens à la fluence.",
        "premium",
      ),
    ],
  }),
];

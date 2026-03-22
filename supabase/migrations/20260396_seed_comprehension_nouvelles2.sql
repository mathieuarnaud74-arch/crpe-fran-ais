-- ============================================================
-- Migration : 2 séries Compréhension de texte (20 exercices)
-- Séries : comp_genres_litteraires, comp_chronologie_narration
-- UUID prefixes : e4010000, e4020000
-- NOTE: Version 20260370 (20260369 already taken by sujet_blanc_3)
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Les genres littéraires : identification et caractéristiques
-- Topic : comp_genres_litteraires
-- UUID prefix : e4010000
-- 3 Facile + 4 Intermediaire + 3 Difficile
-- Mix : 7 qcm + 3 vrai_faux
-- access_tier : free
-- ============================================================

-- Q1 — Facile — QCM — Identifier le genre d''un extrait narratif court
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Facile',
  'qcm',
  'Lisez l''extrait suivant et identifiez le genre littéraire auquel il appartient.',
  'Il était une fois, dans un royaume lointain, une jeune fille qui vivait auprès de sa marâtre. Chaque jour, elle devait accomplir les tâches les plus ingrates, et chaque soir, elle s''asseyait près de l''âtre en rêvant d''un monde meilleur.',
  '[{"id":"a","label":"Le roman réaliste"},{"id":"b","label":"La nouvelle fantastique"},{"id":"c","label":"Le conte merveilleux"},{"id":"d","label":"La fable"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''extrait présente les marqueurs caractéristiques du conte merveilleux : la formule d''ouverture « Il était une fois », un cadre spatio-temporel indéterminé (« un royaume lointain »), des personnages archétypaux (la marâtre, la jeune fille). Selon les programmes d''Éduscol pour le cycle 3, les élèves doivent savoir identifier les genres littéraires à partir d''indices textuels récurrents.',
  'Confondre le conte merveilleux avec la fable, alors que la fable met en scène des animaux personnifiés et comporte une morale explicite, ce qui n''est pas le cas ici.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Reconnaître le genre théâtral
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Facile',
  'qcm',
  'Quel élément permet d''identifier immédiatement cet extrait comme appartenant au genre théâtral ?',
  'ACTE II, SCÈNE 3. Le salon de Madame de Merteuil. MERTEUIL, assise, lisant une lettre. — Ainsi donc, il croit pouvoir me tromper… (Elle se lève brusquement.) Valmont n''est qu''un sot !',
  '[{"id":"a","label":"La présence d''un narrateur omniscient"},{"id":"b","label":"Les didascalies et le nom du personnage en majuscules avant la réplique"},{"id":"c","label":"L''utilisation du passé simple"},{"id":"d","label":"La division en paragraphes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le texte théâtral se distingue par la présence de didascalies (indications scéniques entre parenthèses ou en italique), le nom du personnage en majuscules précédant chaque réplique, et la structuration en actes et scènes. Les programmes du cycle 3 insistent sur la capacité à repérer ces marques formelles pour identifier le genre dramatique.',
  'Penser que c''est la présence de dialogue qui identifie le théâtre, alors que le dialogue existe aussi dans le roman et la nouvelle. Ce sont les didascalies et la mise en forme spécifique qui caractérisent le genre théâtral.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Vrai/Faux — Distinguer conte et fable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? La fable se distingue du conte principalement par la présence obligatoire d''une morale, souvent formulée de manière explicite à la fin du texte.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'La fable se caractérise effectivement par la présence d''une morale explicite, généralement placée au début ou à la fin du récit. Si le conte peut véhiculer un enseignement implicite, la fable en fait un élément constitutif du genre. Les travaux de Jean-Michel Adam sur les genres textuels, largement repris dans les programmes Éduscol, soulignent cette distinction fondamentale.',
  'Penser que le conte comporte toujours une morale explicite comme la fable. Le conte peut véhiculer des valeurs, mais la morale formulée explicitement est le trait distinctif de la fable.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Identifier la nouvelle par ses caractéristiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Intermediaire',
  'qcm',
  'Lisez cet extrait et identifiez le genre littéraire. Justifiez votre choix parmi les propositions.',
  'Quand Mathilde rentra ce soir-là, elle trouva l''appartement vide. Sur la table, une enveloppe. Elle l''ouvrit d''une main tremblante. Trois mots seulement : « Je pars. Adieu. » Elle resta immobile, pétrifiée, et le silence de la pièce devint assourdissant.',
  '[{"id":"a","label":"Un roman, car le texte développe la psychologie du personnage en profondeur"},{"id":"b","label":"Une nouvelle, car le texte est bref, centré sur un événement unique et produit un effet de chute"},{"id":"c","label":"Un conte, car le texte raconte une histoire avec une fin inattendue"},{"id":"d","label":"Un poème en prose, car le texte utilise un rythme et des images poétiques"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Cet extrait présente les caractéristiques de la nouvelle littéraire : brièveté, concentration sur un événement unique (la découverte du mot d''adieu), nombre restreint de personnages, et effet de chute. Selon la terminologie Éduscol, la nouvelle se distingue du roman par sa densité narrative et sa recherche d''un effet final intense. Au CRPE, savoir différencier nouvelle et roman est une compétence attendue.',
  'Confondre nouvelle et roman court. La nouvelle n''est pas un « petit roman » : elle se caractérise par l''unité d''action, la concentration temporelle et la recherche d''un effet de chute, critères que le roman ne partage pas nécessairement.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Reconnaître un genre à partir d''un extrait de littérature jeunesse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Intermediaire',
  'qcm',
  'Dans le cadre de la littérature de jeunesse, à quel genre appartient un récit qui met en scène un héros ordinaire confronté à un événement surnaturel dans un cadre réaliste, provoquant chez le lecteur une hésitation entre explication rationnelle et irrationnelle ?',
  NULL,
  '[{"id":"a","label":"Le conte merveilleux"},{"id":"b","label":"Le récit de science-fiction"},{"id":"c","label":"Le récit fantastique"},{"id":"d","label":"Le récit d''aventures"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le récit fantastique se définit par l''irruption d''un élément surnaturel dans un cadre réaliste, créant une hésitation chez le lecteur (définition de Todorov). Contrairement au merveilleux où le surnaturel est accepté d''emblée, le fantastique maintient le doute. Les listes de référence Éduscol pour le cycle 3 incluent de nombreux récits fantastiques en littérature de jeunesse.',
  'Confondre fantastique et merveilleux. Dans le merveilleux, le surnaturel est accepté comme normal (monde des contes). Dans le fantastique, il fait irruption dans le réel et provoque le doute.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Vrai/Faux — Autobiographie vs fiction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Un récit écrit à la première personne du singulier est nécessairement une autobiographie.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''utilisation du « je » n''est pas un critère suffisant pour identifier une autobiographie. Le roman à la première personne (récit fictif avec narrateur-personnage) utilise le même procédé narratif. L''autobiographie, selon Philippe Lejeune, repose sur un « pacte autobiographique » où auteur, narrateur et personnage sont une même personne. Cette distinction est fondamentale dans l''enseignement de la compréhension au cycle 3.',
  'Réduire l''identification de l''autobiographie au seul usage du « je ». De nombreux romans utilisent la narration à la première personne sans être autobiographiques (ex. : L''Étranger de Camus).',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Distinguer mythe, légende et conte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Intermediaire',
  'qcm',
  'Parmi les propositions suivantes, laquelle caractérise le mieux la différence entre un mythe et une légende ?',
  NULL,
  '[{"id":"a","label":"Le mythe est écrit en vers, la légende en prose"},{"id":"b","label":"Le mythe explique l''origine du monde ou d''un phénomène naturel, la légende s''ancre dans un lieu ou un personnage historique réel"},{"id":"c","label":"Le mythe est toujours grec, la légende est toujours médiévale"},{"id":"d","label":"Le mythe comporte des animaux personnifiés, la légende met en scène des humains"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mythe a une fonction étiologique : il vise à expliquer l''origine du monde, des phénomènes naturels ou des institutions humaines (ex. : le mythe de Prométhée). La légende, quant à elle, s''ancre dans un lieu géographique ou un personnage historique réel, qu''elle embellit ou transforme (ex. : la légende de Roland). Les ressources Éduscol pour le cycle 3 insistent sur cette distinction dans le cadre de la culture littéraire et artistique.',
  'Croire que mythe et légende sont synonymes. Le mythe a une portée universelle et cosmogonique, tandis que la légende est liée à un ancrage historique et géographique précis.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Identifier un genre à partir d''un extrait descriptif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Difficile',
  'qcm',
  'Lisez cet extrait et déterminez à quel sous-genre romanesque il se rattache principalement.',
  'La pension Vauquer occupait le bas d''une maison située dans la partie inférieure de la rue Neuve-Sainte-Geneviève. L''humidité verdissait les murs, et une odeur de renfermé imprégnait chaque recoin de cette demeure décrépite où tout semblait vieilli, usé, rongé par le temps.',
  '[{"id":"a","label":"Le roman d''aventures, car l''action se situe dans un lieu précis"},{"id":"b","label":"Le roman réaliste, car la description minutieuse ancre le récit dans un cadre social vraisemblable"},{"id":"c","label":"Le roman gothique, car l''atmosphère est sombre et inquiétante"},{"id":"d","label":"Le roman naturaliste, car le texte insiste sur la dégradation physique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Cet extrait, inspiré du style balzacien, est caractéristique du roman réaliste : description minutieuse et détaillée d''un cadre social, ancrage dans un lieu parisien identifiable, fonction symbolique de la description (la pension reflète la condition de ses habitants). La distinction entre réalisme et naturalisme est un point récurrent du CRPE : le réalisme décrit la société telle qu''elle est, le naturalisme y ajoute une dimension expérimentale et déterministe.',
  'Confondre roman réaliste et roman naturaliste. Bien que proches, le naturalisme (Zola) ajoute une dimension scientifique et déterministe absente du réalisme balzacien.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Vrai/Faux — Le roman épistolaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Le roman épistolaire est un sous-genre du genre narratif dont la particularité est de construire le récit exclusivement à travers des lettres échangées entre les personnages, sans intervention d''un narrateur extérieur.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le roman épistolaire se caractérise effectivement par l''absence de narrateur extérieur : le récit progresse uniquement à travers la correspondance des personnages. Chaque lettre offre un point de vue subjectif, ce qui permet la polyphonie narrative. Les Liaisons dangereuses de Laclos en sont l''exemple canonique. Au CRPE, la connaissance des sous-genres romanesques fait partie de la culture littéraire attendue des futurs enseignants.',
  'Penser que tout roman contenant des lettres est un roman épistolaire. Pour qu''il soit épistolaire, le récit doit être entièrement construit par les lettres, sans narration extérieure.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — QCM — Analyse didactique des genres en cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'comp_genres_litteraires',
  'Les genres littéraires',
  'Difficile',
  'qcm',
  'Dans une séquence de littérature au cycle 3, un enseignant souhaite travailler la notion de genre littéraire. Quelle démarche est la plus conforme aux préconisations des programmes Éduscol ?',
  NULL,
  '[{"id":"a","label":"Donner aux élèves une définition théorique de chaque genre puis leur demander de classer des textes"},{"id":"b","label":"Proposer un corpus de textes variés et amener les élèves à dégager eux-mêmes les caractéristiques communes par comparaison"},{"id":"c","label":"Faire mémoriser la liste des genres littéraires avec leurs caractéristiques"},{"id":"d","label":"Étudier un seul genre en profondeur pendant toute l''année scolaire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes Éduscol préconisent une démarche inductive pour l''étude des genres : partir de la lecture de textes variés, comparer, observer les régularités et les différences, puis construire progressivement les notions. Cette approche favorise la compréhension en profondeur plutôt que la simple mémorisation de définitions. Au CRPE, la dimension didactique de l''enseignement de la littérature est un axe d''évaluation majeur.',
  'Privilégier une approche déductive (définition puis exemples) au détriment de l''approche inductive (observation puis conceptualisation) que les programmes recommandent.',
  'valide',
  'CRPE Français — Compréhension',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : La chronologie et les temps du récit
-- Topic : comp_chronologie_narration
-- UUID prefix : e4020000
-- 3 Facile + 3 Intermediaire + 4 Difficile
-- Mix : 6 qcm + 2 vrai_faux + 2 reponse_courte
-- access_tier : premium
-- ============================================================

-- Q1 — Facile — QCM — Identifier l''ordre chronologique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Facile',
  'qcm',
  'Lisez l''extrait suivant. L''ordre de présentation des événements correspond-il à l''ordre chronologique ?',
  'Marie ouvrit la porte et découvrit le jardin dévasté. La veille, une terrible tempête avait soufflé toute la nuit. Les arbres, déracinés, gisaient en travers des allées.',
  '[{"id":"a","label":"Oui, les événements sont présentés dans l''ordre chronologique"},{"id":"b","label":"Non, le récit commence par la conséquence (jardin dévasté) avant de revenir à la cause (la tempête)"},{"id":"c","label":"Non, le récit commence par la fin de l''histoire"},{"id":"d","label":"Oui, car le plus-que-parfait marque simplement l''antériorité grammaticale"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''extrait présente d''abord la découverte du jardin dévasté (conséquence), puis revient en arrière avec « La veille » et le plus-que-parfait (« avait soufflé ») pour évoquer la tempête (cause). L''ordre du récit ne coïncide pas avec l''ordre chronologique. Ce retour en arrière s''appelle une analepse. Les programmes Éduscol insistent sur la capacité des élèves à reconstituer la chronologie d''un récit.',
  'Penser que l''ordre du texte correspond toujours à l''ordre chronologique. Les élèves confondent souvent l''ordre de lecture et l''ordre des événements dans l''histoire.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Définition de l''analepse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? L''analepse (ou retour en arrière) est un procédé narratif par lequel le récit interrompt la progression chronologique pour évoquer un événement antérieur.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''analepse, terme issu de la narratologie de Gérard Genette, désigne effectivement un retour en arrière dans le récit. Le narrateur interrompt le fil chronologique pour évoquer un événement passé. C''est un procédé très fréquent en littérature (flash-back). Au cycle 3, les élèves doivent apprendre à repérer ces ruptures chronologiques pour mieux comprendre la construction du récit.',
  'Confondre analepse et prolepse. L''analepse est un retour en arrière, la prolepse est une anticipation (annonce d''un événement futur).',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Reconnaître les connecteurs temporels
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Facile',
  'qcm',
  'Dans l''extrait suivant, quel connecteur temporel permet au lecteur de repérer un changement dans la chronologie du récit ?',
  'Le train entra en gare avec une heure de retard. Les passagers descendirent en hâte. Trois jours plus tôt, personne n''aurait imaginé que ce voyage tournerait au cauchemar.',
  '[{"id":"a","label":"« avec une heure de retard »"},{"id":"b","label":"« en hâte »"},{"id":"c","label":"« Trois jours plus tôt »"},{"id":"d","label":"« ce voyage »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le connecteur « Trois jours plus tôt » est un repère temporel qui signale une analepse : le récit quitte le moment présent (l''arrivée du train) pour revenir trois jours en arrière. Les connecteurs temporels (« la veille », « autrefois », « plus tôt », « le lendemain ») sont des indices essentiels pour comprendre la chronologie du récit. Leur repérage est un objectif explicite des programmes Éduscol au cycle 3.',
  'Ne pas distinguer les connecteurs temporels des autres compléments circonstanciels. « Avec une heure de retard » indique une durée, pas un changement de plan temporel dans la narration.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Identifier une prolepse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Intermediaire',
  'qcm',
  'Lisez l''extrait suivant. Quel procédé narratif est utilisé dans la dernière phrase ?',
  'L''enfant marchait tranquillement vers l''école, son cartable sur le dos. Il ne le savait pas encore, mais cette journée allait bouleverser sa vie à jamais.',
  '[{"id":"a","label":"Une analepse : le narrateur revient sur un événement passé"},{"id":"b","label":"Une prolepse : le narrateur anticipe un événement à venir"},{"id":"c","label":"Une ellipse : le narrateur omet une partie de l''histoire"},{"id":"d","label":"Une pause descriptive : le narrateur interrompt l''action pour décrire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase « cette journée allait bouleverser sa vie à jamais » est une prolepse (ou anticipation) : le narrateur annonce un événement futur que le personnage ignore encore. Le conditionnel ou la périphrase verbale « aller + infinitif » à l''imparfait sont des marqueurs fréquents de prolepse. Selon Genette, la prolepse crée un effet d''attente chez le lecteur. Au CRPE, la maîtrise des concepts narratologiques de base est attendue.',
  'Confondre prolepse et simple usage du futur. La prolepse est un procédé narratif intentionnel qui crée du suspense, pas un simple emploi grammatical du temps futur.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Le rythme du récit : l''ellipse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Intermediaire',
  'qcm',
  'Quel procédé narratif affectant le rythme du récit est illustré par l''extrait suivant ?',
  'Elle quitta Paris un matin de septembre. Dix ans plus tard, elle revint dans la capitale, le visage marqué par les épreuves.',
  '[{"id":"a","label":"Une scène : le temps du récit correspond au temps de l''histoire"},{"id":"b","label":"Un sommaire : le narrateur résume une longue période en quelques lignes"},{"id":"c","label":"Une ellipse : le narrateur passe sous silence une période entière de l''histoire"},{"id":"d","label":"Une pause : le narrateur interrompt l''action pour une description"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''extrait illustre une ellipse narrative : dix années de la vie du personnage sont entièrement passées sous silence. Le narrateur saute directement du départ au retour, sans rien dire de la période intermédiaire. Selon la terminologie de Genette, l''ellipse se distingue du sommaire (qui résume brièvement une période) par l''absence totale de narration. Au CRPE, identifier les variations de rythme narratif est un savoir-faire attendu.',
  'Confondre ellipse et sommaire. Dans le sommaire, le narrateur raconte brièvement ce qui s''est passé. Dans l''ellipse, il n''en dit rien du tout — la période est totalement occultée.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Vrai/Faux — Opposition passé simple / imparfait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans un récit au passé, l''imparfait exprime les actions de premier plan (événements principaux) tandis que le passé simple sert à l''arrière-plan (descriptions, habitudes).',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est l''inverse : dans le système du récit au passé, le passé simple exprime les actions de premier plan (événements ponctuels, successifs, qui font avancer l''intrigue), tandis que l''imparfait sert à l''arrière-plan (descriptions, actions habituelles, états durables). Cette opposition premier plan / arrière-plan (Weinrich) est un concept fondamental repris dans les programmes Éduscol pour l''enseignement de la compréhension des textes narratifs.',
  'Inverser les rôles du passé simple et de l''imparfait dans le récit. Cette confusion est fréquente chez les candidats au CRPE et témoigne d''une maîtrise insuffisante de la grammaire du texte.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — Réponse courte — Nommer le procédé de rythme narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Difficile',
  'reponse_courte',
  'Lisez l''extrait suivant. Comment appelle-t-on, en narratologie, le procédé qui consiste à faire correspondre le temps de la narration au temps de l''histoire, comme dans un dialogue ? Répondez en un mot.',
  '— Tu ne comprends donc rien ! s''écria-t-elle en se levant brusquement.\n— Si, je comprends très bien, répondit-il d''une voix glaciale. Je comprends que tu ne m''as jamais fait confiance.\n— Ce n''est pas vrai, murmura-t-elle. Ce n''est pas vrai…',
  NULL,
  '{"mode":"text","acceptableAnswers":["scène","scene","la scène","la scene"]}'::jsonb,
  'La scène est le procédé narratif où le temps du récit coïncide approximativement avec le temps de l''histoire. Le dialogue en est l''exemple le plus courant : le temps de lecture correspond au temps que les personnages mettent à parler. Selon la terminologie de Genette, c''est le degré zéro de la vitesse narrative (TR ≈ TH). Au CRPE, distinguer les quatre vitesses narratives (ellipse, sommaire, scène, pause) est une compétence attendue.',
  'Confondre la scène avec la simple présence de dialogue. La scène est un concept narratologique qui désigne l''égalité entre temps du récit et temps de l''histoire, dont le dialogue est l''illustration principale.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — La pause descriptive et le rythme narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Difficile',
  'qcm',
  'Lisez l''extrait suivant. Quel effet la pause descriptive produit-elle sur le rythme du récit ?',
  'Le cavalier s''arrêta au sommet de la colline. Devant lui s''étendait une plaine immense, couverte de blés dorés que le vent couchait en longues vagues. À l''horizon, les montagnes bleutées se découpaient sur un ciel d''un rouge intense. L''air embaumait le thym et la lavande.',
  '[{"id":"a","label":"Elle accélère le récit en condensant une longue durée"},{"id":"b","label":"Elle ralentit le récit : le temps de l''histoire est suspendu tandis que la narration se poursuit"},{"id":"c","label":"Elle supprime une partie de l''histoire pour avancer plus vite"},{"id":"d","label":"Elle fait progresser l''action principale par les détails descriptifs"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La pause descriptive suspend le temps de l''histoire : pendant que le narrateur décrit le paysage, aucune action ne progresse dans la diégèse, mais le texte continue d''avancer (TR > 0, TH = 0). C''est le procédé inverse de l''ellipse. Chez Balzac ou Flaubert, les pauses descriptives jouent un rôle essentiel dans la construction de l''atmosphère. Au CRPE, comprendre l''impact du rythme narratif sur la compréhension est un attendu évaluable.',
  'Penser que la description fait toujours avancer l''action. Dans une pause descriptive, le temps diégétique est suspendu ; la description a une fonction esthétique ou symbolique, pas narrative.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — La fréquence narrative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Difficile',
  'reponse_courte',
  'En narratologie, comment appelle-t-on le type de récit qui raconte une seule fois ce qui s''est passé plusieurs fois (exemple : « Chaque matin, il partait à l''aube ») ? Répondez en deux ou trois mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["récit itératif","recit iteratif","narratif itératif","narratif iteratif","le récit itératif","le recit iteratif","itératif","iteratif"]}'::jsonb,
  'Le récit itératif, selon la terminologie de Genette, consiste à raconter une seule fois un événement qui s''est produit plusieurs fois. L''imparfait d''habitude en est le marqueur grammatical principal (« Chaque matin, il partait… »). Il s''oppose au récit singulatif (raconter une fois ce qui s''est passé une fois) et au récit répétitif (raconter plusieurs fois ce qui s''est passé une fois). La fréquence narrative est un des trois paramètres du temps narratif avec l''ordre et la durée.',
  'Confondre récit itératif et récit répétitif. Le récit itératif raconte une seule fois un événement répété ; le récit répétitif raconte plusieurs fois un même événement unique.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — QCM — Analyse globale de la temporalité narrative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4020000-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'comp_chronologie_narration',
  'Chronologie et temps du récit',
  'Difficile',
  'qcm',
  'Selon Gérard Genette, l''analyse du temps narratif repose sur trois paramètres fondamentaux. Lesquels ?',
  NULL,
  '[{"id":"a","label":"Le rythme, la focalisation et la voix narrative"},{"id":"b","label":"L''ordre, la durée et la fréquence"},{"id":"c","label":"Le passé simple, l''imparfait et le plus-que-parfait"},{"id":"d","label":"L''analepse, la prolepse et l''ellipse"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Genette distingue trois paramètres pour analyser le temps narratif : l''ordre (rapport entre l''ordre des événements dans l''histoire et leur ordre de présentation dans le récit), la durée (rapport entre le temps de l''histoire et la longueur du texte, qui détermine le rythme), et la fréquence (rapport entre le nombre d''occurrences d''un événement dans l''histoire et dans le récit). Au CRPE, cette tripartition est un cadre théorique de référence pour l''analyse des textes narratifs.',
  'Confondre les paramètres du temps narratif avec les catégories du récit (voix, mode, temps) ou avec les procédés particuliers (analepse, ellipse) qui ne sont que des manifestations de ces paramètres.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

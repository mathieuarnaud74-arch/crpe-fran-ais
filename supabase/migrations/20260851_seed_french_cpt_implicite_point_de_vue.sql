-- Migration: 10 exercices — Implicite, point de vue et focalisation narrative
-- Série : cpt_implicite_point_de_vue (Français, comprehension_texte)
-- Implicite conversationnel, présupposé, point de vue narratif, focalisation (Genette)
-- UUID prefix: c1d20000

-- Q1 — QCM — Définir l'implicite conversationnel vs le sens littéral d'un énoncé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'qcm',
  'Dans la phrase « Il fait froid ici », dite par un invité en entrant dans le salon, quelle est la dimension implicite de cet énoncé ?',
  NULL,
  '[{"id":"a","label":"L''invité décrit objectivement la température de la pièce"},{"id":"b","label":"L''invité demande implicitement que l''on chauffe la pièce ou qu''on lui offre quelque chose de chaud"},{"id":"c","label":"L''invité exprime un présupposé sur la météo extérieure"},{"id":"d","label":"L''invité réalise un acte de langage déclaratif sans intention communicative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''implicite conversationnel (ou implicature, selon Grice) désigne ce qui est communiqué sans être dit explicitement. L''énoncé « Il fait froid ici » a un sens littéral (constat sur la température), mais son sens implicite — inféré par l''interlocuteur dans le contexte — est une demande indirecte : chauffer la pièce, fermer la fenêtre, ou offrir une boisson chaude. Ce mécanisme repose sur les maximes conversationnelles de Grice (quantité, qualité, relation, modalité) : l''interlocuteur comprend que l''énoncé n''est pas une simple information météorologique mais une requête voilée. La distinction entre sens littéral et sens implicite est centrale dans les programmes CRPE pour l''enseignement de la compréhension de textes et la pragmatique au cycle 3.',
  'Choisir la réponse A, en s''arrêtant au sens littéral sans prendre en compte le contexte énonciatif et l''intention du locuteur.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — vrai_faux — La focalisation interne implique que le narrateur sait tout (omniscient)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'vrai_faux',
  'Affirmation : En focalisation interne, le narrateur est omniscient et peut décrire les pensées de tous les personnages.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. Selon la typologie de Gérard Genette (Figures III, 1972), la focalisation interne est au contraire une restriction du savoir narratif : le narrateur ne livre que ce que perçoit et ressent un personnage focal particulier (ou plusieurs, dans la focalisation interne variable). La formule de Genette résume cela : en focalisation interne, « le narrateur en sait autant que le personnage ». C''est la focalisation zéro (ou narrateur omniscient) qui permet au narrateur d''accéder à l''intériorité de tous les personnages, à leur passé et à leurs pensées cachées. Confondre focalisation interne et omniscience est l''une des erreurs les plus fréquentes au CRPE dans l''analyse des points de vue narratifs.',
  'Confondre la focalisation interne (accès limité à un seul personnage focal) avec la focalisation zéro (narrateur omniscient qui sait tout sur tous les personnages).',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Identifier la focalisation dans un extrait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'qcm',
  'Lisez cet extrait : « Lucie traversa la place sans lever les yeux. Elle ne remarqua pas l''homme qui l''observait depuis le banc. Son cœur battait encore des coups sourds depuis la dispute du matin. » Quelle focalisation domine dans ce passage ?',
  NULL,
  '[{"id":"a","label":"Focalisation zéro : le narrateur est omniscient et connaît tous les personnages"},{"id":"b","label":"Focalisation interne : le récit est filtré par la perception et l''intériorité de Lucie"},{"id":"c","label":"Focalisation externe : le narrateur observe Lucie de l''extérieur sans accéder à ses pensées"},{"id":"d","label":"Focalisation variable : le point de vue alterne entre Lucie et l''homme sur le banc"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La focalisation interne est ici dominante : le récit est ancré dans le point de vue de Lucie. Le narrateur nous donne accès à ses sensations intérieures (« son cœur battait des coups sourds ») et à son état psychologique (la dispute du matin qui l''obsède). Surtout, la phrase « Elle ne remarqua pas l''homme » est un indice décisif : l''information est formulée négativement, du point de vue de ce que Lucie perçoit (ou ne perçoit pas). En focalisation externe, le narrateur se limiterait à des observations comportementales sans accéder à l''intériorité du personnage. En focalisation zéro, le narrateur saurait aussi ce que pense l''homme sur le banc. Selon Genette, la focalisation interne signifie que « le narrateur en sait autant que le personnage focal ».',
  'Choisir la focalisation zéro en voyant que le narrateur mentionne ce que Lucie ne remarque pas, sans comprendre que c''est précisément formulé depuis sa perspective subjective.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — reponse_courte — Quel type de narrateur est présent : homo/hétérodiégétique ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait : « Je m''appelais alors Martin Durand et je vivais à Lyon. Personne dans ce quartier ne se doutait de ce que j''avais traversé. Ce soir-là, en rentrant chez moi, je décidai de tout recommencer. » Comment qualifie-t-on le narrateur de cet extrait selon la terminologie de Genette : est-il homodiégétique ou hétérodiégétique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["homodiégétique","narrateur homodiégétique","homo-diégétique"]}'::jsonb,
  'Le narrateur est homodiégétique : il est présent comme personnage dans l''histoire qu''il raconte. La terminologie de Genette distingue deux grandes catégories : le narrateur hétérodiégétique, absent du monde raconté (il raconte une histoire qui n''est pas la sienne), et le narrateur homodiégétique, présent dans la diégèse (il raconte une histoire à laquelle il a participé). Ici, l''emploi systématique de la première personne (« je m''appelais », « j''avais traversé », « je décidai ») et le fait que le narrateur se désigne lui-même comme un personnage du récit (avec un nom, une ville, un passé) confirment sa nature homodiégétique. Dans sa forme la plus intense, lorsque le narrateur est le protagoniste principal, Genette parle de narrateur autodiégétique.',
  'Répondre « autodiégétique » sans préciser « homodiégétique » : l''autodiégétique est bien une forme d''homodiégétique, mais la réponse attendue est le terme générique supérieur.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Présupposé vs sous-entendu : distinguer les deux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'qcm',
  'Dans la phrase « Tu as encore raté ton train ! », quelle distinction s''applique entre présupposé et sous-entendu ?',
  NULL,
  '[{"id":"a","label":"Le présupposé est que tu as raté ton train ; le sous-entendu est que tu prends souvent le train"},{"id":"b","label":"Le présupposé est que tu as déjà raté ton train auparavant (valeur itérative de « encore ») ; le sous-entendu est un reproche ou une exaspération"},{"id":"c","label":"Il n''y a pas de présupposé car l''énoncé est factuel ; le sous-entendu est que tu es en retard"},{"id":"d","label":"Le présupposé et le sous-entendu sont ici identiques : l''incompétence du locuteur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le présupposé est une information encodée dans la structure même de l''énoncé, posée comme allant de soi et non niable sans contradiction : ici, l''adverbe « encore » présuppose que l''événement s''est déjà produit (tu as raté ton train une ou plusieurs fois auparavant). Le présupposé est lié à des marques linguistiques précises (adverbes, verbes factifs, défini anaphorique…). Le sous-entendu, en revanche, dépend du contexte et de l''intention du locuteur : dans cette phrase, le sous-entendu est un reproche, une exaspération, voire une ironie. Le sous-entendu n''est pas garanti par la structure de la phrase — il peut être nié par le locuteur sans contradiction linguistique. Cette distinction entre présupposé (ancré dans la langue) et sous-entendu (ancré dans le discours) est fondamentale dans l''enseignement de la pragmatique et de la compréhension implicite au CRPE.',
  'Confondre le posé (le fait que le train soit raté) avec le présupposé (le fait que cela s''est déjà produit avant), ou négliger la valeur itérative de l''adverbe « encore ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — vrai_faux — Un narrateur à la 1ère personne est forcément autodiégétique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'vrai_faux',
  'Affirmation : Un narrateur qui s''exprime à la première personne est nécessairement autodiégétique.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. Dans la terminologie de Genette, le narrateur autodiégétique est un narrateur homodiégétique qui est également le personnage principal de l''histoire qu''il raconte. Mais un narrateur à la première personne peut aussi être homodiégétique sans être autodiégétique : il peut être un personnage secondaire ou un témoin. C''est le cas du narrateur de Gatsby le Magnifique de Fitzgerald (Nick Carraway, personnage secondaire), ou du narrateur-témoin dans de nombreux récits. L''emploi de « je » signale l''homodiégèse (le narrateur est présent dans la diégèse), mais pas nécessairement l''autodiégèse (le statut de protagoniste). La narration à la première personne n''implique donc pas automatiquement que le narrateur est le héros de l''histoire.',
  'Assimiler systématiquement la narration à la première personne avec l''autodiégèse, sans distinguer le narrateur-protagoniste du narrateur-témoin.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — reponse_courte — Dans un extrait, identifier le point de vue dominant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait : « L''inspecteur frappa à la porte. Quelqu''un bougea à l''intérieur. Il attendit. La porte ne s''ouvrit pas. Il frappa encore, puis renonça et redescendit l''escalier. » Quel type de focalisation domine dans ce passage ? (répondez par le nom de la focalisation)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["focalisation externe","externe","point de vue externe"]}'::jsonb,
  'La focalisation externe domine dans cet extrait : le narrateur observe les comportements et actions de l''inspecteur de l''extérieur, sans jamais accéder à ses pensées, ses émotions ou ses intentions. On ne sait pas pourquoi il frappe, ce qu''il ressent ni ce qu''il pense quand on ne lui ouvre pas. Le narrateur « en sait moins que le personnage » (Genette). Ce type de focalisation, associé aux techniques behavioristes ou au roman noir, produit un effet de distance et de mystère. La focalisation externe est à distinguer de la focalisation interne (accès à l''intériorité d''un personnage) et de la focalisation zéro (narrateur omniscient). Les indices textuels ici sont les verbes d''action purs (frappa, attendit, renonça) et l''absence totale de verbes de perception intérieure ou de style indirect libre.',
  'Confondre la focalisation externe avec la focalisation zéro, en croyant que l''absence de commentaire intérieur signifie que le narrateur sait tout mais choisit de ne rien dire.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Focalisation zéro (narrateur omniscient) : caractéristiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'qcm',
  'Selon la théorie de la focalisation de Gérard Genette, laquelle de ces propositions caractérise la focalisation zéro ?',
  NULL,
  '[{"id":"a","label":"Le narrateur est un personnage du récit et ne connaît que ce que ce personnage perçoit"},{"id":"b","label":"Le narrateur observe les personnages de l''extérieur sans accéder à leur intériorité"},{"id":"c","label":"Le narrateur en sait plus que les personnages : il accède à leurs pensées, leurs passés et ce qui se passe en plusieurs lieux simultanément"},{"id":"d","label":"Le narrateur adopte successivement le point de vue de chaque personnage au fil des chapitres"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La focalisation zéro désigne, dans la terminologie de Genette (Figures III, 1972), la situation où le narrateur en sait plus que n''importe quel personnage — c''est le narrateur omniscient classique du roman réaliste du XIXe siècle. Il peut décrire simultanément ce qui se passe en des lieux différents, connaître les pensées secrètes des personnages, anticiper l''avenir ou revenir sur le passé. La formule de Genette est : en focalisation zéro, « le narrateur en sait plus que le personnage ». À noter que l''appellation « focalisation zéro » peut sembler paradoxale (absence de restriction focale plutôt que point de vue zéro) : Genette lui-même soulignera cette tension terminologique. La réponse D décrit une focalisation interne variable, non la focalisation zéro.',
  'Choisir la réponse D (focalisation variable) en pensant que l''alternance des points de vue équivaut à l''omniscience, alors que la focalisation interne variable reste une restriction de savoir.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — L'ironie repose sur un implicite entre le sens dit et le sens voulu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'vrai_faux',
  'Affirmation : L''ironie est un procédé qui repose sur un décalage implicite entre le sens littéral de l''énoncé et le sens réellement voulu par le locuteur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. L''ironie est précisément un cas d''implicite dans lequel le sens voulu (ou sens réel) est l''opposé — ou du moins le contraire — du sens littéral de l''énoncé. Quand quelqu''un dit « Quelle brillante idée ! » à propos d''une décision catastrophique, le sens littéral est élogieux mais le sens implicite est un jugement négatif. L''interlocuteur reconstruit le sens voulu grâce au contexte, à l''intonation, à sa connaissance de la situation et aux indices discursifs. L''ironie est donc une forme de sous-entendu : le sens réel n''est pas encodé linguistiquement mais inféré. En classe, enseigner la compréhension de l''ironie revient à travailler l''accès à l''implicite, compétence essentielle de la compréhension fine des textes littéraires, attendue au CRPE et dans les programmes du cycle 3.',
  'Nier l''affirmation en pensant que l''ironie est une figure de style purement rhétorique sans lien avec la pragmatique et le sens implicite.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Reformuler un implicite d'un extrait littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c1d20000-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'cpt_implicite_point_de_vue',
  'Implicite, point de vue et focalisation narrative',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait : « Madame Renard posa son sac sur la table avec un bruit sec. Elle ne dit rien. Son mari continua de lire son journal. » Quel sentiment ou état intérieur de Madame Renard peut-on inférer à partir de cet extrait, bien qu''il ne soit pas écrit explicitement ? (répondez en un mot)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["colère","la colère","mécontentement","le mécontentement","tension","agacement","l''agacement","frustration","la frustration"]}'::jsonb,
  'Le texte ne nomme jamais un état émotionnel, mais plusieurs indices implicites permettent d''inférer la colère ou le mécontentement de Madame Renard : le « bruit sec » du sac posé (geste brusque signalant une tension), le silence (refus de communiquer, signe de renfermement), et le contraste avec l''indifférence du mari (qui continue à lire). Ces détails comportementaux construisent un implicite fort : le lecteur doit inférer l''état intérieur du personnage sans que le narrateur le formule. Ce mécanisme — montrer sans dire, laisser le lecteur déduire — est caractéristique de la focalisation externe et du style behavioriste, mais aussi d''une écriture littéraire qui fait confiance au lecteur pour combler les blancs du texte. Travailler cet implicite en classe développe la compréhension fine et la capacité d''interprétation, attendues dans les programmes Éduscol au cycle 3.',
  'Se limiter à la description des actions (« elle pose son sac ») sans aller jusqu''à l''inférence sur l''état intérieur du personnage, ou nommer un état trop vague comme « tristesse » non justifié par les indices textuels.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

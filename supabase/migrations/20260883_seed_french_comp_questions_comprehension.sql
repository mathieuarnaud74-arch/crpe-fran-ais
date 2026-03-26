-- Série : Types de questions en compréhension de texte (modèle de Giasson)
-- Subdomain : comprehension_texte | topic_key : comp_questions_comprehension
-- 10 questions | UUIDs : f3a00000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'qcm',
  'Selon le modèle de Jocelyne Giasson, en combien de grandes familles les types de questions en compréhension de texte peuvent-ils être regroupés ?',
  NULL,
  '[{"id":"a","label":"2 familles : littérales et inférentielles"},{"id":"b","label":"3 familles : dans le texte / dans ma tête / dans le texte et ma tête"},{"id":"c","label":"4 familles : littérale, inférentielle, critique, créative"},{"id":"d","label":"5 familles : repérage, déduction, interprétation, jugement, création"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Jocelyne Giasson (« La compréhension en lecture », 1990) distingue trois grandes sources de réponse : (1) « Dans le texte » — la réponse est littéralement dans le texte (repérage explicite) ; (2) « Dans le texte et dans ma tête » — l''élève combine des informations du texte et ses connaissances pour inférer ; (3) « Dans ma tête » — la réponse repose principalement sur les connaissances et l''expérience du lecteur.',
  'Proposer 4 ou 5 catégories en mélangeant différents modèles de questions (Bloom, Biggs...). Le modèle de Giasson en 3 familles est celui qui est le plus cité dans les programmes et les écrits Éduscol sur la compréhension.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'qcm',
  'Un élève lit : « Jules prit son imperméable avant de sortir. » La question « Quel temps faisait-il probablement dehors ? » est de quel type selon Giasson ?',
  NULL,
  '[{"id":"a","label":"Dans le texte (littérale)"},{"id":"b","label":"Dans le texte et dans ma tête (inférentielle)"},{"id":"c","label":"Dans ma tête (question de réaction)"},{"id":"d","label":"De jugement critique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse (il pleuvait ou faisait mauvais) n''est pas écrite dans le texte, mais on peut la déduire en combinant l''indice du texte (imperméable = vêtement de pluie) et une connaissance du monde (on prend un imperméable quand il pleut). C''est donc une question « dans le texte et dans ma tête » — une inférence causale. Ce type de question est fondamental pour évaluer la compréhension profonde.',
  'Classer cette question comme « dans le texte » parce que l''imperméable est mentionné. L''indice est dans le texte, mais la réponse complète nécessite un raisonnement inférentiel qui mobilise les connaissances du lecteur.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Les questions littérales (« dans le texte ») sont les plus efficaces pour développer la compréhension profonde chez les élèves.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les questions littérales évaluent uniquement le repérage d''informations explicites. Elles sont nécessaires mais insuffisantes pour développer une compréhension profonde. Les recherches (Giasson, Goigoux, Cèbe) montrent que ce sont les questions inférentielles (« dans le texte et dans ma tête ») qui favorisent la construction du sens et la compréhension globale. Un enseignement centré sur les seules questions littérales ne prépare pas les élèves aux textes complexes.',
  'Croire que les questions littérales sont les plus importantes parce qu''elles semblent les plus « objectives ». L''enjeu de la compréhension n''est pas le repérage mais la construction du sens global, qui implique l''inférence.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'qcm',
  'Quelle question illustre le mieux le type « dans ma tête » selon le modèle de Giasson ?',
  NULL,
  '[{"id":"a","label":"« Quel est le prénom du personnage principal ? »"},{"id":"b","label":"« Pourquoi le loup a-t-il soufflé sur la maison ? »"},{"id":"c","label":"« As-tu déjà eu peur comme ce personnage ? Raconte. »"},{"id":"d","label":"« Que s''est-il passé après que le chaperon rouge est arrivé chez sa grand-mère ? »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le type « dans ma tête » correspond aux questions dont la réponse repose principalement sur les expériences, sentiments et opinions du lecteur — indépendamment du texte. « As-tu déjà eu peur comme ce personnage ? » est une question de réaction personnelle : la réponse vient uniquement du lecteur. Ces questions développent la réflexivité mais n''évaluent pas la compréhension du texte lui-même.',
  'Choisir la réponse b (motif du loup) en croyant que c''est « dans ma tête » parce qu''on doit interpréter. La réponse b est inférentielle (dans le texte et dans ma tête) car elle combine un indice textuel et un raisonnement. La réponse c est purement personnelle (dans ma tête).',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Les questions inférentielles nécessitent que l''élève mobilise à la fois des informations du texte et ses connaissances antérieures.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est exactement la définition des questions inférentielles (« dans le texte et dans ma tête »). Une inférence se produit quand le lecteur comble les « blancs » du texte en combinant des indices textuels et ses connaissances du monde. Les inférences sont indispensables à toute lecture car les textes ne disent pas tout : ils supposent une base de connaissances partagées avec le lecteur.',
  'Croire que les inférences reposent uniquement sur les connaissances du lecteur (sans lien avec le texte). L''inférence est toujours ancrée dans des indices textuels : sans ancrage dans le texte, il s''agit d''une question « dans ma tête ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'qcm',
  'Dans quel ouvrage de référence Jocelyne Giasson a-t-elle développé son modèle de compréhension en lecture ?',
  NULL,
  '[{"id":"a","label":"« Lire, comprendre, apprendre » (2016)"},{"id":"b","label":"« La compréhension en lecture » (1990)"},{"id":"c","label":"« Comprendre les textes écrits » (2000)"},{"id":"d","label":"« L''apprentissage de la lecture » (1985)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« La compréhension en lecture » de Jocelyne Giasson (De Boeck, 1990) est l''ouvrage fondateur qui a formalisé le modèle de compréhension en lecture en français. Il présente notamment la taxonomie des questions (dans le texte / dans le texte et dans ma tête / dans ma tête) et les trois composantes de la compréhension : le lecteur, le texte et le contexte.',
  'Confondre avec d''autres ouvrages sur la lecture. « Lire, comprendre, apprendre » (2016) est un rapport de l''IFÉ de Roland Goigoux, pas de Giasson.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'qcm',
  'Quelles sont les trois composantes du modèle de compréhension en lecture de Giasson ?',
  NULL,
  '[{"id":"a","label":"Le décodage, le vocabulaire et la syntaxe"},{"id":"b","label":"Le lecteur, le texte et le contexte"},{"id":"c","label":"La mémoire de travail, les inférences et la fluence"},{"id":"d","label":"Le repérage, la déduction et l''interprétation"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le modèle de Giasson (1990) articule trois composantes interdépendantes : (1) Le LECTEUR — ses structures cognitives (connaissances) et affectives (motivation, attitudes) et ses processus de lecture ; (2) Le TEXTE — son intention, sa structure, son contenu ; (3) Le CONTEXTE — psychologique (intérêt de la tâche), social (groupe, enseignant) et physique (lieu, bruit, heure). La compréhension émerge de l''interaction entre ces trois pôles.',
  'Réduire la compréhension à ses seules composantes linguistiques (décodage, syntaxe, vocabulaire). Ces éléments sont importants mais le modèle de Giasson insiste sur la dimension interactive entre lecteur, texte et contexte.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'reponse_courte',
  'Comment appelle-t-on une question dont la réponse peut être trouvée mot pour mot dans une seule phrase du texte ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["question littérale","littérale","question dans le texte","question de repérage"]}'::jsonb,
  'Une question littérale (ou question « dans le texte ») est une question dont la réponse est explicitement formulée dans le texte, souvent dans une seule phrase. L''élève n''a qu''à repérer et, éventuellement, reformuler l''information. Exemple : « Comment s''appelle la sœur de Marie ? » si le texte dit « Marie et sa sœur Léa ». On parle aussi de question à réponse textuelle explicite.',
  'Confondre avec « question de compréhension » (terme générique) ou « question fermée » (qui peut aussi être inférentielle). La spécificité de la question littérale est l''ancrage direct dans une phrase du texte.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Poser uniquement des questions littérales après une lecture est une pratique recommandée dans les programmes Éduscol pour développer la compréhension au cycle 3.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les ressources Éduscol sur la compréhension (notamment le guide « Pour enseigner la lecture et l''écriture au CP » et les documents cycle 3) insistent sur la nécessité de travailler les inférences et la compréhension globale. Un questionnement limité aux questions littérales ne développe pas les compétences de compréhension profonde. Les programmes prescrivent de travailler explicitement les stratégies de compréhension, dont le travail sur les implicites.',
  'Croire que les questions littérales suffisent parce qu''elles sont les plus faciles à évaluer. La facilité de correction ne fait pas la valeur pédagogique : ce sont les questions inférentielles qui développent la compréhension.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3a00000-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'comp_questions_comprehension',
  'Types de questions en compréhension de texte',
  'Standard',
  'qcm',
  'Quelle implication pédagogique le modèle de Giasson a-t-il sur les pratiques d''enseignement de la compréhension ?',
  NULL,
  '[{"id":"a","label":"Privilégier les questions en début de lecture pour orienter la recherche d''informations"},{"id":"b","label":"Varier les types de questions et enseigner explicitement les stratégies inférentielles"},{"id":"c","label":"Limiter les questions aux éléments évalués dans les épreuves nationales"},{"id":"d","label":"Poser uniquement des questions ouvertes pour favoriser la liberté d''expression"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le modèle de Giasson implique de diversifier les types de questions pour développer toutes les dimensions de la compréhension. Il plaide notamment pour un enseignement explicite des stratégies inférentielles : l''enseignant doit verbaliser et modéliser comment on produit une inférence. Le simple questionnement spontané après lecture ne suffit pas ; il faut un enseignement structuré des processus de compréhension.',
  'Croire qu''il suffit de varier les thèmes des textes pour améliorer la compréhension. C''est la diversification des TYPES DE QUESTIONS et l''enseignement EXPLICITE des stratégies qui est efficace, pas simplement varier les supports.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

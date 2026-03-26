-- Migration: 10 exercices — Propositions subordonnées circonstancielles
-- Série : gram_subord_circonstancielles (Français, grammaire)
-- Cause, conséquence, but, condition, concession, temps — conjonctions et modes
-- UUID prefix: 7b280000

-- Q1 — QCM — Conjonction de subordination exprimant la cause
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'qcm',
  'Laquelle de ces conjonctions de subordination introduit une subordonnée circonstancielle de cause ?',
  NULL,
  '[{"id":"a","label":"bien que"},{"id":"b","label":"parce que"},{"id":"c","label":"afin que"},{"id":"d","label":"à moins que"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Parce que » introduit une subordonnée de cause : elle répond à la question « Pourquoi ? ». Exemple : « Il est absent parce qu''il est malade. » Les autres conjonctions : « bien que » = concession, « afin que » = but, « à moins que » = condition (négative). D''autres conjonctions de cause : « puisque » (cause connue), « comme » (cause antéposée), « vu que », « étant donné que ».',
  'Confondre cause (réponse à « pourquoi ? ») et conséquence. La subordonnée de cause est antérieure à la principale et l''explique ; la subordonnée de conséquence est postérieure et en découle.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — La subordonnée circonstancielle est déplaçable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Une proposition subordonnée circonstancielle peut généralement être déplacée en tête de phrase sans rendre la phrase agrammaticale.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Les subordonnées circonstancielles partagent avec les compléments circonstanciels la propriété d''être déplaçables : « Comme il pleuvait, il a pris son parapluie. » → « Il a pris son parapluie, comme il pleuvait. » Cette mobilité est un critère d''identification des propositions circonstancielles. Les subordonnées essentielles (complétives COD) ne peuvent pas être déplacées de la même façon.',
  'Croire que la position des subordonnées est fixe. La mobilité est précisément l''un des critères qui distingue la subordonnée circonstancielle (CC) de la subordonnée conjonctive complétive (COD, non déplaçable).',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Identifier une subordonnée de temps
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'qcm',
  'Dans la phrase « Il est rentré avant que la nuit tombe. », la subordonnée circonstancielle est de quel type ?',
  NULL,
  '[{"id":"a","label":"De cause"},{"id":"b","label":"De but"},{"id":"c","label":"De temps"},{"id":"d","label":"De condition"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Avant que » est une conjonction de temps indiquant l''antériorité de l''action principale par rapport à la subordonnée. Elle répond à la question « quand ? ». Le verbe de la subordonnée se met au subjonctif (« tombe »). D''autres conjonctions de temps : « quand », « lorsque » (simultanéité), « dès que », « aussitôt que » (postériorité), « après que » (postériorité, indicatif), « pendant que » (durée simultanée).',
  'Confondre « avant que » (temps : quand ?) avec une subordonnée de but (pourquoi faire ?). La différence : la subordonnée de temps indique le cadre temporel de l''action principale ; la subordonnée de but indique l''objectif visé.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Conjonction de but
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'qcm',
  'Laquelle de ces conjonctions introduit une subordonnée circonstancielle de but ?',
  NULL,
  '[{"id":"a","label":"puisque"},{"id":"b","label":"bien que"},{"id":"c","label":"afin que"},{"id":"d","label":"si"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Afin que » introduit une subordonnée de but, qui répond à la question « dans quel but ? », « pour quoi faire ? ». Elle est toujours suivie du subjonctif. Synonymes : « pour que », « de façon que », « de sorte que » (avec idée de finalité). Ne pas confondre : « puisque » = cause, « bien que » = concession, « si » = condition.',
  'Confondre but et cause. La subordonnée de but exprime ce qu''on cherche à atteindre (finalité future), la subordonnée de cause explique ce qui a provoqué l''action (antériorité). Test : la subordonnée de but est toujours au subjonctif et répond à « dans quel but ? ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Vrai/Faux — "Bien que" + subjonctif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La conjonction « bien que » introduit une subordonnée de concession et impose le subjonctif dans la proposition subordonnée.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. « Bien que » est une conjonction de concession/opposition : elle introduit une proposition dont le fait n''empêche pas la réalisation de la principale. Elle exige toujours le subjonctif. Exemple : « Bien qu''il soit fatigué, il travaille encore. » Autres conjonctions de concession + subjonctif : « quoique », « encore que », « malgré que » (critiqué par les puristes).',
  'Mettre l''indicatif après « bien que ». Contrairement à « quand » (indicatif), « bien que » exige toujours le subjonctif : « bien qu''il soit » et non « bien qu''il est ».',
  'valide',
  'CRPE Français',
  'premium',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Subordonnée de condition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'qcm',
  'Dans la phrase « Si tu travailles régulièrement, tu réussiras. », quelle est la valeur sémantique de la subordonnée ?',
  NULL,
  '[{"id":"a","label":"Cause"},{"id":"b","label":"Condition (hypothèse)"},{"id":"c","label":"Conséquence"},{"id":"d","label":"Opposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Si » est la conjonction de condition par excellence. Elle pose une hypothèse dont la réalisation permet l''accomplissement de la principale. On distingue trois systèmes hypothétiques : si + présent → futur (condition réalisable) ; si + imparfait → conditionnel présent (condition peu probable ou imaginaire) ; si + plus-que-parfait → conditionnel passé (condition irréelle dans le passé). Ici : si + présent → futur = condition réalisable.',
  'Confondre la condition (hypothèse qui permet une réalisation) et la cause (fait avéré qui explique). La subordonnée conditionnelle présente un fait éventuel, pas encore réalisé.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Identifier une subordonnée de conséquence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'qcm',
  'Dans la phrase « Il travaille tant qu''il s''épuise. », la subordonnée introduite par « tant que » exprime :',
  NULL,
  '[{"id":"a","label":"Une cause"},{"id":"b","label":"Une conséquence"},{"id":"c","label":"Un but"},{"id":"d","label":"Une opposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Tant que » avec une valeur d''intensité-conséquence introduit une subordonnée de conséquence (à ne pas confondre avec « tant que » temporel = « aussi longtemps que »). Ici, l''épuisement est la conséquence de l''intensité du travail. Autres conjonctions de conséquence : « si bien que », « de sorte que » (avec résultat effectif), « tellement… que », « au point que ».',
  'Confondre « tant que » de conséquence et « tant que » de temps (« Il attendra tant qu''il le faudra » = aussi longtemps que). Le contexte et l''intensité de l''idée permettent de distinguer les deux emplois.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — Les subordonnées de but requièrent le subjonctif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Les propositions subordonnées circonstancielles de but requièrent toujours le subjonctif.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Les subordonnées de but (introduites par « pour que », « afin que », « de crainte que », « de peur que »…) requièrent toujours le subjonctif. Cette règle s''explique par la nature du but : l''action n''est pas encore réalisée au moment où on l''exprime (elle est visée, souhaitée), ce qui justifie le mode subjonctif (mode du non-réel, du possible).',
  'Mettre l''indicatif après « pour que » ou « afin que ». Ce sont des conjonctions de finalité qui exigent systématiquement le subjonctif dans la subordonnée, quel que soit le temps de la principale.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Nommer le type de subordonnée avec "bien que"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'reponse_courte',
  'Dans la phrase « Bien qu''il fasse froid, elle ne porte pas de manteau. », comment appelle-t-on le type de relation logique exprimée par la subordonnée introduite par « bien que » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["concession","opposition","la concession","l''opposition","concessif"]}'::jsonb,
  '« Bien que » introduit une subordonnée de concession (ou d''opposition). Elle exprime un fait qui aurait pu empêcher la réalisation de la principale mais ne le fait pas. La principale et la subordonnée s''opposent logiquement : malgré le froid, elle ne porte pas de manteau. Cette relation d''opposition/concession se distingue de la cause (le froid provoque le port du manteau) et de la condition (si il fait froid, alors elle porte un manteau).',
  'Répondre « cause » : la concession implique au contraire que le fait de la subordonnée n''explique PAS la principale — il la contredit. « Bien que le froid soit présent, elle n''est PAS bien couverte » — le résultat est contraire à l''attendu.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Enseigner les subordonnées au cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '7b280000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'gram_subord_circonstancielles',
  'Propositions subordonnées circonstancielles',
  'Standard',
  'qcm',
  'Selon les programmes Éduscol du cycle 3, quelle approche est préconisée pour enseigner les relations logiques exprimées par les subordonnées circonstancielles ?',
  NULL,
  '[{"id":"a","label":"Faire mémoriser la liste exhaustive des conjonctions et leurs modes associés"},{"id":"b","label":"Partir de textes réels pour observer et manipuler les connecteurs logiques, puis systématiser les régularités"},{"id":"c","label":"Enseigner d''abord la morphologie verbale (conjugaison) avant toute approche syntaxique"},{"id":"d","label":"Ignorer les subordonnées circonstancielles avant le collège"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les ressources Éduscol du cycle 3 préconisent une approche par observation et manipulation de textes authentiques : l''élève observe comment les connecteurs logiques organisent le discours, manipule les subordonnées (déplacement, suppression, substitution) avant d''aboutir à une systématisation. Cette démarche inductive est plus efficace qu''une simple mémorisation de listes, car elle ancre la grammaire dans des pratiques de lecture et d''écriture.',
  'Privilégier la mémorisation de règles hors contexte. Au cycle 3, la grammaire doit être enseignée en situation : partir de textes lus et produits en classe pour construire des observations métalinguistiques.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

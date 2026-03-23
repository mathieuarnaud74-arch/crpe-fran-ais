-- Série : Triangles semblables — Critères et applications (7 exercices, Difficile, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_triangles_semblables',
  'Triangles semblables — Critères et applications', 'Difficile',
  'qcm',
  'Deux triangles sont dits semblables lorsque :',
  NULL,
  '[{"id":"a","label":"Ils ont la même aire"},{"id":"b","label":"Ils ont les mêmes longueurs de côtés"},{"id":"c","label":"Ils ont les mêmes angles deux à deux et leurs côtés homologues sont proportionnels"},{"id":"d","label":"Ils partagent un côté commun"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Deux triangles sont semblables si et seulement si leurs angles sont égaux deux à deux (ce qui entraîne la proportionnalité des côtés homologues). La similitude est une relation plus générale que l''isométrie : deux triangles semblables ont la même forme mais pas nécessairement la même taille. Le rapport de proportionnalité entre les côtés homologues est appelé le rapport de similitude (ou rapport d''agrandissement-réduction).',
  'Confondre triangles semblables et triangles isométriques (égaux). L''élève croit qu''il faut des longueurs identiques, alors que la similitude n''exige que la proportionnalité des côtés et l''égalité des angles.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_triangles_semblables',
  'Triangles semblables — Critères et applications', 'Difficile',
  'vrai_faux',
  'Pour prouver que deux triangles sont semblables, il suffit de montrer que deux paires d''angles sont respectivement égaux (critère AA).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le critère AA (Angle-Angle) est valide car la somme des angles d''un triangle vaut toujours 180°. Si deux angles d''un triangle sont respectivement égaux à deux angles d''un autre triangle, alors le troisième angle est automatiquement égal aussi (180° moins la somme des deux premiers). Ce critère est le plus utilisé en pratique pour démontrer la similitude de deux triangles.',
  'Penser qu''il faut vérifier les trois paires d''angles ou aussi les côtés. L''élève ne réalise pas que le troisième angle est déterminé par les deux premiers, rendant la vérification de deux paires suffisante.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_triangles_semblables',
  'Triangles semblables — Critères et applications', 'Difficile',
  'qcm',
  'Le triangle ABC a pour côtés AB = 3 cm, BC = 4 cm et AC = 5 cm. Le triangle DEF a pour côtés DE = 6 cm, EF = 8 cm et DF = 10 cm. Quel est le critère de similitude vérifié et quel est le rapport de similitude ?',
  NULL,
  '[{"id":"a","label":"Critère SSS — rapport 2"},{"id":"b","label":"Critère AA — rapport 2"},{"id":"c","label":"Critère SSS — rapport 0,5"},{"id":"d","label":"Critère SAS — rapport 2"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On vérifie que les rapports des côtés homologues sont tous égaux : DE/AB = 6/3 = 2, EF/BC = 8/4 = 2, DF/AC = 10/5 = 2. Les trois rapports sont identiques, ce qui satisfait le critère SSS (côté-côté-côté) de similitude. Le rapport de similitude est k = 2, ce qui signifie que le triangle DEF est un agrandissement du triangle ABC par un facteur 2.',
  'Confondre le sens du rapport : écrire 0,5 au lieu de 2 en calculant AB/DE au lieu de DE/AB. L''élève doit bien identifier quel triangle est l''agrandissement de l''autre pour orienter correctement le rapport.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_triangles_semblables',
  'Triangles semblables — Critères et applications', 'Difficile',
  'reponse_courte',
  'Les triangles RST et UVW sont semblables avec un rapport de similitude k = 3. Si RS = 5 cm, quelle est la longueur UV (côté homologue de RS) ? Donner la réponse en cm.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15","15 cm"]}'::jsonb,
  'Puisque les deux triangles sont semblables avec un rapport k = 3, chaque côté du triangle UVW est 3 fois plus grand que le côté homologue du triangle RST. Donc UV = k × RS = 3 × 5 = 15 cm. Le rapport de similitude s''applique de manière uniforme à tous les côtés homologues.',
  'Diviser au lieu de multiplier : calculer 5 ÷ 3 ≈ 1,67 au lieu de 5 × 3 = 15. L''élève inverse l''opération en confondant agrandissement et réduction.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_triangles_semblables',
  'Triangles semblables — Critères et applications', 'Difficile',
  'qcm',
  'Dans un triangle ABC, la droite (DE) est parallèle à (BC) avec D sur [AB] et E sur [AC]. On a AD = 4, DB = 6 et DE = 3. Quelle méthode permet de démontrer que les triangles ADE et ABC sont semblables ?',
  NULL,
  '[{"id":"a","label":"Le critère AA : l''angle A est commun et les angles correspondants sont égaux (parallélisme)"},{"id":"b","label":"Le critère SSS : on connaît les trois côtés de chaque triangle"},{"id":"c","label":"Le critère SAS : on connaît deux côtés et l''angle entre eux"},{"id":"d","label":"Le théorème de Pythagore appliqué aux deux triangles"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Puisque (DE) est parallèle à (BC), le théorème de Thalès s''applique. L''angle A est commun aux deux triangles. De plus, les droites parallèles (DE) et (BC) coupées par la sécante (AB) forment des angles correspondants égaux : l''angle ADE = l''angle ABC. Par le critère AA (deux angles égaux), les triangles ADE et ABC sont semblables. C''est la configuration classique du théorème de Thalès.',
  'Chercher à utiliser le critère SSS alors qu''on ne connaît pas tous les côtés. L''élève ne pense pas à exploiter le parallélisme pour identifier les angles égaux, qui est la voie la plus directe.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_triangles_semblables',
  'Triangles semblables — Critères et applications', 'Difficile',
  'reponse_courte',
  'Un poteau vertical de 2 m projette une ombre de 3 m au sol. Au même moment, un arbre projette une ombre de 12 m. En utilisant la similitude des triangles formés par les objets, leurs ombres et les rayons du soleil, quelle est la hauteur de l''arbre en mètres ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8","8 m","8m"]}'::jsonb,
  'Les rayons du soleil étant parallèles, les triangles formés par le poteau + son ombre et l''arbre + son ombre sont semblables (critère AA : angle droit au sol et angle des rayons identique). Le rapport de similitude est : ombre arbre / ombre poteau = 12/3 = 4. Donc la hauteur de l''arbre = 4 × 2 = 8 m. C''est une application concrète classique de la similitude des triangles.',
  'Additionner au lieu de multiplier : calculer 2 + 12 − 3 = 11 m. L''élève ne met pas en place le produit en croix ou le rapport de proportionnalité correct entre les deux triangles semblables.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_triangles_semblables',
  'Triangles semblables — Critères et applications', 'Difficile',
  'qcm',
  'Dans un triangle ABC, la droite (DE) est parallèle à (BC) avec D sur [AB] et E sur [AC]. On sait que AD = 4 cm, AB = 10 cm et BC = 15 cm. En combinant le théorème de Thalès et la similitude des triangles ADE et ABC, quelle est la longueur DE ?',
  NULL,
  '[{"id":"a","label":"6 cm"},{"id":"b","label":"9 cm"},{"id":"c","label":"7,5 cm"},{"id":"d","label":"10 cm"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les triangles ADE et ABC sont semblables (critère AA via le parallélisme). Le rapport de similitude est k = AD/AB = 4/10 = 2/5. D''après le théorème de Thalès, DE/BC = AD/AB. Donc DE = (2/5) × 15 = 6 cm. On retrouve ce résultat en appliquant directement la proportionnalité des côtés homologues dans les triangles semblables.',
  'Calculer 15 × 10/4 = 37,5 en inversant le rapport. L''élève place le mauvais triangle au numérateur et oublie que ADE est la réduction de ABC (et non l''inverse), car D est entre A et B.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

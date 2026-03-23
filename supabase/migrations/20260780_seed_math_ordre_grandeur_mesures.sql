-- Seed: Ordres de grandeur des mesures (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Facile',
  'qcm',
  'Quel est l''ordre de grandeur de la hauteur d''un immeuble de 5 étages ?',
  NULL,
  '[{"id":"a","label":"1,5 m"},{"id":"b","label":"15 m"},{"id":"c","label":"150 m"},{"id":"d","label":"1 500 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un étage mesure environ 3 mètres de hauteur (du sol au plafond, plus l''épaisseur du plancher). Un immeuble de 5 étages mesure donc environ 5 × 3 = 15 m. L''ordre de grandeur est bien 15 m (ou une dizaine de mètres). Pour repère : un homme adulte mesure environ 1,75 m, donc un immeuble de 5 étages correspond à environ 8 à 9 fois la taille d''un adulte. Développer le sens des ordres de grandeur est un objectif explicite des programmes Éduscol au cycle 3 : l''élève doit savoir estimer une mesure avant de la calculer ou de la mesurer.',
  'Confondre les ordres de grandeur : 150 m correspondrait à un gratte-ciel de 50 étages, pas à un immeuble de 5 étages.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Facile',
  'qcm',
  'Parmi les propositions suivantes, laquelle donne un ordre de grandeur raisonnable pour la masse d''une pomme ?',
  NULL,
  '[{"id":"a","label":"15 g"},{"id":"b","label":"150 g"},{"id":"c","label":"1,5 kg"},{"id":"d","label":"15 kg"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Une pomme de taille moyenne pèse entre 120 g et 200 g, soit un ordre de grandeur de 150 g. Pour comparaison : 15 g correspond au poids d''une cuillère à soupe de sucre, 1,5 kg au poids d''une bouteille d''eau d''1,5 L, et 15 kg au poids d''un enfant de 3 ans. L''estimation de la masse d''objets courants fait partie des compétences de grandeurs et mesures du cycle 3 (Éduscol). L''élève doit construire un réseau de repères de masse pour développer son sens critique face à des valeurs numériques.',
  'Ne pas avoir de repères concrets et choisir 1,5 kg, qui est dix fois trop lourd pour une pomme.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Facile',
  'vrai_faux',
  'Une baignoire standard a une contenance d''environ 200 litres.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Une baignoire standard a une contenance comprise entre 150 et 250 litres, avec une valeur typique autour de 200 L. Pour comparaison : un verre d''eau contient environ 25 cL (0,25 L), un seau environ 10 L, et une piscine municipale environ 1 000 000 L (1 000 m³). Connaître les ordres de grandeur des contenances est essentiel pour donner du sens aux conversions d''unités. Les programmes Éduscol cycle 3 insistent sur la construction de repères personnels pour les grandeurs courantes (longueurs, masses, contenances).',
  'Confondre litres et centilitres : penser qu''une baignoire contient 200 cL (soit seulement 2 L), ce qui est absurde.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Facile',
  'vrai_faux',
  'Un enfant de 10 ans qui pèse 50 kg, est-ce un ordre de grandeur plausible ?',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Un enfant de 10 ans pèse en moyenne entre 25 et 35 kg. Une masse de 50 kg correspond plutôt à un adolescent de 14-15 ans ou à un adulte de petite corpulence. Bien que 50 kg ne soit pas totalement impossible (certains enfants en surpoids peuvent atteindre ce poids), ce n''est pas un ordre de grandeur « typique » pour cet âge. Les programmes Éduscol encouragent les enseignants à développer l''esprit critique des élèves face aux données numériques : savoir juger si une mesure est plausible ou non est une compétence transversale majeure en mathématiques.',
  'Accepter la valeur sans la confronter à des repères connus. L''élève doit mobiliser ses connaissances du monde réel pour juger la plausibilité.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Facile',
  'qcm',
  'Quelle unité est la plus appropriée pour mesurer la distance entre Paris et Lyon ?',
  NULL,
  '[{"id":"a","label":"Le mètre (m)"},{"id":"b","label":"Le centimètre (cm)"},{"id":"c","label":"Le kilomètre (km)"},{"id":"d","label":"Le millimètre (mm)"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La distance Paris-Lyon est d''environ 465 km. Exprimer cette distance en mètres (465 000 m), en centimètres (46 500 000 cm) ou en millimètres serait peu pratique et ne permettrait pas de se représenter la grandeur. Le choix de l''unité adaptée dépend de l''ordre de grandeur de la mesure : on utilise le km pour les distances géographiques, le m pour les dimensions d''une pièce, le cm pour un cahier, le mm pour l''épaisseur d''un trait. Associer la bonne unité à une situation de mesure est un attendu fondamental du cycle 3 (Éduscol).',
  'Répondre « le mètre » par habitude scolaire, sans réfléchir à l''ordre de grandeur de la distance concernée.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Facile',
  'qcm',
  'Un élève écrit dans son cahier : « La longueur de la cour de récréation est de 4 500 m. » Cette mesure est-elle vraisemblable ?',
  NULL,
  '[{"id":"a","label":"Oui, c''est une cour très grande"},{"id":"b","label":"Non, 4 500 m = 4,5 km, c''est absurde pour une cour d''école"},{"id":"c","label":"Oui, cela correspond à 45 mètres"},{"id":"d","label":"Non, une cour mesure au moins 10 km"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''élève a probablement voulu écrire 45 m (une cour de récréation mesure typiquement entre 30 et 60 m de longueur). Il a confondu les unités ou a ajouté des zéros par erreur. En effet, 4 500 m = 4,5 km, ce qui correspond à la longueur d''un petit village, pas d''une cour d''école ! Identifier des mesures absurdes est un exercice fondamental pour développer le sens critique mathématique. Les programmes Éduscol insistent sur la nécessité d''estimer avant de mesurer et de vérifier la plausibilité d''un résultat après calcul.',
  'Ne pas convertir 4 500 m en km et accepter la valeur sans esprit critique.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Facile',
  'reponse_courte',
  'Un médecin doit prescrire un médicament. La dose est de 5 mg par kg de masse corporelle pour un enfant de 30 kg. La boîte contient des comprimés de 50 mg. Combien de comprimés l''enfant doit-il prendre ? (Répondez par un nombre entier)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","3 comprimés"]}'::jsonb,
  'On calcule d''abord la dose totale nécessaire : 5 mg/kg × 30 kg = 150 mg. Chaque comprimé contient 50 mg. Nombre de comprimés : 150 ÷ 50 = 3 comprimés. Ce problème combine le calcul de proportionnalité (dose par kg) et la division pour trouver le nombre de comprimés. Il s''inscrit dans un contexte réel (médical) qui donne du sens au calcul et sensibilise à l''importance de la précision dans les ordres de grandeur. Les programmes Éduscol recommandent de varier les contextes de résolution de problèmes pour que l''élève perçoive l''utilité sociale des mathématiques.',
  'Oublier une étape : calculer la dose totale mais ne pas diviser par la dose d''un comprimé, ou inversement.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

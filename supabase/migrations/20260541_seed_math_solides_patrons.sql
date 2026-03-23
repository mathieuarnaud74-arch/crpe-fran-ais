-- Migration: seed exercices Solides et patrons (géométrie, intermédiaire)
-- 7 exercices : Q1-Q2 amorce, Q3-Q5 consolidation, Q6-Q7 approfondissement

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire', 'Intermediaire', 'qcm',
  'Combien de faces, arêtes et sommets possède un cube ?',
  NULL,
  '[{"id":"a","label":"6 faces, 12 arêtes, 8 sommets"},{"id":"b","label":"4 faces, 8 arêtes, 4 sommets"},{"id":"c","label":"6 faces, 8 arêtes, 12 sommets"},{"id":"d","label":"8 faces, 12 arêtes, 6 sommets"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le cube possède 6 faces carrées, 12 arêtes et 8 sommets. On peut vérifier avec la relation d''Euler pour les polyèdres convexes : F + S - A = 2, soit 6 + 8 - 12 = 2. Cette formule permet de contrôler rapidement le dénombrement des éléments d''un solide.',
  'Confondre le nombre d''arêtes et le nombre de sommets : un cube a plus d''arêtes (12) que de sommets (8).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire', 'Intermediaire', 'vrai_faux',
  'Le patron d''un cylindre est composé de deux disques et d''un rectangle dont la longueur est égale au périmètre du cercle de base.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vrai. Le patron d''un cylindre de révolution se compose de deux disques (les bases) et d''un rectangle (la surface latérale). La longueur de ce rectangle correspond exactement au périmètre du cercle de base, soit 2πr, car le rectangle s''enroule autour des bases pour former la surface latérale. La largeur du rectangle correspond à la hauteur du cylindre.',
  'Oublier que la longueur du rectangle doit correspondre au périmètre du cercle de base (2πr) et non au diamètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire', 'Intermediaire', 'qcm',
  'Parmi ces descriptions de patrons, lequel NE PEUT PAS être le patron d''un cube ?',
  NULL,
  '[{"id":"a","label":"Quatre carrés alignés en colonne, un carré à gauche du deuxième et un carré à droite du deuxième (forme de croix)"},{"id":"b","label":"Trois carrés alignés en ligne, puis trois carrés alignés en ligne juste en dessous, décalés d''un cran vers la droite (forme en escalier)"},{"id":"c","label":"Quatre carrés alignés en ligne, un carré au-dessus du premier et un carré en dessous du premier"},{"id":"d","label":"Quatre carrés alignés en ligne, un carré au-dessus du premier et un carré au-dessus du dernier"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'Le patron décrit en (d) ne peut pas former un cube : en le pliant, les deux carrés situés au-dessus du premier et du dernier carré de la ligne se superposeraient, créant un conflit. Un patron de cube doit permettre de replier exactement 6 faces sans chevauchement. Il existe 11 patrons possibles du cube, et il est utile de les connaître pour identifier rapidement les patrons impossibles.',
  'Ne pas visualiser mentalement le pliage du patron et accepter un patron dont deux faces se superposent une fois replié.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire', 'Intermediaire', 'reponse_courte',
  'Un pavé droit mesure 5 cm × 3 cm × 4 cm. Calculez son volume en cm³ et son aire totale en cm². Donnez votre réponse sous la forme : volume et aire (exemple : 60 et 94).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["60 et 94","60 cm³ et 94 cm²","60cm³ et 94cm²","V = 60 cm³ et A = 94 cm²","60 ; 94","60, 94"]}'::jsonb,
  'Le volume d''un pavé droit se calcule par V = L × l × h = 5 × 3 × 4 = 60 cm³. L''aire totale se calcule en additionnant les aires des 6 faces rectangulaires, regroupées par paires : A = 2 × (L×l + L×h + l×h) = 2 × (5×3 + 5×4 + 3×4) = 2 × (15 + 20 + 12) = 2 × 47 = 94 cm².',
  'Oublier de multiplier par 2 dans le calcul de l''aire totale : un pavé droit a 3 paires de faces opposées identiques, soit 6 faces au total.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire', 'Intermediaire', 'qcm',
  'Un cône de révolution a un rayon de base de 3 cm et une hauteur de 4 cm. Quel est son volume ? (Arrondir au cm³ près)',
  NULL,
  '[{"id":"a","label":"113 cm³"},{"id":"b","label":"38 cm³"},{"id":"c","label":"75 cm³"},{"id":"d","label":"25 cm³"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le volume d''un cône de révolution se calcule par V = (1/3) × π × r² × h. Ici : V = (1/3) × π × 3² × 4 = (1/3) × π × 9 × 4 = 12π ≈ 37,7 cm³, soit environ 38 cm³. Le piège classique est d''oublier le coefficient 1/3 : sans lui, on obtient le volume du cylindre correspondant (π × r² × h = 36π ≈ 113 cm³).',
  'Oublier le facteur 1/3 dans la formule du volume du cône et calculer le volume du cylindre à la place (113 cm³).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire', 'Intermediaire', 'reponse_courte',
  'Une boîte de conserve cylindrique a un diamètre de 8 cm et une hauteur de 12 cm. Quelle surface de métal faut-il pour la fabriquer ? (Arrondir au cm² près)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["402 cm²","402","402cm²","environ 402 cm²"]}'::jsonb,
  'Le rayon vaut r = 8 / 2 = 4 cm. L''aire totale d''un cylindre se compose de deux disques (les bases) et d''une surface latérale (un rectangle une fois déroulé). Aire totale = 2 × π × r² + 2 × π × r × h = 2π × 16 + 2π × 4 × 12 = 32π + 96π = 128π ≈ 402,1 cm², soit environ 402 cm².',
  'Utiliser le diamètre (8 cm) au lieu du rayon (4 cm) dans les formules, ce qui quadruple l''aire obtenue.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire', 'Intermediaire', 'qcm',
  'On remplit entièrement d''eau une pyramide à base carrée de côté 6 cm et de hauteur 10 cm, puis on verse cette eau dans un cube de 6 cm de côté. L''eau dépasse-t-elle du cube ?',
  NULL,
  '[{"id":"a","label":"Oui, l''eau dépasse car le volume de la pyramide est supérieur à celui du cube"},{"id":"b","label":"Non, l''eau ne dépasse pas car le volume de la pyramide est inférieur à celui du cube"},{"id":"c","label":"L''eau remplit exactement le cube, sans dépasser"},{"id":"d","label":"On ne peut pas savoir sans connaître la forme exacte de la base"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le volume de la pyramide vaut V = (1/3) × Aire_base × h = (1/3) × 6² × 10 = (1/3) × 36 × 10 = 120 cm³. Le volume du cube vaut V = 6³ = 216 cm³. Comme 120 cm³ < 216 cm³, l''eau contenue dans la pyramide ne remplit pas entièrement le cube et ne dépasse donc pas. L''eau occuperait environ 55,6 % du volume du cube.',
  'Oublier le facteur 1/3 dans le volume de la pyramide et trouver 360 cm³, ce qui laisserait croire que l''eau dépasse.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

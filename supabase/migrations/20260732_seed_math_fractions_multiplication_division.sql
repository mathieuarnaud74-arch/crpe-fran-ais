-- Seed: Fractions — Multiplication et division (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_fractions_multiplication_division',
  'Fractions — Multiplication et division', 'Intermediaire',
  'qcm',
  'Calculez le produit : 3/4 × 2/5.',
  NULL,
  '[{"id":"a","label":"5/9"},{"id":"b","label":"6/20"},{"id":"c","label":"3/10"},{"id":"d","label":"6/9"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Pour multiplier deux fractions, on multiplie les numérateurs entre eux et les dénominateurs entre eux : (3 × 2) / (4 × 5) = 6/20. Ensuite, on simplifie la fraction obtenue en divisant le numérateur et le dénominateur par leur PGCD. PGCD(6, 20) = 2, donc 6/20 = 3/10. La réponse (b) est le résultat avant simplification, ce qui n''est pas faux mais n''est pas la forme irréductible. La réponse (a) est une erreur classique où l''on additionne au lieu de multiplier (3+2=5 et 4+5=9). Toujours penser à simplifier le résultat final.',
  'Additionner les numérateurs et les dénominateurs au lieu de les multiplier, ou oublier de simplifier la fraction obtenue.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_fractions_multiplication_division',
  'Fractions — Multiplication et division', 'Intermediaire',
  'reponse_courte',
  'Calculez : 5/6 × 3. Donnez le résultat sous forme de fraction irréductible ou de nombre entier si possible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5/2","5 / 2","2,5","2.5"]}'::jsonb,
  'Pour multiplier une fraction par un entier, on multiplie le numérateur par l''entier et on conserve le dénominateur : (5 × 3) / 6 = 15/6. On simplifie ensuite : PGCD(15, 6) = 3, donc 15/6 = 5/2. Le résultat 5/2 est une fraction irréductible (5 et 2 sont premiers entre eux). On peut aussi l''écrire 2,5 en notation décimale, ou 2 + 1/2 en écriture mixte. Astuce de simplification avant calcul : on peut simplifier « en croix » avant de multiplier. Ici, 3 et 6 ont un facteur commun de 3 : 5/6 × 3 = 5/(6÷3) × (3÷3) = 5/2 × 1 = 5/2.',
  'Multiplier à la fois le numérateur et le dénominateur par 3, obtenant ainsi 15/18 = 5/6, c''est-à-dire revenir au point de départ sans avoir effectué le calcul.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_fractions_multiplication_division',
  'Fractions — Multiplication et division', 'Intermediaire',
  'qcm',
  'Quel est l''inverse (ou réciproque) de la fraction 7/3 ?',
  NULL,
  '[{"id":"a","label":"−7/3"},{"id":"b","label":"3/7"},{"id":"c","label":"7/3"},{"id":"d","label":"1/7"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''inverse (ou réciproque) d''une fraction a/b est la fraction b/a, obtenue en échangeant le numérateur et le dénominateur. L''inverse de 7/3 est donc 3/7. On vérifie : 7/3 × 3/7 = 21/21 = 1. Le produit d''un nombre par son inverse est toujours égal à 1. Attention aux confusions : l''opposé de 7/3 est −7/3 (réponse a), ce qui est différent de l''inverse. L''opposé change le signe (la somme vaut 0), tandis que l''inverse échange numérateur et dénominateur (le produit vaut 1). Tout nombre non nul admet un inverse. Le nombre 0 n''a pas d''inverse.',
  'Confondre l''inverse (b/a) avec l''opposé (−a/b). L''inverse sert à transformer une division en multiplication, tandis que l''opposé sert dans les soustractions.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_fractions_multiplication_division',
  'Fractions — Multiplication et division', 'Intermediaire',
  'qcm',
  'Calculez : 4/9 ÷ 2/3.',
  NULL,
  '[{"id":"a","label":"8/27"},{"id":"b","label":"2/3"},{"id":"c","label":"6/12"},{"id":"d","label":"12/18"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Diviser par une fraction revient à multiplier par son inverse. Donc : 4/9 ÷ 2/3 = 4/9 × 3/2. On calcule : (4 × 3) / (9 × 2) = 12/18. On simplifie : PGCD(12, 18) = 6, donc 12/18 = 2/3. La réponse (d) donne le résultat non simplifié, qui est mathématiquement correct mais pas sous forme irréductible. La réponse (a) correspond à 4/9 × 2/3 (une multiplication directe au lieu d''une division). Méthode : pour diviser par a/b, on multiplie par b/a. C''est la règle fondamentale de la division des fractions.',
  'Multiplier directement les deux fractions au lieu de multiplier par l''inverse de la deuxième, ou oublier de simplifier le résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_fractions_multiplication_division',
  'Fractions — Multiplication et division', 'Intermediaire',
  'reponse_courte',
  'Un réservoir contient 60 litres d''eau. On en utilise les 3/5. Combien de litres a-t-on utilisés ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["36 litres","36 L","36l","36"]}'::jsonb,
  'Prendre les 3/5 d''une quantité, c''est la multiplier par 3/5. On calcule : 60 × 3/5 = (60 × 3) / 5 = 180 / 5 = 36 litres. On peut aussi raisonner en deux étapes : d''abord calculer 1/5 de 60, soit 60 ÷ 5 = 12 litres, puis multiplier par 3 : 12 × 3 = 36 litres. « Prendre une fraction d''une quantité » est l''une des interprétations fondamentales de la multiplication par une fraction. Au CRPE, ce type de problème est récurrent et teste la compréhension du sens de la multiplication par une fraction.',
  'Diviser 60 par 3 puis par 5 (obtenant 4), en confondant « les 3/5 de 60 » avec « 60 divisé par 3 et par 5 ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_fractions_multiplication_division',
  'Fractions — Multiplication et division', 'Intermediaire',
  'qcm',
  'Un rectangle a une longueur de 7/4 m et une largeur de 2/3 m. Quelle est son aire ?',
  NULL,
  '[{"id":"a","label":"9/7 m²"},{"id":"b","label":"7/6 m²"},{"id":"c","label":"14/12 m²"},{"id":"d","label":"14/7 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''aire d''un rectangle est le produit de sa longueur par sa largeur : A = L × l = 7/4 × 2/3. On multiplie les numérateurs entre eux et les dénominateurs entre eux : (7 × 2) / (4 × 3) = 14/12. On simplifie : PGCD(14, 12) = 2, donc 14/12 = 7/6 m². En écriture décimale, 7/6 ≈ 1,167 m². En écriture mixte : 1 + 1/6 m². La réponse (c) donne le résultat non simplifié 14/12, ce qui est correct mais pas sous forme irréductible. Astuce : on pouvait simplifier avant de multiplier en réduisant 2 (numérateur) avec 4 (dénominateur) par 2, obtenant directement 7/2 × 1/3 = 7/6.',
  'Additionner les fractions au lieu de les multiplier pour calculer l''aire, ou oublier l''unité m² (mètre carré) et non m.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_fractions_multiplication_division',
  'Fractions — Multiplication et division', 'Intermediaire',
  'vrai_faux',
  'Le résultat du calcul 2/3 × 9/4 ÷ 3/2 est égal à 1.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. On effectue les opérations de gauche à droite. D''abord la multiplication : 2/3 × 9/4 = (2 × 9) / (3 × 4) = 18/12 = 3/2 (après simplification par 6). Ensuite la division : 3/2 ÷ 3/2 = 3/2 × 2/3 = (3 × 2) / (2 × 3) = 6/6 = 1. On peut aussi simplifier dès le départ : 2/3 × 9/4 × 2/3 (en transformant la division par 3/2 en multiplication par 2/3). On obtient : (2 × 9 × 2) / (3 × 4 × 3) = 36/36 = 1. Ce type d''exercice mêlant multiplication et division de fractions est classique au CRPE et nécessite de bien maîtriser la priorité des opérations et la transformation de la division en multiplication par l''inverse.',
  'Ne pas transformer la division en multiplication par l''inverse, ou se tromper dans l''ordre des opérations en effectuant la division avant la multiplication.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

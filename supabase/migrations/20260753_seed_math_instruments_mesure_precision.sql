-- Série : Instruments de mesure et précision
-- Sous-domaine : grandeurs_mesures
-- Niveau : Facile | Accès : free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision', 'Instruments de mesure et précision', 'Facile',
  'qcm', 'Quel instrument utilise-t-on pour mesurer la masse d''un objet ?', NULL,
  '[{"id":"a","label":"Une règle graduée"},{"id":"b","label":"Une balance"},{"id":"c","label":"Une éprouvette graduée"},{"id":"d","label":"Un rapporteur"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La balance est l''instrument qui permet de mesurer la masse d''un objet (en grammes ou kilogrammes). La règle mesure des longueurs, l''éprouvette graduée mesure des volumes de liquides, et le rapporteur mesure des angles. Chaque grandeur physique possède son instrument de mesure adapté.',
  'Confondre masse et volume : l''élève choisit l''éprouvette graduée, qui mesure un volume de liquide et non une masse.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision', 'Instruments de mesure et précision', 'Facile',
  'qcm', 'Une règle graduée en millimètres permet de mesurer avec une précision de :', NULL,
  '[{"id":"a","label":"1 cm"},{"id":"b","label":"0,5 mm"},{"id":"c","label":"1 mm"},{"id":"d","label":"0,1 mm"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La précision d''un instrument de mesure correspond à la plus petite graduation lisible. Sur une règle graduée en millimètres, la plus petite division est 1 mm. On peut éventuellement estimer à l''œil entre deux graduations, mais la précision garantie par l''instrument est de 1 mm.',
  'Penser que l''on peut lire « entre les graduations » avec une précision de 0,5 mm ou 0,1 mm : sans loupe ni vernier, la précision reste celle de la plus petite graduation.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision', 'Instruments de mesure et précision', 'Facile',
  'vrai_faux', 'Pour lire correctement le volume d''un liquide dans une éprouvette graduée, l''élève doit placer ses yeux au niveau du bas du ménisque (la surface courbe du liquide).', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''eau et la plupart des liquides courants forment un ménisque concave (creux au centre) dans une éprouvette en verre. La lecture correcte se fait au niveau du point le plus bas du ménisque, les yeux à la même hauteur que la surface du liquide, pour éviter les erreurs de parallaxe.',
  'Lire au niveau du haut du ménisque (bords remontés) : l''élève surestime le volume car les bords du ménisque sont plus hauts que le centre.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision', 'Instruments de mesure et précision', 'Facile',
  'qcm', 'Un élève mesure la longueur d''un crayon et trouve 14,7 cm avec une règle graduée en millimètres. Combien de chiffres significatifs comporte cette mesure ?', NULL,
  '[{"id":"a","label":"2"},{"id":"b","label":"3"},{"id":"c","label":"4"},{"id":"d","label":"1"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La mesure 14,7 cm comporte 3 chiffres significatifs : le 1, le 4 et le 7. Tous les chiffres non nuls sont significatifs, et ici aucun zéro n''intervient. Le nombre de chiffres significatifs traduit la précision de la mesure : 14,7 cm est plus précis que 15 cm (2 chiffres significatifs).',
  'Compter uniquement les chiffres après la virgule (1 seul) ou confondre chiffres significatifs et décimales.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision', 'Instruments de mesure et précision', 'Facile',
  'reponse_courte', 'Un élève mesure trois fois la longueur d''un même segment et obtient : 8,3 cm ; 8,5 cm ; 8,4 cm. Quelle est l''erreur maximale entre ces mesures, en cm ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["0,2","0,2 cm","0.2","0,2cm"]}'::jsonb,
  'L''erreur maximale (ou étendue) correspond à la différence entre la plus grande et la plus petite mesure : 8,5 − 8,3 = 0,2 cm. Cette dispersion des résultats illustre l''incertitude de mesure : aucun instrument ne donne un résultat parfaitement exact. En répétant les mesures, on peut estimer cette incertitude.',
  'Calculer la moyenne (8,4 cm) au lieu de l''étendue : l''élève confond la valeur centrale et la dispersion des mesures.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision', 'Instruments de mesure et précision', 'Facile',
  'qcm', 'Un rectangle mesure exactement 4 cm de large. Sa longueur, mesurée à la règle, est « environ 7 cm ». Peut-on dire que son aire est exactement 28 cm² ?', NULL,
  '[{"id":"a","label":"Oui, car 4 × 7 = 28"},{"id":"b","label":"Non, car la longueur est approximative, donc l''aire l''est aussi"},{"id":"c","label":"Oui, si on arrondit correctement"},{"id":"d","label":"Non, car on ne peut jamais calculer une aire exacte"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Si la longueur est approximative (« environ 7 cm »), le résultat du calcul d''aire l''est aussi. Un résultat ne peut pas être plus précis que les données utilisées pour le calculer. Si la longueur est entre 6,5 et 7,5 cm, l''aire est entre 26 et 30 cm². La notion de valeur approchée versus valeur exacte est fondamentale en mesure.',
  'Considérer que le calcul rend le résultat exact : l''élève pense que 4 × 7 = 28 est un résultat exact en oubliant que 7 est une approximation.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision', 'Instruments de mesure et précision', 'Facile',
  'reponse_courte', 'Lors d''un TP de sciences, l''élève doit mesurer 250 mL d''eau. Il dispose d''une éprouvette de 500 mL graduée tous les 10 mL et d''une éprouvette de 250 mL graduée tous les 2 mL. Quel instrument doit-il choisir pour être le plus précis possible ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["éprouvette de 250 mL","l''éprouvette de 250 mL","250 mL","eprouvette de 250 mL","la petite éprouvette","l''éprouvette de 250mL"]}'::jsonb,
  'L''élève doit choisir l''éprouvette de 250 mL graduée tous les 2 mL. Elle offre une meilleure précision (± 2 mL) que l''éprouvette de 500 mL (± 10 mL). De plus, le volume demandé (250 mL) correspond exactement à sa capacité maximale, ce qui permet une lecture optimale. En situation de laboratoire, on choisit toujours l''instrument dont la capacité est la plus proche du volume à mesurer.',
  'Choisir la grande éprouvette parce qu''elle « contient plus » : l''élève confond capacité et précision, sans regarder la graduation.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

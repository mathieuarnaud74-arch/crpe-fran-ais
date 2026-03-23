-- Série : Figures complexes — Calculs d'aires composées (7 exercices, Difficile, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées', 'Difficile',
  'qcm',
  'Une figure est constituée d''un rectangle de 8 cm × 5 cm surmonté d''un demi-disque dont le diamètre correspond à la largeur du rectangle (5 cm). Quelle est l''aire totale de cette figure ? (On prendra π ≈ 3,14.)',
  NULL,
  '[{"id":"a","label":"49,81 cm²"},{"id":"b","label":"59,81 cm²"},{"id":"c","label":"79,63 cm²"},{"id":"d","label":"40 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''aire se décompose en deux parties. Aire du rectangle : 8 × 5 = 40 cm². Aire du demi-disque : le diamètre est 5 cm, donc le rayon est 2,5 cm. L''aire d''un disque complet serait π × 2,5² = π × 6,25 ≈ 19,625 cm². Le demi-disque vaut la moitié : 19,625 ÷ 2 ≈ 9,8125 ≈ 9,81 cm². Aire totale : 40 + 9,81 = 49,81 cm². La clé est de bien identifier le rayon (moitié du diamètre) et de ne prendre que la moitié de l''aire du disque.',
  'Répondre 79,63 cm² en prenant le diamètre (5 cm) comme rayon dans le calcul du demi-disque : π × 5² ÷ 2 = 39,25, puis 40 + 39,25 ≈ 79,63 cm². C''est l''erreur classique de confusion entre rayon et diamètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées', 'Difficile',
  'vrai_faux',
  'Pour calculer l''aire d''un cadre rectangulaire (rectangle évidé), on soustrait l''aire du rectangle intérieur de l''aire du rectangle extérieur.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''aire d''un cadre (ou couronne rectangulaire) s''obtient bien par différence : A_cadre = A_extérieur − A_intérieur. Si le rectangle extérieur mesure L × l et que le cadre a une bordure de largeur e, le rectangle intérieur mesure (L − 2e) × (l − 2e). Donc A_cadre = L × l − (L − 2e)(l − 2e). Cette méthode de soustraction est la stratégie fondamentale pour toute figure évidée (anneau circulaire, cadre, etc.).',
  'Tenter de calculer l''aire du cadre en multipliant le périmètre par la largeur du cadre : cette formule ne donne qu''une approximation et surestime l''aire réelle car elle compte deux fois les quatre coins.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées', 'Difficile',
  'qcm',
  'Un terrain en forme de L est constitué de deux rectangles accolés. Le premier mesure 12 m × 8 m et le second 6 m × 4 m. Quelle est l''aire totale du terrain ?',
  NULL,
  '[{"id":"a","label":"96 m²"},{"id":"b","label":"120 m²"},{"id":"c","label":"72 m²"},{"id":"d","label":"48 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour calculer l''aire d''une figure en L, on la décompose en rectangles simples et on additionne leurs aires. Aire du premier rectangle : 12 × 8 = 96 m². Aire du second rectangle : 6 × 4 = 24 m². Aire totale : 96 + 24 = 120 m². La stratégie de décomposition additive consiste à découper la figure complexe en figures simples dont on connaît les formules d''aire.',
  'Répondre 96 m² en ne calculant que l''aire du grand rectangle et en oubliant d''ajouter le second. L''élève ne décompose pas correctement la figure en L ou considère que le petit rectangle est inclus dans le grand.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées', 'Difficile',
  'reponse_courte',
  'Une couronne (anneau) est formée de deux cercles concentriques de rayons 10 cm et 6 cm. Calculer l''aire de la couronne en cm². Donner la valeur exacte en fonction de π.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["64π","64pi","64 pi","64×π","64*π"]}'::jsonb,
  'L''aire de la couronne est la différence entre l''aire du grand disque et l''aire du petit disque : A = π × R² − π × r² = π(R² − r²). Avec R = 10 cm et r = 6 cm : A = π(100 − 36) = 64π cm². On peut aussi factoriser : π(R − r)(R + r) = π × 4 × 16 = 64π cm². La valeur approchée est 64 × 3,14 ≈ 201 cm².',
  'Calculer π × (10 − 6)² = 16π en soustrayant d''abord les rayons puis en élevant au carré. C''est faux car (R − r)² ≠ R² − r². La soustraction doit porter sur les aires (les carrés), pas sur les rayons.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées', 'Difficile',
  'qcm',
  'Un jardin rectangulaire de 20 m × 15 m contient en son centre une allée circulaire (disque) de 3 m de rayon et deux massifs triangulaires rectangles identiques dans les coins, chacun de cathètes 4 m et 3 m. Quelle est l''aire disponible pour la pelouse ? (π ≈ 3,14)',
  NULL,
  '[{"id":"a","label":"259,74 m²"},{"id":"b","label":"271,74 m²"},{"id":"c","label":"283,74 m²"},{"id":"d","label":"300 m² − 28,26 m²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Aire du jardin : 20 × 15 = 300 m². Aire de l''allée circulaire : π × 3² = 9π ≈ 28,26 m². Aire d''un massif triangulaire : (4 × 3) ÷ 2 = 6 m². Deux massifs : 2 × 6 = 12 m² au total. On retire toutes les surfaces non disponibles : 300 − 28,26 − 12 = 259,74 m². La méthode consiste à calculer l''aire totale du terrain puis à soustraire chaque surface occupée (allée circulaire et massifs). Il est essentiel de n''oublier aucune surface à retrancher.',
  'Oublier de soustraire les massifs triangulaires et ne retirer que le disque : 300 − 28,26 = 271,74 m². L''élève ne prend en compte qu''une seule des surfaces à retrancher.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées', 'Difficile',
  'reponse_courte',
  'Un hexagone régulier de côté 6 cm est décomposé en triangles équilatéraux. Sachant que l''aire d''un triangle équilatéral de côté a est (a² × √3) ÷ 4, calculer l''aire de l''hexagone en cm². Donner la valeur exacte.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["54√3","54racine3","54 racine de 3","54*√3","54×√3"]}'::jsonb,
  'Un hexagone régulier se décompose en exactement 6 triangles équilatéraux dont le côté est égal au côté de l''hexagone. Aire d''un triangle équilatéral de côté 6 cm : (6² × √3) ÷ 4 = (36√3) ÷ 4 = 9√3 cm². Aire de l''hexagone : 6 × 9√3 = 54√3 cm² ≈ 93,53 cm². Cette décomposition en triangles équilatéraux est la méthode standard pour calculer l''aire des polygones réguliers.',
  'Diviser l''hexagone en 4 triangles au lieu de 6 et obtenir 36√3 cm². L''élève confond le nombre de triangles de la décomposition ou utilise une décomposition incorrecte de l''hexagone.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées', 'Difficile',
  'qcm',
  'Un terrain trapézoïdal a des bases de 30 m et 18 m, et une hauteur de 12 m. On y construit un bâtiment rectangulaire de 10 m × 8 m et une aire de jeux en forme de demi-disque de diamètre 8 m. Quelle surface reste disponible ? (π ≈ 3,14)',
  NULL,
  '[{"id":"a","label":"182,88 m²"},{"id":"b","label":"207,88 m²"},{"id":"c","label":"262,88 m²"},{"id":"d","label":"288 m² − 80 m²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Aire du trapèze : [(30 + 18) × 12] ÷ 2 = (48 × 12) ÷ 2 = 576 ÷ 2 = 288 m². Aire du bâtiment rectangulaire : 10 × 8 = 80 m². Aire du demi-disque (diamètre 8 m, donc rayon 4 m) : (π × 4²) ÷ 2 = (16π) ÷ 2 = 8π ≈ 25,12 m². Surface occupée totale : 80 + 25,12 = 105,12 m². Surface restante : 288 − 105,12 = 182,88 m². La démarche suit trois étapes : calculer l''aire globale du terrain (trapèze), calculer l''aire de chaque zone occupée séparément, puis soustraire la somme des aires occupées.',
  'Oublier de diviser par 2 dans le calcul de l''aire du trapèze et obtenir 576 m² au lieu de 288 m², ou prendre le diamètre (8 m) comme rayon pour le demi-disque.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

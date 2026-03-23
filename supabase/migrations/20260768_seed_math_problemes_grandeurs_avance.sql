-- Série : Problèmes de grandeurs — Niveau avancé CRPE
-- Sous-domaine : grandeurs_mesures
-- Niveau : Difficile | Accès : premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance', 'Problèmes de grandeurs — Niveau avancé CRPE', 'Difficile',
  'qcm', 'Un terrain rectangulaire a un périmètre de 60 m et une aire de 200 m². Quelles sont ses dimensions ?', NULL,
  '[{"id":"a","label":"10 m × 20 m"},{"id":"b","label":"15 m × 15 m"},{"id":"c","label":"8 m × 25 m"},{"id":"d","label":"12 m × 18 m"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Soit L et l les dimensions. On a : 2(L + l) = 60, donc L + l = 30, et L × l = 200. On cherche deux nombres dont la somme est 30 et le produit 200. En résolvant : L et l sont solutions de x² − 30x + 200 = 0. Δ = 900 − 800 = 100. x = (30 ± 10) / 2, soit 20 et 10. Les dimensions sont 10 m × 20 m.',
  'Tester uniquement l''option b (15 × 15) car le périmètre convient (60 m), sans vérifier l''aire (225 ≠ 200) : l''élève ne vérifie qu''une seule condition.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance', 'Problèmes de grandeurs — Niveau avancé CRPE', 'Difficile',
  'reponse_courte', 'On souhaite clôturer un enclos rectangulaire de 800 m² d''aire en utilisant le minimum de grillage. Quelle longueur de grillage faut-il acheter, en mètres ? Arrondissez à l''unité.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["113","113 m","113m"]}'::jsonb,
  'Pour une aire fixée, le rectangle de périmètre minimal est le carré. Côté du carré : c = √800 = √(400 × 2) = 20√2 ≈ 28,28 m. Périmètre = 4 × 20√2 = 80√2 ≈ 113,14 m ≈ 113 m. Ce résultat s''appuie sur l''inégalité arithmético-géométrique : pour L + l fixé, L × l est maximal quand L = l (et réciproquement).',
  'Choisir des dimensions arbitraires (ex. 40 × 20 = 800 m², périmètre = 120 m) sans chercher à minimiser : l''élève ne perçoit pas que le carré minimise le périmètre à aire donnée.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance', 'Problèmes de grandeurs — Niveau avancé CRPE', 'Difficile',
  'qcm', 'Un pot de peinture couvre 12 m². On doit peindre les 4 murs d''une pièce rectangulaire de 5 m × 4 m et de hauteur 2,5 m (sans déduire les ouvertures). Combien de pots faut-il acheter ?', NULL,
  '[{"id":"a","label":"3 pots"},{"id":"b","label":"4 pots"},{"id":"c","label":"5 pots"},{"id":"d","label":"6 pots"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Surface des murs = périmètre de la base × hauteur = 2 × (5 + 4) × 2,5 = 2 × 9 × 2,5 = 45 m². Nombre de pots = 45 / 12 = 3,75. Comme on ne peut pas acheter une fraction de pot, il faut arrondir au pot supérieur : 4 pots. Ce type de problème mobilise le périmètre, l''aire latérale et l''arrondi par excès.',
  'Calculer l''aire du sol (20 m²) au lieu de l''aire des murs, ou arrondir par défaut à 3 pots au lieu de 4.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance', 'Problèmes de grandeurs — Niveau avancé CRPE', 'Difficile',
  'vrai_faux', 'Un terrain triangulaire de 1 200 m² est partagé en 3 parcelles par deux segments parallèles à la base, divisant la hauteur en trois parties égales. La parcelle du sommet a une aire de 400 m².', NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Quand on découpe un triangle par des parallèles à la base, les aires ne sont pas proportionnelles aux hauteurs mais aux carrés des rapports de similitude. Le petit triangle (1/3 de la hauteur) a une aire = (1/3)² × 1 200 = 1 200 / 9 ≈ 133,3 m², pas 400 m². Les trois parcelles n''ont pas des aires égales : elles valent respectivement 1/9, 3/9 et 5/9 de l''aire totale.',
  'Penser que diviser la hauteur en 3 divise l''aire en 3 parts égales : l''élève confond proportionnalité des longueurs et des aires.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance', 'Problèmes de grandeurs — Niveau avancé CRPE', 'Difficile',
  'qcm', 'Deux offres de carrelage sont proposées. Offre A : carreaux de 30 cm × 30 cm à 1,80 € le carreau. Offre B : carreaux de 45 cm × 45 cm à 3,60 € le carreau. Quelle offre est la plus avantageuse au m² ?', NULL,
  '[{"id":"a","label":"Offre A (20 €/m²)"},{"id":"b","label":"Offre B (≈ 17,78 €/m²)"},{"id":"c","label":"Les deux offres ont le même prix au m²"},{"id":"d","label":"Offre A (18 €/m²)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Offre A : aire d''un carreau = 0,3 × 0,3 = 0,09 m². Prix au m² = 1,80 / 0,09 = 20 €/m². Offre B : aire d''un carreau = 0,45 × 0,45 = 0,2025 m². Prix au m² = 3,60 / 0,2025 ≈ 17,78 €/m². L''offre B est plus avantageuse malgré un prix unitaire plus élevé.',
  'Comparer directement le prix unitaire (1,80 € < 3,60 €) sans rapporter au m² : l''élève conclut que l''offre A est moins chère sans calculer le prix par unité de surface.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance', 'Problèmes de grandeurs — Niveau avancé CRPE', 'Difficile',
  'reponse_courte', 'On emballe un coffret parallélépipédique de dimensions 30 cm × 20 cm × 10 cm avec du papier cadeau. Quelle est la surface totale à couvrir, en cm² ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2200","2 200","2200 cm²","2 200 cm²"]}'::jsonb,
  'Surface totale d''un pavé droit = 2 × (L×l + L×h + l×h) = 2 × (30×20 + 30×10 + 20×10) = 2 × (600 + 300 + 200) = 2 × 1 100 = 2 200 cm². Il faut couvrir les 6 faces : deux de 600 cm², deux de 300 cm² et deux de 200 cm². Ce calcul ne tient pas compte des marges de pliage.',
  'Calculer le volume (6 000 cm³) au lieu de l''aire totale, ou n''additionner que 3 faces au lieu de 6 en oubliant le facteur 2.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance', 'Problèmes de grandeurs — Niveau avancé CRPE', 'Difficile',
  'qcm', 'Une cour d''école rectangulaire mesure 50 m × 30 m. On peint une bande de 2 m de large le long de tout le pourtour intérieur pour délimiter une aire de jeux. Quelle est l''aire de cette bande peinte ?', NULL,
  '[{"id":"a","label":"304 m²"},{"id":"b","label":"296 m²"},{"id":"c","label":"320 m²"},{"id":"d","label":"284 m²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Aire totale de la cour = 50 × 30 = 1 500 m². Aire intérieure (sans la bande) = (50 − 2×2) × (30 − 2×2) = 46 × 26 = 1 196 m². Aire de la bande = 1 500 − 1 196 = 304 m². On soustrait 2 × 2 = 4 m de chaque dimension car la bande de 2 m borde chaque côté. Ce type de problème est fréquent au CRPE : il combine périmètre et aire dans un raisonnement par différence de surfaces.',
  'Calculer la bande comme périmètre × largeur : (50 + 30) × 2 × 2 = 320 m², ce qui compte deux fois les quatre coins carrés de 2 × 2 = 4 m² chacun (320 − 4×4 = 304).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

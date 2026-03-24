-- ============================================================================
-- Migration : Complétion des séries grandeurs_mesures (batch 1)
-- Ajout des questions Q8, Q9, Q10 pour 10 séries existantes
-- Sous-domaine : grandeurs_mesures | Matière : Mathematiques
-- Date : 2026-03-24
-- ============================================================================

-- ============================================================================
-- SÉRIE 1 : math_aire_figures_usuelles (fa040000)
-- Aire des figures usuelles — Formules et calculs
-- Niveau : Intermediaire | Accès : free
-- ============================================================================

-- Q8 — vrai_faux — Aire d'un losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_figures_usuelles',
  'Aire des figures usuelles — Formules et calculs',
  'Intermediaire',
  'vrai_faux',
  'Un losange dont les diagonales mesurent 10 cm et 14 cm a une aire de 140 cm².',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'L''aire d''un losange se calcule avec la formule A = (d₁ × d₂) / 2. Ici : A = (10 × 14) / 2 = 140 / 2 = 70 cm². L''affirmation est donc fausse : l''aire est de 70 cm² et non 140 cm². L''erreur proposée consiste à oublier la division par 2 dans la formule.',
  'Oublier de diviser par 2 dans la formule de l''aire du losange et répondre 140 cm² au lieu de 70 cm².',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Aire d'un carré connaissant le périmètre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_figures_usuelles',
  'Aire des figures usuelles — Formules et calculs',
  'Avance',
  'qcm',
  'Un carré a un périmètre de 36 cm. Quelle est son aire ?',
  NULL,
  '[{"id":"a","label":"81 cm²"},{"id":"b","label":"36 cm²"},{"id":"c","label":"144 cm²"},{"id":"d","label":"324 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le périmètre d''un carré est P = 4 × côté, donc côté = P / 4 = 36 / 4 = 9 cm. L''aire du carré est A = côté² = 9² = 81 cm². L''option b (36 cm²) correspond à la confusion périmètre = aire. L''option c (144 cm²) résulte d''un calcul erroné (36/2)² = 18² = 324... non, c''est 12² = 144 (si l''élève divise par 3 au lieu de 4). L''option d (324 cm²) correspond à 36² / 4 au lieu de (36/4)².',
  'Confondre le périmètre avec le côté et calculer 36² = 1 296, ou diviser le périmètre par 3 au lieu de 4.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Aire d'un demi-disque
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_figures_usuelles',
  'Aire des figures usuelles — Formules et calculs',
  'Avance',
  'reponse_courte',
  'Calculez l''aire d''un demi-disque de rayon 8 cm. On prendra π ≈ 3,14. Arrondissez au dixième de cm².',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["100,5","100,5 cm²","100.5","100.5 cm²","100,48","100,48 cm²"]}'::jsonb,
  'L''aire d''un demi-disque est la moitié de l''aire d''un disque : A = (π × r²) / 2. Ici : A = (3,14 × 8²) / 2 = (3,14 × 64) / 2 = 200,96 / 2 = 100,48 cm² ≈ 100,5 cm². Il faut d''abord calculer l''aire du disque entier, puis diviser par 2.',
  'Calculer l''aire du disque entier sans diviser par 2 (200,96 cm²), ou diviser le rayon par 2 au lieu de diviser l''aire par 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 2 : math_aires_perimetres_composees (b0170000)
-- Aires et périmètres — Figures composées
-- Niveau : Intermediaire | Accès : free
-- ============================================================================

-- Q8 — vrai_faux — Périmètre d'une figure composée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées',
  'Intermediaire',
  'vrai_faux',
  'Le périmètre d''un demi-disque de diamètre 10 cm est 25,7 cm.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le périmètre d''un demi-disque comprend le demi-cercle (arc) et le diamètre (segment). Arc du demi-cercle = (π × d) / 2 = (3,14 × 10) / 2 = 15,7 cm. On ajoute le diamètre : 15,7 + 10 = 25,7 cm. L''affirmation est donc vraie. Attention : le périmètre n''est PAS la moitié du périmètre du cercle, car il faut ajouter le diamètre.',
  'Calculer uniquement le demi-périmètre du cercle (15,7 cm) en oubliant d''ajouter le diamètre, ou calculer la moitié du périmètre total du cercle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Aire d'un anneau (couronne circulaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées',
  'Avance',
  'qcm',
  'Un anneau est formé par deux cercles concentriques de rayons 10 cm et 6 cm. Quelle est l''aire de l''anneau ? (π ≈ 3,14)',
  NULL,
  '[{"id":"a","label":"200,96 cm²"},{"id":"b","label":"100,48 cm²"},{"id":"c","label":"314 cm²"},{"id":"d","label":"113,04 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''aire de l''anneau = Aire du grand disque − Aire du petit disque. Grand disque : π × 10² = 3,14 × 100 = 314 cm². Petit disque : π × 6² = 3,14 × 36 = 113,04 cm². Aire de l''anneau : 314 − 113,04 = 200,96 cm². On peut aussi factoriser : A = π × (R² − r²) = 3,14 × (100 − 36) = 3,14 × 64 = 200,96 cm².',
  'Soustraire les rayons avant de calculer l''aire : π × (10 − 6)² = π × 16 = 50,24 cm², ce qui est incorrect. On ne peut pas soustraire les rayons puis élever au carré.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Aire d'une figure composée (trapèze + demi-cercle)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées',
  'Avance',
  'reponse_courte',
  'Une figure est composée d''un trapèze (grande base 14 cm, petite base 8 cm, hauteur 6 cm) surmonté d''un demi-cercle de diamètre 8 cm. Calculez l''aire totale. (π ≈ 3,14, arrondir au dixième)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["91,1","91,1 cm²","91.1","91.1 cm²"]}'::jsonb,
  'Aire du trapèze = (B + b) × h / 2 = (14 + 8) × 6 / 2 = 22 × 6 / 2 = 132 / 2 = 66 cm². Aire du demi-cercle (rayon = 8/2 = 4 cm) = (π × r²) / 2 = (3,14 × 16) / 2 = 50,24 / 2 = 25,12 cm². Aire totale = 66 + 25,12 = 91,12 ≈ 91,1 cm². Ce problème combine deux formules d''aire distinctes.',
  'Utiliser le diamètre (8 cm) comme rayon dans la formule du demi-cercle, ce qui quadruplerait l''aire du demi-cercle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 3 : math_aires_unites_agraires (fa0d0000)
-- Aires et unités agraires — Hectares et ares
-- Niveau : Intermediaire | Accès : free (instructions disent free)
-- ============================================================================

-- Q8 — qcm — Conversion centiares en ares
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aires_unites_agraires',
  'Aires et unités agraires — Hectares et ares',
  'Avance',
  'qcm',
  'Un terrain a une superficie de 2 ha 35 a 50 ca. Quelle est sa superficie en mètres carrés ?',
  NULL,
  '[{"id":"a","label":"23 550 m²"},{"id":"b","label":"2 355 m²"},{"id":"c","label":"235 500 m²"},{"id":"d","label":"2 350,50 m²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On convertit chaque unité en m² puis on additionne. 2 ha = 2 × 10 000 = 20 000 m². 35 a = 35 × 100 = 3 500 m². 50 ca = 50 × 1 = 50 m² (car 1 ca = 1 m²). Total : 20 000 + 3 500 + 50 = 23 550 m². La notation « ha a ca » fonctionne comme un tableau de numération pour les unités agraires : chaque unité contient 100 fois la suivante.',
  'Confondre les facteurs de conversion et oublier que 1 ca = 1 m², ou additionner directement 2 + 35 + 50 sans conversion.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Comparaison de surfaces agraires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aires_unites_agraires',
  'Aires et unités agraires — Hectares et ares',
  'Intermediaire',
  'vrai_faux',
  'Un terrain de 0,75 hectare est plus petit qu''un terrain de 800 ares.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Convertissons dans la même unité. 0,75 ha = 0,75 × 100 = 75 ares. Or 800 ares = 8 ha. Puisque 75 ares < 800 ares, le terrain de 0,75 ha est bien plus petit que celui de 800 ares. L''affirmation est vraie. L''écart est considérable : 800 a = 80 000 m² contre 7 500 m² pour 0,75 ha.',
  'Comparer directement les nombres 0,75 et 800 sans convertir, alors que les unités sont différentes (hectares vs ares).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Problème concret avec unités agraires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aires_unites_agraires',
  'Aires et unités agraires — Hectares et ares',
  'Avance',
  'reponse_courte',
  'Une commune possède un parc rectangulaire de 300 m × 200 m. Elle décide d''en céder 1,5 ha à un promoteur. Quelle superficie reste-t-il à la commune, en ares ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["450","450 a","450 ares"]}'::jsonb,
  'Aire du parc = 300 × 200 = 60 000 m² = 600 ares = 6 ha. Superficie cédée : 1,5 ha = 150 ares. Superficie restante : 600 − 150 = 450 ares. On peut aussi raisonner en m² : 60 000 − 15 000 = 45 000 m² = 450 ares. Ce problème mobilise le calcul d''aire, la conversion en unités agraires et la soustraction.',
  'Oublier de convertir les hectares en ares avant de soustraire, ou se tromper dans la conversion (1,5 ha = 15 ares au lieu de 150 ares).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 4 : math_chasse_erreurs_mesures (b0050000)
-- Chasse aux erreurs — Mesures et conversions
-- Niveau : Intermediaire | Accès : free
-- ============================================================================

-- Q8 — qcm — Erreur de conversion de masses
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Avance',
  'qcm',
  'Noah écrit : « 2,5 tonnes = 250 kg ». Quelle erreur a-t-il commise ?',
  NULL,
  '[{"id":"a","label":"Il a multiplié par 100 au lieu de 1 000"},{"id":"b","label":"Il a divisé par 10 au lieu de multiplier par 1 000"},{"id":"c","label":"Il a confondu quintal et tonne"},{"id":"d","label":"Il a oublié de déplacer la virgule"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour convertir des tonnes en kilogrammes, on multiplie par 1 000 car 1 t = 1 000 kg. Le calcul correct est : 2,5 × 1 000 = 2 500 kg. Noah a obtenu 250 kg, ce qui correspond à 2,5 × 100. Il a appliqué le facteur de conversion du quintal (1 quintal = 100 kg) au lieu de celui de la tonne (1 t = 1 000 kg). Rappel : 1 t = 10 quintaux = 1 000 kg. Le tableau des masses au-delà du kg est : kg → quintal (× 100) → tonne (× 10).',
  'Confondre le facteur de conversion tonne → kg (×1 000) avec celui du quintal → kg (×100). L''élève ne distingue pas bien les unités de masse supérieures au kilogramme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Erreur de conversion d'aires en volumes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Avance',
  'vrai_faux',
  'Noah affirme : « 1 m³ = 100 dm³ ». Cette affirmation est-elle correcte ?',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'L''affirmation est FAUSSE. 1 m³ = 1 000 dm³. En effet, 1 m = 10 dm, donc 1 m³ = 10 × 10 × 10 = 1 000 dm³. Noah a appliqué un facteur 100 au lieu de 1 000. Pour les volumes, le facteur de conversion entre deux unités consécutives est 1 000 (10³), car on travaille en trois dimensions. Pour les longueurs : × 10. Pour les aires : × 100 (10²). Pour les volumes : × 1 000 (10³). C''est le piège classique des conversions de volumes : le facteur est le cube du facteur de conversion des longueurs.',
  'Appliquer le facteur de conversion des aires (×100) aux volumes, en oubliant que pour les unités cubiques, le facteur est élevé au cube (×1 000).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Chasse à l'erreur complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Avance',
  'reponse_courte',
  'Noah calcule l''aire d''un carré de côté 3 m en cm² et écrit : « 3 m = 300 cm, donc 3 m² = 300 cm² ». Quel est le résultat correct en cm² ? Écris uniquement le nombre.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["90000","90 000"]}'::jsonb,
  'L''erreur de Noah est de traiter la conversion d''aires comme une conversion de longueurs. Le côté du carré est 3 m = 300 cm. L''aire du carré = 300 × 300 = 90 000 cm². On peut aussi calculer : 3² = 9 m², puis 9 m² = 9 × 10 000 cm² = 90 000 cm² (car 1 m² = 10 000 cm²). Noah a écrit « 3 m² = 300 cm² » en appliquant le facteur de conversion des longueurs (×100) au lieu de celui des aires (×10 000). Son erreur illustre la confusion fondamentale entre conversion de longueurs et conversion d''aires.',
  'Appliquer le facteur ×100 des longueurs pour convertir des aires : l''élève confond m → cm (×100) avec m² → cm² (×10 000).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 5 : math_contenances_conversions (fa080000)
-- Contenances — Litres, centilitres et millilitres
-- Niveau : Intermediaire/Avance | Accès : free
-- ============================================================================

-- Q8 — qcm — Conversion décalitres et hectolitres
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres',
  'Intermediaire',
  'qcm',
  'Un réservoir contient 3,2 hectolitres d''eau. Combien de litres cela représente-t-il ?',
  NULL,
  '[{"id":"a","label":"32 L"},{"id":"b","label":"320 L"},{"id":"c","label":"3 200 L"},{"id":"d","label":"0,32 L"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le préfixe « hecto » signifie « cent ». Ainsi 1 hL = 100 L. Donc 3,2 hL = 3,2 × 100 = 320 L. Dans le tableau de conversion des contenances : kL → hL → daL → L → dL → cL → mL. Entre hL et L, il y a 2 rangs, donc le facteur est 10² = 100.',
  'Erreur fréquente : multiplier par 1 000 au lieu de 100, ce qui donnerait 3 200 L (confusion avec la conversion kL → L).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Correspondance volume et contenance
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres',
  'Intermediaire',
  'vrai_faux',
  'Un cube de 10 cm de côté a une contenance de 1 litre.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un cube de 10 cm de côté a un volume de 10 × 10 × 10 = 1 000 cm³. Or 1 000 cm³ = 1 dm³ = 1 L. C''est la correspondance fondamentale entre unités de volume et de contenance. Un cube de 10 cm de côté (1 dm de côté) contient exactement 1 litre. L''affirmation est donc vraie.',
  'Confondre cm³ et L : penser que 1 000 cm³ = 10 L ou 100 L, en n''utilisant pas correctement la correspondance 1 dm³ = 1 L.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Problème concret avec conversions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres',
  'Intermediaire',
  'reponse_courte',
  'Pour préparer un punch, on mélange 2 L de jus de fruit, 75 cL de limonade et 500 mL de sirop. Quelle est la contenance totale du mélange en litres ? Donner la réponse sous forme décimale.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3,25","3.25","3,25 L","3.25 L"]}'::jsonb,
  'Convertissons tout en litres. Jus de fruit : 2 L. Limonade : 75 cL = 75 / 100 = 0,75 L. Sirop : 500 mL = 500 / 1 000 = 0,5 L. Total : 2 + 0,75 + 0,5 = 3,25 L. Il est essentiel de convertir toutes les contenances dans la même unité avant de les additionner.',
  'Additionner les valeurs brutes sans conversion (2 + 75 + 500 = 577), ou oublier de convertir l''une des quantités.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 6 : math_conversions_systematiques (b00c0000)
-- Grandeurs — Conversions systématiques
-- Niveau : Intermediaire/Avance | Accès : free
-- ============================================================================

-- Q8 — vrai_faux — Conversion de volumes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Intermediaire',
  'vrai_faux',
  '0,5 m³ = 500 dm³.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''affirmation est vraie. Pour convertir des m³ en dm³, on multiplie par 1 000 car 1 m³ = 1 000 dm³ (chaque unité de volume consécutive a un facteur ×1 000 dans le tableau, soit 3 rangs de ×10). 0,5 × 1 000 = 500 dm³. On peut vérifier : 500 dm³ = 500 L, et 0,5 m³ = 500 L. Cohérent.',
  'Multiplier par 100 au lieu de 1 000, ce qui donnerait 50 dm³. L''élève confond le facteur des volumes (×1 000) avec celui des aires (×100).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Conversion de masses composées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Intermediaire',
  'qcm',
  'Convertir 2 kg 350 g en grammes.',
  NULL,
  '[{"id":"a","label":"2 350 g"},{"id":"b","label":"235 g"},{"id":"c","label":"23 500 g"},{"id":"d","label":"2 035 g"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour convertir 2 kg 350 g en grammes : 2 kg = 2 × 1 000 = 2 000 g. On ajoute les 350 g : 2 000 + 350 = 2 350 g. L''écriture « 2 kg 350 g » fonctionne comme un tableau de numération : le chiffre des kg vaut 1 000 g. L''option d (2 035 g) résulte d''une erreur de placement du zéro.',
  'Oublier le facteur 1 000 entre kg et g et écrire 2 350 comme 235 g (en supprimant un zéro), ou mal placer les centaines de grammes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Conversion complexe multi-étapes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Avance',
  'reponse_courte',
  'Un coureur parcourt 10 km en 50 minutes. Quelle est sa vitesse en m/s ? Donner la réponse arrondie au dixième.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3,3","3.3","3,33","3.33","3,3 m/s","3.3 m/s"]}'::jsonb,
  'Étape 1 — Convertir la distance en mètres : 10 km = 10 000 m. Étape 2 — Convertir le temps en secondes : 50 min = 50 × 60 = 3 000 s. Étape 3 — Calculer la vitesse : v = d / t = 10 000 / 3 000 = 10/3 ≈ 3,33 m/s ≈ 3,3 m/s. On peut vérifier : 3,33 m/s × 3,6 = 12 km/h, ce qui est cohérent avec 10 km en 50 min (soit 12 km/h).',
  'Diviser par 3,6 directement sans d''abord exprimer la vitesse en km/h, ou oublier de convertir les minutes en secondes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 7 : math_debit_volume_temps (fa0e0000)
-- Débit — Volume et temps
-- Niveau : Avance | Accès : free
-- ============================================================================

-- Q8 — qcm — Comparaison de débits
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_debit_volume_temps',
  'Débit — Volume et temps',
  'Avance',
  'qcm',
  'Un robinet A remplit un seau de 12 litres en 3 minutes. Un robinet B remplit un seau de 20 litres en 4 minutes. Quel robinet a le débit le plus élevé ?',
  NULL,
  '[{"id":"a","label":"Le robinet A (4 L/min)"},{"id":"b","label":"Le robinet B (5 L/min)"},{"id":"c","label":"Ils ont le même débit"},{"id":"d","label":"On ne peut pas comparer"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Débit du robinet A : D_A = V / t = 12 / 3 = 4 L/min. Débit du robinet B : D_B = V / t = 20 / 4 = 5 L/min. Puisque 5 > 4, le robinet B a un débit plus élevé. Pour comparer des débits, il faut les exprimer dans la même unité. Ici, les deux sont en L/min, la comparaison est directe.',
  'Comparer les volumes (20 > 12) ou les temps (4 > 3) séparément sans calculer le débit. Le débit est un rapport, il faut diviser le volume par le temps.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Débit et conversion d'unités
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_debit_volume_temps',
  'Débit — Volume et temps',
  'Avance',
  'vrai_faux',
  'Un débit de 3 L/min est équivalent à 180 L/h.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir un débit de L/min en L/h, on multiplie par 60 (car 1 h = 60 min). Donc : 3 L/min × 60 = 180 L/h. L''affirmation est vraie. Quand on passe à une unité de temps plus grande (de min à h), le débit en volume par unité de temps est multiplié car plus de volume s''écoule sur une durée plus longue.',
  'Diviser par 60 au lieu de multiplier, et obtenir 0,05 L/h. L''élève confond le sens de la conversion : pour passer de min à h, le nombre d''unités de temps diminue, donc le volume par unité de temps augmente.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Problème complexe avec deux débits
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_debit_volume_temps',
  'Débit — Volume et temps',
  'Avance',
  'reponse_courte',
  'Une baignoire de 200 litres se remplit avec un robinet au débit de 10 L/min. En même temps, la bonde (mal fermée) laisse fuir 2 L/min. Combien de minutes faut-il pour remplir la baignoire ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25","25 min","25 minutes"]}'::jsonb,
  'Le débit net de remplissage est le débit d''entrée moins le débit de fuite : D_net = 10 − 2 = 8 L/min. Le temps de remplissage est t = V / D_net = 200 / 8 = 25 minutes. Ce problème illustre la notion de débit net quand un système a à la fois une entrée et une sortie de fluide. Sans la fuite, il faudrait 200 / 10 = 20 minutes.',
  'Ignorer la fuite et calculer 200 / 10 = 20 min, ou additionner les deux débits au lieu de les soustraire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 8 : math_densite_masse_volume (fa030000)
-- Densité, masse et volume — Applications
-- Niveau : Avance | Accès : free
-- ============================================================================

-- Q8 — reponse_courte — Calcul de volume à partir de masse et densité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_densite_masse_volume',
  'Densité, masse et volume — Applications',
  'Avance',
  'reponse_courte',
  'Une barre de fer a une masse de 15,6 kg. La masse volumique du fer est de 7 800 kg/m³. Quel est le volume de cette barre en cm³ ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2000","2 000","2000 cm³","2 000 cm³"]}'::jsonb,
  'V = m / ρ = 15,6 / 7 800 = 0,002 m³. Conversion en cm³ : 0,002 m³ = 0,002 × 1 000 000 = 2 000 cm³. On peut aussi convertir d''abord : 15,6 kg = 15 600 g et 7 800 kg/m³ = 7,8 g/cm³. Alors V = 15 600 / 7,8 = 2 000 cm³. Ce problème combine la formule de la masse volumique avec une conversion d''unités de volume.',
  'Oublier de convertir le résultat en cm³ et laisser la réponse en m³ (0,002 m³), ou multiplier au lieu de diviser.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Identifier un matériau par sa masse volumique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_densite_masse_volume',
  'Densité, masse et volume — Applications',
  'Avance',
  'qcm',
  'Un objet cubique de 5 cm de côté a une masse de 337,5 g. Sa masse volumique est celle de quel matériau ? (Aluminium : 2,7 g/cm³ — Fer : 7,8 g/cm³ — Cuivre : 8,9 g/cm³ — Plomb : 11,3 g/cm³)',
  NULL,
  '[{"id":"a","label":"Aluminium"},{"id":"b","label":"Fer"},{"id":"c","label":"Cuivre"},{"id":"d","label":"Plomb"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Volume du cube = côté³ = 5³ = 125 cm³. Masse volumique = m / V = 337,5 / 125 = 2,7 g/cm³. Cette masse volumique correspond à l''aluminium. Ce type de problème est classique en sciences : on identifie un matériau inconnu en calculant sa masse volumique et en la comparant à un tableau de valeurs de référence.',
  'Calculer le volume en utilisant la formule du carré (5² = 25) au lieu du cube (5³ = 125), ce qui donnerait une masse volumique de 13,5 g/cm³.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Masse volumique et flottaison dans l'huile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_densite_masse_volume',
  'Densité, masse et volume — Applications',
  'Avance',
  'vrai_faux',
  'Un glaçon (masse volumique de la glace : 0,92 g/cm³) flotte dans l''huile d''olive (masse volumique : 0,92 g/cm³).',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Un objet flotte dans un liquide si sa masse volumique est STRICTEMENT inférieure à celle du liquide. Ici, la glace et l''huile d''olive ont la même masse volumique (0,92 g/cm³). Le glaçon ne flotte donc pas : il est en équilibre indifférent (il reste à la position où on le place). En réalité, les légères variations de densité font que le glaçon se maintient entre deux eaux. L''affirmation est donc fausse : le glaçon ne flotte pas à la surface.',
  'Penser qu''une masse volumique égale suffit pour flotter. Pour flotter (émerger partiellement), il faut que l''objet soit MOINS dense que le liquide.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 9 : math_durees_horaires (b01b0000)
-- Grandeurs — Durées et horaires
-- Niveau : Intermediaire | Accès : free
-- ============================================================================

-- Q8 — qcm — Soustraction de durées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_durees_horaires',
  'Grandeurs — Durées et horaires',
  'Intermediaire',
  'qcm',
  'Un gâteau doit cuire 1 h 40 min. Il est dans le four depuis 55 minutes. Combien de temps reste-t-il de cuisson ?',
  NULL,
  '[{"id":"a","label":"45 min"},{"id":"b","label":"85 min"},{"id":"c","label":"1 h 15 min"},{"id":"d","label":"55 min"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Temps restant = Temps total − Temps écoulé = 1 h 40 min − 55 min. Méthode : 1 h 40 min = 100 min. Donc 100 − 55 = 45 min. Méthode alternative : 1 h 40 min − 55 min. On ne peut pas soustraire 55 de 40, donc on emprunte 1 h = 60 min. 0 h 100 min − 55 min = 45 min. L''option b (85 min) résulte d''une erreur d''addition au lieu de soustraction.',
  'Écrire 1 h 40 − 55 = 1 h 15 min en soustrayant 55 de 40 sans emprunt (40 − 55 est impossible, mais l''élève écrit 55 − 40 = 15 et garde l''heure).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Conversion secondes en heures
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_durees_horaires',
  'Grandeurs — Durées et horaires',
  'Intermediaire',
  'vrai_faux',
  '7 200 secondes = 2 heures.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''affirmation est vraie. 1 heure = 60 minutes = 60 × 60 secondes = 3 600 secondes. Donc 2 heures = 2 × 3 600 = 7 200 secondes. Pour convertir des secondes en heures, on divise par 3 600. 7 200 ÷ 3 600 = 2 heures. Rappel des conversions horaires : 1 h = 60 min = 3 600 s et 1 min = 60 s.',
  'Diviser par 60 une seule fois (7 200 ÷ 60 = 120 min) et oublier la deuxième division pour passer aux heures.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Problème avec fuseaux horaires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_durees_horaires',
  'Grandeurs — Durées et horaires',
  'Avance',
  'reponse_courte',
  'Un avion décolle de Paris à 14 h 35 et atterrit à New York après un vol de 8 h 25 min. Sachant qu''il y a 6 heures de décalage horaire (New York est en retard sur Paris), quelle heure locale est-il à New York à l''atterrissage ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["17h00","17 h 00","17h","17 h","17:00","17 h 00 min"]}'::jsonb,
  'Étape 1 — Heure d''arrivée à Paris : 14 h 35 + 8 h 25 min. Heures : 14 + 8 = 22 h. Minutes : 35 + 25 = 60 min = 1 h 00 min. Donc 22 h + 1 h = 23 h 00 (heure de Paris). Étape 2 — Conversion en heure locale de New York : New York a 6 h de retard sur Paris, donc on soustrait 6 h. 23 h 00 − 6 h = 17 h 00 (heure de New York). L''avion atterrit à 17 h 00, heure locale de New York.',
  'Ajouter le décalage horaire au lieu de le soustraire (New York est EN RETARD sur Paris, donc on soustrait), ou effectuer une erreur dans l''addition des durées en base 60.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 10 : math_echelles_plans (c00b0000)
-- Échelles, plans et cartes — Applications
-- Niveau : Avance | Accès : free
-- ============================================================================

-- Q8 — reponse_courte — Calcul de distance réelle à partir d'un plan
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_echelles_plans',
  'Échelles, plans et cartes — Applications',
  'Avance',
  'reponse_courte',
  'Sur une carte au 1/50 000, un sentier de randonnée mesure 12,4 cm. Quelle est la longueur réelle de ce sentier en km ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6,2","6.2","6,2 km","6.2 km","6,20","6.20"]}'::jsonb,
  'À l''échelle 1/50 000, 1 cm sur la carte correspond à 50 000 cm en réalité, soit 500 m. Distance réelle = 12,4 × 50 000 = 620 000 cm = 6 200 m = 6,2 km. On peut aussi calculer directement : 12,4 × 500 m = 6 200 m = 6,2 km. Ce sentier fait donc 6,2 km.',
  'Oublier une étape de conversion (répondre en cm ou en m) ou confondre l''échelle 1/50 000 avec 1/5 000.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Comparaison d'échelles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_echelles_plans',
  'Échelles, plans et cartes — Applications',
  'Avance',
  'qcm',
  'Quelle carte offre le plus de détails : une carte au 1/25 000 ou une carte au 1/100 000 ?',
  NULL,
  '[{"id":"a","label":"La carte au 1/25 000 car son échelle est plus grande"},{"id":"b","label":"La carte au 1/100 000 car son échelle est plus grande"},{"id":"c","label":"Les deux offrent le même niveau de détail"},{"id":"d","label":"On ne peut pas comparer sans connaître la taille des cartes"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Plus le dénominateur de l''échelle est petit, plus l''échelle est « grande » et plus la carte est détaillée. Au 1/25 000, 1 cm représente 250 m. Au 1/100 000, 1 cm représente 1 000 m. Avec l''échelle 1/25 000, les objets sont représentés 4 fois plus grands sur la carte, ce qui permet de montrer plus de détails. Les cartes de randonnée IGN au 1/25 000 sont les plus détaillées couramment utilisées en France.',
  'Penser que le plus grand nombre (100 000 > 25 000) signifie une plus grande échelle. C''est l''inverse : 1/25 000 > 1/100 000 comme fractions.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Échelle et aire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_echelles_plans',
  'Échelles, plans et cartes — Applications',
  'Avance',
  'vrai_faux',
  'Sur un plan à l''échelle 1/250, un jardin carré de côté 2 cm sur le plan a une aire réelle de 25 m².',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Côté réel = 2 cm × 250 = 500 cm = 5 m. Aire réelle = 5 × 5 = 25 m². L''affirmation est donc vraie. On peut vérifier par le facteur d''aire : aire sur le plan = 2 × 2 = 4 cm². Facteur d''aire = 250² = 62 500. Aire réelle = 4 × 62 500 = 250 000 cm² = 25 m². Les deux méthodes donnent le même résultat. Pour les aires, le facteur d''échelle est toujours le carré du facteur linéaire.',
  'Calculer l''aire réelle en multipliant l''aire sur le plan par 250 (au lieu de 250²) : 4 × 250 = 1 000 cm² = 0,1 m². L''élève applique le facteur linéaire à l''aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

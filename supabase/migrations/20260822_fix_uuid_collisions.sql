-- Migration: fix 53 UUID collisions + 1 wrong answer + 2 vrai_faux format issues
--
-- Part 1: 53 questions silently dropped by ON CONFLICT DO NOTHING because
--   their UUID prefixes collided with older French exercise series.
--   Re-insert with new UUID prefixes (fa0X -> fa2X, fa1X -> fa5X, fc0X -> fc2X).
--
-- Part 2: Fix wrong answer key for fractions question (b -> a)
-- Part 3: Fix 2 vrai_faux with explicit choices -> NULL

-- === Part 2: Fix wrong answer key ===
UPDATE public.exercises
SET expected_answer = '{"mode":"single","value":"a"}'::jsonb,
    detailed_explanation = 'On cherche le PPCM de 12, 8 et 6. Les décompositions sont : 12 = 2² × 3, 8 = 2³, 6 = 2 × 3. Le PPCM est 2³ × 3 = 24. On convertit : 7/12 = 14/24, 3/8 = 9/24, 1/6 = 4/24. On calcule : 14/24 − 9/24 + 4/24 = 9/24. On simplifie : PGCD(9, 24) = 3, donc 9/24 = 3/8. La forme irréductible est 3/8.'
WHERE id = 'f8010000-0000-0000-0000-000000000008';

-- === Part 3: Fix vrai_faux choices -> NULL ===
UPDATE public.exercises SET choices = NULL
WHERE id = 'b00a0000-0000-0000-0000-000000000009'
  AND exercise_type = 'vrai_faux';

UPDATE public.exercises SET choices = NULL
WHERE id = 'b0190000-0000-0000-0000-000000000010'
  AND exercise_type = 'vrai_faux';

-- === Part 1: Re-insert 53 collided questions with new UUIDs ===

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc230000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre',
  'Intermediaire',
  'reponse_courte',
  'Un élève de CE2 calcule 7 × 6 en expliquant : « 7 × 5, c''est 35, puis j''ajoute 7, ça fait 42 ». Quelle propriété mathématique fondamentale sous-tend cette stratégie de calcul mental ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["distributivité","la distributivité","Distributivité","La distributivité","distributivité de la multiplication sur l''addition","distributivite"]}'::jsonb,
  'L''élève utilise implicitement la distributivité de la multiplication sur l''addition : 7 × 6 = 7 × (5 + 1) = 7 × 5 + 7 × 1 = 35 + 7 = 42. Cette stratégie montre que l''élève ne se contente pas de réciter les tables : il décompose un facteur pour s''appuyer sur un résultat connu (7 × 5 = 35) et ajuste ensuite. C''est une stratégie de calcul mental réfléchi qui témoigne d''une compréhension du sens de la multiplication. Éduscol recommande de valoriser et d''expliciter ces stratégies lors des rituels de calcul mental pour que l''ensemble de la classe s''en empare. Vergnaud souligne que l''utilisation implicite de la distributivité est un théorème-en-acte que l''enseignant doit progressivement amener à l''explicitation.',
  'Croire que cette stratégie est inefficace parce qu''elle est plus longue que la restitution directe du résultat mémorisé. Elle est au contraire un signe de compréhension profonde et de flexibilité numérique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc230000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre',
  'Avance',
  'qcm',
  'Un enseignant de CM2 met en place un rituel de calcul mental quotidien. Il dicte des calculs, laisse 10 secondes par item, puis donne immédiatement les réponses. Quelle critique didactique majeure peut-on formuler à l''égard de ce dispositif ?',
  NULL,
  '[{"id":"a","label":"Le temps accordé est trop court pour que les élèves puissent réfléchir"},{"id":"b","label":"Le dispositif ne comporte pas de phase de mise en commun des procédures : les élèves ne confrontent jamais leurs stratégies et n''enrichissent pas leur répertoire de calcul"},{"id":"c","label":"Le calcul mental ne devrait pas être ritualisé mais travaillé uniquement lors de séquences dédiées"},{"id":"d","label":"Il faudrait accorder 30 secondes par item au lieu de 10"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La critique majeure porte sur l''absence de phase de mise en commun des procédures. Un rituel de calcul mental efficace ne se limite pas à la production de résultats : le moment de confrontation des stratégies est le temps didactique le plus riche. Pendant cette phase, l''enseignant demande aux élèves d''expliciter comment ils ont calculé, note les différentes procédures au tableau et les discute collectivement. Par exemple, pour 25 × 12, certains feront 25 × 10 + 25 × 2, d''autres 25 × 4 × 3, d''autres encore 12 × 100 ÷ 4. La confrontation permet à chaque élève de découvrir des stratégies auxquelles il n''avait pas pensé et de développer sa flexibilité numérique. Sans cette phase, le rituel se réduit à un entraînement de mémorisation qui ne développe que le calcul automatisé. Éduscol recommande explicitement d''alterner des phases de production rapide et des phases de discussion des procédures.',
  'Penser que le rituel de calcul mental se réduit à « dicter — répondre — corriger ». Sans mise en commun des stratégies, le potentiel didactique est considérablement appauvri.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc230000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre',
  'Intermediaire',
  'vrai_faux',
  'La stratégie de décomposition et la stratégie de compensation sont deux procédures de calcul mental réfléchi qui s''appuient sur les mêmes propriétés mathématiques.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La décomposition et la compensation s''appuient sur des propriétés différentes. La décomposition repose sur la numération positionnelle et la distributivité : par exemple, 47 + 38 = (40 + 30) + (7 + 8) = 70 + 15 = 85. L''élève décompose chaque nombre selon ses ordres de grandeur (dizaines + unités) puis recompose. La compensation, elle, repose sur la conservation des sommes ou des écarts : par exemple, 47 + 38 = 47 + 40 - 2 = 87 - 2 = 85 (on arrondit 38 à 40 en ajoutant 2, puis on compense en retranchant 2). Ces deux stratégies sont complémentaires et doivent être travaillées explicitement. La décomposition est souvent la première stratégie enseignée car elle s''appuie sur la compréhension de la numération. La compensation est plus économique dans certains cas (quand un nombre est proche d''une dizaine ou d''une centaine) mais nécessite une bonne maîtrise de la notion d''écart. Éduscol recommande de travailler les deux pour enrichir le répertoire stratégique des élèves.',
  'Considérer que toutes les stratégies de calcul mental « reviennent au même ». Si elles donnent le même résultat, elles mobilisent des propriétés mathématiques et des compétences différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 2. math_didactique_differenciation (UUID prefix: b02b0000)
--    Thème: Différenciation pédagogique en mathématiques
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa240000-0000-0000-0000-000000000008',
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
  'fa240000-0000-0000-0000-000000000009',
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
  'fa240000-0000-0000-0000-000000000010',
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
  'fa2d0000-0000-0000-0000-000000000008',
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
  'fa2d0000-0000-0000-0000-000000000009',
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
  'fa280000-0000-0000-0000-000000000008',
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
  'fa280000-0000-0000-0000-000000000009',
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
  'fa280000-0000-0000-0000-000000000010',
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
  'fa2e0000-0000-0000-0000-000000000008',
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
  'fa2e0000-0000-0000-0000-000000000009',
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
  'fa2e0000-0000-0000-0000-000000000010',
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
  'fa230000-0000-0000-0000-000000000008',
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
  'fa230000-0000-0000-0000-000000000009',
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
  'fa230000-0000-0000-0000-000000000010',
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
  'fc220000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Avance',
  'qcm',
  'Brousseau décrit un « effet Jourdain » dans le contrat didactique. De quoi s''agit-il ?',
  NULL,
  '[{"id":"a","label":"L''enseignant attribue une valeur savante à une production banale de l''élève : il « reconnaît » dans la réponse triviale de l''élève un savoir mathématique élaboré que l''élève n''a pas réellement mobilisé"},{"id":"b","label":"L''enseignant simplifie progressivement la tâche jusqu''à donner la réponse"},{"id":"c","label":"L''élève refuse de s''engager dans le problème et attend que l''enseignant donne la solution"},{"id":"d","label":"L''enseignant punit un élève qui se trompe pour le motiver à mieux apprendre"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''effet Jourdain (du nom du Bourgeois gentilhomme de Molière, à qui le maître de philosophie fait croire qu''il fait de la prose sans le savoir) se produit quand l''enseignant surinterprete la production de l''élève en lui attribuant une portée savante qu''elle n''a pas. Par exemple, un élève qui trouve la bonne réponse par hasard ou par une procédure primitive (essais-erreurs) se voit dire par l''enseignant : « Tu as fait un raisonnement par exhaustion ! » L''effet Jourdain est le symétrique de l''effet Topaze : au lieu de simplifier la tâche (Topaze), l''enseignant surestime la production (Jourdain). Dans les deux cas, l''apprentissage réel est escamoté. Brousseau montre que cet effet est particulièrement pernicieux car il donne l''illusion de la réussite : l''enseignant est satisfait, l''élève est validé, mais le savoir n''a pas été construit. Éduscol recommande une analyse rigoureuse des productions d''élèves pour distinguer compréhension véritable et réponse correcte accidentelle.',
  'Confondre effet Jourdain et effet Topaze. L''effet Topaze simplifie la tâche ; l''effet Jourdain surestime la production. Les deux empêchent l''apprentissage réel.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc220000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Avance',
  'reponse_courte',
  'Dans la théorie de Brousseau, lors de la phase de validation, les élèves doivent convaincre leurs pairs que leur solution est correcte. Quel type d''activité cognitive cette phase développe-t-elle principalement chez les élèves ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["argumentation","l''argumentation","Argumentation","L''argumentation","raisonnement","preuve","la preuve","argumentation mathématique"]}'::jsonb,
  'La phase de validation développe principalement l''argumentation mathématique (ou la preuve). L''élève ne peut plus se contenter de dire « j''ai trouvé 42 » : il doit expliquer pourquoi 42 est la bonne réponse, convaincre ses pairs par un raisonnement et réfuter les propositions incorrectes. C''est un saut qualitatif par rapport à la phase de formulation (où l''élève communique sa stratégie) : dans la validation, il ne suffit pas de dire ce qu''on a fait, il faut prouver que c''est correct. Brousseau distingue trois niveaux de validation : (1) la vérification empirique (essayer et constater), (2) l''argumentation (expliquer pourquoi ça marche), (3) la démonstration formelle (prouver rigoureusement). À l''école primaire, on travaille principalement les deux premiers niveaux. Vergnaud montre que la capacité d''argumentation est un schème de contrôle qui se construit progressivement. Éduscol inscrit cette compétence dans « Raisonner » : justifier, prouver, argumenter.',
  'Réduire la validation à la simple vérification numérique (recalculer). La validation au sens de Brousseau implique l''argumentation rationnelle, pas le simple recalcul.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc220000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Avance',
  'vrai_faux',
  'Selon Brousseau, la phase d''institutionnalisation doit toujours être conduite par l''enseignant et ne peut pas être déléguée aux élèves, car c''est le moment où le savoir personnel devient un savoir partagé et officiel de la classe.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''institutionnalisation est la phase où l''enseignant reprend explicitement la main pour officialiser le savoir construit pendant les phases adidactiques. C''est lui qui : (1) identifie et nomme le savoir mathématique qui a émergé (« Ce que vous avez découvert s''appelle la distributivité »), (2) relie ce savoir au programme et au savoir de référence, (3) fixe la formulation officielle qui sera retenue par la classe, (4) situe ce savoir dans la progression (ce qu''on savait avant, ce qu''on sait maintenant, ce qu''on apprendra ensuite). Brousseau insiste sur le fait que l''institutionnalisation est un acte spécifiquement enseignant qui ne peut pas être délégué : c''est le rôle de l''enseignant de faire le lien entre les productions des élèves (savoir contextualisé) et le savoir savant (savoir décontextualisé). Sans institutionnalisation, les élèves risquent de ne pas identifier ce qu''ils ont appris. Vergnaud complète en montrant que l''institutionnalisation permet la décontextualisation des schèmes, condition nécessaire au transfert.',
  'Omettre la phase d''institutionnalisation en pensant que la mise en commun suffit. Sans formalisation explicite par l''enseignant, le savoir reste implicite et non transférable.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 16 : math_didactique_soustraction (prefix fc010000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa290000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire', 'reponse_courte',
  'Un graphique représente le prix (en €) en fonction de la masse (en kg) de fruits. La droite passe par l''origine et par le point (3 ; 7,50). Quel est le prix au kilogramme, en euros ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2,50","2.50","2,5","2.5","2,50 €","2.50 €","2,5 €"]}'::jsonb,
  'Le coefficient de proportionnalité correspond au prix par kilogramme. Il se calcule en divisant le prix par la masse : 7,50 ÷ 3 = 2,50 €/kg. Ce coefficient est constant pour tous les points de la droite, ce qui caractérise la proportionnalité.',
  'Erreur fréquente : inverser le calcul (3 ÷ 7,50 = 0,4) ou confondre le coefficient avec les coordonnées du point.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Identifier la non-proportionnalité sur un graphique

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa290000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire', 'qcm',
  'Un opérateur téléphonique propose un forfait à 10 € par mois + 0,05 € par minute d''appel. Le graphique du coût mensuel en fonction du nombre de minutes est :',
  NULL,
  '[{"id":"a","label":"Une droite passant par l''origine"},{"id":"b","label":"Une droite ne passant pas par l''origine"},{"id":"c","label":"Une courbe passant par l''origine"},{"id":"d","label":"Un palier constant à 10 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le coût mensuel est C = 10 + 0,05 × n (où n est le nombre de minutes). C''est une fonction affine de la forme y = ax + b avec a = 0,05 et b = 10. Le graphique est donc une droite, mais elle ne passe pas par l''origine : quand n = 0, C = 10 € (l''abonnement fixe). Il ne s''agit donc PAS d''une situation de proportionnalité, mais d''une situation affine.',
  'Erreur fréquente : choisir la réponse (a) en pensant que toute relation linéaire entre deux grandeurs est une proportionnalité, sans vérifier que l''ordonnée à l''origine est nulle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Lecture graphique et proportionnalité

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa290000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire', 'vrai_faux',
  'Sur un graphique de proportionnalité, la droite passe par l''origine et par le point (5 ; 20). Le point (8 ; 30) appartient aussi à cette droite.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Le coefficient de proportionnalité est 20 ÷ 5 = 4. Pour que le point (8 ; 30) appartienne à la droite, il faudrait que 8 × 4 = 30, or 8 × 4 = 32 ≠ 30. Le point (8 ; 32) appartiendrait à la droite, pas le point (8 ; 30). L''affirmation est fausse. Pour vérifier l''appartenance d''un point à une droite de proportionnalité, il suffit de vérifier que le rapport y/x est constant.',
  'Erreur fréquente : valider approximativement sans vérifier le calcul exact, en se disant que 30 est « proche » de 32.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 3. math_instruments_mesure_precision (prefix=fa0c0000)
-- ============================================================================

-- Q8 (qcm) — Choix de l''instrument adapté

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2c0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision',
  'Instruments de mesure et précision', 'Intermediaire', 'qcm',
  'Pour mesurer l''épaisseur d''une feuille de papier (environ 0,1 mm), quel instrument est le plus adapté ?',
  NULL,
  '[{"id":"a","label":"Une règle graduée en millimètres"},{"id":"b","label":"Un mètre ruban"},{"id":"c","label":"Un pied à coulisse (ou palmer)"},{"id":"d","label":"Un décamètre"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''épaisseur d''une feuille de papier est d''environ 0,1 mm (100 µm). Une règle graduée en mm a une précision de 1 mm, bien trop grossière pour cette mesure. Un mètre ruban et un décamètre sont encore moins précis. Seul un pied à coulisse (précision 0,1 mm ou 0,05 mm) ou un palmer/micromètre (précision 0,01 mm) permet de mesurer une telle épaisseur. Le choix de l''instrument dépend de l''ordre de grandeur de la mesure à effectuer.',
  'Penser qu''une règle suffit parce qu''elle mesure en millimètres : l''élève ne distingue pas entre l''unité utilisée et la précision nécessaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (vrai_faux) — Erreur de parallaxe

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2c0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision',
  'Instruments de mesure et précision', 'Intermediaire', 'vrai_faux',
  'Lorsqu''on mesure une longueur avec une règle, le fait de ne pas placer ses yeux en face de la graduation peut entraîner une erreur de parallaxe.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''erreur de parallaxe se produit quand l''angle de visée entre l''œil et la graduation n''est pas perpendiculaire à l''instrument de mesure. Si l''observateur regarde de biais, il lit une valeur décalée par rapport à la vraie mesure. Ce phénomène concerne tous les instruments à graduation (règle, éprouvette, thermomètre, rapporteur). Pour l''éviter, l''observateur doit placer ses yeux exactement en face de la graduation à lire.',
  'Penser que l''erreur de parallaxe ne concerne que les liquides dans une éprouvette : elle s''applique à tout instrument à graduation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte) — Encadrement d''une mesure

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2c0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision',
  'Instruments de mesure et précision', 'Intermediaire', 'reponse_courte',
  'Un élève mesure la masse d''un objet avec une balance précise au gramme près. L''affichage indique 347 g. Entre quelles valeurs la masse réelle est-elle comprise ? (format : X,X g et Y,Y g)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["346,5 g et 347,5 g","346,5 et 347,5","entre 346,5 g et 347,5 g","346,5g et 347,5g"]}'::jsonb,
  'Quand un instrument est précis au gramme près, la valeur affichée est arrondie à l''unité. La masse réelle se situe donc dans l''intervalle [346,5 g ; 347,5 g[. L''incertitude absolue est de ± 0,5 g autour de la valeur affichée. Cette notion d''encadrement de la mesure est fondamentale en métrologie : toute mesure est entachée d''une incertitude liée à la précision de l''instrument.',
  'Répondre « entre 346 g et 348 g » en prenant ± 1 g au lieu de ± 0,5 g : l''élève confond la graduation de l''instrument avec la demi-graduation qui définit l''incertitude.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 4. math_longueurs_conversions (prefix=fa010000)
-- ============================================================================

-- Q8 (reponse_courte) — Conversion multiple

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa210000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Intermediaire', 'reponse_courte',
  'Exprimer 2 km 3 hm 5 dam 7 m en mètres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2357","2 357","2357 m","2 357 m"]}'::jsonb,
  'On décompose : 2 km = 2 000 m, 3 hm = 300 m, 5 dam = 50 m, 7 m = 7 m. Total : 2 000 + 300 + 50 + 7 = 2 357 m. Chaque unité représente une position dans le tableau de conversion des longueurs : km | hm | dam | m | dm | cm | mm. Le nombre s''écrit directement : 2 357 m.',
  'Erreur fréquente : confondre les positions dans le tableau de conversion et écrire par exemple 2 357 0 en ajoutant un zéro inutile.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Problème avec conversion

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa210000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Intermediaire', 'qcm',
  'Une corde mesure 12,5 m. On la coupe en morceaux de 75 cm chacun. Combien de morceaux obtient-on ?',
  NULL,
  '[{"id":"a","label":"15"},{"id":"b","label":"16"},{"id":"c","label":"16,67"},{"id":"d","label":"17"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il faut d''abord convertir dans la même unité : 12,5 m = 1 250 cm. Nombre de morceaux : 1 250 ÷ 75 = 16,666... Comme on ne peut couper qu''un nombre entier de morceaux complets, on obtient 16 morceaux (avec un reste de 50 cm). En situation concrète, le résultat d''une division doit être interprété : ici on arrondit par défaut car on ne peut pas obtenir de morceau partiel de la longueur souhaitée.',
  'Erreur fréquente : répondre 17 en arrondissant par excès, alors qu''on ne peut pas obtenir un 17e morceau complet de 75 cm.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Conversion avec décimaux

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa270000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Intermediaire', 'qcm',
  'Un boulanger utilise 2,4 kg de farine pour faire 8 baguettes. Combien de grammes de farine utilise-t-il pour une seule baguette ?',
  NULL,
  '[{"id":"a","label":"30 g"},{"id":"b","label":"300 g"},{"id":"c","label":"3 000 g"},{"id":"d","label":"3 g"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il faut d''abord convertir : 2,4 kg = 2 400 g. Puis on divise par le nombre de baguettes : 2 400 ÷ 8 = 300 g par baguette. Le résultat est cohérent avec les ordres de grandeur : une baguette standard de 250 g nécessite un peu plus de farine que sa masse finale (une partie de l''eau s''évapore à la cuisson).',
  'Erreur fréquente : diviser 2,4 par 8 sans convertir en grammes et répondre 0,3, ou oublier la conversion et obtenir 30 g.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (vrai_faux) — Comparaison de masses avec unités mixtes

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa270000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Intermediaire', 'vrai_faux',
  '3 kg 250 g est supérieur à 3 200 g.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  '3 kg 250 g = 3 000 g + 250 g = 3 250 g. Comparons : 3 250 g > 3 200 g. L''affirmation est donc vraie. Pour comparer des masses exprimées dans des unités différentes, il faut toujours les convertir dans la même unité. L''écriture « 3 kg 250 g » signifie « 3 kg et 250 g », c''est une écriture composée.',
  'Erreur fréquente : lire « 3,250 kg » comme « 3,25 kg » et conclure que c''est égal à 3 250 g ÷ 10 = 325 g (confusion de virgule).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte) — Conversion tonne/quintal

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa270000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Intermediaire', 'reponse_courte',
  'Un éleveur vend 2,8 tonnes de blé. Combien cela fait-il en quintaux ? (1 quintal = 100 kg)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["28","28 quintaux","28 q"]}'::jsonb,
  'D''abord, convertissons en kg : 2,8 t = 2,8 × 1 000 = 2 800 kg. Un quintal vaut 100 kg, donc : 2 800 ÷ 100 = 28 quintaux. On peut aussi retenir que 1 t = 10 quintaux, donc 2,8 t = 28 quintaux. Le quintal est une unité agraire encore utilisée dans le commerce des céréales.',
  'Erreur fréquente : diviser par 1 000 au lieu de 100 et répondre 2,8 quintaux, ou multiplier au lieu de diviser.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 7. math_mesure_angles (prefix=fa060000)
-- ============================================================================

-- Q8 (qcm) — Angles dans un quadrilatère

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa260000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles',
  'Mesure d''angles — Types et calculs', 'Intermediaire', 'qcm',
  'Dans un parallélogramme, un angle mesure 70°. Quelles sont les mesures des trois autres angles ?',
  NULL,
  '[{"id":"a","label":"70°, 110°, 110°"},{"id":"b","label":"70°, 70°, 70°"},{"id":"c","label":"110°, 110°, 110°"},{"id":"d","label":"70°, 90°, 130°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Dans un parallélogramme, les angles opposés sont égaux et les angles consécutifs sont supplémentaires (leur somme vaut 180°). Si un angle mesure 70°, l''angle opposé mesure aussi 70°. Les deux autres angles mesurent chacun 180° − 70° = 110°. Vérification : 70° + 110° + 70° + 110° = 360° (somme des angles d''un quadrilatère). Cette propriété des parallélogrammes est fondamentale en géométrie du cycle 3.',
  'Erreur fréquente : penser que tous les angles d''un parallélogramme sont égaux (ce qui n''est vrai que pour le rectangle).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Angle sur une horloge (cas plus complexe)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa260000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles',
  'Mesure d''angles — Types et calculs', 'Intermediaire', 'reponse_courte',
  'À 15 h 00, quelle est la mesure, en degrés, de l''angle formé entre la grande aiguille et la petite aiguille d''une horloge ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["90","90°","90 degrés"]}'::jsonb,
  'À 15 h 00, la grande aiguille pointe vers le 12 et la petite aiguille vers le 3. Chaque heure correspond à un angle de 360° ÷ 12 = 30°. L''écart entre 12 et 3 est de 3 heures, soit 3 × 30° = 90°. On obtient un angle droit. Ce type de problème, fréquent au CRPE, met en jeu la proportionnalité appliquée à la mesure d''angles.',
  'Diviser 360° par 24 au lieu de 12 : le cadran d''une horloge couvre 12 heures et non 24.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Somme des angles d''un quadrilatère

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa500000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Intermediaire', 'qcm',
  'Un commerçant applique une remise de 20 % sur un article à 45 €, puis une remise supplémentaire de 10 % sur le prix déjà réduit. Quel est le prix final ?',
  NULL,
  '[{"id":"a","label":"31,50 €"},{"id":"b","label":"32,40 €"},{"id":"c","label":"30 €"},{"id":"d","label":"33,75 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Étape 1 — Première remise de 20 % : 45 × 0,80 = 36 €. Étape 2 — Deuxième remise de 10 % sur le nouveau prix : 36 × 0,90 = 32,40 €. Attention : appliquer deux remises successives de 20 % et 10 % n''est PAS équivalent à une remise unique de 30 %. La remise totale effective est : 1 − (0,80 × 0,90) = 1 − 0,72 = 0,28, soit 28 %. Le distracteur c (30 €) correspond à l''erreur 45 × 0,70 = 31,50 qui est le distracteur a. Le distracteur d correspond à une seule remise de 25 %.',
  'Erreur fréquente : additionner les pourcentages (20 % + 10 % = 30 %) et calculer 45 × 0,70 = 31,50 €. Les remises successives se multiplient, elles ne s''additionnent pas.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Budget et répartition

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa500000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Intermediaire', 'reponse_courte',
  'Trois amis partagent l''addition d''un restaurant. Le repas coûte 87 €. Ils laissent un pourboire de 10 % sur le total. Combien chacun paie-t-il si le partage est équitable ? (Arrondir au centime)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["31,90","31.90","31,90 €","31.90 €"]}'::jsonb,
  'Étape 1 — Pourboire : 87 × 0,10 = 8,70 €. Étape 2 — Total avec pourboire : 87 + 8,70 = 95,70 €. Étape 3 — Part de chacun : 95,70 ÷ 3 = 31,90 €. Vérification : 31,90 × 3 = 95,70 €. Ce problème combine calcul de pourcentage et division d''un nombre décimal.',
  'Erreur fréquente : calculer le pourboire par personne sur le montant individuel (87 ÷ 3 = 29 €, puis 29 × 1,10 = 31,90 €) — ici le résultat est le même par chance, mais la méthode peut diverger si le partage n''est pas égal.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — TVA et prix TTC

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa500000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Intermediaire', 'vrai_faux',
  'Un article coûte 60 € HT. Avec une TVA de 20 %, son prix TTC est de 72 €.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le prix TTC (Toutes Taxes Comprises) se calcule en ajoutant la TVA au prix HT (Hors Taxes). TVA = 60 × 20/100 = 12 €. Prix TTC = 60 + 12 = 72 €. On peut aussi calculer directement : 60 × 1,20 = 72 €. L''affirmation est donc vraie. Le coefficient multiplicateur pour une TVA de 20 % est 1,20. Ce type de calcul de pourcentage appliqué à un contexte économique réel est un classique du CRPE.',
  'Erreur fréquente : soustraire la TVA au lieu de l''ajouter, ou calculer 20 % de 72 pour vérifier (ce qui donnerait 14,4 ≠ 12).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 9. math_ordre_grandeur_mesures (prefix=fa110000)
-- ============================================================================

-- Q8 (qcm) — Ordre de grandeur d''une aire

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa510000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Intermediaire', 'qcm',
  'Quel est l''ordre de grandeur de l''aire d''un terrain de football ?',
  NULL,
  '[{"id":"a","label":"700 m²"},{"id":"b","label":"7 000 m²"},{"id":"c","label":"70 000 m²"},{"id":"d","label":"700 000 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un terrain de football réglementaire mesure environ 105 m × 68 m, soit une aire d''environ 7 140 m² ≈ 7 000 m² (soit 0,7 hectare). Pour comparaison : 700 m² correspond à une grande maison avec jardin, 70 000 m² (7 ha) à un petit parc urbain, et 700 000 m² à un quartier entier. L''estimation d''aires est un exercice important au cycle 3 pour donner du sens aux unités de surface.',
  'Erreur fréquente : confondre les ordres de grandeur en ne se représentant pas concrètement la taille d''un terrain de football.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Estimation d''un volume

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa510000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Intermediaire', 'reponse_courte',
  'Une salle de classe mesure environ 9 m de long, 7 m de large et 3 m de hauteur. Quel est l''ordre de grandeur de son volume, en m³ ? (Donner une valeur approchée arrondie à la dizaine)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["190","190 m³","200","200 m³"]}'::jsonb,
  'Le volume de la salle est : 9 × 7 × 3 = 189 m³ ≈ 190 m³ (ou environ 200 m³ en arrondissant à l''ordre de grandeur). Pour donner un repère concret : 1 m³ = 1 000 L, donc la salle contient environ 190 000 L d''air. Ce type d''estimation en trois dimensions est essentiel pour développer le sens spatial et le raisonnement sur les volumes au cycle 3.',
  'Erreur fréquente : calculer l''aire au sol (63 m²) au lieu du volume, en oubliant la troisième dimension (la hauteur).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Plausibilité d''une mesure

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa510000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Intermediaire', 'vrai_faux',
  'Un réfrigérateur standard a une contenance d''environ 250 litres.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Un réfrigérateur standard (sans le congélateur) a une contenance comprise entre 200 et 350 litres, avec une valeur typique autour de 250 L. Un réfrigérateur-congélateur combiné a une contenance totale d''environ 300 à 400 L. Pour comparaison : un mini-frigo contient environ 50 L, un verre d''eau environ 0,25 L. Connaître les ordres de grandeur des contenances d''objets du quotidien est un attendu des programmes Éduscol.',
  'Erreur fréquente : confondre les ordres de grandeur et penser qu''un réfrigérateur contient 25 litres (un facteur 10 trop petit) ou 2 500 litres (un facteur 10 trop grand).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 10. math_perimetre_aire_volume_confusions (prefix=b0270000)
-- ============================================================================

-- Q8 (qcm) — Agrandissement et volume

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2a0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles',
  'Périmètre des figures usuelles', 'Intermediaire', 'qcm',
  'Un cercle a un diamètre de 14 cm. Quel est son périmètre (arrondi au dixième) ? (π ≈ 3,14)',
  NULL,
  '[{"id":"a","label":"43,96 cm"},{"id":"b","label":"21,98 cm"},{"id":"c","label":"87,92 cm"},{"id":"d","label":"153,86 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le périmètre (ou circonférence) d''un cercle est P = π × d, où d est le diamètre. Ici : P = 3,14 × 14 = 43,96 cm. On peut aussi utiliser P = 2 × π × r, avec r = 7 cm : P = 2 × 3,14 × 7 = 43,96 cm. L''option b correspond au calcul avec le rayon confondu avec le diamètre (π × 7). L''option d donne des cm², ce qui est une unité d''aire, pas de longueur.',
  'Erreur fréquente : confondre rayon et diamètre dans la formule, ou utiliser la formule de l''aire (π × r²) au lieu de celle du périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Périmètre d''un demi-cercle

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2a0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles',
  'Périmètre des figures usuelles', 'Intermediaire', 'reponse_courte',
  'Un demi-cercle a un diamètre de 10 cm. Quel est son périmètre total (partie courbe + diamètre), arrondi au dixième ? (π ≈ 3,14)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25,7","25.7","25,7 cm","25.7 cm","25,70","25.70"]}'::jsonb,
  'Le périmètre d''un demi-cercle comprend deux parties : la demi-circonférence et le diamètre. Demi-circonférence = (π × d) / 2 = (3,14 × 10) / 2 = 15,7 cm. Diamètre = 10 cm. Périmètre total = 15,7 + 10 = 25,7 cm. Attention : il ne faut pas oublier le diamètre qui ferme la figure.',
  'Erreur fréquente : oublier d''ajouter le diamètre et répondre seulement 15,7 cm (la demi-circonférence seule ne ferme pas la figure).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Périmètre d''un hexagone régulier

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2a0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles',
  'Périmètre des figures usuelles', 'Intermediaire', 'vrai_faux',
  'Un hexagone régulier dont le côté mesure 5 cm a le même périmètre qu''un triangle équilatéral dont le côté mesure 10 cm.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Périmètre de l''hexagone régulier : 6 × 5 = 30 cm. Périmètre du triangle équilatéral : 3 × 10 = 30 cm. Les deux périmètres sont bien égaux. L''affirmation est vraie. Cet exercice illustre que des figures de formes très différentes peuvent avoir le même périmètre. Le périmètre dépend du nombre de côtés et de leur longueur, pas de la forme de la figure.',
  'Erreur fréquente : penser que deux figures de formes différentes ne peuvent pas avoir le même périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 12. math_problemes_grandeurs_avance (prefix=fa0f0000)
-- ============================================================================

-- Q8 (reponse_courte) — Aire d''un disque appliquée

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2f0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance',
  'Problèmes de grandeurs — Niveau avancé CRPE', 'Avance', 'reponse_courte',
  'Une pizza ronde a un diamètre de 30 cm. On la coupe en 8 parts égales. Quelle est l''aire d''une part, arrondie à l''unité ? (π ≈ 3,14)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["88","88 cm²","88cm²"]}'::jsonb,
  'Aire du disque entier : A = π × r² = 3,14 × 15² = 3,14 × 225 = 706,5 cm². Aire d''une part (1/8) : 706,5 ÷ 8 = 88,3125 ≈ 88 cm². Ce problème combine le calcul de l''aire d''un disque avec une division, dans un contexte concret. L''erreur classique est d''utiliser le diamètre au lieu du rayon dans la formule.',
  'Erreur fréquente : utiliser le diamètre (30) au lieu du rayon (15) dans la formule π × r², ce qui quadruplerait le résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Aire d''une figure composée

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2f0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance',
  'Problèmes de grandeurs — Niveau avancé CRPE', 'Avance', 'qcm',
  'Un terrain est composé d''un rectangle de 40 m × 25 m surmonté d''un triangle isocèle dont la base est le côté de 40 m et la hauteur mesure 12 m. Quelle est l''aire totale du terrain ?',
  NULL,
  '[{"id":"a","label":"1 000 m²"},{"id":"b","label":"1 240 m²"},{"id":"c","label":"1 480 m²"},{"id":"d","label":"1 120 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Aire du rectangle : 40 × 25 = 1 000 m². Aire du triangle : (40 × 12) / 2 = 240 m². Aire totale : 1 000 + 240 = 1 240 m². Ce type de figure composée est très courant au CRPE. La stratégie consiste à décomposer la figure en formes élémentaires dont on connaît les formules d''aire, puis à additionner.',
  'Erreur fréquente : oublier de diviser par 2 pour l''aire du triangle et trouver 1 480 m² (rectangle + rectangle au lieu de rectangle + triangle).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Volume et agrandissement

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2f0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance',
  'Problèmes de grandeurs — Niveau avancé CRPE', 'Avance', 'vrai_faux',
  'Si on double le rayon d''une sphère, son volume est multiplié par 4.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Le volume d''une sphère est V = (4/3)πr³. Si on double le rayon (r → 2r), le nouveau volume est (4/3)π(2r)³ = (4/3)π × 8r³ = 8V. Le volume est donc multiplié par 8, pas par 4. Le facteur 4 correspondrait à l''aire de la sphère (A = 4πr², doublée → 4π(2r)² = 16πr², soit × 4). On retrouve la règle générale : multiplier les dimensions par k multiplie les longueurs par k, les aires par k², et les volumes par k³.',
  'Erreur fréquente : confondre le facteur d''agrandissement des aires (k² = 4) avec celui des volumes (k³ = 8).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 13. math_temps_calculs_horaires (prefix=fa0b0000)
-- ============================================================================

-- Q8 (qcm) — Durée en jours, heures, minutes

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2b0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires',
  'Temps et calculs horaires — Durées et conversions', 'Intermediaire', 'qcm',
  'Combien de secondes y a-t-il dans une journée complète (24 heures) ?',
  NULL,
  '[{"id":"a","label":"1 440"},{"id":"b","label":"3 600"},{"id":"c","label":"86 400"},{"id":"d","label":"8 640"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On procède par étapes : 1 heure = 60 minutes = 60 × 60 secondes = 3 600 secondes. 1 journée = 24 heures = 24 × 3 600 = 86 400 secondes. L''option a (1 440) correspond au nombre de minutes dans une journée (24 × 60). L''option b (3 600) correspond au nombre de secondes dans une heure seulement. L''option d (8 640) résulte d''une erreur de calcul.',
  'Erreur fréquente : confondre le nombre de minutes (1 440) avec le nombre de secondes, ou oublier une étape de conversion.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Problème horaire avec fuseaux

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2b0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires',
  'Temps et calculs horaires — Durées et conversions', 'Intermediaire', 'reponse_courte',
  'Un avion décolle de Paris à 10 h 30 (heure de Paris) et atterrit à New York après 8 h 15 min de vol. Le décalage horaire est de −6 h (New York est en retard sur Paris). Quelle heure est-il à New York à l''atterrissage ? (format HH h MM)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12 h 45","12h45","12h 45","12 h45"]}'::jsonb,
  'Étape 1 — Heure d''arrivée à Paris : 10 h 30 + 8 h 15 = 18 h 45 (heure de Paris). Étape 2 — Conversion en heure de New York : 18 h 45 − 6 h = 12 h 45. Il est donc 12 h 45 à New York. Ce type de problème combine addition de durées et décalage horaire, deux compétences liées aux calculs horaires au cycle 3.',
  'Erreur fréquente : ajouter le décalage horaire au lieu de le soustraire, ou appliquer le décalage avant d''ajouter la durée du vol.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Conversion durée décimale

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa2b0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires',
  'Temps et calculs horaires — Durées et conversions', 'Intermediaire', 'vrai_faux',
  '2,75 heures correspondent à 2 h 45 min.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La partie entière (2) donne les heures. La partie décimale (0,75) représente une fraction d''heure. Pour convertir : 0,75 × 60 = 45 minutes. Donc 2,75 h = 2 h 45 min. L''affirmation est vraie. Rappel des conversions courantes : 0,25 h = 15 min, 0,5 h = 30 min, 0,75 h = 45 min. L''erreur classique est de lire « 2,75 h = 2 h 75 min » en confondant la notation décimale avec la notation sexagésimale.',
  'Erreur fréquente : interpréter 0,75 h comme 75 minutes au lieu de multiplier par 60 pour obtenir 45 minutes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 14. math_unites_aire_volume (prefix=c00c0000)
-- ============================================================================

-- Q8 (qcm) — Conversion avancée volume/contenance

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa220000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire', 'reponse_courte',
  'Un piéton part à 8 h 00 et marche à 5 km/h. Un cycliste part du même point à 8 h 30 et roule à 15 km/h dans la même direction. À quelle heure le cycliste rattrape-t-il le piéton ? (format HH h MM)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8 h 45","8h45","8h 45","8 h45"]}'::jsonb,
  'Quand le cycliste part (à 8 h 30), le piéton a déjà parcouru 5 × 0,5 = 2,5 km d''avance. La vitesse de rapprochement est : 15 − 5 = 10 km/h. Temps de rattrapage : 2,5 ÷ 10 = 0,25 h = 15 min. Le cycliste rattrape le piéton à 8 h 30 + 15 min = 8 h 45. Vérification : à 8 h 45, le piéton a marché 45 min = 0,75 h, soit 5 × 0,75 = 3,75 km. Le cycliste a roulé 15 min = 0,25 h, soit 15 × 0,25 = 3,75 km.',
  'Erreur fréquente : oublier de calculer l''avance du piéton, ou diviser la distance totale par la somme des vitesses au lieu de la différence.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Temps de trajet avec pause

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa220000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire', 'qcm',
  'Une famille part en voiture pour un trajet de 360 km. Elle roule à une vitesse moyenne de 90 km/h et fait une pause de 20 minutes au milieu du trajet. À quelle heure arrive-t-elle si elle part à 9 h 00 ?',
  NULL,
  '[{"id":"a","label":"13 h 00"},{"id":"b","label":"13 h 20"},{"id":"c","label":"12 h 20"},{"id":"d","label":"14 h 00"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Durée de conduite : t = 360 ÷ 90 = 4 h. Durée de la pause : 20 min. Durée totale : 4 h 20 min. Heure d''arrivée : 9 h 00 + 4 h 20 min = 13 h 20. L''option a oublie la pause. L''option d ajoute une heure de trop. Ce problème est un rappel que la vitesse moyenne ne concerne que le temps de roulement, pas les arrêts.',
  'Erreur fréquente : oublier d''ajouter le temps de pause et répondre 13 h 00.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Conversion m/s en km/h

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa250000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels',
  'Volume des solides usuels — Formules et applications', 'Intermediaire', 'reponse_courte',
  'Un prisme droit a pour base un triangle rectangle dont les côtés de l''angle droit mesurent 6 cm et 8 cm. La hauteur du prisme est de 10 cm. Quel est son volume en cm³ ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["240","240 cm³","240cm³"]}'::jsonb,
  'Le volume d''un prisme droit est V = Aire de la base × hauteur. La base est un triangle rectangle, son aire est : (6 × 8) / 2 = 24 cm². Le volume du prisme est : 24 × 10 = 240 cm³. La formule du prisme droit généralise celle du pavé droit : on remplace le rectangle de base par un polygone quelconque.',
  'Erreur fréquente : oublier de diviser par 2 pour l''aire du triangle et calculer 6 × 8 × 10 = 480 cm³.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Volume d''une pyramide

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa250000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels',
  'Volume des solides usuels — Formules et applications', 'Intermediaire', 'qcm',
  'Une pyramide à base carrée a une base de 9 cm de côté et une hauteur de 14 cm. Quel est son volume ?',
  NULL,
  '[{"id":"a","label":"378 cm³"},{"id":"b","label":"1 134 cm³"},{"id":"c","label":"567 cm³"},{"id":"d","label":"126 cm³"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le volume d''une pyramide est V = (1/3) × Aire de la base × hauteur. Aire de la base carrée : 9 × 9 = 81 cm². Volume : (1/3) × 81 × 14 = (1/3) × 1 134 = 378 cm³. L''option b (1 134) oublie le facteur 1/3 (c''est le volume du prisme correspondant). L''option c (567) applique le facteur 1/2 au lieu de 1/3.',
  'Erreur fréquente : oublier le facteur 1/3 et calculer le volume d''un prisme (Aire × h = 1 134), ou confondre 1/3 avec 1/2.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Relation volume cylindre / cône

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa250000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels',
  'Volume des solides usuels — Formules et applications', 'Intermediaire', 'vrai_faux',
  'Il faut exactement 3 cônes pour remplir un cylindre de même base et de même hauteur.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le volume d''un cylindre est V_cyl = π × r² × h. Le volume d''un cône de même base et même hauteur est V_cône = (1/3) × π × r² × h. On a donc V_cyl = 3 × V_cône. Il faut bien 3 cônes pour remplir un cylindre de mêmes dimensions. Cette relation fondamentale (le cône occupe le tiers du cylindre englobant) est analogue à celle entre la pyramide et le prisme : V_pyramide = (1/3) × V_prisme. Elle peut être vérifiée expérimentalement en classe par transvasement.',
  'Erreur fréquente : penser qu''il faut 2 cônes (en confondant le facteur 1/3 avec 1/2) ou ne pas voir le lien entre les deux formules.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


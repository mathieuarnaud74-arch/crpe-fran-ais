-- Migration: série math_factorisation_developpement (7 questions)
-- Factorisation et développement
-- UUID prefix: f80e0000
-- Types : qcm (2), vrai_faux (2), reponse_courte (3)
-- Niveau : Difficile
-- Access : premium

-- ============================================================================
-- Q1 — QCM — AMORCE — Développer un produit (a+b)(c+d)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'qcm',
  'Développer et réduire l''expression (2x + 3)(x − 5).',
  NULL,
  '[{"id":"a","label":"2x² − 7x − 15"},{"id":"b","label":"2x² + 7x − 15"},{"id":"c","label":"2x² − 10x − 15"},{"id":"d","label":"2x² − 7x + 15"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On applique la double distributivité : (2x + 3)(x − 5) = 2x × x + 2x × (−5) + 3 × x + 3 × (−5) = 2x² − 10x + 3x − 15 = 2x² − 7x − 15. On regroupe les termes en x : −10x + 3x = −7x.',
  'Oublier l''un des quatre produits dans la double distributivité, ou se tromper de signe en multipliant par −5. Par exemple, écrire 2x² − 10x − 3x − 15 en confondant le signe de 3 × x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — REPONSE COURTE — AMORCE — Factoriser par un facteur commun
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'reponse_courte',
  'Factoriser l''expression 6x² + 9x.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3x(2x + 3)","3x(2x+3)","3x × (2x + 3)","3x*(2x+3)"]}'::jsonb,
  'On cherche le plus grand facteur commun à 6x² et 9x. Le PGCD de 6 et 9 est 3. Les deux termes contiennent au moins un facteur x. Le facteur commun est donc 3x. On écrit : 6x² + 9x = 3x × 2x + 3x × 3 = 3x(2x + 3).',
  'Ne factoriser que partiellement, par exemple écrire 3(2x² + 3x) en oubliant de mettre x en facteur, ou x(6x + 9) en oubliant de factoriser les coefficients.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — QCM — RENFORCEMENT — Identité remarquable (a + b)²
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'qcm',
  'Développer (3x + 4)².',
  NULL,
  '[{"id":"a","label":"9x² + 16"},{"id":"b","label":"9x² + 24x + 16"},{"id":"c","label":"9x² + 12x + 16"},{"id":"d","label":"6x² + 24x + 16"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On utilise l''identité remarquable (a + b)² = a² + 2ab + b² avec a = 3x et b = 4. On obtient : (3x)² + 2 × 3x × 4 + 4² = 9x² + 24x + 16. Le terme du double produit 2ab = 2 × 3x × 4 = 24x est essentiel et ne doit pas être oublié.',
  'Oublier le double produit et écrire (3x + 4)² = 9x² + 16. C''est l''erreur la plus classique : croire que (a + b)² = a² + b². Autre erreur : calculer 2 × 3 × 4 = 12 au lieu de 2 × 3x × 4 = 24x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — VRAI/FAUX — RENFORCEMENT — Identité remarquable (a − b)²
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? (5x − 2)² = 25x² − 10x + 4.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Appliquons l''identité remarquable (a − b)² = a² − 2ab + b² avec a = 5x et b = 2. On obtient : (5x)² − 2 × 5x × 2 + 2² = 25x² − 20x + 4. Or l''expression proposée est 25x² − 10x + 4. Le double produit est erroné : −10x au lieu de −20x. L''affirmation est donc fausse.',
  'Calculer le double produit comme a × b au lieu de 2 × a × b. Ici, 5x × 2 = 10x au lieu du correct 2 × 5x × 2 = 20x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — REPONSE COURTE — RENFORCEMENT — Factoriser avec (a + b)(a − b)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'reponse_courte',
  'Factoriser l''expression x² − 49.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(x + 7)(x − 7)","(x+7)(x-7)","(x + 7)(x - 7)","(x-7)(x+7)","(x − 7)(x + 7)"]}'::jsonb,
  'On reconnaît une différence de deux carrés : x² − 49 = x² − 7². On applique l''identité remarquable a² − b² = (a + b)(a − b) avec a = x et b = 7. On obtient : x² − 49 = (x + 7)(x − 7).',
  'Ne pas reconnaître que 49 = 7² et ne pas identifier la forme a² − b². Autre erreur : écrire (x − 49)(x + 49) en confondant le nombre et son carré.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — VRAI/FAUX — APPROFONDISSEMENT — Simplifier une expression algébrique
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? L''expression (x + 3)² − (x − 1)² se simplifie en 8x + 8.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Développons chaque carré. (x + 3)² = x² + 6x + 9. (x − 1)² = x² − 2x + 1. La différence donne : (x² + 6x + 9) − (x² − 2x + 1) = x² + 6x + 9 − x² + 2x − 1 = 8x + 8. On peut aussi utiliser l''identité a² − b² = (a + b)(a − b) avec a = x + 3 et b = x − 1 : (2x + 2)(4) = 8x + 8. L''affirmation est vraie.',
  'Oublier de distribuer le signe moins devant (x − 1)², ce qui mène à x² + 6x + 9 − x² − 2x + 1 = 4x + 10.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — REPONSE COURTE — APPROFONDISSEMENT — Problème concret modélisé par une expression algébrique
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'reponse_courte',
  'Un carré a pour côté (x + 5) cm. On lui retire un carré de côté x cm à l''intérieur. Exprimer l''aire restante sous forme factorisée.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5(2x + 5)","5(2x+5)","(2x + 5) × 5","(2x+5)×5"]}'::jsonb,
  'L''aire du grand carré est (x + 5)² = x² + 10x + 25. L''aire du petit carré est x². L''aire restante est : (x + 5)² − x² = x² + 10x + 25 − x² = 10x + 25. On factorise : 10x + 25 = 5(2x + 5). On peut aussi appliquer directement a² − b² = (a + b)(a − b) : (x + 5)² − x² = (x + 5 + x)(x + 5 − x) = (2x + 5)(5) = 5(2x + 5).',
  'Ne pas penser à factoriser le résultat 10x + 25 et laisser l''expression sous forme développée. Autre erreur : calculer (x + 5)² = x² + 25 en oubliant le double produit.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

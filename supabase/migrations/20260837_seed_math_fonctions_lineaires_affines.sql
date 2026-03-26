-- Migration: 10 exercices — Fonctions linéaires et affines
-- Série : math_fonctions_lineaires_affines (Mathématiques, nombres_calcul)
-- Coefficient directeur, ordonnée à l'origine, représentation graphique, lecture
-- UUID prefix: e9370000

-- Q1 — QCM — Définition fonction linéaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'qcm',
  'Parmi ces expressions, laquelle définit une fonction linéaire ?',
  NULL,
  '[{"id":"a","label":"f(x) = 3x + 2"},{"id":"b","label":"f(x) = 5x"},{"id":"c","label":"f(x) = x² + 1"},{"id":"d","label":"f(x) = 2/x"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'f(x) = 5x est une fonction linéaire. Une fonction linéaire est de la forme f(x) = ax, où a est une constante (le coefficient). Sa représentation graphique est une droite passant par l''ORIGINE (0, 0). f(x) = 3x + 2 est affine (pas linéaire car +2 ≠ 0). f(x) = x² + 1 est une fonction du second degré. f(x) = 2/x est une fonction inverse. La fonction linéaire est un cas particulier de la fonction affine, avec une ordonnée à l''origine nulle (b = 0).',
  'Confondre linéaire et affine. Linéaire = ax (passe par l''origine). Affine = ax + b (b peut être ≠ 0).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Toute fonction linéaire est affine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : toute fonction linéaire est aussi une fonction affine.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Toute fonction linéaire f(x) = ax est un cas particulier de fonction affine f(x) = ax + b, avec b = 0. En revanche, la réciproque est fausse : toute fonction affine n''est pas linéaire. Par exemple, f(x) = 2x + 3 est affine mais pas linéaire (b = 3 ≠ 0). L''inclusion est : fonctions linéaires ⊂ fonctions affines. La différence graphique : une droite linéaire passe par l''origine, une droite affine ne passe pas forcément par l''origine.',
  'Croire que linéaire et affine sont synonymes. La fonction linéaire est un CAS PARTICULIER de la fonction affine (quand b = 0).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Coefficient directeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'qcm',
  'La droite d''équation y = −2x + 5 a pour coefficient directeur :',
  NULL,
  '[{"id":"a","label":"5"},{"id":"b","label":"−2"},{"id":"c","label":"2"},{"id":"d","label":"−5"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le coefficient directeur est −2. Dans l''équation y = ax + b d''une fonction affine, a est le coefficient directeur (ou pente) et b est l''ordonnée à l''origine. Ici : a = −2 et b = 5. Le coefficient directeur indique la variation de y quand x augmente de 1 : si a = −2, quand x augmente de 1, y diminue de 2. Signe de a : a > 0 → droite croissante ; a < 0 → droite décroissante ; a = 0 → droite horizontale (fonction constante).',
  'Confondre le coefficient directeur (a = −2) avec l''ordonnée à l''origine (b = 5). Le coefficient directeur est le nombre devant x.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Ordonnée à l'origine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'reponse_courte',
  'Quelle est l''ordonnée à l''origine de la droite d''équation y = 4x − 3 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["-3"]}'::jsonb,
  'L''ordonnée à l''origine est −3. C''est la valeur de b dans y = ax + b. Géométriquement, c''est l''ordonnée (la coordonnée y) du point où la droite coupe l''axe des ordonnées (axe vertical, x = 0). Vérification : quand x = 0, y = 4(0) − 3 = −3. La droite coupe l''axe des ordonnées au point (0, −3). L''ordonnée à l''origine est donc la valeur de f(0), c''est-à-dire l''image de 0 par la fonction.',
  'Donner 4 (le coefficient directeur) au lieu de −3 (l''ordonnée à l''origine). L''ordonnée à l''origine est la constante ajoutée, pas le nombre devant x.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Lecture graphique du coefficient
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'qcm',
  'Une droite passe par les points A(1, 3) et B(4, 9). Quel est son coefficient directeur ?',
  NULL,
  '[{"id":"a","label":"2"},{"id":"b","label":"3"},{"id":"c","label":"6"},{"id":"d","label":"1/2"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le coefficient directeur est a = (yB − yA) / (xB − xA) = (9 − 3) / (4 − 1) = 6/3 = 2. Formule : a = Δy / Δx = (variation de y) / (variation de x). On peut vérifier : quand x passe de 1 à 4 (augmentation de 3), y passe de 3 à 9 (augmentation de 6). Le rapport 6/3 = 2 est constant : pour chaque unité en x, y augmente de 2. L''équation de la droite est y = 2x + b. En remplaçant par A(1, 3) : 3 = 2(1) + b → b = 1. Donc y = 2x + 1.',
  'Inverser la formule : (xB − xA) / (yB − yA) au lieu de (yB − yA) / (xB − xA). Le coefficient directeur est Δy/Δx, pas Δx/Δy.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Parallélisme et coefficient directeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : deux droites sont parallèles si et seulement si elles ont le même coefficient directeur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Deux droites non verticales d₁ : y = a₁x + b₁ et d₂ : y = a₂x + b₂ sont parallèles si et seulement si a₁ = a₂ (même coefficient directeur). Si de plus b₁ = b₂, les droites sont confondues. Si a₁ = a₂ et b₁ ≠ b₂, les droites sont strictement parallèles (distinctes). Exemples : y = 3x + 1 et y = 3x − 4 sont parallèles (même pente a = 3, ordonnées à l''origine différentes). Ce critère est fondamental en géométrie analytique.',
  'Croire que deux droites sont parallèles si elles ont la même ordonnée à l''origine. C''est le coefficient directeur (la pente) qui détermine la direction, pas l''ordonnée à l''origine.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Déterminer l'équation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'reponse_courte',
  'Une droite passe par l''origine et par le point (3, 12). Donnez son équation sous la forme y = ax.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["y = 4x","y=4x"]}'::jsonb,
  'L''équation est y = 4x. La droite passe par l''origine, donc c''est une fonction linéaire : y = ax. Elle passe aussi par (3, 12), donc 12 = a × 3, soit a = 12/3 = 4. L''équation est y = 4x. Vérification : f(0) = 0 ✓ (passe par l''origine), f(3) = 12 ✓. La proportionnalité est le contexte naturel des fonctions linéaires : si y est proportionnel à x, alors y = ax où a est le coefficient de proportionnalité.',
  'Écrire y = 4x + b sans déterminer b. Puisque la droite passe par l''origine, b = 0 obligatoirement, d''où y = 4x.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Fonction affine et situation concrète
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'qcm',
  'Un plombier facture 40 € de déplacement plus 25 € par heure de travail. Quelle fonction modélise le coût total C en fonction du nombre d''heures h ?',
  NULL,
  '[{"id":"a","label":"C(h) = 25h + 40"},{"id":"b","label":"C(h) = 40h + 25"},{"id":"c","label":"C(h) = 65h"},{"id":"d","label":"C(h) = 25h"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'C(h) = 25h + 40 est une fonction affine avec a = 25 (coût horaire = coefficient directeur) et b = 40 (frais de déplacement = ordonnée à l''origine). Pour 0 heure : C(0) = 40 € (on paie le déplacement). Pour 1 heure : C(1) = 65 €. Pour 3 heures : C(3) = 115 €. Ce n''est PAS une fonction linéaire car il y a un coût fixe (40 €). Si le plombier ne facturait pas de déplacement, ce serait linéaire : C(h) = 25h. La distinction linéaire/affine correspond à : proportionnel / non proportionnel avec partie fixe.',
  'Confondre le coût horaire (25 €) et le déplacement (40 €) dans l''équation. Le coefficient directeur est le coût VARIABLE (par heure), l''ordonnée à l''origine est le coût FIXE.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Intersection de deux droites
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'qcm',
  'Quel est le point d''intersection des droites y = 2x + 1 et y = −x + 7 ?',
  NULL,
  '[{"id":"a","label":"(2, 5)"},{"id":"b","label":"(3, 4)"},{"id":"c","label":"(1, 3)"},{"id":"d","label":"(4, 3)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le point d''intersection est (2, 5). On résout le système : 2x + 1 = −x + 7 → 3x = 6 → x = 2. Puis y = 2(2) + 1 = 5. Vérification dans la 2ᵉ équation : y = −(2) + 7 = 5 ✓. Les deux droites se coupent au point (2, 5). Graphiquement, c''est le point où les deux droites se croisent. Deux droites non parallèles (coefficients directeurs différents) ont toujours exactement un point d''intersection.',
  'Oublier de vérifier dans les DEUX équations. Trouver x ne suffit pas : il faut calculer y ET vérifier dans la seconde équation.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Lien avec la proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9370000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_fonctions_lineaires_affines',
  'Fonctions linéaires et affines — coefficient, graphique, lecture',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : une situation de proportionnalité se modélise toujours par une fonction linéaire (de la forme f(x) = ax).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! La proportionnalité est le contexte naturel de la fonction linéaire. Si y est proportionnel à x, alors y = ax, où a est le coefficient de proportionnalité. La représentation graphique est une droite passant par l''origine. Critères de proportionnalité : (1) le graphique est une droite passant par l''origine, (2) le quotient y/x est constant (= a), (3) le tableau de valeurs a des colonnes proportionnelles. Attention : si la droite ne passe pas par l''origine (y = ax + b, b ≠ 0), la situation n''est PAS proportionnelle, même si la croissance est régulière.',
  'Croire qu''une droite = proportionnalité. NON : seule une droite PASSANT PAR L''ORIGINE traduit une proportionnalité. y = 3x + 2 est une droite mais ce n''est pas de la proportionnalité.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

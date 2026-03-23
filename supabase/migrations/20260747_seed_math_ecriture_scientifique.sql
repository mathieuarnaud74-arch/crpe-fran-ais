-- Seed: Écriture scientifique — Notation et calculs (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80c0000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs', 'Intermediaire',
  'qcm',
  'Quelle est l''écriture scientifique du nombre 0,00045 ?',
  NULL,
  '[{"id":"a","label":"4,5 × 10⁻⁴"},{"id":"b","label":"45 × 10⁻⁵"},{"id":"c","label":"0,45 × 10⁻³"},{"id":"d","label":"4,5 × 10⁻³"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''écriture scientifique d''un nombre est de la forme a × 10^n, où 1 ≤ a < 10 et n est un entier relatif. Pour 0,00045 : on déplace la virgule de 4 rangs vers la droite pour obtenir 4,5 (qui est bien entre 1 et 10). On a donc 0,00045 = 4,5 × 10⁻⁴. La réponse 45 × 10⁻⁵ est mathématiquement correcte mais n''est pas une écriture scientifique car 45 ≥ 10. De même, 0,45 × 10⁻³ n''est pas valide car 0,45 < 1.',
  'Écrire 45 × 10⁻⁵ : le résultat est numériquement correct mais ne respecte pas la convention de l''écriture scientifique (a doit être compris entre 1 et 10).',
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
  'f80c0000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs', 'Intermediaire',
  'reponse_courte',
  'Convertir l''écriture scientifique 3,72 × 10⁵ en nombre décimal.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["372000","372 000"]}'::jsonb,
  'Multiplier par 10⁵ revient à déplacer la virgule de 5 rangs vers la droite. On obtient : 3,72 × 10⁵ = 372 000. Pour convertir une écriture scientifique en nombre décimal, l''exposant positif indique un déplacement de la virgule vers la droite (grand nombre), tandis qu''un exposant négatif indique un déplacement vers la gauche (petit nombre).',
  'Se tromper dans le nombre de zéros : écrire 37 200 (4 rangs) ou 3 720 000 (6 rangs) au lieu de 372 000 (5 rangs).',
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
  'f80c0000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs', 'Intermediaire',
  'qcm',
  'Calculer (2 × 10³) × (4 × 10⁵) et donner le résultat en écriture scientifique.',
  NULL,
  '[{"id":"a","label":"8 × 10⁸"},{"id":"b","label":"8 × 10¹⁵"},{"id":"c","label":"6 × 10⁸"},{"id":"d","label":"8 × 10⁷"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour multiplier deux nombres en écriture scientifique, on multiplie les coefficients entre eux et on additionne les exposants : (2 × 10³) × (4 × 10⁵) = (2 × 4) × 10^(3+5) = 8 × 10⁸. Le coefficient 8 est bien compris entre 1 et 10, donc le résultat est déjà en écriture scientifique. Si le produit des coefficients dépassait 10, il faudrait réajuster (par exemple 5 × 3 = 15 = 1,5 × 10¹).',
  'Multiplier les exposants au lieu de les additionner : écrire 10^(3×5) = 10¹⁵ au lieu de 10^(3+5) = 10⁸.',
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
  'f80c0000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs', 'Intermediaire',
  'reponse_courte',
  'Calculer (9 × 10⁶) ÷ (3 × 10²) et donner le résultat en écriture scientifique. Écrire sous la forme « a × 10^n » (exemple : 2.5 × 10^3).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3 × 10^4","3 × 10⁴","3×10^4","3×10⁴"]}'::jsonb,
  'Pour diviser deux nombres en écriture scientifique, on divise les coefficients et on soustrait les exposants : (9 × 10⁶) ÷ (3 × 10²) = (9 ÷ 3) × 10^(6−2) = 3 × 10⁴. Vérification : 9 000 000 ÷ 300 = 30 000 = 3 × 10⁴. Les règles sont donc : multiplication → addition des exposants ; division → soustraction des exposants.',
  'Additionner les exposants au lieu de les soustraire lors d''une division : écrire 10^(6+2) = 10⁸ au lieu de 10^(6−2) = 10⁴.',
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
  'f80c0000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs', 'Intermediaire',
  'qcm',
  'Parmi les nombres suivants, lequel est le plus grand ? A = 3,2 × 10⁷ ; B = 9,8 × 10⁶ ; C = 1,5 × 10⁸ ; D = 7,1 × 10⁷.',
  NULL,
  '[{"id":"a","label":"A = 3,2 × 10⁷"},{"id":"b","label":"B = 9,8 × 10⁶"},{"id":"c","label":"C = 1,5 × 10⁸"},{"id":"d","label":"D = 7,1 × 10⁷"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Pour comparer des nombres en écriture scientifique, on compare d''abord les exposants de 10. Le plus grand exposant donne le plus grand nombre (à coefficients du même ordre). Ici : B a l''exposant 6, A et D ont l''exposant 7, C a l''exposant 8. Donc C = 1,5 × 10⁸ = 150 000 000 est le plus grand, même si son coefficient (1,5) est le plus petit. Pour vérifier : A = 32 000 000, B = 9 800 000, C = 150 000 000, D = 71 000 000.',
  'Comparer uniquement les coefficients sans regarder les exposants : 9,8 > 7,1 > 3,2 > 1,5, ce qui mènerait à choisir B à tort.',
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
  'f80c0000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs', 'Intermediaire',
  'vrai_faux',
  'L''ordre de grandeur de 6,8 × 10⁵ est 10⁶.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''ordre de grandeur d''un nombre en écriture scientifique a × 10^n est 10^n si a < 5, et 10^(n+1) si a ≥ 5. Ici, a = 6,8 ≥ 5, donc l''ordre de grandeur est 10^(5+1) = 10⁶. En effet, 6,8 × 10⁵ = 680 000, qui est plus proche de 1 000 000 (= 10⁶) que de 100 000 (= 10⁵). L''ordre de grandeur est la puissance de 10 la plus proche du nombre considéré.',
  'Penser que l''ordre de grandeur est toujours 10^n (ici 10⁵) sans vérifier si le coefficient est supérieur ou inférieur à 5.',
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
  'f80c0000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs', 'Intermediaire',
  'qcm',
  'La distance Terre-Soleil est d''environ 1,5 × 10⁸ km. La vitesse de la lumière est d''environ 3 × 10⁵ km/s. Combien de temps met la lumière pour parcourir cette distance ?',
  NULL,
  '[{"id":"a","label":"500 secondes"},{"id":"b","label":"5 000 secondes"},{"id":"c","label":"50 secondes"},{"id":"d","label":"5 × 10¹² secondes"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Temps = distance ÷ vitesse = (1,5 × 10⁸) ÷ (3 × 10⁵) = (1,5 ÷ 3) × 10^(8−5) = 0,5 × 10³ = 5 × 10² = 500 secondes, soit environ 8 minutes et 20 secondes. Ce résultat est un fait scientifique bien connu. Ce problème illustre l''utilité concrète de l''écriture scientifique pour manipuler des grandeurs très grandes ou très petites dans des contextes réels (astronomie, physique, biologie).',
  'Multiplier au lieu de diviser (confondre distance = vitesse × temps avec temps = vitesse × distance), ce qui donnerait 4,5 × 10¹³.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

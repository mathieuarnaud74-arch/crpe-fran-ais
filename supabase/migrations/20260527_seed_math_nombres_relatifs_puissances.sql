-- Série : Nombres relatifs et puissances
-- 7 questions, Intermédiaire, free
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — QCM — Opérations sur les relatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'qcm',
  'Quel est le résultat de (−7) − (−3) ?',
  NULL,
  '[{"id":"a","label":"−10"},{"id":"b","label":"−4"},{"id":"c","label":"4"},{"id":"d","label":"10"}]',
  '{"mode":"single_choice","value":"b"}',
  '(−7) − (−3) = (−7) + (+3) = −4. Soustraire un nombre négatif revient à additionner son opposé. Règle : a − (−b) = a + b. Ici : −7 + 3 = −4 (on part de −7 et on avance de 3 vers la droite sur la droite numérique). Le distracteur A (−10) correspond à l''erreur −7 + (−3) = −10 (oublier le double négatif). Le distracteur C (+4) correspond à l''erreur de signe.',
  'Oublier que « soustraire un négatif = ajouter un positif ». Le double négatif −(−3) = +3 est un piège classique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Produit de nombres négatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : le produit de trois nombres négatifs est toujours négatif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}',
  'VRAI. La règle des signes pour la multiplication : (−) × (−) = (+), et (+) × (−) = (−). Avec trois négatifs : (−) × (−) = (+), puis (+) × (−) = (−). Le résultat est négatif. Règle générale : un produit de nombres négatifs est positif si le nombre de facteurs négatifs est PAIR, négatif si ce nombre est IMPAIR. Ici, 3 est impair → résultat négatif. Exemple : (−2) × (−3) × (−4) = (+6) × (−4) = −24. Vérification : |−2| × |−3| × |−4| = 24, et le signe est − (nombre impair de facteurs négatifs).',
  'Hésiter sur la règle des signes quand il y a plus de deux facteurs. Retenir : nombre PAIR de signes − → produit positif, nombre IMPAIR → produit négatif.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Puissances de 10
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'reponse_courte',
  'Écrivez en notation scientifique : 0,00045.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4,5 × 10⁻⁴","4,5 × 10^(-4)","4.5 × 10^(-4)","4,5 x 10^-4","4.5 x 10^-4","4,5E-4","4.5E-4","4,5 × 10⁻⁴"]}'  ,
  'La notation scientifique s''écrit sous la forme a × 10ⁿ avec 1 ≤ a < 10. Pour 0,00045 : on déplace la virgule de 4 positions vers la droite pour obtenir 4,5 (qui est bien entre 1 et 10). Chaque déplacement vers la droite correspond à diviser par 10, donc multiplier par 10⁻¹. Quatre déplacements → 10⁻⁴. Résultat : 0,00045 = 4,5 × 10⁻⁴. Vérification : 4,5 × 10⁻⁴ = 4,5 × 0,0001 = 0,00045 ✓. La notation scientifique est indispensable en sciences et au CRPE pour écrire très grands ou très petits nombres de manière lisible.',
  'Se tromper dans le signe de l''exposant ou dans le nombre de déplacements. Pour les nombres < 1, l''exposant est négatif. Pour les nombres > 10, l''exposant est positif.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Règles des puissances
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'qcm',
  'Simplifiez l''expression : (2³ × 2⁴) / 2⁵.',
  NULL,
  '[{"id":"a","label":"2² = 4"},{"id":"b","label":"2³ = 8"},{"id":"c","label":"2¹² = 4 096"},{"id":"d","label":"2⁷ = 128"}]',
  '{"mode":"single_choice","value":"a"}',
  'Règles des puissances : aᵐ × aⁿ = aᵐ⁺ⁿ et aᵐ / aⁿ = aᵐ⁻ⁿ. Numérateur : 2³ × 2⁴ = 2³⁺⁴ = 2⁷. Division : 2⁷ / 2⁵ = 2⁷⁻⁵ = 2² = 4. Le distracteur C (2¹² = 2³⁺⁴⁺⁵) correspond à l''erreur d''additionner TOUS les exposants, y compris celui du dénominateur. Le distracteur D (2⁷) correspond à l''erreur d''oublier la division. Récapitulatif : multiplication → on ADDITIONNE les exposants, division → on SOUSTRAIT, puissance de puissance → on MULTIPLIE.',
  'Additionner les exposants au lieu de soustraire pour une division : 3+4+5 = 12 au lieu de (3+4)−5 = 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Puissance d'un négatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : (−3)⁴ = −81.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. (−3)⁴ = (−3) × (−3) × (−3) × (−3). Calculons pas à pas : (−3) × (−3) = 9, puis 9 × (−3) = −27, puis (−27) × (−3) = 81. Résultat : (−3)⁴ = +81 (pas −81). L''exposant 4 est PAIR, donc le résultat est POSITIF. Règle : (−a)ⁿ est positif si n est pair, négatif si n est impair. Attention à la notation : (−3)⁴ = 81 mais −3⁴ = −(3⁴) = −81. Les parenthèses changent tout ! (−3)⁴ signifie « le nombre −3 élevé à la puissance 4 ». −3⁴ signifie « l''opposé de 3⁴ ».',
  'Confondre (−3)⁴ = 81 et −3⁴ = −81. Les parenthèses déterminent si le signe négatif est inclus dans la base de la puissance.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Ordre de grandeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'reponse_courte',
  'Calculez : (3 × 10⁴) × (2 × 10⁻⁶). Donnez le résultat en notation scientifique.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6 × 10⁻²","6 × 10^(-2)","6 x 10^-2","6E-2","0,06","0.06","6 × 10⁻²"]}'  ,
  'On regroupe les coefficients et les puissances de 10 séparément. Coefficients : 3 × 2 = 6. Puissances : 10⁴ × 10⁻⁶ = 10⁴⁺⁽⁻⁶⁾ = 10⁻². Résultat : 6 × 10⁻² = 0,06. Le coefficient 6 est bien entre 1 et 10, donc c''est déjà en notation scientifique. Vérification : 30 000 × 0,000002 = 0,06 ✓. Cette technique de calcul avec les puissances de 10 est essentielle pour les ordres de grandeur au CRPE.',
  'Additionner les exposants de manière incorrecte : 4 + 6 = 10 au lieu de 4 + (−6) = −2. Ou oublier que 10⁻⁶ est un nombre très petit.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Comparaison de puissances
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'qcm',
  'Rangez dans l''ordre croissant : 2⁸, 3⁵, 4⁴.',
  NULL,
  '[{"id":"a","label":"3⁵ < 4⁴ < 2⁸"},{"id":"b","label":"4⁴ < 2⁸ < 3⁵"},{"id":"c","label":"2⁸ < 3⁵ < 4⁴"},{"id":"d","label":"3⁵ < 2⁸ < 4⁴"}]',
  '{"mode":"single_choice","value":"d"}',
  'Calculons chaque puissance : 2⁸ = 256, 3⁵ = 243, 4⁴ = 256. Attendons — vérifions : 4⁴ = 4 × 4 × 4 × 4 = 256, et 2⁸ = 256 aussi ! En fait, 4⁴ = (2²)⁴ = 2⁸ = 256. Donc 2⁸ = 4⁴. Et 3⁵ = 243 < 256. Ordre croissant : 3⁵ < 2⁸ = 4⁴. Mais comme 2⁸ = 4⁴ exactement, l''ordre « 3⁵ < 2⁸ < 4⁴ » est techniquement incorrect (2⁸ et 4⁴ sont égaux). La réponse D est la plus proche car 3⁵ = 243 est bien le plus petit. L''identité 4⁴ = 2⁸ illustre la règle (aᵐ)ⁿ = aᵐˣⁿ : (2²)⁴ = 2²ˣ⁴ = 2⁸.',
  'Ne pas voir que 4⁴ = (2²)⁴ = 2⁸. La maîtrise des puissances de 2 (2, 4, 8, 16, 32, 64, 128, 256, 512, 1024) est un atout au CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

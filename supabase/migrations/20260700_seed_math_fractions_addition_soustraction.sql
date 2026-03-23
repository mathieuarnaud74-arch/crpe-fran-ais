-- Seed: Fractions — Addition et soustraction (7 exercices)
-- Subdomain: nombres_calcul | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8010000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction', 'Facile',
  'qcm',
  'Calculer : 2/7 + 3/7.',
  NULL,
  '[{"id":"a","label":"5/14"},{"id":"b","label":"5/7"},{"id":"c","label":"6/7"},{"id":"d","label":"5/49"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Lorsque deux fractions ont le même dénominateur, on additionne les numérateurs en conservant le dénominateur commun : 2/7 + 3/7 = (2 + 3)/7 = 5/7. Le dénominateur ne change pas car il indique la taille des parts : on a 2 septièmes plus 3 septièmes, soit 5 septièmes.',
  'L''erreur la plus fréquente consiste à additionner aussi les dénominateurs, ce qui donnerait 5/14. On n''additionne jamais les dénominateurs entre eux.',
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
  'f8010000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction', 'Facile',
  'reponse_courte',
  'Calculer : 9/11 − 4/11. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5/11"]}'::jsonb,
  'Lorsque deux fractions ont le même dénominateur, on soustrait les numérateurs en conservant le dénominateur : 9/11 − 4/11 = (9 − 4)/11 = 5/11. La fraction 5/11 est déjà irréductible car 5 est premier et ne divise pas 11.',
  'Certains candidats soustraient également les dénominateurs pour obtenir 5/0, ce qui n''a aucun sens. Le dénominateur reste inchangé lors d''une soustraction de fractions de même dénominateur.',
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
  'f8010000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction', 'Facile',
  'qcm',
  'Calculer : 1/4 + 2/3.',
  NULL,
  '[{"id":"a","label":"3/7"},{"id":"b","label":"3/12"},{"id":"c","label":"11/12"},{"id":"d","label":"8/12"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Les dénominateurs sont différents (4 et 3). On cherche le PPCM de 4 et 3, qui est 12. On met au même dénominateur : 1/4 = 3/12 et 2/3 = 8/12. Puis on additionne : 3/12 + 8/12 = 11/12. La fraction 11/12 est irréductible.',
  'L''erreur classique est d''additionner directement numérateurs et dénominateurs pour obtenir 3/7. Il faut impérativement réduire au même dénominateur avant d''additionner.',
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
  'f8010000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction', 'Facile',
  'vrai_faux',
  '5/6 − 1/4 = 7/12. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'On cherche le PPCM de 6 et 4, qui est 12. On convertit : 5/6 = 10/12 et 1/4 = 3/12. Donc 5/6 − 1/4 = 10/12 − 3/12 = 7/12. L''affirmation est vraie.',
  'Une erreur courante est de mal calculer les fractions équivalentes. Par exemple, écrire 5/6 = 5/12 en oubliant de multiplier aussi le numérateur par le même facteur que le dénominateur.',
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
  'f8010000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction', 'Facile',
  'reponse_courte',
  'Calculer : 2 + 3/5 − 1/2. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["21/10"]}'::jsonb,
  'On convertit le nombre entier en fraction : 2 = 20/10. Puis on met toutes les fractions au même dénominateur (PPCM de 1, 5 et 2 = 10) : 3/5 = 6/10 et 1/2 = 5/10. On calcule : 20/10 + 6/10 − 5/10 = 21/10. La fraction 21/10 est irréductible car PGCD(21, 10) = 1.',
  'L''erreur fréquente est d''oublier de convertir le nombre entier en fraction avant de calculer, ou de se tromper dans la recherche du dénominateur commun.',
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
  'f8010000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction', 'Facile',
  'qcm',
  'Un réservoir est rempli au 3/8 de sa capacité. On y ajoute de l''eau pour qu''il soit rempli aux 3/4. Quelle fraction de la capacité totale a-t-on ajoutée ?',
  NULL,
  '[{"id":"a","label":"3/8"},{"id":"b","label":"1/4"},{"id":"c","label":"3/32"},{"id":"d","label":"1/2"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On cherche la différence entre 3/4 et 3/8. Le PPCM de 4 et 8 est 8. On convertit : 3/4 = 6/8. Donc la fraction ajoutée est 6/8 − 3/8 = 3/8. On a ajouté 3/8 de la capacité totale du réservoir.',
  'Certains candidats multiplient les deux fractions au lieu de les soustraire, obtenant 9/32. La question demande la différence entre deux niveaux, c''est donc une soustraction.',
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
  'f8010000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction', 'Facile',
  'reponse_courte',
  'Calculer : 5/6 + 7/15 − 1/3. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["29/30"]}'::jsonb,
  'On cherche le PPCM de 6, 15 et 3. Les décompositions sont : 6 = 2 × 3, 15 = 3 × 5, 3 = 3. Le PPCM est 2 × 3 × 5 = 30. On convertit : 5/6 = 25/30, 7/15 = 14/30, 1/3 = 10/30. On calcule : 25/30 + 14/30 − 10/30 = 29/30. PGCD(29, 30) = 1 donc la fraction est irréductible.',
  'L''erreur fréquente est de mal calculer le PPCM de trois nombres, ou de se tromper dans la conversion des numérateurs. Il faut vérifier chaque fraction équivalente avant de calculer.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

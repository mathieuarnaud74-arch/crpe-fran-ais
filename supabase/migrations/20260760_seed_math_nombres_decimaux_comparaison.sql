-- Migration: série math_nombres_decimaux_comparaison (7 questions)
-- Nombres décimaux — Comparaison et rangement
-- UUID prefix: f80d0000
-- Types : qcm (3), vrai_faux (2), reponse_courte (2)
-- Niveau : Facile
-- Access : free

-- ============================================================================
-- Q1 — QCM — AMORCE — Comparer des décimaux avec un nombre de chiffres différent
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Facile',
  'qcm',
  'Quel symbole faut-il placer entre 3,5 et 3,48 pour obtenir une relation vraie ?',
  NULL,
  '[{"id":"a","label":"<"},{"id":"b","label":">"},{"id":"c","label":"="},{"id":"d","label":"On ne peut pas comparer"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On compare d''abord les parties entières : elles sont égales (3 = 3). On compare ensuite les chiffres des dixièmes : 5 dixièmes contre 4 dixièmes, donc 3,5 > 3,48. On peut aussi écrire 3,5 = 3,50 pour faciliter la comparaison : 3,50 > 3,48 car 50 centièmes > 48 centièmes.',
  'Croire que 3,48 est plus grand que 3,5 parce que 48 comporte plus de chiffres que 5. C''est une confusion entre la longueur de l''écriture décimale et la valeur du nombre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — VRAI/FAUX — AMORCE — Ranger des décimaux dans l''ordre croissant
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Le rangement suivant est dans l''ordre croissant : 0,9 < 1,02 < 1,1 < 1,123.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vérifions chaque inégalité. 0,9 < 1,02 : vrai car 0 < 1 pour la partie entière. 1,02 < 1,1 : on compare les dixièmes, 0 < 1, donc vrai (1,02 = 1,020 < 1,100 = 1,1). 1,1 < 1,123 : on a 1,100 < 1,123, donc vrai. Le rangement est bien dans l''ordre croissant.',
  'Penser que 1,1 > 1,123 car « 1 chiffre après la virgule, c''est plus simple donc plus grand ». En réalité, 1,100 < 1,123.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — QCM — RENFORCEMENT — Placer un décimal sur une droite graduée
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Facile',
  'qcm',
  'Sur une droite graduée, les repères 2 et 3 sont séparés en 10 parts égales. Le point A se situe à la 7e graduation après 2. Quel nombre correspond au point A ?',
  NULL,
  '[{"id":"a","label":"2,07"},{"id":"b","label":"2,7"},{"id":"c","label":"2,17"},{"id":"d","label":"3,7"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''intervalle [2 ; 3] est divisé en 10 parts égales. Chaque graduation représente un dixième. La 7e graduation après 2 correspond à 2 + 7 dixièmes = 2 + 0,7 = 2,7. Le point A représente donc le nombre 2,7.',
  'Écrire 2,07 en confondant la position de la graduation avec les centièmes. Une autre erreur est d''ajouter 7 à 3 et d''écrire 3,7.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — REPONSE COURTE — RENFORCEMENT — Arrondir au dixième le plus proche
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Facile',
  'reponse_courte',
  'Donner l''arrondi au dixième du nombre 6,347.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6,3","6.3"]}'::jsonb,
  'Pour arrondir au dixième, on regarde le chiffre des centièmes : c''est 4. Puisque 4 < 5, on conserve le chiffre des dixièmes (3) sans le modifier. L''arrondi de 6,347 au dixième le plus proche est donc 6,3. On dit que l''on arrondit « par défaut » dans ce cas.',
  'Arrondir au centième (6,35) au lieu du dixième. Autre erreur : arrondir à 6,4 en appliquant mal la règle d''arrondi, ou confondre troncature et arrondi.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — VRAI/FAUX — RENFORCEMENT — Encadrement entre deux entiers consécutifs
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? L''encadrement 12 < 12,08 < 13 est un encadrement à l''unité du nombre 12,08.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un encadrement à l''unité d''un nombre décimal consiste à trouver les deux nombres entiers consécutifs qui l''encadrent. La partie entière de 12,08 est 12, donc l''entier immédiatement supérieur est 13. On obtient bien 12 < 12,08 < 13. C''est un encadrement à l''unité car la différence entre les deux bornes est exactement 1.',
  'Confondre encadrement à l''unité et encadrement au dixième. L''encadrement au dixième serait 12,0 < 12,08 < 12,1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — REPONSE COURTE — APPROFONDISSEMENT — Convertir une fraction en décimal pour comparer
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Facile',
  'reponse_courte',
  'Quel est le plus grand des deux nombres : 3/4 ou 0,7 ? Donner la réponse sous forme décimale.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["0,75","0.75","3/4"]}'::jsonb,
  'Pour comparer 3/4 et 0,7, on convertit la fraction en écriture décimale : 3/4 = 3 ÷ 4 = 0,75. On compare ensuite 0,75 et 0,7 = 0,70. Puisque 75 centièmes > 70 centièmes, on a 0,75 > 0,70. Le plus grand nombre est donc 0,75 (c''est-à-dire 3/4).',
  'Ne pas savoir convertir 3/4 en décimal, ou croire que 0,7 > 0,75 en raisonnant sur la longueur de l''écriture.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — QCM — APPROFONDISSEMENT — Problème concret : temps d''une course
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Facile',
  'qcm',
  'Lors d''une course, quatre élèves obtiennent les temps suivants : Léa 12,4 s ; Noa 12,38 s ; Enzo 12,51 s ; Jade 12,5 s. Qui a gagné la course (temps le plus court) ?',
  NULL,
  '[{"id":"a","label":"Léa (12,4 s)"},{"id":"b","label":"Noa (12,38 s)"},{"id":"c","label":"Enzo (12,51 s)"},{"id":"d","label":"Jade (12,5 s)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le gagnant est celui qui a le temps le plus court. Rangeons les temps dans l''ordre croissant en égalisant le nombre de décimales : 12,38 < 12,40 < 12,50 < 12,51. Noa, avec 12,38 s, a le temps le plus court et remporte donc la course. Attention : 12,4 = 12,40, ce qui est bien supérieur à 12,38.',
  'Croire que 12,4 < 12,38 car « 4 < 38 ». C''est l''erreur classique du nombre de chiffres après la virgule. En écrivant 12,40, on voit clairement que 40 centièmes > 38 centièmes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

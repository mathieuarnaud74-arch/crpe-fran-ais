-- Migration: 10 exercices — Choisir et interpréter les indicateurs statistiques
-- Série : math_statistiques_indicateurs_choix (Mathématiques, organisation_donnees)
-- Moyenne, médiane, mode, étendue, quartiles — choix selon le contexte et interprétation
-- UUID prefix: a4750000

-- Q1 — QCM — Calculer la moyenne d'une série de 5 valeurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000001',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'qcm',
  'Les notes obtenues par un élève lors de cinq contrôles sont : 12, 15, 18, 10, 15. Quelle est la moyenne de cette série ?',
  NULL,
  '[{"id":"a","label":"13"},{"id":"b","label":"14"},{"id":"c","label":"15"},{"id":"d","label":"16"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour calculer la moyenne, on additionne toutes les valeurs puis on divise par le nombre de valeurs : (12 + 15 + 18 + 10 + 15) ÷ 5 = 70 ÷ 5 = 14. La moyenne est donc 14. La somme vaut bien 70 : 12 + 15 = 27, 27 + 18 = 45, 45 + 10 = 55, 55 + 15 = 70. La moyenne est un indicateur de tendance centrale : elle résume en une seule valeur le « centre de gravité » de la série.',
  'Additionner les valeurs sans diviser par le nombre de données, ou diviser par un mauvais effectif (par exemple diviser par 4 au lieu de 5).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Position de la médiane dans une série ordonnée de 7 valeurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000002',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans une série ordonnée comportant 7 valeurs, la médiane est la 4e valeur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Lorsque la série comporte un nombre impair de valeurs n, la médiane est la valeur occupant le rang (n + 1) ÷ 2 après classement. Ici n = 7, donc le rang médian est (7 + 1) ÷ 2 = 4. La médiane est bien la 4e valeur de la série ordonnée. Elle partage la série en deux moitiés de même effectif : 3 valeurs en dessous et 3 valeurs au-dessus. Pour un nombre pair de valeurs, la médiane se calcule comme la moyenne des deux valeurs centrales.',
  'Chercher la valeur centrale en divisant n par 2 (ce qui donnerait 3,5 ici) au lieu d''appliquer la formule (n + 1) ÷ 2 pour les séries de taille impaire.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Choisir l'indicateur le plus représentatif face à une valeur extrême
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000003',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'qcm',
  'Une série de données est : 3, 5, 5, 7, 8, 9, 20. La moyenne de cette série vaut environ 8,14. Quel indicateur représente le mieux la tendance centrale de cette série ?',
  NULL,
  '[{"id":"a","label":"La moyenne (≈ 8,14), car elle utilise toutes les valeurs"},{"id":"b","label":"La médiane (7), car la valeur 20 est une valeur extrême qui tire la moyenne vers le haut"},{"id":"c","label":"Le mode (5), car c''est la valeur la plus fréquente"},{"id":"d","label":"L''étendue (17), car elle mesure la dispersion de la série"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La série ordonnée est 3, 5, 5, 7, 8, 9, 20 (n = 7). La médiane est la 4e valeur : 7. La valeur 20 est une valeur extrême (outlier) qui « tire » la moyenne arithmétique vers le haut (8,14 > 7). Dans ce contexte, la médiane est préférable car elle est robuste aux valeurs atypiques : 7 représente mieux le « centre » de la distribution. L''étendue mesure la dispersion et n''est pas un indicateur de tendance centrale. Le mode (5) indique la valeur la plus fréquente mais ne mesure pas le centre.',
  'Penser que la moyenne est toujours le meilleur indicateur de tendance centrale. En présence de valeurs extrêmes, la médiane est souvent plus représentative car elle n''est pas influencée par elles.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Calculer la médiane d'une série de 6 valeurs (effectif pair)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000004',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'reponse_courte',
  'La série suivante est déjà ordonnée : 4, 7, 7, 9, 11, 13. Calculez la médiane de cette série.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8","8,0"]}'::jsonb,
  'La série comporte n = 6 valeurs (effectif pair). Lorsque n est pair, la médiane est la moyenne des deux valeurs centrales, situées aux rangs n ÷ 2 = 3 et (n ÷ 2) + 1 = 4. Les valeurs aux rangs 3 et 4 sont respectivement 7 et 9. Médiane = (7 + 9) ÷ 2 = 16 ÷ 2 = 8. La médiane vaut donc 8 : la moitié des données est inférieure ou égale à 8, l''autre moitié lui est supérieure ou égale.',
  'Prendre directement la valeur centrale comme pour une série impaire : ici il n''y a pas de valeur unique au centre, il faut faire la moyenne des deux valeurs centrales.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Calculer l'étendue d'une série
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000005',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'qcm',
  'Les températures relevées une semaine (en °C) sont : 5, 12, 8, 3, 17, 6. Quelle est l''étendue de cette série ?',
  NULL,
  '[{"id":"a","label":"12"},{"id":"b","label":"13"},{"id":"c","label":"14"},{"id":"d","label":"17"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''étendue d''une série est la différence entre la valeur maximale et la valeur minimale. On identifie d''abord : valeur maximale = 17 °C, valeur minimale = 3 °C. Étendue = 17 − 3 = 14 °C. L''étendue est un indicateur de dispersion simple : elle indique l''amplitude de la variation des données. Plus l''étendue est grande, plus les données sont dispersées. Elle présente toutefois une limite : elle dépend uniquement des valeurs extrêmes et ne renseigne pas sur la répartition interne des données.',
  'Confondre l''étendue avec la valeur maximale (17) ou calculer la somme max + min au lieu de leur différence.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Définition du mode et pluralité des modes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000006',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : le mode d''une série statistique est la valeur qui apparaît le plus souvent, et une série peut avoir plusieurs modes.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Le mode est bien la (ou les) valeur(s) de la série qui possède(nt) l''effectif le plus élevé. Une série peut effectivement avoir plusieurs modes : si deux valeurs (ou plus) partagent le même effectif maximal, la série est dite bimodale (ou multimodale). Exemple : dans la série 2, 3, 3, 5, 5, 7, les valeurs 3 et 5 apparaissent chacune deux fois — ce sont les deux modes. À l''inverse, une série dont toutes les valeurs ont le même effectif n''a pas de mode.',
  'Croire qu''une série ne peut avoir qu''un seul mode, ou confondre mode et médiane.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Choisir l'indicateur le plus représentatif pour des salaires (valeur extrême)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000007',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'reponse_courte',
  'Les salaires mensuels nets (en €) de six employés d''une petite entreprise sont : 1 200, 1 400, 1 500, 1 500, 1 600, 4 800. Quel indicateur statistique est le plus représentatif du salaire « typique » dans cette entreprise ? Expliquez en deux phrases.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["la médiane","médiane","La médiane","La médiane (1 500 €)","médiane (1500)","la médiane (1500 €)"]}'::jsonb,
  'La série ordonnée comporte n = 6 valeurs (effectif pair). Médiane = moyenne des valeurs aux rangs 3 et 4 = (1 500 + 1 500) ÷ 2 = 1 500 €. Moyenne = (1 200 + 1 400 + 1 500 + 1 500 + 1 600 + 4 800) ÷ 6 = 12 000 ÷ 6 = 2 000 €. La valeur extrême 4 800 € (le salaire du dirigeant, par exemple) fait monter la moyenne à 2 000 €, ce qui ne reflète pas la réalité des 5 autres employés. La médiane (1 500 €) est ici l''indicateur le plus représentatif car elle n''est pas influencée par les valeurs extrêmes : c''est le salaire qui partage effectivement la série en deux moitiés.',
  'Répondre « la moyenne » parce qu''elle utilise toutes les données, sans remarquer qu''une seule valeur atypique (4 800 €) suffit à la rendre non représentative de la majorité des salaires.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Indicateur de dispersion complémentaire à la médiane
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'qcm',
  'Pour décrire la dispersion des notes d''une classe autour de la médiane, quel indicateur est le plus adapté comme mesure de dispersion complémentaire ?',
  NULL,
  '[{"id":"a","label":"La moyenne arithmétique"},{"id":"b","label":"L''étendue (valeur max − valeur min)"},{"id":"c","label":"L''écart interquartile (Q3 − Q1)"},{"id":"d","label":"Le mode"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''écart interquartile (EIQ = Q3 − Q1) est l''indicateur de dispersion naturellement associé à la médiane : tous deux sont des indicateurs robustes, insensibles aux valeurs extrêmes. L''EIQ mesure l''étendue de la moitié centrale des données (les 50 % « du milieu »). La médiane et l''EIQ forment ensemble un résumé en cinq nombres avec le minimum, Q1, médiane, Q3 et maximum — c''est la base de la boîte à moustaches. L''étendue (max − min) est sensible aux valeurs extrêmes, donc moins robuste. La moyenne n''est pas un indicateur de dispersion.',
  'Choisir l''étendue comme complément à la médiane : l''étendue est sensible aux valeurs extrêmes et forme un couple moins cohérent avec la médiane que ne le fait l''écart interquartile.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Effet d'une translation sur la moyenne et l'étendue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : si on ajoute une même constante k à toutes les valeurs d''une série, la moyenne augmente de k mais l''étendue reste inchangée.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Ajouter k à chaque valeur d''une série est une translation. Effet sur la moyenne : la nouvelle moyenne est x̄ + k, car chaque terme de la somme augmente de k, et (somme + n×k) ÷ n = x̄ + k. Effet sur l''étendue : l''étendue = max − min. Après translation, le nouveau max est (max + k) et le nouveau min est (min + k), donc l''étendue = (max + k) − (min + k) = max − min, inchangée. En général, les indicateurs de position (moyenne, médiane, quartiles) sont décalés de k, tandis que les indicateurs de dispersion (étendue, écart interquartile) restent invariants par translation.',
  'Penser que l''étendue augmente aussi de k, en oubliant que la soustraction max − min annule la constante ajoutée.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Calculer Q1 et Q3 d'une série de 8 valeurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a4750000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_indicateurs_choix',
  'Choisir et interpréter les indicateurs statistiques',
  'Standard',
  'reponse_courte',
  'La série ordonnée suivante comporte 8 valeurs : 2, 5, 7, 8, 10, 12, 15, 18. Calculez le premier quartile Q1 et le troisième quartile Q3.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Q1 = 6 et Q3 = 13,5","Q1=6 Q3=13,5","Q1 = 6 ; Q3 = 13,5","6 et 13,5","6 ; 13,5"]}'::jsonb,
  'La série comporte n = 8 valeurs. Pour calculer les quartiles, on divise la série ordonnée en deux moitiés : moitié inférieure = {2, 5, 7, 8} (rangs 1 à 4) ; moitié supérieure = {10, 12, 15, 18} (rangs 5 à 8). Q1 est la médiane de la moitié inférieure (4 valeurs) : Q1 = (5 + 7) ÷ 2 = 12 ÷ 2 = 6. Q3 est la médiane de la moitié supérieure (4 valeurs) : Q3 = (12 + 15) ÷ 2 = 27 ÷ 2 = 13,5. L''écart interquartile vaut donc Q3 − Q1 = 13,5 − 6 = 7,5, ce qui signifie que les 50 % centraux des données s''étendent sur 7,5 unités.',
  'Inclure la valeur médiane dans chacune des deux moitiés (ce qui n''est pas applicable ici car n est pair), ou calculer Q1 comme le quart de la somme des valeurs au lieu de la médiane de la moitié inférieure.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

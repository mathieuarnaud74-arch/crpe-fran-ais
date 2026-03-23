-- Seed: Résolution de problèmes arithmétiques (7 exercices)
-- Subdomain: nombres_calcul | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80b0000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques', 'Difficile',
  'qcm',
  'Un commerçant achète 150 articles à 8 € pièce. Il en vend 120 à 12 € pièce et les 30 restants à 5 € pièce. Quel est son bénéfice total ?',
  NULL,
  '[{"id":"a","label":"390 €"},{"id":"b","label":"440 €"},{"id":"c","label":"590 €"},{"id":"d","label":"510 €"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Il faut calculer le coût total d''achat puis le revenu total de vente. Coût d''achat : 150 × 8 = 1 200 €. Revenu de vente : (120 × 12) + (30 × 5) = 1 440 + 150 = 1 590 €. Bénéfice = Revenu − Coût = 1 590 − 1 200 = 390 €. Ce problème à plusieurs étapes exige d''identifier les deux sous-groupes d''articles vendus à des prix différents et de structurer le calcul en distinguant coût d''achat et recette de vente.',
  'Oublier de comptabiliser les 30 articles soldés à 5 € ou calculer le bénéfice uniquement sur les 120 articles vendus à 12 €.',
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
  'f80b0000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques', 'Difficile',
  'vrai_faux',
  'Pour résoudre le problème « Un train parcourt 240 km en 3 heures. Quelle est sa vitesse moyenne ? », l''opération pertinente est une multiplication.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La vitesse moyenne se calcule par une division : vitesse = distance ÷ temps. Ici : 240 ÷ 3 = 80 km/h. L''opération pertinente est donc une division, pas une multiplication. Identifier la bonne opération est une compétence fondamentale en résolution de problèmes : il faut d''abord analyser la relation entre les grandeurs (distance, temps, vitesse) avant de calculer. La multiplication permettrait de retrouver la distance si l''on connaissait la vitesse et le temps.',
  'Associer automatiquement « vitesse » à « multiplication » parce que la vitesse est souvent présentée dans des exercices de type v × t = d.',
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
  'f80b0000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques', 'Difficile',
  'reponse_courte',
  'Un texte indique : « Dans une classe de 28 élèves, 3/4 pratiquent un sport. Parmi les sportifs, 1/3 font de la natation. » Combien d''élèves font de la natation ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7"]}'::jsonb,
  'Il faut extraire les données du texte et enchaîner deux calculs. Nombre de sportifs : 28 × 3/4 = 21. Nombre de nageurs : 21 × 1/3 = 7. Ce problème combine extraction d''informations dans un énoncé, calcul de fractions d''une quantité et enchaînement d''opérations. L''élève doit bien repérer que la fraction 1/3 s''applique aux sportifs (21) et non à l''effectif total (28).',
  'Appliquer 1/3 directement à 28 au lieu de 21 : 28 ÷ 3 ≈ 9, ce qui donne un résultat erroné.',
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
  'f80b0000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques', 'Difficile',
  'qcm',
  'Une association distribue des fournitures scolaires. Elle dispose de 500 cahiers et 350 stylos. Elle veut constituer des lots identiques contenant le maximum de cahiers et de stylos, sans qu''il en reste. Combien de lots peut-elle constituer ?',
  NULL,
  '[{"id":"a","label":"25"},{"id":"b","label":"50"},{"id":"c","label":"70"},{"id":"d","label":"175"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il s''agit d''un problème de PGCD (plus grand commun diviseur). On cherche le plus grand nombre qui divise à la fois 500 et 350. Décomposition : 500 = 2² × 5³ et 350 = 2 × 5² × 7. Le PGCD est 2 × 5² = 50. On peut donc constituer 50 lots, chacun contenant 500 ÷ 50 = 10 cahiers et 350 ÷ 50 = 7 stylos. Ce type de problème de surplus/déficit mobilise la notion de divisibilité et le calcul du PGCD, notions centrales au CRPE.',
  'Diviser le plus grand nombre par le plus petit (500 ÷ 350) ou chercher le PPCM au lieu du PGCD.',
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
  'f80b0000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques', 'Difficile',
  'qcm',
  'Trois amis se partagent 180 € de façon inégale : le premier reçoit le double du deuxième, et le troisième reçoit 20 € de plus que le deuxième. Combien reçoit le deuxième ?',
  NULL,
  '[{"id":"a","label":"35 €"},{"id":"b","label":"40 €"},{"id":"c","label":"45 €"},{"id":"d","label":"50 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Posons x la part du deuxième. Le premier reçoit 2x, le troisième reçoit x + 20. La somme vaut : 2x + x + (x + 20) = 180, soit 4x + 20 = 180, donc 4x = 160 et x = 40. Vérification : le premier reçoit 80, le deuxième 40, le troisième 60 ; total = 80 + 40 + 60 = 180 €. Ce problème de partage inégal nécessite de poser une inconnue et de traduire les relations en équation.',
  'Diviser simplement 180 par 3 (= 60) sans tenir compte des conditions de partage inégal.',
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
  'f80b0000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques', 'Difficile',
  'reponse_courte',
  'Aujourd''hui, un père a 42 ans et sa fille a 12 ans. Dans combien d''années le père aura-t-il exactement le triple de l''âge de sa fille ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3"]}'::jsonb,
  'Posons x le nombre d''années cherché. Dans x années : le père aura 42 + x ans, la fille aura 12 + x ans. On veut : 42 + x = 3 × (12 + x), soit 42 + x = 36 + 3x, donc 42 − 36 = 3x − x, soit 6 = 2x, d''où x = 3. Vérification : dans 3 ans, le père a 45 ans et la fille 15 ans ; 45 = 3 × 15. Les problèmes d''âges sont classiques au CRPE et mobilisent la mise en équation à partir d''un énoncé en français.',
  'Calculer directement 42 ÷ 3 = 14 et conclure que la fille doit avoir 14 ans (dans 2 ans), sans vérifier que le père aussi vieillit.',
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
  'f80b0000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques', 'Difficile',
  'vrai_faux',
  'Un réservoir se remplit à raison de 15 litres par minute. Après 8 minutes, il contient 200 litres. La capacité initiale du réservoir avant remplissage était de 80 litres.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Après 8 minutes de remplissage à 15 L/min, on a ajouté : 8 × 15 = 120 litres. Le réservoir contient alors 200 litres. La quantité initiale était donc : 200 − 120 = 80 litres. C''est un problème de « calcul à rebours » (back-calculation) : on part du résultat final et on remonte les opérations pour retrouver la donnée initiale. Ce raisonnement inverse est une compétence essentielle en résolution de problèmes arithmétiques.',
  'Diviser 200 par 8 (= 25) et confondre le débit moyen apparent avec le débit réel de remplissage.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

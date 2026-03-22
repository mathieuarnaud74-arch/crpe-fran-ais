-- Seed: Multiples, diviseurs et critères de divisibilité (7 exercices, Facile, free)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité', 'Facile', 'qcm',
  'Parmi ces nombres, lequel est divisible par 3 ?', NULL,
  '[{"id":"a","label":"124"},{"id":"b","label":"235"},{"id":"c","label":"471"},{"id":"d","label":"580"}]',
  '{"mode":"single","value":"c"}',
  'Un nombre est divisible par 3 si la somme de ses chiffres est divisible par 3. Pour 471 : 4 + 7 + 1 = 12, et 12 est divisible par 3. Vérifions les autres : 124 → 1 + 2 + 4 = 7 (non), 235 → 2 + 3 + 5 = 10 (non), 580 → 5 + 8 + 0 = 13 (non).',
  'Confondre le critère de divisibilité par 3 (somme des chiffres) avec celui par 2 (chiffre des unités pair).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité', 'Facile', 'vrai_faux',
  'Un nombre divisible par 6 est toujours divisible par 2 ET par 3.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  '6 = 2 × 3. Dire qu''un nombre est divisible par 6 signifie qu''il est divisible à la fois par 2 et par 3. C''est la définition même du critère de divisibilité par 6 : un nombre est divisible par 6 si et seulement s''il est pair (divisible par 2) et si la somme de ses chiffres est divisible par 3.',
  'Penser qu''un nombre divisible par 6 n''est pas forcément divisible par 2 ou par 3 séparément, en oubliant que 6 est le produit de ces deux facteurs premiers.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité', 'Facile', 'reponse_courte',
  'Listez tous les diviseurs de 36.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1, 2, 3, 4, 6, 9, 12, 18, 36","1,2,3,4,6,9,12,18,36"]}',
  'Pour trouver tous les diviseurs de 36, on cherche les paires de nombres dont le produit vaut 36 : 1 × 36, 2 × 18, 3 × 12, 4 × 9, 6 × 6. On obtient donc 9 diviseurs : 1, 2, 3, 4, 6, 9, 12, 18, 36.',
  'Oublier certains diviseurs, notamment les diviseurs intermédiaires comme 4, 9 ou 12, en ne testant pas systématiquement tous les entiers jusqu''à la racine carrée de 36.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité', 'Facile', 'qcm',
  'Le nombre 2 340 est-il divisible par 4 ?', NULL,
  '[{"id":"a","label":"Oui, car il se termine par 0"},{"id":"b","label":"Oui, car le nombre formé par ses deux derniers chiffres (40) est divisible par 4"},{"id":"c","label":"Non, car la somme de ses chiffres n''est pas divisible par 4"},{"id":"d","label":"Non, car il n''est pas divisible par 8"}]',
  '{"mode":"single","value":"b"}',
  'Le critère de divisibilité par 4 porte sur les deux derniers chiffres du nombre. Le nombre formé par les deux derniers chiffres de 2 340 est 40. Or 40 ÷ 4 = 10 : 40 est bien divisible par 4, donc 2 340 est divisible par 4.',
  'Appliquer le critère de divisibilité par 2 (se termine par un chiffre pair) au lieu de celui par 4 (les deux derniers chiffres forment un nombre divisible par 4).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité', 'Facile', 'qcm',
  'Quel est le plus petit multiple commun (PPCM) de 12 et 18 ?', NULL,
  '[{"id":"a","label":"6"},{"id":"b","label":"36"},{"id":"c","label":"72"},{"id":"d","label":"216"}]',
  '{"mode":"single","value":"b"}',
  'On décompose en facteurs premiers : 12 = 2² × 3 et 18 = 2 × 3². Le PPCM se calcule en prenant la plus grande puissance de chaque facteur premier : PPCM = 2² × 3² = 4 × 9 = 36. On vérifie : 36 ÷ 12 = 3 et 36 ÷ 18 = 2.',
  'Confondre le PPCM (plus petit multiple commun) avec le PGCD (plus grand commun diviseur). Le PGCD de 12 et 18 est 6, pas 36.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité', 'Facile', 'reponse_courte',
  'Un fleuriste a 48 roses et 60 tulipes. Il veut composer des bouquets identiques avec le maximum de bouquets possible. Combien de bouquets fera-t-il ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12 bouquets","douze"]}',
  'On cherche le plus grand commun diviseur (PGCD) de 48 et 60. Décomposition : 48 = 2⁴ × 3 et 60 = 2² × 3 × 5. PGCD = 2² × 3 = 12. Le fleuriste fera 12 bouquets, chacun composé de 48 ÷ 12 = 4 roses et 60 ÷ 12 = 5 tulipes.',
  'Calculer le PPCM au lieu du PGCD, ou se tromper dans la décomposition en facteurs premiers en oubliant un facteur.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité', 'Facile', 'qcm',
  'Pour quel chiffre x le nombre 52x4 est-il divisible par 9 ?', NULL,
  '[{"id":"a","label":"5"},{"id":"b","label":"6"},{"id":"c","label":"7"},{"id":"d","label":"8"}]',
  '{"mode":"single","value":"c"}',
  'Un nombre est divisible par 9 si la somme de ses chiffres est divisible par 9. Ici : 5 + 2 + x + 4 = 11 + x. Pour que 11 + x soit divisible par 9, il faut 11 + x = 18, soit x = 7. Vérification : 5 274 ÷ 9 = 586.',
  'Confondre le critère de divisibilité par 9 (somme des chiffres divisible par 9) avec celui par 3 (somme des chiffres divisible par 3), ce qui donnerait x = 1 ou x = 4.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

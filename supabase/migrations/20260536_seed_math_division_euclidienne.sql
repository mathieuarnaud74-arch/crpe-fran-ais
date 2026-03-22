-- Division euclidienne — Problèmes et sens (7 exercices, niveau Intermédiaire)
-- Progression : Q1-Q2 amorce → Q3-Q5 consolidation → Q6-Q7 approfondissement

-- Q1 (QCM) — Amorce : identifier le reste d''une division euclidienne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens', 'Intermediaire', 'qcm',
  'Dans la division euclidienne de 47 par 6, quel est le reste ?', NULL,
  '[{"id":"a","label":"1"},{"id":"b","label":"5"},{"id":"c","label":"7"},{"id":"d","label":"41"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On effectue la division euclidienne de 47 par 6 : on cherche le plus grand multiple de 6 inférieur ou égal à 47. On a 6 × 7 = 42 et 6 × 8 = 48 (trop grand). Donc 47 = 6 × 7 + 5. Le quotient est 7 et le reste est 5. On vérifie : le reste (5) est bien strictement inférieur au diviseur (6).',
  'Confondre le quotient (7) et le reste (5), ou oublier de vérifier que le reste est bien inférieur au diviseur.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (vrai_faux) — Amorce : propriété fondamentale du reste
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens', 'Intermediaire', 'vrai_faux',
  'Dans la division euclidienne, le reste est toujours strictement inférieur au diviseur.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est la définition même de la division euclidienne. Pour tout entier naturel a et tout entier naturel b non nul, il existe un unique couple (q, r) tel que a = b × q + r avec 0 ≤ r < b. Le reste r est donc toujours compris entre 0 (inclus) et le diviseur b (exclu). Si le reste était égal ou supérieur au diviseur, on pourrait encore effectuer une soustraction, ce qui signifierait que le quotient n''est pas assez grand.',
  'Penser que le reste peut être égal au diviseur. Si r = b, alors on peut écrire a = b × (q + 1) + 0, ce qui donne un quotient plus grand et un reste nul.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (reponse_courte) — Consolidation : problème concret nécessitant d''arrondir au-dessus
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens', 'Intermediaire', 'reponse_courte',
  'On veut transporter 158 élèves en bus. Chaque bus contient 45 places. Combien de bus faut-il réserver ?', NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["4","4 bus"]}'::jsonb,
  'On effectue la division euclidienne de 158 par 45 : 158 = 45 × 3 + 23. Le quotient est 3 et le reste est 23. Avec 3 bus, on transporte 3 × 45 = 135 élèves, il en reste 23 sans place. Il faut donc un bus supplémentaire : 3 + 1 = 4 bus. Dans ce type de problème, on interprète le quotient en contexte : comme il reste des élèves, on arrondit au nombre entier supérieur.',
  'Répondre 3 (le quotient) en oubliant les 23 élèves restants. Dans un problème de transport, on ne peut pas laisser des élèves sur le trottoir : il faut toujours arrondir au-dessus.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (QCM) — Consolidation : problème où c''est le reste qui répond à la question
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens', 'Intermediaire', 'qcm',
  'On distribue équitablement 83 bonbons entre 12 enfants. Combien de bonbons reste-t-il dans le sac ?', NULL,
  '[{"id":"a","label":"6"},{"id":"b","label":"11"},{"id":"c","label":"7"},{"id":"d","label":"5"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On effectue la division euclidienne de 83 par 12 : 83 = 12 × 6 + 11. Chaque enfant reçoit 6 bonbons (le quotient). Il reste 11 bonbons dans le sac (le reste). Ici, c''est le reste de la division euclidienne qui répond à la question posée, pas le quotient. On vérifie : 12 × 6 + 11 = 72 + 11 = 83. ✓',
  'Confondre quotient et reste : répondre 6 (le nombre de bonbons par enfant) au lieu de 11 (le nombre de bonbons restants). Il est essentiel de bien identifier ce que la question demande.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (QCM) — Consolidation : raisonnement inverse avec la forme a = bk + r
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens', 'Intermediaire', 'qcm',
  'Quel est le plus grand nombre entier de la forme 7k + 3 qui soit strictement inférieur à 100 ?', NULL,
  '[{"id":"a","label":"94"},{"id":"b","label":"98"},{"id":"c","label":"97"},{"id":"d","label":"91"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On cherche le plus grand entier de la forme 7k + 3 strictement inférieur à 100. On résout 7k + 3 < 100, soit 7k < 97, soit k < 97 ÷ 7 ≈ 13,86. Le plus grand entier k possible est donc k = 13. On calcule : 7 × 13 + 3 = 91 + 3 = 94. On vérifie : 94 < 100 ✓ et pour k = 14, on aurait 7 × 14 + 3 = 101, qui dépasse 100. Ce problème exploite l''écriture a = bq + r de la division euclidienne.',
  'Répondre 98 (= 7 × 14, sans le reste 3) ou 97 (= 100 − 3) par un calcul erroné. Il faut bien appliquer la formule 7k + 3 et vérifier que le résultat est inférieur à 100.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (reponse_courte) — Approfondissement : conversion d''unités et division euclidienne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens', 'Intermediaire', 'reponse_courte',
  'On coupe une corde de 5 m en morceaux de 35 cm. Combien de morceaux obtient-on et quelle longueur de corde reste-t-il ?', NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["14 morceaux et 10 cm","14 morceaux, reste 10 cm","14","14 morceaux et il reste 10 cm","14 morceaux reste 10 cm"]}'::jsonb,
  'On convertit d''abord en centimètres : 5 m = 500 cm. On effectue la division euclidienne de 500 par 35 : 500 = 35 × 14 + 10. On obtient donc 14 morceaux de 35 cm. On vérifie : 35 × 14 = 490 cm. Il reste 500 − 490 = 10 cm de corde. Le quotient (14) donne le nombre de morceaux, et le reste (10 cm) donne la longueur de corde inutilisée.',
  'Oublier de convertir les mètres en centimètres avant de diviser, ou se tromper dans la conversion (5 m = 500 cm, pas 50 cm). Autre erreur : confondre le quotient et le reste dans l''interprétation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (QCM) — Approfondissement : modulo et calendrier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens', 'Intermediaire', 'qcm',
  'Un calendrier commence un lundi (jour 1). Quel jour de la semaine sera le 45e jour ?', NULL,
  '[{"id":"a","label":"Mardi"},{"id":"b","label":"Mercredi"},{"id":"c","label":"Jeudi"},{"id":"d","label":"Vendredi"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La semaine comporte 7 jours. Pour trouver le jour de la semaine du 45e jour, on calcule le reste de la division de (45 − 1) par 7, car le jour 1 est un lundi. On a 45 − 1 = 44 et 44 = 7 × 6 + 2. Le reste est 2, ce qui signifie qu''on avance de 2 jours après lundi : lundi → mardi (+ 1) → mercredi (+ 2). Le 45e jour est donc un mercredi. Ce type de problème utilise la notion de congruence (modulo), directement liée à la division euclidienne.',
  'Oublier de soustraire 1 avant de diviser (le jour 1 est déjà un lundi, pas le jour 0). Sans cette soustraction, on trouverait un reste de 3 et on répondrait jeudi à tort.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Seed: Expérience aléatoire — Vocabulaire et notions de base (7 exercices)
-- Subdomain: organisation_donnees | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb020000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base', 'Facile',
  'qcm',
  'Qu''appelle-t-on une « expérience aléatoire » ?',
  NULL,
  '[{"id":"a","label":"Une expérience dont on peut prévoir le résultat avec certitude."},{"id":"b","label":"Une expérience dont on connaît tous les résultats possibles, mais dont on ne peut pas prévoir lequel se réalisera."},{"id":"c","label":"Une expérience qui ne peut pas être reproduite."},{"id":"d","label":"Une expérience dont les résultats sont toujours équiprobables."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Une expérience aléatoire est une expérience dont on peut lister l''ensemble des résultats possibles (l''univers), mais dont l''issue ne peut pas être prévue à l''avance. Par exemple, lancer un dé à six faces est une expérience aléatoire : on sait que le résultat sera un entier de 1 à 6, mais on ne peut pas prédire lequel. La réponse a) décrit une expérience déterministe, c) est fausse car une expérience aléatoire est reproductible, et d) est trop restrictive (les résultats ne sont pas nécessairement équiprobables).',
  'L''erreur fréquente est de confondre « aléatoire » et « équiprobable ». Une expérience peut être aléatoire sans que tous les résultats aient la même probabilité (par exemple, une roue truquée).',
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
  'fb020000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base', 'Facile',
  'vrai_faux',
  'Vrai ou faux : lorsqu''on lance un dé équilibré à six faces, l''événement « obtenir un nombre pair » est un événement élémentaire.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Un événement élémentaire est un événement qui ne contient qu''une seule issue. L''événement « obtenir un nombre pair » correspond aux issues {2, 4, 6}, soit trois issues possibles. Il ne s''agit donc pas d''un événement élémentaire mais d''un événement composé. Un exemple d''événement élémentaire serait « obtenir 3 ».',
  'L''erreur est de confondre événement élémentaire (une seule issue) et événement quelconque (qui peut regrouper plusieurs issues). Le vocabulaire précis est essentiel en probabilités.',
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
  'fb020000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base', 'Facile',
  'qcm',
  'On lance une pièce de monnaie équilibrée deux fois de suite. Combien d''issues possibles comporte l''univers de cette expérience ?',
  NULL,
  '[{"id":"a","label":"2"},{"id":"b","label":"3"},{"id":"c","label":"4"},{"id":"d","label":"6"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''univers est l''ensemble de toutes les issues possibles. Pour deux lancers d''une pièce, les issues sont : (Pile, Pile), (Pile, Face), (Face, Pile), (Face, Face). Il y a donc 4 issues possibles. On peut retrouver ce résultat par le principe multiplicatif : 2 issues au premier lancer × 2 issues au second lancer = 2×2 = 4 issues au total.',
  'L''erreur courante est de répondre 3 en considérant que (Pile, Face) et (Face, Pile) sont la même issue. Or, l''ordre compte : le premier lancer et le second lancer sont distingués.',
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
  'fb020000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base', 'Facile',
  'reponse_courte',
  'On lance un dé équilibré à six faces. Quelle est la probabilité d''obtenir un nombre strictement supérieur à 4 ? Donnez votre réponse sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/3","1∕3"]}'::jsonb,
  'Les issues favorables à l''événement « obtenir un nombre strictement supérieur à 4 » sont : 5 et 6. Il y a donc 2 issues favorables sur 6 issues possibles au total. La probabilité est : P = nombre d''issues favorables ÷ nombre total d''issues = 2/6 = 1/3. En situation d''équiprobabilité, la probabilité d''un événement se calcule toujours comme le rapport du nombre d''issues favorables sur le nombre total d''issues.',
  'Les erreurs fréquentes sont : inclure 4 dans le décompte (« supérieur à 4 » et non « supérieur ou égal à 4 »), ou oublier de simplifier la fraction 2/6 en 1/3.',
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
  'fb020000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base', 'Facile',
  'qcm',
  'On tire au hasard une bille dans un sac contenant 3 billes rouges et 7 billes bleues. Soit A l''événement « tirer une bille rouge ». Quel est l''événement contraire (complémentaire) de A ?',
  NULL,
  '[{"id":"a","label":"Tirer une bille qui n''est ni rouge ni bleue."},{"id":"b","label":"Tirer une bille bleue."},{"id":"c","label":"Ne pas tirer de bille."},{"id":"d","label":"Tirer deux billes rouges."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''événement contraire (ou complémentaire) de A est l''événement « A ne se réalise pas », noté A̅ (A barre). Si A = « tirer une bille rouge », alors A̅ = « ne pas tirer une bille rouge ». Comme le sac ne contient que des billes rouges et bleues, ne pas tirer une rouge revient à tirer une bleue. On a toujours P(A) + P(A̅) = 1, soit ici P(A) = 3/10 et P(A̅) = 7/10.',
  'L''erreur est de penser que l''événement contraire est quelque chose de plus complexe. L''événement contraire est simplement « tout ce qui n''est pas A » dans l''univers considéré.',
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
  'fb020000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base', 'Facile',
  'vrai_faux',
  'Vrai ou faux : on lance une pièce de monnaie équilibrée 10 fois et on obtient 10 fois « Pile ». La probabilité d''obtenir « Face » au 11e lancer est alors supérieure à 1/2.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Chaque lancer d''une pièce équilibrée est une expérience indépendante des lancers précédents. La pièce n''a pas de « mémoire » : les résultats passés n''influencent pas les résultats futurs. La probabilité d''obtenir « Face » au 11e lancer reste exactement 1/2, quels que soient les résultats des 10 lancers précédents. La croyance contraire s''appelle le « sophisme du joueur » (ou gambler''s fallacy).',
  'L''erreur très répandue est de croire que la pièce « doit » retomber sur Face pour « compenser » les Pile précédents. C''est le sophisme du joueur : les événements indépendants n''ont pas de mémoire.',
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
  'fb020000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base', 'Facile',
  'reponse_courte',
  'Dans une classe, un enseignant fait lancer un dé à six faces 60 fois à ses élèves. Le chiffre 3 est obtenu 14 fois. Quelle est la fréquence d''apparition du 3 ? Donnez votre réponse sous forme décimale arrondie au centième.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["0,23","0.23"]}'::jsonb,
  'La fréquence d''apparition se calcule en divisant le nombre d''occurrences par le nombre total de lancers : f = 14 ÷ 60 ≈ 0,2333… ≈ 0,23. Il est important de distinguer fréquence et probabilité : la probabilité théorique d''obtenir 3 avec un dé équilibré est 1/6 ≈ 0,167, tandis que la fréquence observée (0,23) est le résultat expérimental. La loi des grands nombres nous dit que la fréquence se rapproche de la probabilité théorique quand le nombre d''expériences augmente.',
  'L''erreur courante est de confondre fréquence (résultat expérimental, qui varie d''une série d''expériences à l''autre) et probabilité (valeur théorique fixe). La fréquence tend vers la probabilité lorsque le nombre d''essais augmente.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Série : Mise en équation — Du problème à l'équation
-- 7 questions, Intermédiaire, premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte
-- Compétence clé CRPE : traduire un énoncé en langage algébrique

-- Q1 — AMORCE — QCM — Traduire un énoncé en équation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'qcm',
  'Julie a le triple de l''âge de son fils. La somme de leurs âges est 48 ans. Quelle équation traduit cette situation (x = âge du fils) ?',
  NULL,
  '[{"id":"a","label":"x + 3x = 48"},{"id":"b","label":"3x − x = 48"},{"id":"c","label":"x + x/3 = 48"},{"id":"d","label":"x × 3 = 48"}]',
  '{"mode":"single_choice","value":"a"}',
  'Soit x l''âge du fils. Julie a le triple, donc son âge est 3x. La somme de leurs âges : x + 3x = 48. Simplification : 4x = 48, donc x = 12. Le fils a 12 ans et Julie a 36 ans. Vérification : 12 + 36 = 48 ✓ et 36 = 3 × 12 ✓. La réponse C (x + x/3 = 48) correspond à l''erreur « Julie a un tiers de l''âge du fils ». La réponse B (3x − x = 48) traduit « la différence de leurs âges est 48 ». La mise en équation suit toujours 3 étapes : (1) choisir l''inconnue, (2) exprimer les autres quantités en fonction de l''inconnue, (3) traduire la relation en équation.',
  'Inverser le rapport : écrire x/3 au lieu de 3x. « Julie a le triple de l''âge de son fils » signifie âge_Julie = 3 × âge_fils, pas âge_fils = 3 × âge_Julie.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Résolution d'équation simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'reponse_courte',
  'Résolvez l''équation : 5x − 7 = 2x + 8.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["x = 5","5","x=5"]}'  ,
  '5x − 7 = 2x + 8. Étape 1 — On regroupe les termes en x d''un côté : 5x − 2x = 8 + 7. Étape 2 — On simplifie : 3x = 15. Étape 3 — On divise : x = 15/3 = 5. Vérification : membre gauche = 5(5) − 7 = 25 − 7 = 18. Membre droit = 2(5) + 8 = 10 + 8 = 18. 18 = 18 ✓. La résolution d''une équation du premier degré suit toujours le même schéma : regrouper, simplifier, isoler l''inconnue. La vérification par substitution est indispensable au CRPE.',
  'Faire une erreur de signe en transposant : oublier que −7 devient +7 quand on le passe de l''autre côté. La règle : on change le signe quand on transpose un terme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Problème de périmètre avec inconnue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'qcm',
  'Un rectangle a un périmètre de 54 cm. Sa longueur dépasse sa largeur de 7 cm. Quelles sont ses dimensions ?',
  NULL,
  '[{"id":"a","label":"Longueur = 17 cm, largeur = 10 cm"},{"id":"b","label":"Longueur = 20 cm, largeur = 7 cm"},{"id":"c","label":"Longueur = 14 cm, largeur = 7 cm"},{"id":"d","label":"Longueur = 27 cm, largeur = 20 cm"}]',
  '{"mode":"single_choice","value":"a"}',
  'Soit x la largeur. La longueur = x + 7. Périmètre = 2(longueur + largeur) = 2(x + 7 + x) = 2(2x + 7) = 4x + 14 = 54. Résolution : 4x = 54 − 14 = 40, donc x = 10. Largeur = 10 cm, longueur = 10 + 7 = 17 cm. Vérification : périmètre = 2(17 + 10) = 2 × 27 = 54 cm ✓ et 17 − 10 = 7 cm ✓. Ce type de problème combine géométrie (formule du périmètre) et algèbre (mise en équation). La difficulté est de bien identifier ce qui est l''inconnue et d''exprimer toutes les grandeurs en fonction de cette inconnue.',
  'Confondre « la longueur dépasse la largeur de 7 » avec « la longueur est 7 cm ». « Dépasser de 7 » signifie L = l + 7, pas L = 7.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Problème de nombre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'reponse_courte',
  'La somme de trois nombres entiers consécutifs est 96. Quel est le plus petit de ces trois nombres ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["31","31,0"]}'  ,
  'Soit n le plus petit nombre. Les trois entiers consécutifs sont n, n+1 et n+2. Leur somme : n + (n+1) + (n+2) = 3n + 3 = 96. Résolution : 3n = 93, donc n = 31. Les trois nombres sont 31, 32, 33. Vérification : 31 + 32 + 33 = 96 ✓. Astuce : la somme de 3 entiers consécutifs vaut 3 fois le nombre du milieu. 96/3 = 32, le nombre du milieu est 32, donc le plus petit est 31. Cette propriété vient de la symétrie : n + (n+1) + (n+2) = 3(n+1).',
  'Diviser 96 par 3 et donner 32 (le nombre du milieu au lieu du plus petit). Lire attentivement : « le plus petit » = n = 31, pas n+1 = 32.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Inéquation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : si 3x + 5 > 20, alors x > 5.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}',
  'VRAI. Résolvons l''inéquation : 3x + 5 > 20 → 3x > 15 → x > 5. Les opérations sont les mêmes que pour une équation, SAUF quand on multiplie ou divise par un nombre NÉGATIF (ce qui inverse le sens de l''inégalité). Ici, on soustrait 5 (ne change pas le sens) puis on divise par 3 (positif, ne change pas le sens). Si on avait eu −3x > 15, en divisant par −3 on aurait obtenu x < −5 (inversion du sens). La résolution d''inéquations est au programme du CRPE et utilise les mêmes techniques que les équations, avec cette vigilance supplémentaire sur la multiplication/division par un négatif.',
  'Oublier qu''on inverse le sens de l''inégalité quand on divise par un nombre négatif. Ici le cas ne se présente pas (÷3 > 0), mais c''est un piège classique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Problème de mélange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'reponse_courte',
  'Un mélange de café contient du café arabica à 12 €/kg et du café robusta à 8 €/kg. On veut obtenir 5 kg de mélange à 9,60 €/kg. Quelle masse d''arabica faut-il ? (Répondez en kg.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2 kg","2","2,0 kg","2,0","2kg"]}'  ,
  'Soit x la masse d''arabica (en kg). La masse de robusta est 5 − x. Équation du prix : 12x + 8(5 − x) = 9,60 × 5. Développement : 12x + 40 − 8x = 48. Simplification : 4x + 40 = 48. Résolution : 4x = 8, donc x = 2 kg. Vérification : 2 kg d''arabica à 12 € = 24 €, 3 kg de robusta à 8 € = 24 €. Total = 48 € pour 5 kg, soit 48/5 = 9,60 €/kg ✓. Ce type de problème de mélange est un grand classique du CRPE. La clé est de poser l''équation sur le PRIX TOTAL (pas sur le prix unitaire).',
  'Poser l''équation sur les prix unitaires au lieu du prix total. L''équation correcte exprime : coût arabica + coût robusta = coût total du mélange.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Système d'équations (problème de répartition)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'qcm',
  'Un fermier a des poules et des lapins. Il compte 20 têtes et 56 pattes. Combien a-t-il de poules et de lapins ?',
  NULL,
  '[{"id":"a","label":"12 poules et 8 lapins"},{"id":"b","label":"8 poules et 12 lapins"},{"id":"c","label":"10 poules et 10 lapins"},{"id":"d","label":"14 poules et 6 lapins"}]',
  '{"mode":"single_choice","value":"a"}',
  'Soit p le nombre de poules et l le nombre de lapins. Système : p + l = 20 (têtes) et 2p + 4l = 56 (pattes). De la 1re équation : p = 20 − l. Substitution dans la 2e : 2(20 − l) + 4l = 56 → 40 − 2l + 4l = 56 → 2l = 16 → l = 8. Donc p = 20 − 8 = 12. 12 poules et 8 lapins. Vérification : têtes = 12 + 8 = 20 ✓, pattes = 12×2 + 8×4 = 24 + 32 = 56 ✓. Ce problème « poules et lapins » est un classique absolu de la mise en équation, connu depuis l''Antiquité chinoise. Méthode alternative sans algèbre : si toutes les 20 bêtes étaient des poules → 40 pattes. Il manque 56 − 40 = 16 pattes. Chaque lapin apporte 2 pattes de plus qu''une poule → 16/2 = 8 lapins.',
  'Inverser poules et lapins dans la réponse. Toujours vérifier que le nombre de pattes colle : 12 × 2 + 8 × 4 = 56.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Série : Probabilités — Situations concrètes (QCM)
-- Sous-domaine : organisation_donnees | Niveau : Intermédiaire | Accès : premium
-- 7 questions QCM — progression amorce → consolidation → approfondissement
-- Thème : calculs de probabilités ancrés dans des situations de la vie quotidienne

-- Q1 — Amorce (QCM) — Loterie simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes', 'Intermediaire',
  'qcm',
  'À la tombola de l''école, il y a 50 billets dont 5 sont gagnants. Lucie achète un billet au hasard. Quelle est la probabilité qu''elle gagne un lot ?',
  NULL,
  '[{"id":"a","label":"1/5"},{"id":"b","label":"1/10"},{"id":"c","label":"5/45"},{"id":"d","label":"1/50"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il y a 5 billets gagnants parmi 50 billets au total.\nP(gagner) = 5/50 = 1/10.\n\nLe distracteur 1/5 provient d''une simplification erronée (diviser 5 par 5 mais oublier de diviser 50 par 5, ou confondre avec « 5 billets sur 5 »).\nLe distracteur 5/45 provient de l''erreur classique de diviser par le nombre de billets NON gagnants (50 − 5 = 45) au lieu du nombre total.\nLe distracteur 1/50 confond « 1 billet acheté » avec la probabilité.',
  'Diviser le nombre de billets gagnants par le nombre de billets perdants (5/45) au lieu du nombre total (5/50). Le dénominateur est toujours le nombre TOTAL d''issues possibles.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Amorce (QCM) — Sac de bonbons
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes', 'Intermediaire',
  'qcm',
  'Un sachet contient 3 bonbons à la fraise, 5 au citron et 2 à la menthe. Emma pioche un bonbon au hasard sans regarder. Quelle est la probabilité qu''elle obtienne un bonbon à la fraise ?',
  NULL,
  '[{"id":"a","label":"1/3"},{"id":"b","label":"3/10"},{"id":"c","label":"3/7"},{"id":"d","label":"3/8"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le sachet contient 3 + 5 + 2 = 10 bonbons au total.\nP(fraise) = 3/10.\n\nLe distracteur 1/3 provient d''une confusion : il y a 3 parfums différents, mais les quantités ne sont pas égales, donc les parfums ne sont pas équiprobables.\nLe distracteur 3/7 divise par les bonbons « non fraise » (5 + 2 = 7).\nLe distracteur 3/8 oublie de compter les bonbons à la menthe dans le total.',
  'Croire que si un sachet contient 3 parfums, chaque parfum a une probabilité de 1/3. L''équiprobabilité porte sur les bonbons individuels, pas sur les catégories.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Consolidation (QCM) — Événement complémentaire (météo)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes', 'Intermediaire',
  'qcm',
  'La météo annonce 40 % de risque de pluie pour demain. Quelle est la probabilité qu''il ne pleuve PAS demain ?',
  NULL,
  '[{"id":"a","label":"40 %"},{"id":"b","label":"50 %"},{"id":"c","label":"60 %"},{"id":"d","label":"On ne peut pas savoir"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '« Il pleut » et « il ne pleut pas » sont deux événements complémentaires (contraires).\nLa somme de leurs probabilités vaut toujours 1 (soit 100 %).\n\nP(pas de pluie) = 1 − P(pluie) = 100 % − 40 % = 60 %.\n\nLe distracteur 50 % traduit l''idée fausse que « soit il pleut, soit il ne pleut pas, c''est du 50-50 ».\nLe distracteur « on ne peut pas savoir » est tentant mais faux : même si la prévision est incertaine, la règle de l''événement complémentaire s''applique toujours.',
  'Répondre 50 % en raisonnant « c''est l''un ou l''autre, donc c''est moitié-moitié ». Cette confusion entre nombre d''issues et probabilité est très fréquente chez les élèves.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Consolidation (QCM) — Lots multiples à une tombola
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes', 'Intermediaire',
  'qcm',
  'À la kermesse de l''école, une roue de loterie comporte 20 secteurs identiques : 2 secteurs « peluche », 5 secteurs « stylo » et 3 secteurs « autocollant ». Les autres secteurs sont perdants. Quelle est la probabilité de gagner un lot (n''importe lequel) ?',
  NULL,
  '[{"id":"a","label":"1/4"},{"id":"b","label":"1/2"},{"id":"c","label":"3/20"},{"id":"d","label":"10/20"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Nombre de secteurs gagnants : 2 + 5 + 3 = 10.\nNombre total de secteurs : 20.\nP(gagner un lot) = 10/20 = 1/2.\n\nIl s''agit d''une union d''événements incompatibles (on ne peut pas tomber sur deux secteurs à la fois) :\nP(peluche OU stylo OU autocollant) = P(peluche) + P(stylo) + P(autocollant) = 2/20 + 5/20 + 3/20 = 10/20 = 1/2.\n\nLe distracteur 1/4 vient de l''erreur « 5 secteurs stylo sur 20 = 1/4 » en ne comptant qu''un seul type.\nLe distracteur 3/20 ne compte que les autocollants.',
  'Ne compter qu''un seul type de lot au lieu de tous les additionner. L''événement « gagner un lot » est la réunion de tous les événements gagnants.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Consolidation (QCM) — Dénombrement des issues possibles (code secret)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes', 'Intermediaire',
  'qcm',
  'Un cadenas à code possède 2 molettes, chacune numérotée de 0 à 9. Si l''on essaie une combinaison au hasard, quelle est la probabilité de déverrouiller le cadenas du premier coup ?',
  NULL,
  '[{"id":"a","label":"1/20"},{"id":"b","label":"1/100"},{"id":"c","label":"2/10"},{"id":"d","label":"1/90"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Chaque molette peut prendre 10 positions (0 à 9).\nNombre total de combinaisons possibles : 10 × 10 = 100.\nUne seule combinaison est la bonne.\nP(bonne combinaison) = 1/100.\n\nLe distracteur 1/20 additionne les possibilités (10 + 10 = 20) au lieu de les multiplier. C''est une erreur classique : quand on combine des choix indépendants, on MULTIPLIE.\nLe distracteur 2/10 confond « 2 molettes sur 10 chiffres » avec la probabilité.\nLe distracteur 1/90 soustrait au lieu de multiplier (10 × 10 − 10 = 90).',
  'Additionner les possibilités de chaque molette (10 + 10 = 20) au lieu de les multiplier (10 × 10 = 100). Quand les choix sont successifs et indépendants, on utilise le principe multiplicatif.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Approfondissement (QCM) — Système complet d'événements (match de foot)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes', 'Intermediaire',
  'qcm',
  'Deux équipes A et B disputent un match de football. On estime que la probabilité d''une victoire de A est 0,45 et la probabilité d''un match nul est 0,25. Quelle est la probabilité d''une victoire de B ?',
  NULL,
  '[{"id":"a","label":"0,55"},{"id":"b","label":"0,30"},{"id":"c","label":"0,25"},{"id":"d","label":"0,75"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les trois issues possibles (victoire A, match nul, victoire B) forment un système complet d''événements. La somme de leurs probabilités vaut 1.\n\nP(victoire A) + P(nul) + P(victoire B) = 1\n0,45 + 0,25 + P(victoire B) = 1\nP(victoire B) = 1 − 0,45 − 0,25 = 0,30.\n\nLe distracteur 0,55 provient du calcul 1 − 0,45 (on oublie le match nul).\nLe distracteur 0,75 provient du calcul 1 − 0,25 (on oublie la victoire de A).\nLe distracteur 0,25 confond la probabilité du nul avec celle de la victoire de B.',
  'Oublier le match nul et calculer P(victoire B) = 1 − P(victoire A) = 0,55. Il faut identifier TOUTES les issues possibles avant d''appliquer la règle de la somme.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Approfondissement (QCM) — Deux lancers de pièce (dénombrement)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes', 'Intermediaire',
  'qcm',
  'On lance deux pièces de monnaie équilibrées. Quelle est la probabilité d''obtenir exactement un pile et un face ?',
  NULL,
  '[{"id":"a","label":"1/4"},{"id":"b","label":"1/3"},{"id":"c","label":"1/2"},{"id":"d","label":"3/4"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''univers des issues possibles est : {(P,P), (P,F), (F,P), (F,F)}, soit 4 issues équiprobables.\n\nL''événement « exactement un pile et un face » correspond aux issues (P,F) et (F,P), soit 2 issues favorables.\nP = 2/4 = 1/2.\n\nAttention au piège classique : le distracteur 1/3 provient d''un mauvais dénombrement où l''on confond (P,F) et (F,P) en une seule issue « un pile et un face ». Cela reviendrait à considérer seulement 3 issues {deux piles, un de chaque, deux faces}, mais elles ne seraient PAS équiprobables !\n\nIl est essentiel de distinguer les deux pièces pour dénombrer correctement.',
  'Considérer seulement 3 résultats possibles (2 piles, 1 de chaque, 2 faces) au lieu de 4 en oubliant de distinguer les deux pièces. C''est une erreur de dénombrement fréquente chez les élèves (et au CRPE).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
-- ============================================================
-- Série : Pythagore — Théorème direct et réciproque (Géométrie, Intermédiaire, Free)
-- 7 exercices : 2 amorce · 3 consolidation · 2 approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Calcul de l''hypoténuse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque', 'Intermediaire', 'qcm',
  'Un triangle rectangle a deux côtés de l''angle droit mesurant 6 cm et 8 cm. Quelle est la longueur de l''hypoténuse ?',
  NULL,
  '[{"id":"a","label":"10 cm"},{"id":"b","label":"14 cm"},{"id":"c","label":"√48 cm"},{"id":"d","label":"100 cm"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'D''après le théorème de Pythagore, dans un triangle rectangle, le carré de l''hypoténuse est égal à la somme des carrés des deux autres côtés. On calcule : 6² + 8² = 36 + 64 = 100. L''hypoténuse vaut donc √100 = 10 cm. La réponse B additionne les côtés au lieu de leurs carrés. La réponse C calcule √(8² − 6²), ce qui correspondrait à un autre côté. La réponse D oublie de prendre la racine carrée.',
  'Oublier de prendre la racine carrée du résultat final : l''hypoténuse vaut √100 = 10 cm, et non 100 cm.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Propriété de l''hypoténuse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque', 'Intermediaire', 'vrai_faux',
  'Vrai ou faux : dans un triangle rectangle, l''hypoténuse est toujours le côté le plus long.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''hypoténuse est le côté opposé à l''angle droit dans un triangle rectangle. Puisque l''angle droit est le plus grand angle du triangle (90°), le côté qui lui est opposé est nécessairement le plus long. C''est une conséquence directe de la propriété : dans un triangle, le côté le plus long est opposé au plus grand angle.',
  'Confondre l''hypoténuse avec l''un des côtés de l''angle droit (les cathètes).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Calcul d''un cathète
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque', 'Intermediaire', 'reponse_courte',
  'Un triangle rectangle a une hypoténuse de 13 cm et un côté de l''angle droit de 5 cm. Calculez la longueur du troisième côté en cm.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12 cm"]}'::jsonb,
  'On applique le théorème de Pythagore : hypoténuse² = côté₁² + côté₂². Donc 13² = 5² + côté₂², soit 169 = 25 + côté₂². On obtient côté₂² = 169 − 25 = 144, d''où côté₂ = √144 = 12 cm. Attention : pour trouver un cathète, on soustrait le carré du côté connu du carré de l''hypoténuse, on n''additionne pas.',
  'Additionner les carrés au lieu de soustraire : l''élève calcule 13² + 5² = 194 au lieu de 13² − 5² = 144.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Réciproque de Pythagore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque', 'Intermediaire', 'qcm',
  'Un triangle a des côtés mesurant 7 cm, 24 cm et 25 cm. Que peut-on en conclure ?',
  NULL,
  '[{"id":"a","label":"Le triangle est rectangle car 7² + 24² = 25²"},{"id":"b","label":"Le triangle est rectangle car 7 + 24 > 25"},{"id":"c","label":"Le triangle n''est pas rectangle car 25 n''est pas un nombre pair"},{"id":"d","label":"On ne peut pas conclure sans connaître les angles"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On utilise la réciproque du théorème de Pythagore. On identifie le plus grand côté : 25 cm. On vérifie : 7² + 24² = 49 + 576 = 625 = 25². L''égalité est vérifiée, donc d''après la réciproque du théorème de Pythagore, le triangle est rectangle et l''angle droit est opposé au côté de 25 cm. La réponse B utilise l''inégalité triangulaire, qui prouve seulement que le triangle existe. La parité du côté (réponse C) n''a aucun rapport avec la nature du triangle.',
  'Utiliser l''inégalité triangulaire (somme de deux côtés > troisième) au lieu de la réciproque de Pythagore pour conclure qu''un triangle est rectangle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Triangle obtusangle ou acutangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque', 'Intermediaire', 'vrai_faux',
  'Vrai ou faux : si dans un triangle de côtés a, b et c (c étant le plus grand), on a a² + b² < c², alors le triangle est obtusangle (il possède un angle obtus).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. C''est une généralisation du théorème de Pythagore. Si a² + b² = c², le triangle est rectangle. Si a² + b² > c², le triangle est acutangle (tous les angles sont aigus). Si a² + b² < c², le triangle est obtusangle : l''angle opposé au plus grand côté est obtus (supérieur à 90°). Cette propriété permet de déterminer la nature d''un triangle uniquement à partir de ses longueurs.',
  'Inverser les inégalités : l''élève pense que a² + b² < c² donne un triangle acutangle alors que c''est l''inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Diagonale d''un rectangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque', 'Intermediaire', 'reponse_courte',
  'Un rectangle mesure 9 cm de longueur et 12 cm de largeur. Calculez la longueur de sa diagonale en cm.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15","15 cm"]}'::jsonb,
  'Un rectangle possède quatre angles droits. Sa diagonale partage le rectangle en deux triangles rectangles dont les côtés de l''angle droit sont la longueur et la largeur du rectangle. On applique le théorème de Pythagore : d² = 9² + 12² = 81 + 144 = 225. Donc d = √225 = 15 cm. Le triplet (9, 12, 15) est un multiple du triplet pythagoricien (3, 4, 5) multiplié par 3.',
  'Ne pas identifier que la diagonale d''un rectangle forme un triangle rectangle avec les côtés du rectangle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Problème concret : échelle contre un mur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque', 'Intermediaire', 'qcm',
  'Une échelle de 5 m est appuyée contre un mur vertical. Le pied de l''échelle est à 3 m du mur. À quelle hauteur l''échelle touche-t-elle le mur ?',
  NULL,
  '[{"id":"a","label":"4 m"},{"id":"b","label":"√34 m"},{"id":"c","label":"2 m"},{"id":"d","label":"8 m"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le mur, le sol et l''échelle forment un triangle rectangle. L''échelle est l''hypoténuse (5 m), la distance au mur est un cathète (3 m), et la hauteur atteinte sur le mur est l''autre cathète. On applique Pythagore : h² + 3² = 5², soit h² = 25 − 9 = 16, donc h = 4 m. La réponse B calculerait √(5² + 3²), ce qui additionne au lieu de soustraire. La réponse D oublie la racine carrée (h² = 16 ≠ h = 16). Le triplet (3, 4, 5) est le triplet pythagoricien le plus classique.',
  'Additionner les carrés au lieu de soustraire quand on cherche un cathète : l''élève calcule √(25 + 9) = √34 au lieu de √(25 − 9) = 4.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Série : Pythagore et Thalès — Applications (Géométrie, Avancé, Premium)
-- 7 exercices : 2 amorce · 3 consolidation · 2 approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Réciproque de Pythagore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications', 'Avance', 'qcm',
  'Un triangle a des côtés mesurant 5 cm, 12 cm et 13 cm. Ce triangle est-il rectangle ?',
  NULL,
  '[{"id":"a","label":"Oui, car 5² + 12² = 13²"},{"id":"b","label":"Non, car 5² + 13² ≠ 12²"},{"id":"c","label":"Oui, car 5 + 12 = 17 > 13"},{"id":"d","label":"Non, car aucun côté ne mesure un nombre entier de dizaines"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On applique la réciproque du théorème de Pythagore. On identifie d''abord le plus grand côté : 13 cm. On vérifie si la somme des carrés des deux autres côtés est égale au carré du plus grand côté : 5² + 12² = 25 + 144 = 169 = 13². L''égalité est vérifiée, donc le triangle est rectangle, et l''angle droit est opposé au côté de 13 cm (l''hypoténuse). La réponse B est fausse car elle compare les mauvais côtés : c''est toujours le plus grand côté qui doit être isolé. La réponse C utilise l''inégalité triangulaire, qui ne permet pas de conclure sur la nature du triangle. La réponse D n''a aucun fondement mathématique.',
  'Confondre le rôle de l''hypoténuse : il faut toujours comparer le carré du plus grand côté à la somme des carrés des deux autres, jamais l''inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Distinction Pythagore / Thalès
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications', 'Avance', 'vrai_faux',
  'Le théorème de Thalès permet de calculer une longueur dans un triangle rectangle.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Le théorème de Thalès s''applique dans une configuration de droites parallèles coupant deux sécantes. Il permet de calculer des longueurs grâce à l''égalité de rapports (proportionnalité des longueurs). C''est le théorème de Pythagore qui s''applique spécifiquement au triangle rectangle et qui relie les longueurs des trois côtés par la relation a² + b² = c² (où c est l''hypoténuse). Confondre les deux théorèmes est une erreur fréquente au CRPE : Pythagore concerne les triangles rectangles, Thalès concerne les configurations avec des droites parallèles.',
  'Confondre les champs d''application des deux théorèmes : Pythagore s''applique aux triangles rectangles, Thalès aux configurations de parallèles coupant des sécantes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Échelle contre un mur (Pythagore)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications', 'Avance', 'reponse_courte',
  'Une échelle de 5 m est appuyée contre un mur vertical. Le pied de l''échelle est situé à 3 m du mur. À quelle hauteur l''échelle touche-t-elle le mur ? (Répondez en mètres, par exemple : 4 m)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4 m","4m","4","4,0 m","4.0 m","4,0","4.0"]}'::jsonb,
  'Le mur est perpendiculaire au sol : on a un triangle rectangle dont l''hypoténuse est l''échelle (5 m), un côté est la distance au sol (3 m) et l''autre côté est la hauteur cherchée (h). On applique le théorème de Pythagore : hypoténuse² = côté₁² + côté₂², soit 5² = 3² + h². Donc h² = 5² − 3² = 25 − 9 = 16. On en déduit h = √16 = 4 m. L''échelle touche le mur à 4 mètres de hauteur. Ce type de problème contextualisé est très fréquent au CRPE.',
  'Additionner les longueurs au lieu de travailler avec les carrés, ou oublier d''identifier l''hypoténuse (le plus grand côté, ici l''échelle).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Application directe de Thalès
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications', 'Avance', 'qcm',
  'Deux droites sécantes sont coupées par deux droites parallèles. On obtient les longueurs suivantes : AB = 4 cm, AC = 10 cm et AD = 6 cm. En utilisant le théorème de Thalès, quelle est la longueur AE ?',
  'Les points B et D sont sur les deux sécantes du côté des parallèles les plus proches de A. Les points C et E sont sur les deux sécantes du côté des parallèles les plus éloignées de A. Les droites (BD) et (CE) sont parallèles.',
  '[{"id":"a","label":"15 cm"},{"id":"b","label":"12 cm"},{"id":"c","label":"6,67 cm"},{"id":"d","label":"24 cm"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'D''après le théorème de Thalès, dans une configuration où deux droites parallèles (BD) et (CE) coupent deux sécantes, les rapports de longueurs sont égaux : AB/AC = AD/AE. On substitue les valeurs connues : 4/10 = 6/AE. Par produit en croix : AE = (6 × 10) / 4 = 60 / 4 = 15 cm. La réponse B (12 cm) correspond à l''erreur d''inverser un rapport : 10/4 × 6 = 15, pas 12. La réponse C (6,67 cm) correspond à l''erreur de diviser AC par AD au lieu d''appliquer la proportionnalité correctement. La réponse D (24 cm) correspond à une multiplication erronée 4 × 6.',
  'Inverser les rapports dans la proportion de Thalès ou se tromper dans le produit en croix.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Réponse courte — Diagonale d'un terrain rectangulaire (réciproque de Pythagore)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications', 'Avance', 'reponse_courte',
  'Pour vérifier qu''un terrain est bien rectangulaire, un géomètre mesure la diagonale d''un terrain de 12 m par 16 m. Quelle longueur doit-il trouver pour confirmer que le terrain est rectangulaire ? (Répondez en mètres, par exemple : 20 m)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["20 m","20m","20","20,0 m","20.0 m","20,0","20.0"]}'::jsonb,
  'Si le terrain est rectangulaire, ses côtés forment un angle droit. La diagonale est alors l''hypoténuse du triangle rectangle formé par deux côtés consécutifs. On applique le théorème de Pythagore : d² = 12² + 16² = 144 + 256 = 400. Donc d = √400 = 20 m. Réciproquement, si le géomètre mesure exactement 20 m pour la diagonale, il peut conclure (par la réciproque du théorème de Pythagore) que l''angle est bien droit et que le terrain est rectangulaire. Ce raisonnement est utilisé en pratique par les géomètres et les maçons (règle du 3-4-5).',
  'Oublier d''appliquer la racine carrée à la fin du calcul, ou additionner directement les côtés sans les mettre au carré.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Problème d'ombre (Thalès + Pythagore)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications', 'Avance', 'qcm',
  'Un poteau vertical de 2 m projette une ombre de 3 m sur le sol horizontal. Au même moment, un arbre voisin projette une ombre de 7,5 m. Quelle est la hauteur de l''arbre ?',
  'Les rayons du soleil sont considérés comme parallèles. Le sol est horizontal et les objets sont verticaux.',
  '[{"id":"a","label":"5 m"},{"id":"b","label":"4,5 m"},{"id":"c","label":"11,25 m"},{"id":"d","label":"3,75 m"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les rayons du soleil étant parallèles, on se trouve dans une configuration de Thalès. Les objets verticaux (poteau et arbre) et le sol horizontal forment des triangles rectangles semblables. On pose la proportion : hauteur du poteau / ombre du poteau = hauteur de l''arbre / ombre de l''arbre. Soit : 2/3 = h/7,5. Par produit en croix : h = (2 × 7,5) / 3 = 15 / 3 = 5 m. L''arbre mesure 5 m de haut. La réponse B (4,5 m) correspond à l''erreur 3 × 7,5 / 5. La réponse C (11,25 m) correspond à 3 × 7,5 / 2 (inversion du rapport). La réponse D (3,75 m) correspond à 7,5 / 2 (division simple sans proportion).',
  'Inverser le rapport de proportionnalité : il faut bien mettre en correspondance hauteur/ombre pour le poteau ET pour l''arbre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Réciproque de Thalès (parallélisme)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications', 'Avance', 'reponse_courte',
  'Sur un plan, deux routes partent d''un même point A. Sur la première route, on place B à 6 km de A et C à 10 km de A. Sur la seconde route, on place D à 9 km de A et E à 15 km de A. Les droites (BD) et (CE) sont-elles parallèles ? (Répondez par « oui » ou « non »)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["oui","Oui","OUI","parallèles","Parallèles","oui elles sont parallèles"]}'::jsonb,
  'On applique la réciproque du théorème de Thalès. On calcule les rapports de longueurs sur chaque sécante : AB/AC = 6/10 = 3/5 et AD/AE = 9/15 = 3/5. Les deux rapports sont égaux (3/5 = 3/5). De plus, les points B et D sont du même côté de A que C et E respectivement (B est entre A et C, D est entre A et E). D''après la réciproque du théorème de Thalès, on peut conclure que les droites (BD) et (CE) sont parallèles. Ce type de problème mobilise la capacité à identifier une configuration de Thalès et à appliquer sa réciproque pour démontrer un parallélisme, compétence attendue au CRPE.',
  'Oublier de vérifier que les points sont dans le bon ordre (B entre A et C, D entre A et E), condition nécessaire pour appliquer la réciproque du théorème de Thalès.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Seed: Théorème de Thalès — Applications avancées (7 exercices)
-- Subdomain: geometrie | Level: Difficile | Access: premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — QCM — Théorème de Thalès direct
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Difficile',
  'qcm',
  'Dans un triangle ABC, le point M est sur [AB] et le point N est sur [AC] tels que (MN) est parallèle à (BC). On donne AM = 3 cm, AB = 9 cm et BC = 12 cm. Quelle est la longueur MN ?',
  NULL,
  '[{"id":"a","label":"3 cm"},{"id":"b","label":"4 cm"},{"id":"c","label":"6 cm"},{"id":"d","label":"8 cm"}]',
  '{"mode":"single","value":"b"}',
  'D''après le théorème de Thalès, puisque (MN) // (BC), on a : AM/AB = AN/AC = MN/BC. Donc AM/AB = 3/9 = 1/3. Par conséquent, MN/BC = 1/3, soit MN = BC × 1/3 = 12 × 1/3 = 4 cm. Le théorème de Thalès affirme que si une droite est parallèle à un côté d''un triangle, elle découpe sur les deux autres côtés des segments proportionnels. Le rapport de réduction est ici k = 1/3, ce qui signifie que le triangle AMN est une réduction du triangle ABC dans le rapport 1/3.',
  'Confondre les rapports et calculer MN = 12 × 3/9 correctement, mais certains élèves utilisent MB/AB = 6/9 = 2/3 et trouvent MN = 12 × 2/3 = 8 cm, en prenant le mauvais segment.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Réciproque du théorème de Thalès
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans un triangle ABC, si M est sur [AB] et N est sur [AC] avec AM/AB = AN/AC, alors on peut conclure que (MN) est parallèle à (BC).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  'C''est vrai. C''est la réciproque du théorème de Thalès. Si les points M et N sont situés sur les côtés [AB] et [AC] d''un triangle ABC (ou sur leurs prolongements) et si AM/AB = AN/AC, alors les droites (MN) et (BC) sont parallèles. Attention à bien vérifier que les points sont « du même côté » : M sur [AB] (ou son prolongement au-delà de A ou B) et N sur [AC] (ou son prolongement). La réciproque du théorème de Thalès est l''outil principal pour démontrer que deux droites sont parallèles au CRPE.',
  'Penser que l''égalité des rapports ne suffit pas et qu''il faut une condition supplémentaire. En réalité, dans la configuration du triangle, l''égalité AM/AB = AN/AC suffit à garantir le parallélisme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Calcul de longueur inconnue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Difficile',
  'reponse_courte',
  'Deux droites sécantes se coupent en un point O. Sur la première droite, on place les points A et B tels que OA = 4 cm et OB = 10 cm (A entre O et B). Sur la seconde droite, on place les points C et D tels que OC = 6 cm et OD = 15 cm (C entre O et D). Les droites (AC) et (BD) sont-elles parallèles ? Si oui, indiquer « oui » ; sinon, indiquer « non ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["oui","Oui","OUI"]}',
  'Vérifions l''égalité des rapports : OA/OB = 4/10 = 2/5 et OC/OD = 6/15 = 2/5. Les rapports sont égaux (OA/OB = OC/OD = 2/5), et les points sont dans la configuration de Thalès (A entre O et B, C entre O et D, sur deux droites sécantes en O). D''après la réciproque du théorème de Thalès, les droites (AC) et (BD) sont parallèles. Méthode : dans une configuration « papillon » ou « triangle », on vérifie l''égalité de deux rapports. Si les rapports sont égaux, les droites sont parallèles (réciproque). Si les rapports sont différents, les droites ne sont pas parallèles (contraposée).',
  'Calculer des rapports croisés comme OA/OC = 4/6 et OB/OD = 10/15. Bien que ces rapports soient aussi égaux ici (2/3), la méthode rigoureuse utilise OA/OB et OC/OD sur chaque droite.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Problème d'ombre et de hauteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Difficile',
  'qcm',
  'Un arbre et un piquet sont plantés verticalement sur un terrain plat. Le piquet mesure 1,5 m et projette une ombre de 2 m au sol. Au même instant, l''arbre projette une ombre de 12 m. Quelle est la hauteur de l''arbre ?',
  NULL,
  '[{"id":"a","label":"8 m"},{"id":"b","label":"9 m"},{"id":"c","label":"10 m"},{"id":"d","label":"16 m"}]',
  '{"mode":"single","value":"b"}',
  'Les rayons du soleil étant parallèles, on obtient une configuration de Thalès. Le piquet et son ombre forment un triangle rectangle, tout comme l''arbre et son ombre. Les rapports hauteur/ombre sont égaux : hauteur du piquet / ombre du piquet = hauteur de l''arbre / ombre de l''arbre. Soit : 1,5 / 2 = h / 12. D''où h = 1,5 × 12 / 2 = 18 / 2 = 9 m. Ce type de problème est un classique du CRPE : les rayons solaires parallèles créent des triangles semblables, permettant d''utiliser Thalès pour calculer une hauteur inaccessible.',
  'Additionner au lieu de multiplier : 1,5 + 12 − 2 = 11,5 m, ou se tromper dans le produit en croix. La bonne méthode est le produit en croix : h = 1,5 × 12 / 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Contraposée du théorème de Thalès
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans un triangle ABC, les points M et N sont sur [AB] et [AC] respectivement, avec AM = 4 cm, AB = 12 cm, AN = 3 cm et AC = 10 cm. Les droites (MN) et (BC) sont parallèles.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}',
  'C''est faux. Pour vérifier si (MN) // (BC), on utilise la réciproque du théorème de Thalès : il faut vérifier si AM/AB = AN/AC. Calculons : AM/AB = 4/12 = 1/3 et AN/AC = 3/10. Or 1/3 ≈ 0,333 et 3/10 = 0,3. Les rapports ne sont pas égaux (1/3 ≠ 3/10), donc par la contraposée du théorème de Thalès, les droites (MN) et (BC) ne sont pas parallèles. La contraposée dit : si AM/AB ≠ AN/AC, alors (MN) n''est pas parallèle à (BC). Au CRPE, il est fréquent de devoir distinguer entre la réciproque (rapports égaux → parallèles) et la contraposée (rapports différents → non parallèles).',
  'Arrondir les rapports et conclure à tort qu''ils sont égaux. Il faut comparer les fractions exactes : 1/3 = 10/30 et 3/10 = 9/30, elles sont différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Combiner Thalès et Pythagore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Difficile',
  'qcm',
  'Dans un triangle ABC rectangle en A, on donne AB = 6 cm et AC = 8 cm. Le point M est sur [AB] tel que AM = 2 cm, et N est sur [AC] tel que (MN) // (BC). Calculer la longueur MN.',
  NULL,
  '[{"id":"a","label":"8/3 cm"},{"id":"b","label":"10/3 cm"},{"id":"c","label":"4 cm"},{"id":"d","label":"16/3 cm"}]',
  '{"mode":"single","value":"b"}',
  'Ce problème combine le théorème de Pythagore et le théorème de Thalès. Étape 1 — Pythagore : dans le triangle ABC rectangle en A, BC² = AB² + AC² = 6² + 8² = 36 + 64 = 100, donc BC = 10 cm. Étape 2 — Thalès : puisque (MN) // (BC), le théorème de Thalès donne AM/AB = AN/AC = MN/BC. Le rapport est AM/AB = 2/6 = 1/3. Donc MN = BC × 1/3 = 10/3 cm ≈ 3,33 cm. Le piège classique est d''oublier de calculer BC par Pythagore et d''utiliser à tort AC = 8 dans le rapport, ce qui donnerait 8/3 (réponse a). Au CRPE, la combinaison Pythagore + Thalès est très fréquente et requiert de bien identifier quelle longueur intervient dans chaque théorème.',
  'Oublier de calculer BC par Pythagore et utiliser directement AC = 8 dans le rapport, trouvant MN = 8/3 au lieu de 10/3. Il faut d''abord calculer BC = √(36 + 64) = 10, puis appliquer Thalès.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Problème d'arpentage (topographie)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Difficile',
  'reponse_courte',
  'Pour mesurer la largeur d''une rivière, un géomètre place un point A sur une rive et un point B sur la rive opposée (AB est perpendiculaire à la rivière). Sur la même rive que A, il place un point C tel que AC = 20 m et AC perpendiculaire à AB. Il place ensuite un point D sur le prolongement de [CA] au-delà de A tel que AD = 5 m. Depuis D, il vise B et marque le point E où la droite (DB) coupe la droite passant par C, perpendiculaire à (AC). Sachant que CE = 35 m, calculer la largeur AB de la rivière en mètres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7","7 m","7 mètres"]}',
  'Plaçons les points : A et C sont sur la même rive, AC = 20 m et AC ⊥ AB. D est sur le prolongement de CA au-delà de A, avec AD = 5 m, donc DC = DA + AC = 25 m (D, A, C sont alignés). La droite (DB) coupe la perpendiculaire à (AC) passant par C au point E, avec CE = 35 m. Les droites (AB) et (CE) sont toutes deux perpendiculaires à (AC), donc (AB) // (CE). Dans le triangle DCE (avec la sécante passant par D, B, E), les droites (AB) et (CE) sont parallèles. Par le théorème de Thalès : DA/DC = AB/CE. Soit 5/25 = AB/35, d''où AB = 35 × 5/25 = 35/5 = 7 m. La largeur de la rivière est de 7 m. Ce type de problème d''arpentage est un grand classique du CRPE : on utilise Thalès pour mesurer une distance inaccessible en créant une configuration de droites parallèles coupées par des sécantes.',
  'Inverser les rapports : prendre DC/DA = 25/5 = 5 et calculer AB = 35 × 5 = 175 m (résultat absurde). Ou bien prendre AC au lieu de DC dans le rapport. Il faut bien identifier DA et DC comme les segments sur la même droite passant par D.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

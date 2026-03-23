-- Série : Cercles et disques — Propriétés et calculs
-- 7 questions, Intermédiaire, free
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)

-- Q1 — AMORCE — QCM — Vocabulaire du cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'qcm',
  'Un cercle a un diamètre de 14 cm. Quel est son rayon ?',
  NULL,
  '[{"id":"a","label":"7 cm"},{"id":"b","label":"14 cm"},{"id":"c","label":"28 cm"},{"id":"d","label":"44 cm"}]',
  '{"mode":"single","value":"a"}',
  'Le rayon est la moitié du diamètre : r = d/2 = 14/2 = 7 cm. Le diamètre relie deux points du cercle en passant par le centre ; le rayon relie le centre à un point du cercle. Autres éléments du vocabulaire du cercle : la corde (segment reliant deux points du cercle, le diamètre étant la plus grande corde), l''arc (portion du cercle entre deux points), le secteur (portion du disque délimitée par deux rayons). Au CRPE, la confusion rayon/diamètre est la source d''erreur n°1 dans les calculs de périmètre et d''aire du cercle.',
  'Confondre rayon et diamètre (donner 14 cm). Le rayon est TOUJOURS la moitié du diamètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Périmètre du cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'reponse_courte',
  'Calculez le périmètre d''un cercle de rayon 10 cm. (Prendre π ≈ 3,14. Répondre en cm.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["62,8 cm","62,8","62.8","62,8cm","62.8 cm","62,80 cm"]}'  ,
  'Périmètre = 2πr = 2 × 3,14 × 10 = 62,8 cm. On peut aussi utiliser la formule P = πd avec d = 2r = 20 cm : P = 3,14 × 20 = 62,8 cm. Valeur exacte : P = 20π cm. Le périmètre du cercle est la longueur de la ligne courbe qui le constitue. Historiquement, π est défini comme le rapport périmètre/diamètre de tout cercle : π = P/d, d''où P = πd = 2πr. Les premières décimales de π : 3,14159265... Au CRPE, on utilise généralement π ≈ 3,14 sauf indication contraire.',
  'Utiliser πr au lieu de 2πr (oublier le facteur 2), ce qui donnerait 31,4 cm. Ou confondre périmètre et aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Aire du disque
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'reponse_courte',
  'Un disque a un diamètre de 12 cm. Calculez son aire. (Prendre π ≈ 3,14. Arrondir au dixième.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["113,04 cm²","113,04","113.04","113 cm²","113,0 cm²","113,04cm²"]}'  ,
  'Attention : le diamètre est 12 cm, donc le rayon = 12/2 = 6 cm. Aire = πr² = 3,14 × 6² = 3,14 × 36 = 113,04 cm². Erreur fréquente : utiliser le diamètre dans la formule au lieu du rayon : πd² = 3,14 × 144 = 452,16 cm² (4 fois trop grand). La formule de l''aire du disque est πr² (PAS πd²). Si on confond rayon et diamètre, l''aire est multipliée par 4 car (2r)² = 4r². C''est la source d''erreur la plus courante au CRPE.',
  'Utiliser le diamètre (12) au lieu du rayon (6) dans la formule πr², ce qui donne π × 144 = 452,16 cm² (4 fois trop).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Longueur d'un arc de cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'qcm',
  'Un arc de cercle de rayon 9 cm correspond à un angle au centre de 60°. Quelle est la longueur de cet arc ? (Prendre π ≈ 3,14.)',
  NULL,
  '[{"id":"a","label":"9,42 cm"},{"id":"b","label":"56,52 cm"},{"id":"c","label":"3,14 cm"},{"id":"d","label":"18,84 cm"}]',
  '{"mode":"single","value":"a"}',
  'L''arc de 60° représente 60/360 = 1/6 du cercle complet. Périmètre complet = 2πr = 2 × 3,14 × 9 = 56,52 cm. Longueur de l''arc = 56,52 / 6 = 9,42 cm. Formule générale : longueur d''arc = (angle/360) × 2πr. Ici : (60/360) × 2 × 3,14 × 9 = (1/6) × 56,52 = 9,42 cm. Le distracteur B (56,52) est le périmètre complet (oubli de la fraction 1/6). Le distracteur D (18,84) est le double de la bonne réponse (erreur de calcul).',
  'Oublier de prendre la fraction correspondant à l''angle (donner le périmètre complet au lieu de l''arc). L''arc n''est qu''une PORTION du cercle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Rapport périmètre/diamètre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : si on double le rayon d''un cercle, son aire est doublée.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}',
  'FAUX. Si le rayon passe de r à 2r, l''aire passe de πr² à π(2r)² = 4πr². L''aire est multipliée par 4, pas par 2. C''est la règle de l''agrandissement : les aires sont multipliées par k² quand les longueurs sont multipliées par k. Ici k = 2, donc k² = 4. En revanche, le PÉRIMÈTRE est bien doublé : il passe de 2πr à 2π(2r) = 4πr, soit ×2. Récapitulatif : longueurs ×k → périmètres ×k, aires ×k², volumes ×k³. Cette propriété revient constamment au CRPE dans les problèmes d''agrandissement et d''échelle.',
  'Confondre l''effet sur les longueurs (×2) avec l''effet sur les aires (×4). Doubler les dimensions quadruple les aires.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Aire d'une couronne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'reponse_courte',
  'Une couronne est délimitée par deux cercles concentriques de rayons 5 cm et 8 cm. Quelle est l''aire de cette couronne ? (Prendre π ≈ 3,14. Arrondir au dixième.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["122,46 cm²","122,46","122.46","122,5 cm²","122,5","122.5","122,46cm²"]}'  ,
  'Aire de la couronne = aire du grand disque − aire du petit disque = π × 8² − π × 5² = π(64 − 25) = 39π = 39 × 3,14 = 122,46 cm². On factorise π pour simplifier le calcul : on n''a qu''une multiplication au lieu de deux. Vérification : grand disque = 3,14 × 64 = 200,96 cm². Petit disque = 3,14 × 25 = 78,50 cm². Différence = 200,96 − 78,50 = 122,46 cm² ✓. Ce type de calcul d''aire par différence est fréquent au CRPE (couronne, chemin autour d''une piscine, etc.).',
  'Soustraire les rayons (8 − 5 = 3) puis calculer π × 3² = 28,26 cm² (faux). On soustrait les AIRES, pas les rayons. π(R² − r²) ≠ π(R − r)².',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Problème concret avec cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'qcm',
  'Une roue de vélo a un diamètre de 70 cm. Combien de tours complets effectue-t-elle pour parcourir 1 km ? (Prendre π ≈ 3,14. Arrondir à l''unité.)',
  NULL,
  '[{"id":"a","label":"455 tours"},{"id":"b","label":"910 tours"},{"id":"c","label":"227 tours"},{"id":"d","label":"1 429 tours"}]',
  '{"mode":"single","value":"a"}',
  'Un tour = périmètre de la roue = πd = 3,14 × 70 = 219,8 cm ≈ 2,198 m. Distance à parcourir : 1 km = 1 000 m. Nombre de tours = 1 000 / 2,198 ≈ 455 tours. Ce problème lie le périmètre du cercle à une situation concrète de distance parcourue. Chaque tour de roue fait avancer le vélo d''exactement un périmètre. Le distracteur B (910) correspond à l''erreur d''utiliser le rayon au lieu du diamètre dans πd (on obtiendrait P = πr = 109,9 cm, soit le double de tours).',
  'Confondre rayon et diamètre, ce qui doublerait le nombre de tours. Le périmètre de la roue = π × DIAMÈTRE (pas π × rayon).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Seed: Quadrilatères — Propriétés et démonstrations
-- Series: math_quadrilateres_demonstrations (7 exercices)
-- Progression: Q1-Q2 Amorce · Q3-Q5 Consolidation · Q6-Q7 Approfondissement

-- ============================================================
-- Q1 — AMORCE — QCM — Hiérarchie des quadrilatères
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations', 'Intermediaire', 'qcm',
  'Parmi les affirmations suivantes concernant la hiérarchie des quadrilatères, laquelle est VRAIE ?',
  NULL,
  '[{"id":"a","label":"Tout rectangle est un losange"},{"id":"b","label":"Tout carré est un rectangle"},{"id":"c","label":"Tout losange est un carré"},{"id":"d","label":"Tout parallélogramme est un rectangle"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La hiérarchie des quadrilatères remarquables s''organise par **inclusion** : le carré est un cas particulier du rectangle (4 angles droits) ET du losange (4 côtés égaux). Le rectangle est un cas particulier du parallélogramme (côtés opposés parallèles deux à deux). Ainsi, **tout carré est un rectangle** car il possède 4 angles droits et des côtés opposés égaux. En revanche, un rectangle n''est pas nécessairement un losange (ses 4 côtés ne sont pas forcément égaux), un losange n''est pas nécessairement un carré (il n''a pas forcément d''angles droits), et un parallélogramme n''est pas nécessairement un rectangle (il n''a pas forcément d''angles droits).',
  'Confondre le sens de l''inclusion : penser que « tout rectangle est un carré » ou que « tout losange est un carré ». L''inclusion fonctionne du particulier vers le général, pas l''inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q2 — AMORCE — Vrai/Faux — Losange vs carré
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations', 'Intermediaire', 'vrai_faux',
  'Un quadrilatère qui possède quatre côtés de même longueur est nécessairement un carré.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est **faux**. Un quadrilatère ayant quatre côtés de même longueur est un **losange** (par définition). Or, un losange n''est un carré que s''il possède **en plus** un angle droit (ce qui entraîne alors quatre angles droits). Un losange dont les angles mesurent par exemple 60° et 120° a bien quatre côtés égaux sans être un carré. La caractérisation du carré nécessite **deux conditions** : quatre côtés égaux ET un angle droit (ou, de manière équivalente : c''est un rectangle ET un losange). Cette distinction est fondamentale dans l''enseignement de la géométrie au cycle 3 (programmes Éduscol).',
  'Associer systématiquement « 4 côtés égaux » au carré en oubliant le losange. C''est une confusion fréquente chez les élèves, qui ne retiennent qu''une propriété au lieu de la caractérisation complète.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q3 — CONSOLIDATION — QCM — Diagonales perpendiculaires et se coupant en leur milieu
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations', 'Intermediaire', 'qcm',
  'Le quadrilatère ABCD a des diagonales qui sont perpendiculaires et qui se coupent en leur milieu. Quelle est la nature exacte de ABCD ?',
  NULL,
  '[{"id":"a","label":"ABCD est un carré"},{"id":"b","label":"ABCD est un losange"},{"id":"c","label":"ABCD est un rectangle"},{"id":"d","label":"ABCD est un cerf-volant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un quadrilatère dont les diagonales **se coupent en leur milieu** est un **parallélogramme** (c''est une caractérisation). Si, de plus, ces diagonales sont **perpendiculaires**, alors ce parallélogramme est un **losange**. En effet, dans un parallélogramme, les diagonales perpendiculaires entraînent l''égalité des quatre côtés (par le théorème de Pythagore appliqué aux quatre triangles rectangles formés). On ne peut pas conclure que c''est un carré car rien n''indique que les diagonales sont de même longueur ou qu''il y a un angle droit. Un cerf-volant a des diagonales perpendiculaires, mais elles ne se coupent pas nécessairement toutes deux en leur milieu (une seule est axe de symétrie).',
  'Conclure trop vite que c''est un carré en ajoutant mentalement la propriété « diagonales de même longueur » qui n''est pas donnée. Ou confondre avec le cerf-volant en oubliant que les deux diagonales se coupent en leur milieu.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q4 — CONSOLIDATION — Réponse courte — Démonstration parallélogramme → rectangle
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations', 'Intermediaire', 'reponse_courte',
  'Un parallélogramme ABCD possède un angle droit en A. Démontrez que ABCD est un rectangle en expliquant pourquoi ses quatre angles sont droits. Rédigez l''argument clé en une ou deux phrases.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Dans un parallélogramme les angles opposés sont égaux donc l''angle en C est aussi droit et les angles consécutifs sont supplémentaires donc les angles en B et D valent aussi 90 degrés","les angles opposés sont égaux donc C est droit et les angles consécutifs sont supplémentaires donc B et D sont droits","angles opposés égaux et angles consécutifs supplémentaires","opposite angles equal consecutive angles supplementary"]}'::jsonb,
  'Dans un parallélogramme, les **angles opposés sont égaux** : donc si l''angle en A vaut 90°, l''angle en C (opposé à A) vaut aussi 90°. Par ailleurs, les **angles consécutifs sont supplémentaires** (leur somme vaut 180°) : donc l''angle en B = 180° − 90° = 90°, et de même l''angle en D = 90°. Les quatre angles étant droits, ABCD est un **rectangle** par définition. Cette démonstration repose sur deux propriétés fondamentales du parallélogramme : l''égalité des angles opposés et la supplémentarité des angles consécutifs (conséquences directes du parallélisme des côtés opposés).',
  'Se contenter de dire « les angles opposés sont égaux » sans traiter les angles consécutifs B et D, ou affirmer le résultat sans justification en invoquant seulement l''intuition visuelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q5 — CONSOLIDATION — QCM — Analyse d''erreur sur les diagonales
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations', 'Intermediaire', 'qcm',
  'Un élève affirme : « ABCD est un rectangle car ses diagonales [AC] et [BD] sont de même longueur. » Pourquoi ce raisonnement est-il insuffisant ?',
  NULL,
  '[{"id":"a","label":"Les diagonales d''un rectangle ne sont pas nécessairement de même longueur"},{"id":"b","label":"Il faudrait aussi montrer que les diagonales se coupent en leur milieu pour prouver que c''est un parallélogramme, puis conclure"},{"id":"c","label":"Il faudrait vérifier que les diagonales sont perpendiculaires"},{"id":"d","label":"L''égalité des diagonales suffit, l''élève a raison"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Avoir des diagonales de même longueur est une **condition nécessaire** pour être un rectangle, mais elle n''est **pas suffisante** à elle seule. Un quadrilatère quelconque (par exemple un trapèze isocèle) peut avoir des diagonales de même longueur sans être un rectangle. Pour conclure, il faut montrer que les diagonales **se coupent en leur milieu** (ce qui prouve que c''est un parallélogramme), puis que ce parallélogramme a des diagonales de même longueur (ce qui caractérise le rectangle parmi les parallélogrammes). Autrement dit, la caractérisation complète est : « Un parallélogramme dont les diagonales sont de même longueur est un rectangle. » Il faut d''abord établir la nature de parallélogramme.',
  'Penser que l''égalité des diagonales suffit à elle seule (oublier qu''il faut d''abord être un parallélogramme), ou penser à tort qu''il faut vérifier la perpendicularité (qui caractérise le losange, pas le rectangle).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q6 — APPROFONDISSEMENT — Réponse courte — Nature d''un quadrilatère par coordonnées
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations', 'Intermediaire', 'reponse_courte',
  'Dans un repère orthonormé, on considère les points A(0 ; 0), B(4 ; 0), C(5 ; 3) et D(1 ; 3). Déterminez la nature exacte du quadrilatère ABCD en justifiant votre réponse par le calcul.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["parallélogramme","parallelogramme","un parallélogramme","ABCD est un parallélogramme","c''est un parallélogramme"]}'::jsonb,
  'Calculons les longueurs des côtés et les vecteurs. **Vecteur AB** = (4 ; 0) et **vecteur DC** = (5−1 ; 3−3) = (4 ; 0) : AB et DC sont égaux, donc [AB] ∥ [DC] et AB = DC. **Vecteur AD** = (1 ; 3) et **vecteur BC** = (5−4 ; 3−0) = (1 ; 3) : AD et BC sont égaux, donc [AD] ∥ [BC] et AD = BC. Les côtés opposés étant parallèles et de même longueur, **ABCD est un parallélogramme**. Vérifions s''il est plus particulier : AB = 4 et AD = √(1² + 3²) = √10 ≈ 3,16. Les côtés consécutifs ne sont pas égaux, donc ce n''est pas un losange (ni un carré). Les diagonales : AC = √(25 + 9) = √34 et BD = √(9 + 9) = √18. Elles ne sont pas égales, donc ce n''est pas un rectangle. **ABCD est un parallélogramme** (sans propriété supplémentaire).',
  'Conclure hâtivement que c''est un rectangle parce que les ordonnées de C et D sont égales (« côté horizontal en haut »), sans vérifier les angles ou les diagonales. Ou oublier de vérifier si le parallélogramme est un cas particulier.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q7 — APPROFONDISSEMENT — QCM — Caractérisation minimale du carré
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations', 'Intermediaire', 'qcm',
  'Quel ensemble minimal de propriétés est suffisant pour démontrer qu''un quadrilatère ABCD est un carré ?',
  NULL,
  '[{"id":"a","label":"Les diagonales se coupent en leur milieu, sont perpendiculaires et de même longueur"},{"id":"b","label":"Les quatre côtés sont de même longueur et les diagonales sont de même longueur"},{"id":"c","label":"Les côtés opposés sont parallèles et les diagonales sont perpendiculaires"},{"id":"d","label":"Les quatre angles sont droits et les diagonales sont perpendiculaires"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Analysons chaque proposition. **(a) CORRECT** : les diagonales se coupent en leur milieu → c''est un **parallélogramme**. Elles sont perpendiculaires → c''est un **losange**. Elles sont de même longueur → c''est un **rectangle**. Un quadrilatère qui est à la fois losange et rectangle est un **carré**. Ces trois propriétés constituent une caractérisation minimale et suffisante. **(b)** : quatre côtés égaux → losange, et diagonales égales → dans un losange, cela implique un carré. Cela fonctionne aussi, MAIS cela suppose déjà implicitement que c''est un parallélogramme (la preuve que 4 côtés égaux ⇒ parallélogramme nécessite un argument supplémentaire). **(c)** : côtés opposés parallèles + diagonales perpendiculaires → parallélogramme + losange = losange, mais pas nécessairement carré (il manque l''information sur les angles ou l''égalité des diagonales). **(d)** : quatre angles droits + diagonales perpendiculaires → rectangle + diagonales perpendiculaires. Dans un rectangle, les diagonales perpendiculaires impliquent que c''est un carré. C''est correct mais moins « minimal » car « quatre angles droits » encode déjà plus d''information que nécessaire.',
  'Choisir l''option (c) en pensant que parallélogramme + diagonales perpendiculaires suffit pour obtenir un carré, alors que cela ne donne qu''un losange. Ou choisir (d) sans voir que (a) est plus minimal.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Série 10 : Quadrilatères — Propriétés et démonstrations
-- 7 questions, Intermédiaire, premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — QCM — Hiérarchie des quadrilatères
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0100000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'qcm',
  'Parmi les affirmations suivantes, laquelle est VRAIE ?',
  NULL,
  '[{"id":"a","label":"Tout rectangle est un losange"},{"id":"b","label":"Tout losange est un parallélogramme"},{"id":"c","label":"Tout parallélogramme est un rectangle"},{"id":"d","label":"Tout trapèze est un parallélogramme"}]',
  '{"mode":"single_choice","value":"b"}',
  'Tout losange est un parallélogramme. En effet, un losange a ses côtés opposés parallèles (propriété héritée) et ses 4 côtés de même longueur (propriété spécifique). La hiérarchie complète : quadrilatère → trapèze → parallélogramme → {rectangle, losange} → carré. (A) est faux : un rectangle n''a pas nécessairement 4 côtés égaux. (C) est faux : un parallélogramme n''a pas nécessairement 4 angles droits. (D) est faux : un trapèze n''a qu''UNE paire de côtés parallèles (un parallélogramme en a deux).',
  'Mal connaître la hiérarchie des quadrilatères. Au CRPE, il faut maîtriser les relations d''inclusion : tout carré est un losange ET un rectangle, tout losange est un parallélogramme, etc.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Diagonales du losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0100000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : les diagonales d''un losange sont de même longueur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. Les diagonales d''un losange sont PERPENDICULAIRES et se coupent en leur milieu, mais elles ne sont PAS nécessairement de même longueur. Contre-exemple : un losange avec des angles de 60° et 120° a une petite diagonale et une grande diagonale de longueurs différentes. C''est le RECTANGLE qui a des diagonales de même longueur. Le CARRÉ cumule les deux propriétés : diagonales de même longueur (car rectangle) ET perpendiculaires (car losange). Tableau récapitulatif des diagonales : Parallélogramme → se coupent en leur milieu. Losange → + perpendiculaires. Rectangle → + de même longueur. Carré → les trois à la fois.',
  'Confondre les propriétés des diagonales du rectangle et du losange. Le losange a des diagonales perpendiculaires, le rectangle a des diagonales de même longueur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Identifier un quadrilatère à partir de ses propriétés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0100000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'qcm',
  'Un quadrilatère ABCD a ses diagonales qui se coupent en leur milieu et qui sont de même longueur, mais qui ne sont pas perpendiculaires. Quelle est sa nature la plus précise ?',
  NULL,
  '[{"id":"a","label":"Parallélogramme"},{"id":"b","label":"Rectangle"},{"id":"c","label":"Losange"},{"id":"d","label":"Carré"}]',
  '{"mode":"single_choice","value":"b"}',
  'Diagonales qui se coupent en leur milieu → c''est au moins un parallélogramme. Diagonales de même longueur → c''est un rectangle (caractérisation). Diagonales NON perpendiculaires → ce n''est ni un losange, ni un carré. La nature la plus précise est donc : rectangle (qui n''est pas un carré). Caractérisations par les diagonales : si elles se coupent en leur milieu → parallélogramme. + même longueur → rectangle. + perpendiculaires → losange. + même longueur ET perpendiculaires → carré.',
  'Conclure simplement « parallélogramme » en oubliant que la propriété supplémentaire « diagonales de même longueur » permet de préciser « rectangle ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Calcul dans un losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0100000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'reponse_courte',
  'Un losange ABCD a des diagonales AC = 10 cm et BD = 6 cm. Calculez son aire. (Répondez en cm².)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30 cm²","30","30cm²","30 cm2","30cm2"]}',
  'L''aire d''un losange se calcule avec la formule : Aire = (d₁ × d₂) / 2, où d₁ et d₂ sont les longueurs des diagonales. Aire = (10 × 6) / 2 = 60/2 = 30 cm². Justification de la formule : les diagonales d''un losange sont perpendiculaires et se coupent en leur milieu. Elles découpent le losange en 4 triangles rectangles identiques. Chaque triangle a pour cathètes d₁/2 = 5 et d₂/2 = 3. Aire d''un triangle = (5 × 3)/2 = 7,5 cm². Aire totale = 4 × 7,5 = 30 cm². On peut aussi vérifier avec Pythagore : le côté du losange = √(5² + 3²) = √34 ≈ 5,83 cm.',
  'Utiliser la formule de l''aire du rectangle (d₁ × d₂ = 60 cm²) au lieu de celle du losange (d₁ × d₂ / 2 = 30 cm²). Ne pas diviser par 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Propriété suffisante pour un carré
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0100000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'qcm',
  'On sait qu''un quadrilatère ABCD est un parallélogramme. Quelle propriété SUPPLÉMENTAIRE suffit à prouver que c''est un carré ?',
  NULL,
  '[{"id":"a","label":"Ses diagonales sont perpendiculaires"},{"id":"b","label":"Ses diagonales sont de même longueur"},{"id":"c","label":"Ses diagonales sont perpendiculaires ET de même longueur"},{"id":"d","label":"Il a un angle droit"}]',
  '{"mode":"single_choice","value":"c"}',
  'Un parallélogramme dont les diagonales sont perpendiculaires est un losange (pas forcément un carré). Un parallélogramme dont les diagonales sont de même longueur est un rectangle (pas forcément un carré). Un parallélogramme dont les diagonales sont perpendiculaires ET de même longueur est un carré (c''est à la fois un losange et un rectangle). La réponse D (un angle droit) fait du parallélogramme un rectangle, pas un carré. Le carré est à l''intersection du rectangle et du losange : il faut cumuler les propriétés des deux.',
  'Penser qu''une seule propriété suffit (perpendiculaires OU même longueur) alors qu''il faut les deux pour obtenir un carré à partir d''un parallélogramme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Démonstration d'une nature de quadrilatère
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0100000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'reponse_courte',
  'ABCD est un parallélogramme. On sait que l''angle A mesure 90°. Quelle est la nature exacte de ABCD ? (Donnez le nom le plus précis possible.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["rectangle","un rectangle","Rectangle"]}',
  'Dans un parallélogramme, les angles consécutifs sont supplémentaires (leur somme vaut 180°) et les angles opposés sont égaux. Si l''angle A = 90°, alors : angle B = 180° − 90° = 90° (angles consécutifs supplémentaires), angle C = angle A = 90° (angles opposés égaux), angle D = angle B = 90°. Les quatre angles sont droits : ABCD est un rectangle. On ne peut pas conclure « carré » car rien ne nous dit que les côtés sont tous égaux. Le rectangle est la réponse la plus précise avec les informations données.',
  'Conclure « carré » alors qu''on sait seulement que c''est un parallélogramme à angles droits (= rectangle). Pour conclure carré, il faudrait en plus savoir que deux côtés consécutifs sont égaux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Question de synthèse sur les quadrilatères
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0100000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'qcm',
  'ABCD est un quadrilatère dont les milieux des côtés forment un parallélogramme EFGH. Que peut-on dire de ABCD ?',
  NULL,
  '[{"id":"a","label":"ABCD est nécessairement un parallélogramme"},{"id":"b","label":"ABCD est nécessairement un rectangle"},{"id":"c","label":"ABCD peut être un quadrilatère quelconque : les milieux des côtés de tout quadrilatère forment toujours un parallélogramme"},{"id":"d","label":"ABCD est nécessairement un losange"}]',
  '{"mode":"single_choice","value":"c"}',
  'C''est le théorème de Varignon : les milieux des côtés de TOUT quadrilatère (même non convexe) forment un parallélogramme. Ce résultat s''appelle le parallélogramme de Varignon. Démonstration (esquisse) : dans le triangle ABD, le segment reliant les milieux de AB et AD est parallèle à BD et en mesure la moitié (théorème des milieux). De même, dans le triangle CBD, le segment reliant les milieux de CB et CD est parallèle à BD. Ces deux segments sont donc parallèles entre eux, et de même longueur. Le quadrilatère EFGH a ses côtés opposés parallèles et égaux : c''est un parallélogramme. Ce théorème est un classique du CRPE.',
  'Croire que seuls les parallélogrammes ont cette propriété. En réalité, c''est une propriété universelle de tous les quadrilatères (théorème de Varignon).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

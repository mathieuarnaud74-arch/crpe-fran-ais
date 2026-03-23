-- Seed: Droites parallèles et perpendiculaires — Propriétés (7 exercices)
-- Subdomain: geometrie | Level: Facile | Access: free
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — QCM — Reconnaître des droites parallèles et perpendiculaires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Facile',
  'qcm',
  'Deux droites (d₁) et (d₂) sont contenues dans un même plan. Elles ne se coupent en aucun point. Quelle est leur position relative ?',
  NULL,
  '[{"id":"a","label":"Sécantes"},{"id":"b","label":"Perpendiculaires"},{"id":"c","label":"Parallèles"},{"id":"d","label":"Confondues"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Deux droites coplanaires qui n''ont aucun point d''intersection sont parallèles. Si elles avaient un point commun, elles seraient sécantes. Si elles avaient tous leurs points en commun, elles seraient confondues. Les droites perpendiculaires sont un cas particulier de droites sécantes (angle droit). Au CRPE, il est essentiel de maîtriser le vocabulaire des positions relatives de deux droites dans le plan : parallèles (aucun point commun), sécantes (un point commun), confondues (tous les points communs).',
  'Confondre parallèles et confondues. Deux droites confondues ont une infinité de points communs, tandis que deux droites parallèles (strictement) n''en ont aucun.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Propriété fondamentale perpendiculaire-parallèle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : si deux droites sont perpendiculaires à une même troisième droite, alors elles sont parallèles entre elles.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Cette propriété est fondamentale en géométrie plane : si (d₁) ⊥ (d₃) et (d₂) ⊥ (d₃), alors (d₁) // (d₂). En effet, les deux droites forment chacune un angle de 90° avec la troisième, donc elles ont la même « direction » et ne peuvent pas se couper. Attention : cette propriété n''est valable que dans le plan. Dans l''espace, deux droites perpendiculaires à une même droite ne sont pas nécessairement parallèles.',
  'Penser que cette propriété est fausse en confondant avec le cas de l''espace. Dans le plan (contexte habituel du CRPE), la propriété est toujours vraie.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Angles alternes-internes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Facile',
  'reponse_courte',
  'Les droites (d₁) et (d₂) sont parallèles, coupées par une sécante (Δ). Un angle alterne-interne formé du côté de (d₁) mesure 65°. Combien mesure l''angle alterne-interne correspondant du côté de (d₂) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["65°","65","65 °","65 degrés"]}'::jsonb,
  'Lorsque deux droites parallèles sont coupées par une sécante, les angles alternes-internes sont égaux. Puisque (d₁) // (d₂) et que l''angle alterne-interne côté (d₁) mesure 65°, l''angle alterne-interne côté (d₂) mesure également 65°. Rappel : les angles alternes-internes sont situés de part et d''autre de la sécante, entre les deux parallèles. Cette propriété est réciproque : si les angles alternes-internes sont égaux, alors les droites sont parallèles.',
  'Calculer le supplément (180° − 65° = 115°) en confondant avec les angles co-internes (ou angles intérieurs du même côté), qui eux sont supplémentaires quand les droites sont parallèles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Angles correspondants
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Facile',
  'qcm',
  'Deux droites parallèles (d₁) et (d₂) sont coupées par une sécante (Δ). L''angle formé entre (Δ) et (d₁) du côté supérieur gauche mesure 120°. Que mesure l''angle correspondant formé entre (Δ) et (d₂), situé dans la même position ?',
  NULL,
  '[{"id":"a","label":"60°"},{"id":"b","label":"120°"},{"id":"c","label":"180°"},{"id":"d","label":"On ne peut pas savoir"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les angles correspondants sont égaux lorsque deux droites parallèles sont coupées par une sécante. Deux angles sont dits correspondants s''ils sont situés du même côté de la sécante et dans la même position par rapport à chaque droite parallèle (tous deux au-dessus ou tous deux en-dessous de leur droite respective). Ici, l''angle correspondant mesure donc également 120°. Cette propriété, avec celle des alternes-internes, est au programme du cycle 3 et du CRPE.',
  'Répondre 60° en calculant le supplément au lieu de reconnaître que les angles correspondants sont égaux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Transitivité du parallélisme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : si (d₁) est perpendiculaire à (d₂) et (d₂) est perpendiculaire à (d₃), alors (d₁) est perpendiculaire à (d₃).',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Si (d₁) ⊥ (d₂) et (d₂) ⊥ (d₃), alors (d₁) est parallèle à (d₃) (et non perpendiculaire). En effet, (d₁) et (d₃) forment toutes deux un angle de 90° avec (d₂), elles ont donc la même direction. C''est la propriété : « si deux droites sont perpendiculaires à une même troisième, alors elles sont parallèles entre elles ». La perpendicularité n''est pas transitive, contrairement au parallélisme qui l''est : si (d₁) // (d₂) et (d₂) // (d₃), alors (d₁) // (d₃).',
  'Croire que la perpendicularité est transitive comme le parallélisme. La perpendicularité « rebondit » : ⊥ puis ⊥ donne //, alors que // puis // donne //.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Calcul d'angle avec droites parallèles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Facile',
  'reponse_courte',
  'Les droites (d₁) et (d₂) sont parallèles. Une sécante (Δ) coupe (d₁) en A et (d₂) en B. L''angle entre (Δ) et (d₁) du côté droit de (Δ), au-dessus de (d₁), mesure 72°. Combien mesure l''angle entre (Δ) et (d₂) du côté gauche de (Δ), en dessous de (d₂) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["72°","72","72 °","72 degrés"]}'::jsonb,
  'L''angle demandé est l''angle alterne-interne de l''angle donné. Plus précisément : l''angle de 72° est situé à droite de (Δ) au-dessus de (d₁), et l''angle cherché est situé à gauche de (Δ) en dessous de (d₂). Ces deux angles sont de part et d''autre de la sécante, entre les deux parallèles : ce sont des angles alternes-internes. Comme (d₁) // (d₂), ils sont égaux. L''angle cherché mesure donc 72°. On aurait aussi pu raisonner ainsi : l''angle à droite au-dessus de (d₁) est aussi égal par correspondance à l''angle à droite au-dessus de (d₂), qui est lui-même opposé par le sommet à l''angle cherché.',
  'Calculer 180° − 72° = 108° en pensant que les angles sont supplémentaires, alors qu''ils sont alternes-internes (donc égaux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Application concrète : tracé au sol
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Facile',
  'qcm',
  'Dans une cour d''école, on trace une ligne (L₁) au sol. On trace ensuite une ligne (L₂) perpendiculaire à (L₁), puis une ligne (L₃) perpendiculaire à (L₂). Enfin, on trace une ligne (L₄) parallèle à (L₃). Quelle est la position de (L₄) par rapport à (L₁) ?',
  NULL,
  '[{"id":"a","label":"(L₄) est perpendiculaire à (L₁)"},{"id":"b","label":"(L₄) est parallèle à (L₁)"},{"id":"c","label":"(L₄) est sécante à (L₁) sans être perpendiculaire"},{"id":"d","label":"On ne peut pas déterminer la position de (L₄) par rapport à (L₁)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Raisonnons étape par étape. (L₂) ⊥ (L₁) et (L₃) ⊥ (L₂) : deux droites perpendiculaires à une même droite (L₂) sont parallèles entre elles, donc (L₁) // (L₃). Ensuite, (L₄) // (L₃) et (L₁) // (L₃) : par transitivité du parallélisme, (L₄) // (L₁). Ce type de raisonnement en chaîne est très fréquent au CRPE : il faut combiner les propriétés « deux droites perpendiculaires à une même droite sont parallèles » et « si deux droites sont parallèles à une même troisième, elles sont parallèles entre elles ».',
  'Se perdre dans la chaîne de relations et conclure que (L₄) est perpendiculaire à (L₁). Il faut suivre les propriétés pas à pas : ⊥ + ⊥ donne //, puis // + // donne //.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

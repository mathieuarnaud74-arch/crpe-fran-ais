-- ============================================================
-- Série : Tangente au cercle — Propriétés (Géométrie, Difficile, Premium)
-- 7 exercices : 2 amorce · 3 consolidation · 2 approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Tangente perpendiculaire au rayon
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'qcm',
  'Soit un cercle de centre O et un point T situé sur le cercle. La droite (d) est tangente au cercle en T. Quel est l''angle formé entre le rayon [OT] et la droite (d) ?',
  NULL,
  '[{"id":"a","label":"90°"},{"id":"b","label":"60°"},{"id":"c","label":"45°"},{"id":"d","label":"Cela dépend du rayon du cercle"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Par définition, une tangente à un cercle en un point T est la droite qui touche le cercle en ce seul point. La propriété fondamentale est que la tangente en un point d''un cercle est perpendiculaire au rayon passant par ce point de tangence. L''angle entre [OT] et (d) vaut donc toujours 90°, quel que soit le rayon du cercle ou la position du point T. La réponse D est fausse car cette propriété est universelle et ne dépend pas de la taille du cercle.',
  'Penser que l''angle entre la tangente et le rayon dépend de la position du point de tangence ou du rayon du cercle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Deux tangentes depuis un point extérieur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'vrai_faux',
  'Vrai ou faux : depuis un point extérieur à un cercle, on peut tracer exactement deux tangentes au cercle, et les segments de tangente ont la même longueur.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Soit P un point extérieur au cercle de centre O, et T₁ et T₂ les deux points de tangence. Les triangles OPT₁ et OPT₂ sont rectangles en T₁ et T₂ respectivement (la tangente est perpendiculaire au rayon). Ils partagent l''hypoténuse [OP], et les rayons OT₁ = OT₂. Par le théorème de Pythagore, PT₁² = OP² − OT₁² = OP² − OT₂² = PT₂². Donc PT₁ = PT₂. Cette propriété est fondamentale en géométrie du cercle.',
  'L''élève admet qu''il y a deux tangentes mais ne sait pas justifier l''égalité des longueurs, ou pense que les tangentes n''ont pas la même longueur si le point n''est pas sur l''axe de symétrie.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Angle entre tangente et sécante
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'qcm',
  'Depuis un point P extérieur à un cercle, on trace une tangente [PT] (T point de tangence) et une sécante passant par P qui coupe le cercle en A et B. L''arc intercepté TB mesure 120° et l''arc TA mesure 40°. Quelle est la mesure de l''angle TPB ?',
  NULL,
  '[{"id":"a","label":"40°"},{"id":"b","label":"60°"},{"id":"c","label":"80°"},{"id":"d","label":"30°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''angle formé par une tangente et une sécante issues d''un même point extérieur est égal à la demi-différence des arcs interceptés. Ici, l''angle TPB = (arc TB − arc TA) / 2 = (120° − 40°) / 2 = 80° / 2 = 40°. La réponse B correspond à la moitié de l''arc TB seul (120° / 2), ce qui serait l''angle inscrit interceptant cet arc. La réponse C oublie de diviser par 2.',
  'Confondre la formule de l''angle tangente-sécante (demi-différence des arcs) avec celle de l''angle inscrit (demi-arc intercepté).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Angle inscrit et angle au centre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'reponse_courte',
  'Un angle au centre d''un cercle intercepte un arc de 130°. Quel est l''angle inscrit qui intercepte le même arc ? Donnez votre réponse en degrés.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["65","65°","65 degrés"]}'::jsonb,
  'Le théorème de l''angle inscrit établit que tout angle inscrit dans un cercle est égal à la moitié de l''angle au centre qui intercepte le même arc. L''angle au centre mesure 130° (il est égal à la mesure de l''arc), donc l''angle inscrit vaut 130° / 2 = 65°. Cette relation est fondamentale : tous les angles inscrits interceptant un même arc ont la même mesure, quelle que soit la position du sommet sur l''arc majeur.',
  'L''élève confond angle inscrit et angle au centre, ou multiplie par 2 au lieu de diviser : il répond 260° au lieu de 65°.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Angle tangente-corde
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'vrai_faux',
  'Vrai ou faux : l''angle formé entre une tangente à un cercle en un point T et une corde [TA] issue de ce même point est égal à la moitié de l''arc intercepté TA.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''angle tangente-corde est un cas particulier important. Si la tangente en T forme un angle α avec la corde [TA], alors α = (arc TA) / 2, où l''arc TA est celui situé du côté de l''angle considéré. Cette propriété se démontre en remarquant que l''angle tangente-corde est la limite d''un angle inscrit lorsque l''un des points du cercle tend vers le point de tangence. C''est la même relation que pour l''angle inscrit.',
  'L''élève pense que l''angle tangente-corde est égal à l''arc entier (et non à sa moitié), confondant avec l''angle au centre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Puissance d''un point
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'reponse_courte',
  'Depuis un point P extérieur à un cercle, on trace une tangente [PT] de longueur 8 cm et une sécante qui coupe le cercle en A (le plus proche) et B. On sait que PA = 4 cm. Calculez PB en cm.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["16","16 cm"]}'::jsonb,
  'On utilise la puissance d''un point par rapport à un cercle. Pour un point extérieur P, la puissance est constante : PT² = PA × PB. Ici, 8² = 4 × PB, donc 64 = 4 × PB, et PB = 64 / 4 = 16 cm. La puissance d''un point est un invariant : quel que soit la sécante ou la tangente tracée depuis P, le produit (ou le carré) reste le même. Cela signifie aussi que AB = PB − PA = 16 − 4 = 12 cm.',
  'L''élève oublie la relation de puissance et tente d''appliquer Pythagore directement, ou confond PT² = PA × PB avec PT = PA × PB.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Problème concret : ligne de visée d''un satellite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'qcm',
  'Un satellite S est situé à 6 400 km d''altitude au-dessus de la surface terrestre. La Terre est modélisée par un cercle de rayon R = 6 400 km et de centre O. La ligne de visée du satellite est tangente à la Terre au point T. Quelle est la distance ST (en km) ?',
  'On donne : OS = R + altitude = 6 400 + 6 400 = 12 800 km. Le triangle OTS est rectangle en T (tangente perpendiculaire au rayon).',
  '[{"id":"a","label":"Environ 11 085 km"},{"id":"b","label":"Environ 6 400 km"},{"id":"c","label":"Environ 12 800 km"},{"id":"d","label":"Environ 8 000 km"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le triangle OTS est rectangle en T car la tangente est perpendiculaire au rayon [OT]. On a : OS = 12 800 km (rayon + altitude) et OT = 6 400 km (rayon). Par le théorème de Pythagore : ST² = OS² − OT² = 12 800² − 6 400² = 163 840 000 − 40 960 000 = 122 880 000. Donc ST = √122 880 000 ≈ 11 085 km. La réponse B confond la distance ST avec le rayon terrestre. La réponse C confond ST avec la distance OS du satellite au centre de la Terre.',
  'L''élève confond la distance du satellite à la surface (altitude) avec la distance du satellite au centre de la Terre, ou oublie que le triangle est rectangle en T et non en S.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

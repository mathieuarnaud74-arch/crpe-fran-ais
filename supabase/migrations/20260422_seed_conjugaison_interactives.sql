-- Migration: 2 séries interactives conjugaison (20 questions)
-- Série 1 : Tri — Participe présent vs adjectif verbal (tri_categories, free)
-- Série 2 : Surlignage — Les temps du récit (surlignage_propositions, premium)

-- ============================================================
-- SÉRIE 1 : Tri — Participe présent vs adjectif verbal (10 questions)
-- ============================================================

-- Q1 — Participe présent / Adjectif verbal (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Facile',
  'tri_categories',
  'Classez chaque expression selon que la forme en -ant est un participe présent ou un adjectif verbal.',
  NULL,
  '[{"id":"s1q1w1","label":"une histoire passionnante"},{"id":"s1q1w2","label":"passionnant ses lecteurs, l''auteur..."},{"id":"s1q1w3","label":"des résultats surprenants"},{"id":"s1q1w4","label":"surprenant tout le monde, il..."},{"id":"s1q1w5","label":"une couleur brillante"},{"id":"s1q1w6","label":"brillant de mille feux, le diamant..."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"}],"mapping":{"s1q1w1":"adj","s1q1w2":"pp","s1q1w3":"adj","s1q1w4":"pp","s1q1w5":"adj","s1q1w6":"pp"}}'::jsonb,
  'Le participe présent est une forme verbale invariable, souvent suivie d''un complément d''objet ou d''un complément circonstanciel. L''adjectif verbal s''accorde en genre et en nombre avec le nom qu''il qualifie. Les programmes d''Éduscol cycle 3 insistent sur cette distinction fondamentale pour la maîtrise de l''orthographe grammaticale.',
  'Confondre les deux formes quand elles sont identiques graphiquement. Le critère clé est l''accord : « une histoire passionnante » (accord = adjectif) vs « passionnant ses lecteurs » (invariable = participe).',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Participe présent / Adjectif verbal (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Facile',
  'tri_categories',
  'Classez chaque expression selon que la forme en -ant est un participe présent ou un adjectif verbal.',
  NULL,
  '[{"id":"s1q2w1","label":"une remarque blessante"},{"id":"s1q2w2","label":"blessant son camarade par ces mots..."},{"id":"s1q2w3","label":"des enfants obéissants"},{"id":"s1q2w4","label":"obéissant à leurs parents, ils..."},{"id":"s1q2w5","label":"une chaleur étouffante"},{"id":"s1q2w6","label":"étouffant un cri, elle se retourna"},{"id":"s1q2w7","label":"des paysages charmants"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"}],"mapping":{"s1q2w1":"adj","s1q2w2":"pp","s1q2w3":"adj","s1q2w4":"pp","s1q2w5":"adj","s1q2w6":"pp","s1q2w7":"adj"}}'::jsonb,
  'L''adjectif verbal qualifie un nom et s''accorde avec lui (« une remarque blessante », « des enfants obéissants »). Le participe présent, forme verbale invariable, régit un complément (« blessant son camarade », « obéissant à leurs parents »). Le référentiel Éduscol de grammaire cycle 3 place cette distinction au coeur de l''étude de la langue.',
  'Croire que la présence d''un complément suffit à identifier le participe présent. Or « des paysages charmants » a un accord visible (-s) qui confirme qu''il s''agit d''un adjectif verbal, même sans complément explicite.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Participe présent / Adjectif verbal (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Facile',
  'tri_categories',
  'Classez chaque expression selon que la forme en -ant est un participe présent ou un adjectif verbal.',
  NULL,
  '[{"id":"s1q3w1","label":"une soirée dansante"},{"id":"s1q3w2","label":"dansant sous la pluie, les enfants riaient"},{"id":"s1q3w3","label":"des eaux dormantes"},{"id":"s1q3w4","label":"dormant profondément, le chat ne bougea pas"},{"id":"s1q3w5","label":"une personne charmante"},{"id":"s1q3w6","label":"charmant l''assemblée par son discours"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"}],"mapping":{"s1q3w1":"adj","s1q3w2":"pp","s1q3w3":"adj","s1q3w4":"pp","s1q3w5":"adj","s1q3w6":"pp"}}'::jsonb,
  'On distingue le participe présent de l''adjectif verbal par la possibilité d''accord. « Des eaux dormantes » porte la marque du féminin pluriel : c''est un adjectif verbal. « Dormant profondément » reste invariable et régit un adverbe : c''est un participe présent. Les ressources Éduscol pour l''enseignement de la grammaire au cycle 3 soulignent l''importance de cette analyse morphosyntaxique.',
  'Confondre « des eaux dormantes » (adjectif, accord visible) avec un participe présent parce que « dormir » est un verbe. L''accord est le critère décisif.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Participe présent / Adjectif verbal / Gérondif (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Intermediaire',
  'tri_categories',
  'Classez chaque expression : participe présent, adjectif verbal ou gérondif.',
  NULL,
  '[{"id":"s1q4w1","label":"en marchant vers l''école"},{"id":"s1q4w2","label":"une rue commerçante"},{"id":"s1q4w3","label":"tremblant de froid, il attendait"},{"id":"s1q4w4","label":"en lisant le journal"},{"id":"s1q4w5","label":"des paroles réconfortantes"},{"id":"s1q4w6","label":"réconfortant ses amis, elle souriait"},{"id":"s1q4w7","label":"en courant très vite"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"},{"id":"gerondif","label":"Gérondif (en + -ant)"}],"mapping":{"s1q4w1":"gerondif","s1q4w2":"adj","s1q4w3":"pp","s1q4w4":"gerondif","s1q4w5":"adj","s1q4w6":"pp","s1q4w7":"gerondif"}}'::jsonb,
  'Le gérondif se forme avec la préposition « en » suivie du participe présent (« en marchant »). Il exprime la simultanéité ou la manière. Le participe présent seul (« tremblant de froid ») est une forme verbale en apposition. L''adjectif verbal (« une rue commerçante ») s''accorde avec le nom. Le programme Éduscol cycle 3 intègre progressivement ces trois formes dans l''étude du système verbal.',
  'Oublier que le gérondif est toujours précédé de « en ». Sans cette préposition, il s''agit d''un participe présent, pas d''un gérondif.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Participe présent / Adjectif verbal / Gérondif (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Intermediaire',
  'tri_categories',
  'Classez chaque expression : participe présent, adjectif verbal ou gérondif.',
  NULL,
  '[{"id":"s1q5w1","label":"en observant les étoiles"},{"id":"s1q5w2","label":"une lumière aveuglante"},{"id":"s1q5w3","label":"aveuglant les conducteurs, le soleil..."},{"id":"s1q5w4","label":"des nouvelles inquiétantes"},{"id":"s1q5w5","label":"en gravissant la montagne"},{"id":"s1q5w6","label":"inquiétant ses proches, il disparut"},{"id":"s1q5w7","label":"une voix apaisante"},{"id":"s1q5w8","label":"en chantant à tue-tête"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"},{"id":"gerondif","label":"Gérondif (en + -ant)"}],"mapping":{"s1q5w1":"gerondif","s1q5w2":"adj","s1q5w3":"pp","s1q5w4":"adj","s1q5w5":"gerondif","s1q5w6":"pp","s1q5w7":"adj","s1q5w8":"gerondif"}}'::jsonb,
  'Le gérondif (« en observant », « en gravissant », « en chantant ») est la combinaison de « en » + participe présent : il a une fonction de complément circonstanciel. Le participe présent employé seul (« aveuglant les conducteurs ») constitue une proposition participiale. L''adjectif verbal (« une lumière aveuglante ») est un adjectif à part entière. Le document d''accompagnement Éduscol « La grammaire du français » détaille ces trois emplois de la forme en -ant.',
  'Confondre participe présent et gérondif. Le gérondif comporte toujours « en » ; sans cette préposition, c''est un participe présent.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Participe présent / Adjectif verbal / Gérondif (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Intermediaire',
  'tri_categories',
  'Classez chaque expression : participe présent, adjectif verbal ou gérondif.',
  NULL,
  '[{"id":"s1q6w1","label":"des arguments convaincants"},{"id":"s1q6w2","label":"convainquant le jury, l''avocat..."},{"id":"s1q6w3","label":"en préparant le dîner"},{"id":"s1q6w4","label":"une attitude provocante"},{"id":"s1q6w5","label":"provoquant un scandale, il..."},{"id":"s1q6w6","label":"en écoutant attentivement"},{"id":"s1q6w7","label":"des couleurs chatoyantes"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"},{"id":"gerondif","label":"Gérondif (en + -ant)"}],"mapping":{"s1q6w1":"adj","s1q6w2":"pp","s1q6w3":"gerondif","s1q6w4":"adj","s1q6w5":"pp","s1q6w6":"gerondif","s1q6w7":"adj"}}'::jsonb,
  'Certains verbes changent d''orthographe entre participe présent et adjectif verbal : « convainquant » (participe, avec -qu-) vs « convaincant » (adjectif, avec -c-), « provoquant » (participe) vs « provocant » (adjectif). Cette alternance orthographique, étudiée au cycle 3 selon les préconisations Éduscol, constitue un point de vigilance majeur en orthographe grammaticale.',
  'Ignorer le changement orthographique entre participe et adjectif verbal. « Convaincant » (adjectif, -c-) et « convainquant » (participe, -qu-) ne s''écrivent pas de la même façon.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Participe présent / Adjectif verbal / Gérondif (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Intermediaire',
  'tri_categories',
  'Classez chaque expression : participe présent, adjectif verbal ou gérondif.',
  NULL,
  '[{"id":"s1q7w1","label":"en souriant à la caméra"},{"id":"s1q7w2","label":"une histoire terrifiante"},{"id":"s1q7w3","label":"terrifiant les villageois, le loup..."},{"id":"s1q7w4","label":"des résultats encourageants"},{"id":"s1q7w5","label":"en travaillant sans relâche"},{"id":"s1q7w6","label":"encourageant ses élèves, le maître..."},{"id":"s1q7w7","label":"une odeur suffocante"},{"id":"s1q7w8","label":"suffoquant dans la fumée, il..."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"},{"id":"gerondif","label":"Gérondif (en + -ant)"}],"mapping":{"s1q7w1":"gerondif","s1q7w2":"adj","s1q7w3":"pp","s1q7w4":"adj","s1q7w5":"gerondif","s1q7w6":"pp","s1q7w7":"adj","s1q7w8":"pp"}}'::jsonb,
  'La question introduit des paires minimales (« une histoire terrifiante » / « terrifiant les villageois ») pour ancrer la distinction. Notons aussi « suffocante » (adjectif, -c-) vs « suffoquant » (participe, -qu-), alternance orthographique fréquente. Les ressources Éduscol pour l''enseignement de la grammaire préconisent de travailler ces paires en contexte pour faciliter la mémorisation.',
  'Confondre « suffocante » et « suffoquant » : l''adjectif verbal s''écrit avec -c- et s''accorde, tandis que le participe présent garde le radical verbal en -qu- et reste invariable.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Paires trompeuses (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Difficile',
  'tri_categories',
  'Classez chaque expression : participe présent, adjectif verbal ou gérondif. Attention aux paires dont l''orthographe diffère.',
  NULL,
  '[{"id":"s1q8w1","label":"un comportement négligent"},{"id":"s1q8w2","label":"négligeant ses devoirs, l''élève..."},{"id":"s1q8w3","label":"une personne influente"},{"id":"s1q8w4","label":"influant sur la décision, ce facteur..."},{"id":"s1q8w5","label":"en naviguant sur Internet"},{"id":"s1q8w6","label":"un personnel navigant"},{"id":"s1q8w7","label":"des propos divergents"},{"id":"s1q8w8","label":"divergeant sur ce point, les experts..."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"},{"id":"gerondif","label":"Gérondif (en + -ant)"}],"mapping":{"s1q8w1":"adj","s1q8w2":"pp","s1q8w3":"adj","s1q8w4":"pp","s1q8w5":"gerondif","s1q8w6":"adj","s1q8w7":"adj","s1q8w8":"pp"}}'::jsonb,
  'Plusieurs verbes présentent une alternance orthographique entre participe présent et adjectif verbal : « négligeant » (participe, -ge-) / « négligent » (adjectif, -g-), « influant » (participe de « influer ») / « influent » (adjectif issu du latin). « Navigant » (adjectif dans « personnel navigant ») vs « naviguant » (participe avec -gu-). Les programmes Éduscol cycle 3 recommandent un travail explicite sur ces paires pour renforcer la vigilance orthographique.',
  'Croire que « négligent » est un participe présent car il ressemble au verbe « négliger ». C''est un adjectif verbal (ou un nom) qui a perdu le -e- du radical verbal.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Paires trompeuses (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Difficile',
  'tri_categories',
  'Classez chaque expression : participe présent, adjectif verbal ou gérondif. Attention aux formes irrégulières.',
  NULL,
  '[{"id":"s1q9w1","label":"un exercice fatigant"},{"id":"s1q9w2","label":"fatiguant les élèves, cet exercice..."},{"id":"s1q9w3","label":"en communiquant clairement"},{"id":"s1q9w4","label":"des vases communicants"},{"id":"s1q9w5","label":"un argument percutant"},{"id":"s1q9w6","label":"en fabriquant des jouets"},{"id":"s1q9w7","label":"une preuve accablante"},{"id":"s1q9w8","label":"accablant l''accusé, le témoin..."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"},{"id":"gerondif","label":"Gérondif (en + -ant)"}],"mapping":{"s1q9w1":"adj","s1q9w2":"pp","s1q9w3":"gerondif","s1q9w4":"adj","s1q9w5":"adj","s1q9w6":"gerondif","s1q9w7":"adj","s1q9w8":"pp"}}'::jsonb,
  'L''alternance « fatiguant » (participe, -gu-) / « fatigant » (adjectif, -g-) est l''une des plus fréquentes au CRPE. De même, « communiquant » (participe) / « communicant » (adjectif). Le participe présent conserve le radical du verbe conjugué tandis que l''adjectif verbal a souvent une forme simplifiée. Le document Éduscol « Grammaire du français — Terminologie » insiste sur la maîtrise de ces alternances.',
  'Écrire « *fatigant ses élèves » au lieu de « fatiguant ses élèves ». Le participe présent du verbe « fatiguer » conserve le -u- du radical verbal.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Paires trompeuses (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa200000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'tri_participe_adj_verbal',
  'Tri — Participe présent vs adjectif verbal',
  'Difficile',
  'tri_categories',
  'Classez chaque expression : participe présent, adjectif verbal ou gérondif. Niveau expert — toutes les difficultés sont réunies.',
  NULL,
  '[{"id":"s1q10w1","label":"un spectacle provoquant l''indignation"},{"id":"s1q10w2","label":"une tenue provocante"},{"id":"s1q10w3","label":"en suffoquant de chaleur"},{"id":"s1q10w4","label":"une atmosphère suffocante"},{"id":"s1q10w5","label":"un élève excellent"},{"id":"s1q10w6","label":"excellant en mathématiques, cet élève..."},{"id":"s1q10w7","label":"en précédant le cortège"},{"id":"s1q10w8","label":"la semaine précédente"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pp","label":"Participe présent (invariable)"},{"id":"adj","label":"Adjectif verbal (variable)"},{"id":"gerondif","label":"Gérondif (en + -ant)"}],"mapping":{"s1q10w1":"pp","s1q10w2":"adj","s1q10w3":"gerondif","s1q10w4":"adj","s1q10w5":"adj","s1q10w6":"pp","s1q10w7":"gerondif","s1q10w8":"adj"}}'::jsonb,
  'Cette question rassemble les cas les plus complexes : « provoquant » (participe, -qu-) / « provocant(e) » (adjectif, -c-), « suffoquant » (participe, -qu-) / « suffocant(e) » (adjectif, -c-), « excellant » (participe) / « excellent » (adjectif), « précédant » (participe) / « précédent(e) » (adjectif). Les programmes Éduscol rappellent que la maîtrise de ces alternances est un objectif central de l''orthographe grammaticale au cycle 3.',
  'Confondre « excellent » (adjectif) et « excellant » (participe présent). L''adjectif a une forme différente du participe : c''est un cas d''alternance morphologique complète.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Surlignage — Les temps du récit (10 questions)
-- ============================================================

-- Q1 — Imparfait / Passé simple (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Facile',
  'surlignage_propositions',
  'Surlignez les verbes conjugués en identifiant leur temps : imparfait ou passé simple.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"soleil"},{"id":"s3","label":"brillait"},{"id":"s4","label":"quand"},{"id":"s5","label":"un"},{"id":"s6","label":"cri"},{"id":"s7","label":"retentit"},{"id":"s8","label":"dans"},{"id":"s9","label":"la"},{"id":"s10","label":"forêt."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"imparfait","label":"Imparfait","color":"#4A6E8F"},{"id":"passe_simple","label":"Passé simple","color":"#A46849"}],"mapping":{"s3":"imparfait","s7":"passe_simple"}}'::jsonb,
  'Dans le récit au passé, l''imparfait (« brillait ») exprime l''arrière-plan, la description ou l''action en cours. Le passé simple (« retentit ») marque l''événement ponctuel de premier plan. Les programmes Éduscol cycle 3 insistent sur la compréhension de cette alternance temporelle dans la lecture des textes narratifs.',
  'Confondre « retentit » (passé simple) avec un présent de l''indicatif, car la forme est identique pour les verbes du 2e groupe au présent et au passé simple de la 3e personne du singulier.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Imparfait / Passé simple (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Facile',
  'surlignage_propositions',
  'Surlignez les verbes conjugués en identifiant leur temps : imparfait ou passé simple.',
  NULL,
  '[{"id":"s1","label":"La"},{"id":"s2","label":"pluie"},{"id":"s3","label":"tombait"},{"id":"s4","label":"depuis"},{"id":"s5","label":"le"},{"id":"s6","label":"matin"},{"id":"s7","label":"lorsque"},{"id":"s8","label":"Marie"},{"id":"s9","label":"ouvrit"},{"id":"s10","label":"la"},{"id":"s11","label":"porte."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"imparfait","label":"Imparfait","color":"#4A6E8F"},{"id":"passe_simple","label":"Passé simple","color":"#A46849"}],"mapping":{"s3":"imparfait","s9":"passe_simple"}}'::jsonb,
  '« Tombait » (imparfait) décrit un état continu, une toile de fond temporelle. « Ouvrit » (passé simple) marque l''irruption d''un événement ponctuel dans ce décor. Cette opposition imparfait/passé simple structure la narration au passé. Le référentiel Éduscol cycle 3 en fait un apprentissage prioritaire en lecture et en production d''écrits.',
  'Hésiter sur « ouvrit » : c''est bien un passé simple du 3e groupe (ouvrir → il ouvrit), et non une forme de conditionnel.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Imparfait / Passé simple (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Facile',
  'surlignage_propositions',
  'Surlignez les verbes conjugués en identifiant leur temps : imparfait ou passé simple.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"enfants"},{"id":"s3","label":"jouaient"},{"id":"s4","label":"dans"},{"id":"s5","label":"la"},{"id":"s6","label":"cour"},{"id":"s7","label":"quand"},{"id":"s8","label":"la"},{"id":"s9","label":"cloche"},{"id":"s10","label":"sonna."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"imparfait","label":"Imparfait","color":"#4A6E8F"},{"id":"passe_simple","label":"Passé simple","color":"#A46849"}],"mapping":{"s3":"imparfait","s10":"passe_simple"}}'::jsonb,
  '« Jouaient » (imparfait) installe le cadre de l''action en cours. « Sonna » (passé simple) introduit l''événement qui vient rompre cette continuité. Dans les programmes Éduscol, l''étude de l''alternance imparfait/passé simple est explicitement mentionnée comme compétence à acquérir en fin de cycle 3 pour la compréhension des récits.',
  'Ne pas identifier « sonna » comme un passé simple car les terminaisons en -a du 1er groupe peuvent être confondues avec d''autres temps.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Imparfait / Passé simple / Plus-que-parfait (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les verbes conjugués en identifiant leur temps : imparfait, passé simple ou plus-que-parfait.',
  NULL,
  '[{"id":"s1","label":"Il"},{"id":"s2","label":"avait"},{"id":"s3","label":"oublié"},{"id":"s4","label":"son"},{"id":"s5","label":"chapeau"},{"id":"s6","label":"et"},{"id":"s7","label":"la"},{"id":"s8","label":"pluie"},{"id":"s9","label":"ruisselait"},{"id":"s10","label":"sur"},{"id":"s11","label":"son"},{"id":"s12","label":"visage."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"imparfait","label":"Imparfait","color":"#4A6E8F"},{"id":"passe_simple","label":"Passé simple","color":"#A46849"},{"id":"plus_que_parfait","label":"Plus-que-parfait","color":"#6B534A"}],"mapping":{"s2":"plus_que_parfait","s3":"plus_que_parfait","s9":"imparfait"}}'::jsonb,
  'Le plus-que-parfait (« avait oublié ») exprime une action antérieure à l''arrière-plan narratif. L''auxiliaire « avait » et le participe passé « oublié » forment ensemble ce temps composé. L''imparfait (« ruisselait ») décrit l''arrière-plan descriptif. Selon les programmes Éduscol, le plus-que-parfait est étudié au cycle 3 comme temps de l''antériorité dans le récit.',
  'Ne surligner que « oublié » en oubliant l''auxiliaire « avait ». Le plus-que-parfait est un temps composé : les deux éléments (auxiliaire + participe passé) doivent être identifiés.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Imparfait / Passé simple / Plus-que-parfait (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les verbes conjugués en identifiant leur temps : imparfait, passé simple ou plus-que-parfait.',
  NULL,
  '[{"id":"s1","label":"Comme"},{"id":"s2","label":"elle"},{"id":"s3","label":"avait"},{"id":"s4","label":"longtemps"},{"id":"s5","label":"marché,"},{"id":"s6","label":"ses"},{"id":"s7","label":"pieds"},{"id":"s8","label":"étaient"},{"id":"s9","label":"douloureux"},{"id":"s10","label":"et"},{"id":"s11","label":"elle"},{"id":"s12","label":"s''assit"},{"id":"s13","label":"sur"},{"id":"s14","label":"un"},{"id":"s15","label":"banc."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"imparfait","label":"Imparfait","color":"#4A6E8F"},{"id":"passe_simple","label":"Passé simple","color":"#A46849"},{"id":"plus_que_parfait","label":"Plus-que-parfait","color":"#6B534A"}],"mapping":{"s3":"plus_que_parfait","s5":"plus_que_parfait","s8":"imparfait","s12":"passe_simple"}}'::jsonb,
  'Cette phrase combine les trois temps du récit : le plus-que-parfait (« avait marché ») pour l''antériorité, l''imparfait (« étaient ») pour l''état résultant, et le passé simple (« s''assit ») pour l''action ponctuelle. Les programmes Éduscol cycle 3 placent la compréhension de cette articulation temporelle au coeur de l''enseignement de la lecture littéraire.',
  'Ne pas identifier « étaient » comme un imparfait car il n''est pas suivi d''un participe passé ici. « Étaient douloureux » est bien un imparfait d''« être » attributif, pas un plus-que-parfait.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Imparfait / Passé simple / Plus-que-parfait (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les verbes conjugués en identifiant leur temps : imparfait, passé simple ou plus-que-parfait.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"vieux"},{"id":"s3","label":"marin"},{"id":"s4","label":"contemplait"},{"id":"s5","label":"l''horizon"},{"id":"s6","label":"où"},{"id":"s7","label":"avaient"},{"id":"s8","label":"disparu"},{"id":"s9","label":"les"},{"id":"s10","label":"voiles"},{"id":"s11","label":"puis"},{"id":"s12","label":"il"},{"id":"s13","label":"tourna"},{"id":"s14","label":"les"},{"id":"s15","label":"talons."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"imparfait","label":"Imparfait","color":"#4A6E8F"},{"id":"passe_simple","label":"Passé simple","color":"#A46849"},{"id":"plus_que_parfait","label":"Plus-que-parfait","color":"#6B534A"}],"mapping":{"s4":"imparfait","s7":"plus_que_parfait","s8":"plus_que_parfait","s13":"passe_simple"}}'::jsonb,
  '« Contemplait » (imparfait) installe la scène descriptive. « Avaient disparu » (plus-que-parfait) exprime un fait antérieur : les voiles ont disparu avant la contemplation. « Tourna » (passé simple) marque la décision et l''action ponctuelle. Les fiches Éduscol « Lire et comprendre un texte littéraire » insistent sur l''importance de repérer ces valeurs temporelles pour construire la chronologie du récit.',
  'Confondre « avaient disparu » avec un imparfait. L''auxiliaire « avaient » est bien à l''imparfait, mais l''ensemble « avaient disparu » constitue un plus-que-parfait.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Imparfait / Passé simple / Plus-que-parfait (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les verbes conjugués en identifiant leur temps : imparfait, passé simple ou plus-que-parfait.',
  NULL,
  '[{"id":"s1","label":"On"},{"id":"s2","label":"lui"},{"id":"s3","label":"avait"},{"id":"s4","label":"promis"},{"id":"s5","label":"un"},{"id":"s6","label":"cadeau"},{"id":"s7","label":"mais"},{"id":"s8","label":"rien"},{"id":"s9","label":"ne"},{"id":"s10","label":"venait"},{"id":"s11","label":"et"},{"id":"s12","label":"l''enfant"},{"id":"s13","label":"pleura."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"imparfait","label":"Imparfait","color":"#4A6E8F"},{"id":"passe_simple","label":"Passé simple","color":"#A46849"},{"id":"plus_que_parfait","label":"Plus-que-parfait","color":"#6B534A"}],"mapping":{"s3":"plus_que_parfait","s4":"plus_que_parfait","s10":"imparfait","s13":"passe_simple"}}'::jsonb,
  '« Avait promis » (plus-que-parfait) renvoie à un événement antérieur au moment de la narration. « Venait » (imparfait) décrit la situation d''attente qui dure. « Pleura » (passé simple) exprime la réaction ponctuelle de l''enfant. Les documents d''accompagnement Éduscol pour le cycle 3 précisent que ces trois temps forment le système temporel de base du récit au passé.',
  'Interpréter « venait » comme un passé simple. La terminaison -ait est la marque distinctive de l''imparfait, à ne pas confondre avec le passé simple en -a ou -it.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Premier plan / Arrière-plan / Antériorité (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les verbes selon leur fonction narrative : premier plan (action), arrière-plan (description) ou antériorité.',
  NULL,
  '[{"id":"s1","label":"La"},{"id":"s2","label":"nuit"},{"id":"s3","label":"enveloppait"},{"id":"s4","label":"le"},{"id":"s5","label":"village"},{"id":"s6","label":"que"},{"id":"s7","label":"les"},{"id":"s8","label":"habitants"},{"id":"s9","label":"avaient"},{"id":"s10","label":"déserté"},{"id":"s11","label":"depuis"},{"id":"s12","label":"longtemps"},{"id":"s13","label":"quand"},{"id":"s14","label":"une"},{"id":"s15","label":"lumière"},{"id":"s16","label":"surgit."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"premier_plan","label":"Premier plan (action)","color":"#A46849"},{"id":"arriere_plan","label":"Arrière-plan (description)","color":"#4A6E8F"},{"id":"anteriorite","label":"Antériorité","color":"#6B534A"}],"mapping":{"s3":"arriere_plan","s9":"anteriorite","s10":"anteriorite","s16":"premier_plan"}}'::jsonb,
  'La valeur narrative des temps organise le récit en plans distincts. « Enveloppait » (imparfait) plante le décor : c''est l''arrière-plan. « Avaient déserté » (plus-que-parfait) exprime un fait antérieur à la scène décrite : c''est l''antériorité. « Surgit » (passé simple) introduit l''événement de premier plan. Les ressources Éduscol pour l''enseignement de la compréhension insistent sur le repérage de ces plans narratifs.',
  'Classer « enveloppait » en premier plan parce que c''est le premier verbe de la phrase. La position dans la phrase n''indique pas le plan narratif : c''est la valeur aspectuelle du temps (duratif pour l''imparfait) qui détermine l''arrière-plan.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Premier plan / Arrière-plan / Antériorité (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les verbes selon leur fonction narrative : premier plan (action), arrière-plan (description) ou antériorité.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"chevalier"},{"id":"s3","label":"qui"},{"id":"s4","label":"avait"},{"id":"s5","label":"traversé"},{"id":"s6","label":"tant"},{"id":"s7","label":"de"},{"id":"s8","label":"contrées"},{"id":"s9","label":"portait"},{"id":"s10","label":"une"},{"id":"s11","label":"armure"},{"id":"s12","label":"ternie"},{"id":"s13","label":"et"},{"id":"s14","label":"leva"},{"id":"s15","label":"son"},{"id":"s16","label":"épée."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"premier_plan","label":"Premier plan (action)","color":"#A46849"},{"id":"arriere_plan","label":"Arrière-plan (description)","color":"#4A6E8F"},{"id":"anteriorite","label":"Antériorité","color":"#6B534A"}],"mapping":{"s4":"anteriorite","s5":"anteriorite","s9":"arriere_plan","s14":"premier_plan"}}'::jsonb,
  '« Avait traversé » (plus-que-parfait) situe les voyages du chevalier dans un passé antérieur : c''est l''antériorité. « Portait » (imparfait) décrit son apparence actuelle dans la scène : c''est l''arrière-plan descriptif. « Leva » (passé simple) marque le geste décisif : c''est le premier plan. Le document Éduscol « Écrire et rédiger » au cycle 3 recommande de faire manipuler ces trois plans pour enrichir les productions narratives des élèves.',
  'Classer « portait » en antériorité en le confondant avec un plus-que-parfait. C''est un imparfait simple qui décrit l''état présent du chevalier dans la scène, non un fait antérieur.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Premier plan / Arrière-plan / Antériorité (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f2020000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'surlignage_temps_recit',
  'Surlignage — Les temps du récit',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les verbes selon leur fonction narrative : premier plan (action), arrière-plan (description) ou antériorité.',
  NULL,
  '[{"id":"s1","label":"Personne"},{"id":"s2","label":"ne"},{"id":"s3","label":"savait"},{"id":"s4","label":"d''où"},{"id":"s5","label":"il"},{"id":"s6","label":"était"},{"id":"s7","label":"venu"},{"id":"s8","label":"mais"},{"id":"s9","label":"il"},{"id":"s10","label":"se"},{"id":"s11","label":"dressa"},{"id":"s12","label":"et"},{"id":"s13","label":"sa"},{"id":"s14","label":"voix"},{"id":"s15","label":"résonnait"},{"id":"s16","label":"étrangement."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"premier_plan","label":"Premier plan (action)","color":"#A46849"},{"id":"arriere_plan","label":"Arrière-plan (description)","color":"#4A6E8F"},{"id":"anteriorite","label":"Antériorité","color":"#6B534A"}],"mapping":{"s3":"arriere_plan","s6":"anteriorite","s7":"anteriorite","s11":"premier_plan","s15":"arriere_plan"}}'::jsonb,
  'Cette phrase mêle les trois plans de façon complexe. « Savait » (imparfait) est un arrière-plan mental (état de connaissance). « Était venu » (plus-que-parfait) renvoie à une origine antérieure et mystérieuse. « Se dressa » (passé simple) est l''action de premier plan. « Résonnait » (imparfait) décrit une qualité sonore en arrière-plan. Les programmes Éduscol soulignent que maîtriser ces articulations temporelles est essentiel pour former des lecteurs autonomes au cycle 3.',
  'Classer « savait » comme antériorité parce qu''il précède les autres verbes. L''imparfait « savait » décrit un état de connaissance simultané à la scène, pas un fait antérieur. L''antériorité est exprimée par le plus-que-parfait « était venu ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

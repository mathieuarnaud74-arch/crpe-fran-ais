-- ============================================================
-- Migration : Série Orthographe — Pluriels irréguliers et exceptions
-- Topic : orthographe_pluriels_irreguliers
-- UUID prefix : d2010000
-- 10 exercices : 4 qcm, 3 reponse_courte, 3 vrai_faux
-- Niveaux : 3 Facile, 4 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — QCM — Pluriel des noms en -ou
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Facile',
  'qcm',
  'Parmi les noms suivants en -ou, lequel fait son pluriel en -oux ?',
  NULL,
  '[{"id":"a","label":"un trou"},{"id":"b","label":"un caillou"},{"id":"c","label":"un clou"},{"id":"d","label":"un sou"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Sept noms en -ou prennent un -x au pluriel : bijou, caillou, chou, genou, hibou, joujou, pou. « Un caillou » donne donc « des cailloux ». Tous les autres noms en -ou suivent la règle générale et prennent un -s au pluriel (des trous, des clous, des sous). Cette liste est à mémoriser pour le CRPE.',
  'Ajouter un -s à « caillou » au pluriel par analogie avec la règle générale, en oubliant qu''il fait partie des sept exceptions en -oux.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Pluriel des noms en -al
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Facile',
  'vrai_faux',
  'Le pluriel de « un festival » est « des festivaux ».',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Le pluriel de « festival » est « des festivals » et non « des festivaux ». En effet, « festival » fait partie des exceptions à la règle du pluriel en -aux pour les noms en -al. D''autres exceptions notables : bal, carnaval, cérémonial, chacal, festival, récital, régal. Ces noms prennent simplement un -s au pluriel.',
  'Appliquer automatiquement la transformation -al → -aux sans vérifier si le nom fait partie des exceptions qui prennent un -s.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Pluriel d''un nom en -eau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Facile',
  'reponse_courte',
  'Écrivez le pluriel du nom « un chapeau ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["des chapeaux","chapeaux"]}'::jsonb,
  'Les noms terminés par -eau forment leur pluriel en ajoutant un -x : un chapeau → des chapeaux. Cette règle est régulière et sans exception. De même : un bateau → des bateaux, un gâteau → des gâteaux. Ne pas confondre avec les noms en -au qui suivent la même règle (un noyau → des noyaux), à l''exception de « landau » (des landaus).',
  'Écrire « chapeaus » avec un -s au lieu du -x, par généralisation de la règle du pluriel régulier.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Pluriel des noms composés (nom + nom)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Intermediaire',
  'qcm',
  'Quel est le pluriel correct de « un chou-fleur » ?',
  NULL,
  '[{"id":"a","label":"des choux-fleurs"},{"id":"b","label":"des chous-fleurs"},{"id":"c","label":"des chou-fleurs"},{"id":"d","label":"des choux-fleur"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Dans le nom composé « chou-fleur », les deux éléments sont des noms : un chou qui a la forme d''une fleur. Au pluriel, les deux noms prennent la marque du pluriel : « des choux-fleurs ». De plus, « chou » fait partie des sept noms en -ou qui prennent un -x au pluriel (bijou, caillou, chou, genou, hibou, joujou, pou).',
  'Ne mettre le pluriel que sur un seul des deux noms, ou oublier que « chou » prend un -x et non un -s au pluriel.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Vrai/Faux — Pluriel des noms composés (verbe + nom)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Intermediaire',
  'vrai_faux',
  'Dans le nom composé « un porte-clés », le verbe « porte » doit s''accorder au pluriel quand on écrit « des porte-clés ».',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Dans un nom composé formé d''un verbe et d''un nom (porte-clés, ouvre-boîte, tire-bouchon), le verbe reste invariable au pluriel. Seul le nom peut varier selon le sens. On écrit donc « des porte-clés » : le verbe « porte » ne change jamais. Selon les rectifications orthographiques de 1990, le nom prend systématiquement un -s au pluriel.',
  'Accorder le verbe en pensant qu''il s''agit d''un nom, ou hésiter sur l''accord du second élément dans les composés verbe + nom.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — QCM — Pluriel des noms en -ail
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Intermediaire',
  'qcm',
  'Lequel de ces noms en -ail fait son pluriel en -aux ?',
  NULL,
  '[{"id":"a","label":"un portail"},{"id":"b","label":"un détail"},{"id":"c","label":"un travail"},{"id":"d","label":"un chandail"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La plupart des noms en -ail font leur pluriel en -ails (des portails, des détails, des chandails). Cependant, quelques noms en -ail forment leur pluriel en -aux : bail → baux, corail → coraux, émail → émaux, soupirail → soupiraux, travail → travaux, vitrail → vitraux. « Travail » donne donc « travaux ». Cette liste restreinte est un classique du CRPE.',
  'Écrire « des travails » en appliquant la règle générale du pluriel en -ails, ou croire que tous les noms en -ail deviennent -aux.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Pluriel d''un nom composé (adjectif + nom)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Intermediaire',
  'reponse_courte',
  'Écrivez le pluriel du nom composé « un grand-père ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["des grands-pères","grands-pères"]}'::jsonb,
  'Dans un nom composé formé d''un adjectif et d''un nom (grand-père, beau-frère, rond-point), les deux éléments prennent la marque du pluriel : des grands-pères, des beaux-frères, des ronds-points. L''adjectif s''accorde avec le nom qu''il qualifie. Attention : selon l''orthographe traditionnelle, « grand-mère » donnait « des grand-mères » (invariabilité de « grand » devant un nom féminin), mais les rectifications de 1990 admettent « des grandes-mères ».',
  'Laisser « grand » invariable au pluriel par analogie avec l''ancienne règle de « grand-mère », alors que « grand-père » a toujours pris la marque du pluriel sur les deux éléments.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — QCM — Pluriel des noms d''origine étrangère
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Avance',
  'qcm',
  'Selon les rectifications orthographiques de 1990, quel est le pluriel recommandé pour « un scénario » ?',
  NULL,
  '[{"id":"a","label":"des scénarii"},{"id":"b","label":"des scénarios"},{"id":"c","label":"des scénario"},{"id":"d","label":"des scénarri"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les rectifications orthographiques de 1990 recommandent de former le pluriel des mots d''origine étrangère selon les règles du français : on ajoute un -s. Ainsi, « un scénario » donne « des scénarios » (et non le pluriel italien « scénarii »). De même : des matchs, des minimums, des maximums. Au CRPE, les rectifications de 1990 font référence.',
  'Utiliser le pluriel d''origine (italien -ii, latin -a, anglais -es) au lieu d''appliquer la règle française du -s, qui est la norme recommandée par les programmes scolaires.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Vrai/Faux — Pluriel des adjectifs de couleur composés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Avance',
  'vrai_faux',
  'L''adjectif de couleur composé « bleu clair » est invariable : on écrit « des robes bleu clair ».',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Lorsqu''un adjectif de couleur est composé de deux mots (bleu clair, vert foncé, rouge vif, gris perle), l''ensemble reste invariable. On écrit donc « des robes bleu clair », « des yeux vert foncé ». Cette règle s''applique aussi quand la couleur est précisée par un nom (jaune citron, bleu marine). Les adjectifs de couleur simples (bleu, vert, rouge) s''accordent normalement.',
  'Accorder les deux éléments (« des robes bleues claires ») en traitant chaque mot séparément, au lieu de considérer l''adjectif composé comme un bloc invariable.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Réponse courte — Pluriel d''un nom composé avec préposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd2010000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orthographe_pluriels_irreguliers',
  'Pluriels irréguliers et cas particuliers',
  'Avance',
  'reponse_courte',
  'Écrivez le pluriel du nom composé « un arc-en-ciel ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["des arcs-en-ciel","arcs-en-ciel"]}'::jsonb,
  'Dans un nom composé avec préposition (arc-en-ciel, chef-d''œuvre, pomme de terre), seul le premier nom prend la marque du pluriel : des arcs-en-ciel, des chefs-d''œuvre, des pommes de terre. La préposition et le nom qui suit restent invariables. « Arc » prend un -s car c''est le noyau nominal du groupe. « Ciel » ne s''accorde pas car il est complément introduit par la préposition « en ».',
  'Accorder « ciel » au pluriel (« des arcs-en-ciels » ou « des arcs-en-cieux »), en oubliant que dans un nom composé avec préposition, seul le premier nom varie.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

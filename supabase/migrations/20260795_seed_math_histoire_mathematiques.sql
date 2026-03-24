-- Seed: Histoire des mathématiques (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: free/premium
-- Topic: math_histoire_mathematiques

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Intermediaire',
  'qcm',
  'Le mot « algèbre » est directement dérivé du titre d''un ouvrage de quel mathématicien du IXe siècle ?',
  NULL,
  '[{"id":"a","label":"Euclide d''Alexandrie"},{"id":"b","label":"Muhammad Ibn Musa Al-Khwarizmi"},{"id":"c","label":"René Descartes"},{"id":"d","label":"Blaise Pascal"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le mot « algèbre » vient de l''arabe « al-jabr » (la réduction, la restauration des termes), titre d''un ouvrage fondateur de Muhammad Ibn Musa Al-Khwarizmi (Bagdad, ~820 ap. J.-C.) : « Kitāb al-mukhtaṣar fī ḥisāb al-jabr wa-l-muqābala ». Al-Khwarizmi y systématise la résolution des équations du 1er et 2e degré. Son nom latinisé « Algorithmi » a également donné le terme « algorithme ». Euclide (IIIe s. av. J.-C.) est l''auteur des « Éléments » (géométrie axionatique). Descartes (1637) a fondé la géométrie analytique. Pascal (XVIIe s.) a contribué à la théorie des probabilités et des combinatoires.',
  'Confondre Al-Khwarizmi et Al-Battani, ou attribuer l''origine de l''algèbre à Descartes (qui a contribué à la notation, pas à la fondation de l''algèbre).',
  'valide',
  'Génération Claude — Histoire des mathématiques / Éduscol repères culturels',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Intermediaire',
  'vrai_faux',
  'VRAI ou FAUX : Le théorème qui porte le nom de Pythagore était déjà connu des Babyloniens et des Égyptiens bien avant sa naissance (VIe siècle av. J.-C.).',
  NULL,
  '[{"id":"vrai","label":"VRAI"},{"id":"faux","label":"FAUX"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. La tablette babylonienne Plimpton 322 (~1800 av. J.-C.) contient une liste de triplets pythagoriciens (3,4,5 ; 5,12,13 ; 8,15,17…), prouvant que les Babyloniens connaissaient la relation entre les côtés d''un triangle rectangle bien avant Pythagore. Les arpenteurs égyptiens utilisaient aussi la corde à 12 nœuds (triangle 3-4-5) pour tracer des angles droits. L''école de Pythagore est créditée non de la découverte empirique, mais de la première DÉMONSTRATION générale de la propriété. Cette distinction entre mathématiques pratiques (outil, observation) et mathématiques théoriques (démonstration, preuve) est fondamentale dans l''histoire de la discipline.',
  'Croire que Pythagore a « inventé » le théorème. Il est en réalité le premier à en avoir donné une preuve rigoureuse et générale.',
  'valide',
  'Génération Claude — Histoire des mathématiques / Plimpton 322 / École pythagoricienne',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Intermediaire',
  'qcm',
  'Quel ouvrage d''Euclide d''Alexandrie (IIIe siècle av. J.-C.) a posé les fondements de la géométrie axiomatique occidentale, utilisée encore aujourd''hui comme référence ?',
  NULL,
  '[{"id":"a","label":"Les Éléments"},{"id":"b","label":"L''Almageste"},{"id":"c","label":"Arithmetica"},{"id":"d","label":"Ars Magna"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les « Éléments » (Στοιχεῖα, Stoicheia) d''Euclide (~300 av. J.-C.) sont l''un des ouvrages mathématiques les plus influents de l''histoire. En 13 livres, Euclide y organise toute la géométrie à partir d''un petit nombre de définitions, postulats et axiomes, et en déduit logiquement des propositions (théorèmes). La méthode déductive d''Euclide est le modèle de la démonstration mathématique qui structure encore l''enseignement de la géométrie. L''Almageste est l''œuvre astronomique de Ptolémée. L''Arithmetica est de Diophante. L''Ars Magna (1545) est de Gerolamo Cardano (équations du 3e degré).',
  'Confondre les œuvres des mathématiciens de l''Antiquité. Retenir : Euclide → Éléments (géométrie axiomatique).',
  'valide',
  'Génération Claude — Histoire des mathématiques / Euclide / Éléments',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Avance',
  'vrai_faux',
  'VRAI ou FAUX : L''irrationnalité de √2 (l''impossibilité d''exprimer √2 comme rapport de deux entiers) a été découverte par les Pythagoriciens, ce qui a constitué un scandale philosophique dans leur école.',
  NULL,
  '[{"id":"vrai","label":"VRAI"},{"id":"faux","label":"FAUX"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. L''école pythagoricienne (Ve s. av. J.-C.) avait pour maxime « tout est nombre » — c''est-à-dire que tout peut s''exprimer comme un rapport d''entiers (un rationnel). La découverte qu''il existe des longueurs géométriques (comme la diagonale du carré unité, qui vaut √2) qui ne peuvent PAS s''écrire ainsi a donc constitué un scandale philosophique. La légende veut qu''Hippase de Métaponte, qui aurait divulgué cette découverte, fut noyé par ses confrères. Cet épisode illustre un obstacle épistémologique historique (la résistance à l''existence des irrationnels) qui se retrouve chez les élèves aujourd''hui (difficulté à accepter des nombres dont le développement décimal est infini et non périodique).',
  'Penser que les nombres irrationnels sont une invention moderne. Leur existence est reconnue (même si pas formalisée ainsi) depuis l''Antiquité grecque.',
  'valide',
  'Génération Claude — Histoire des mathématiques / Irrationnels / Pythagoriciens',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Intermediaire',
  'qcm',
  'Quelle civilisation ancienne a inventé un système de numération positionnel en BASE 60, dont des traces subsistent encore aujourd''hui dans la mesure du temps et des angles ?',
  NULL,
  '[{"id":"a","label":"Les Égyptiens"},{"id":"b","label":"Les Romains"},{"id":"c","label":"Les Babyloniens"},{"id":"d","label":"Les Grecs"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Les Babyloniens (Mésopotamie, ~2000 av. J.-C.) ont développé un système de numération positionnel en base 60 (sexagésimal). Ce système a influencé la division du cercle en 360°, de l''heure en 60 minutes, et de la minute en 60 secondes — conventions toujours en usage aujourd''hui. Contrairement au système romain (non positionnel, additif), le système babylonien avait le principe de la valeur positionnelle des chiffres, ancêtre de notre numération décimale de position. Les Mayas avaient aussi un système positionnel (base 20, vigesimal). Les Égyptiens utilisaient un système additif non positionnel.',
  'Confondre le système babylonien (positionnel, base 60) avec le système romain (non positionnel, additif). La positionnel des chiffres est le concept-clé.',
  'valide',
  'Génération Claude — Histoire des mathématiques / Numération babylonienne / Base 60',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Intermediaire',
  'qcm',
  'Le plan cartésien (système de coordonnées avec deux axes perpendiculaires) porte le nom de René Descartes. Dans quel ouvrage a-t-il introduit cette idée en 1637 ?',
  NULL,
  '[{"id":"a","label":"Discours de la méthode"},{"id":"b","label":"La Géométrie"},{"id":"c","label":"Traité de l''harmonie"},{"id":"d","label":"Principia Mathematica"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'René Descartes (1596–1650) a introduit les coordonnées cartésiennes dans son ouvrage « La Géométrie » (1637), publié en appendice du « Discours de la méthode ». Cette idée révolutionnaire de représenter une courbe par une équation algébrique (et vice-versa) a fusionné la géométrie et l''algèbre, fondant ce qu''on appelle la géométrie analytique (ou géométrie algébrique). Le « Discours de la méthode » est l''ouvrage philosophique de Descartes, pas mathématique. « Principia Mathematica » (1910–1913) est de Russell et Whitehead. La représentation dans un repère orthonormé est directement issue du travail de Descartes et constitue un outil fondamental du collège et du lycée.',
  'Penser que le repère cartésien vient du « Discours de la méthode » (œuvre philosophique) plutôt que de « La Géométrie » (appendice mathématique).',
  'valide',
  'Génération Claude — Histoire des mathématiques / Descartes / Géométrie analytique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Avance',
  'qcm',
  'Selon les recommandations Éduscol, quel est le principal intérêt didactique d''intégrer l''histoire des mathématiques dans l''enseignement à l''école primaire ?',
  NULL,
  '[{"id":"a","label":"Montrer que les mathématiques sont réservées à une élite de génies"},{"id":"b","label":"Illustrer que les savoirs mathématiques sont des constructions humaines situées dans des contextes culturels et résolvant des problèmes concrets"},{"id":"c","label":"Remplacer les exercices d''entraînement par des récits historiques"},{"id":"d","label":"Enseigner l''histoire générale à travers les mathématiques"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les programmes Éduscol (cycle 2 et 3) précisent que « l''histoire des mathématiques nourrit la curiosité et montre que les mathématiques sont une science vivante » et que des « repères culturels et historiques » enrichissent l''enseignement. L''intérêt didactique principal est de DÉMYTHIFIER les mathématiques : elles ne sont pas un ensemble de vérités abstraites tombées du ciel, mais des outils construits progressivement par des êtres humains pour résoudre des problèmes concrets (mesurer, construire, partager, prévoir). Cette approche humanise les savoirs, réduit les blocages affectifs face aux mathématiques, et permet de comprendre POURQUOI les notions existent. Elle facilite aussi la compréhension des obstacles : les difficultés que rencontrent les élèves aujourd''hui (fractions, irrationnels, zéro) sont souvent les mêmes que celles des mathématiciens de l''Antiquité.',
  'Réduire l''histoire des mathématiques à des anecdotes biographiques sans lien avec les notions mathématiques elles-mêmes.',
  'valide',
  'Génération Claude — Didactique des maths / Histoire / Éduscol repères culturels',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

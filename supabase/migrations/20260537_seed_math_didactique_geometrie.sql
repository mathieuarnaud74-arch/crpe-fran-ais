-- Série : Didactique — Erreurs et remédiations en géométrie
-- 7 exercices, niveau Avancé, accès premium
-- Progression : Q1-Q2 amorce → Q3-Q5 consolidation → Q6-Q7 approfondissement

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000001', 'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie', 'Avance', 'qcm',
  'Un élève de CE2 dit qu''un carré posé sur une pointe « n''est plus un carré, c''est un losange ». Quel obstacle est en jeu ?',
  NULL,
  '[{"id": "a", "label": "L''élève confond carré et losange par manque de connaissances"}, {"id": "b", "label": "L''élève est en phase de reconnaissance visuelle (niveau 1 de van Hiele) et identifie les figures par leur apparence globale plutôt que par leurs propriétés"}, {"id": "c", "label": "L''élève ne connaît pas les propriétés du carré"}, {"id": "d", "label": "C''est une simple erreur de vocabulaire sans conséquence"}]',
  '{"mode": "single", "value": "b"}',
  'Au niveau 1 de van Hiele (visualisation/reconnaissance globale), l''élève identifie les figures par leur apparence générale et leur orientation. Un carré « posé sur une pointe » ne ressemble plus au prototype visuel du carré (côtés horizontaux et verticaux), donc l''élève le reclasse comme losange. Ce n''est ni un manque de vocabulaire ni une ignorance des propriétés : c''est un obstacle lié au stade de développement géométrique. La remédiation consiste à multiplier les configurations non prototypiques et à guider l''élève vers l''identification par les propriétés (4 côtés égaux, 4 angles droits) plutôt que par l''image globale.',
  'Penser que l''élève « confond » simplement carré et losange, alors que le problème est plus profond : il s''agit d''un mode de pensée géométrique centré sur l''apparence visuelle (van Hiele niveau 1) et non sur les propriétés.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000002', 'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie', 'Avance', 'vrai_faux',
  'En géométrie, il est didactiquement souhaitable de toujours présenter les figures dans leur position prototypique (rectangle horizontal, triangle pointe en haut) pour faciliter leur reconnaissance par les élèves.',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}',
  'Présenter systématiquement les figures dans leur position prototypique renforce le niveau 1 de van Hiele (reconnaissance visuelle globale) et empêche les élèves de développer une identification fondée sur les propriétés. Il s''agit d''une variable didactique essentielle : varier l''orientation, la taille et les proportions des figures est indispensable pour que les élèves dépassent la reconnaissance par le prototype et accèdent au niveau 2 (analyse des propriétés). L''enseignant doit proposer des figures dans des positions variées, y compris inhabituelles, pour provoquer un conflit cognitif et favoriser l''institutionnalisation des propriétés géométriques.',
  'Croire que montrer les figures toujours dans la même position « aide » les élèves, alors que cette pratique crée un obstacle en renforçant l''identification par l''apparence au détriment des propriétés.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000003', 'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie', 'Avance', 'qcm',
  'Un élève de CM1 trace la « hauteur » d''un triangle obtusangle en traçant un segment vertical depuis le sommet le plus haut vers le bas. Quelle conception erronée cela révèle-t-il ?',
  NULL,
  '[{"id": "a", "label": "Il confond hauteur géométrique (perpendiculaire à la base) et hauteur physique (direction verticale)"}, {"id": "b", "label": "Il ne sait pas utiliser l''équerre correctement"}, {"id": "c", "label": "Il confond hauteur et médiane du triangle"}, {"id": "d", "label": "Il a simplement oublié la définition de la hauteur"}]',
  '{"mode": "single", "value": "a"}',
  'L''élève plaque sur la géométrie une conception issue de la vie quotidienne : la « hauteur » est verticale (comme la hauteur d''un meuble ou d''un immeuble). En géométrie, la hauteur d''un triangle est la perpendiculaire menée d''un sommet au côté opposé (ou à son prolongement), quelle que soit l''orientation de la figure. Cet obstacle est particulièrement visible dans les triangles obtusangles où le pied de la hauteur tombe à l''extérieur du triangle. La remédiation passe par la manipulation de triangles dans des orientations variées (variable didactique) et la vérification systématique de la perpendicularité avec l''équerre.',
  'Réduire l''erreur à un problème technique (mauvaise utilisation de l''équerre) alors qu''il s''agit d''un obstacle conceptuel : la confusion entre le sens quotidien et le sens géométrique du mot « hauteur ».',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000004', 'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie', 'Avance', 'reponse_courte',
  'Un enseignant propose : « Trace tous les axes de symétrie du rectangle ». Un élève trace les deux diagonales en plus des deux axes corrects (médiateurs des côtés). Quelle remédiation concrète proposez-vous pour que l''élève invalide lui-même son erreur ?',
  NULL,
  NULL,
  '{"mode": "acceptableAnswers", "acceptableAnswers": ["vérification par pliage", "pliage", "papier calque", "plier selon la diagonale", "pliage selon la diagonale"]}',
  'La remédiation la plus efficace est la vérification par pliage : demander à l''élève de découper un rectangle en papier et de le plier selon la diagonale. Il constatera que les deux moitiés ne se superposent pas (les triangles obtenus ne coïncident pas bord à bord). On peut aussi utiliser du papier calque pour vérifier la superposition. Cette approche permet à l''élève de valider ou invalider lui-même ses hypothèses, conformément au principe de dévolution : c''est l''élève qui prend en charge la preuve, et non l''enseignant qui impose la réponse. L''institutionnalisation viendra ensuite : un axe de symétrie est une droite telle que la figure se superpose à elle-même par pliage le long de cette droite.',
  'Se contenter de dire à l''élève que « les diagonales ne sont pas des axes de symétrie » sans lui fournir un moyen concret de le vérifier par lui-même.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000005', 'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie', 'Avance', 'qcm',
  'Selon la théorie de van Hiele, à quel niveau de pensée géométrique un élève se situe-t-il quand il peut affirmer : « Un carré est un rectangle particulier parce qu''il vérifie toutes les propriétés du rectangle plus des propriétés supplémentaires » ?',
  NULL,
  '[{"id": "a", "label": "Niveau 1 — Visualisation : l''élève reconnaît les figures par leur apparence globale"}, {"id": "b", "label": "Niveau 2 — Analyse : l''élève identifie les propriétés des figures mais ne les relie pas entre elles"}, {"id": "c", "label": "Niveau 3 — Déduction informelle : l''élève comprend les relations d''inclusion entre classes de figures"}, {"id": "d", "label": "Niveau 4 — Déduction formelle : l''élève construit des démonstrations rigoureuses"}]',
  '{"mode": "single", "value": "c"}',
  'Comprendre que « tout carré est un rectangle » implique de saisir les relations logiques d''inclusion entre classes de figures : le carré possède toutes les propriétés du rectangle (4 angles droits, côtés opposés égaux) et une propriété supplémentaire (4 côtés égaux). Cette compréhension caractérise le niveau 3 de van Hiele (déduction informelle). Au niveau 2 (analyse), l''élève peut lister les propriétés du carré et du rectangle séparément, mais il les considère comme des catégories disjointes. Au niveau 4 (déduction formelle), l''élève serait capable de produire une démonstration axiomatique, ce qui dépasse ce qui est attendu à l''école primaire.',
  'Confondre le niveau 2 (analyse des propriétés isolées) avec le niveau 3 (mise en relation logique des propriétés et compréhension des hiérarchies de figures).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000006', 'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie', 'Avance', 'reponse_courte',
  'Un élève de CM2 affirme que « la symétrie axiale conserve les distances mais pas les angles ». Concevez une situation de validation que l''élève pourrait réaliser lui-même pour corriger cette conception erronée.',
  NULL,
  NULL,
  '{"mode": "acceptableAnswers", "acceptableAnswers": ["mesurer les angles", "mesure des angles", "superposition", "conservation des angles", "calque", "papier calque", "mesurer les angles des deux triangles"]}',
  'Situation de validation : demander à l''élève de construire un triangle, de tracer son symétrique par rapport à un axe, puis de mesurer les angles correspondants des deux triangles au rapporteur. L''élève constatera que les angles sont identiques. On peut renforcer la validation par superposition au papier calque (en retournant le calque). Cette situation relève de la dévolution : l''élève est responsable de la vérification. L''institutionnalisation portera ensuite sur le fait que la symétrie axiale est une isométrie, c''est-à-dire qu''elle conserve à la fois les distances et les angles (et donc la forme des figures).',
  'Se contenter d''énoncer la propriété (« la symétrie conserve aussi les angles ») sans proposer de situation permettant à l''élève de vérifier et de s''en convaincre par l''expérience.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000007', 'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie', 'Avance', 'qcm',
  'Pour faire progresser les élèves du niveau 2 (analyse) au niveau 3 (déduction informelle) de van Hiele en géométrie, quelle activité est la plus pertinente ?',
  NULL,
  '[{"id": "a", "label": "Faire mesurer des côtés et des angles de figures avec des instruments"}, {"id": "b", "label": "Faire apprendre des définitions géométriques par cœur"}, {"id": "c", "label": "Proposer des activités de classification et de hiérarchisation des figures (ex : « Pourquoi tout carré est-il un losange ? »)"}, {"id": "d", "label": "Faire reproduire des figures sur quadrillage"}]',
  '{"mode": "single", "value": "c"}',
  'Le passage du niveau 2 au niveau 3 de van Hiele nécessite que les élèves dépassent l''analyse isolée des propriétés pour comprendre les relations logiques entre classes de figures. Les activités de classification et de hiérarchisation (« Tout carré est-il un losange ? Tout losange est-il un carré ? Pourquoi ? ») sont les plus efficaces car elles obligent les élèves à raisonner sur les liens d''inclusion entre catégories. Mesurer (option a) et reproduire (option d) relèvent du niveau 2 ; mémoriser des définitions (option b) ne garantit aucune compréhension conceptuelle. L''enseignant joue ici un rôle de médiateur en organisant les échanges et en guidant l''institutionnalisation des relations entre figures.',
  'Penser que la mesure et la manipulation suffisent pour faire progresser les élèves au-delà du niveau 2, alors que ces activités renforcent l''analyse des propriétés sans nécessairement provoquer la mise en relation logique entre classes de figures.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

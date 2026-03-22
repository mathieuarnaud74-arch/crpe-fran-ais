-- Série : Didactique — Différenciation pédagogique en mathématiques
-- 7 exercices (4 QCM, 1 vrai_faux, 2 réponses courtes) — Avancé / premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques', 'Avance',
  'qcm',
  'La différenciation pédagogique consiste principalement à :',
  NULL,
  '[{"id":"a","label":"Donner des exercices différents à chaque élève"},{"id":"b","label":"Adapter les situations d''apprentissage pour que tous les élèves atteignent les mêmes objectifs"},{"id":"c","label":"Séparer les élèves par niveau"},{"id":"d","label":"Réduire les exigences pour les élèves en difficulté"}]',
  '{"mode":"single","value":"b"}',
  'La différenciation pédagogique, au sens d''Éduscol, ne consiste pas à baisser les exigences ni à isoler les élèves par niveau. Il s''agit d''adapter les chemins d''apprentissage (supports, modalités, étayage, rythme) pour que tous les élèves puissent atteindre un socle commun d''objectifs. Le but est l''accessibilité des savoirs, pas la sélection. Cette conception s''inscrit dans la logique de la zone proximale de développement (Vygotski) : on propose à chaque élève des tâches à sa portée avec l''aide appropriée.',
  'Confondre différenciation et réduction des exigences. Différencier ne signifie pas « faire moins », mais « faire autrement » pour atteindre les mêmes objectifs.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques', 'Avance',
  'vrai_faux',
  'Différencier, c''est nécessairement proposer des exercices plus faciles aux élèves en difficulté.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}',
  'La différenciation ne se réduit pas à simplifier les exercices. Elle peut prendre de nombreuses formes : fournir des supports différents (matériel de manipulation, schémas en barres), accorder un temps supplémentaire, proposer des regroupements variés (tutorat entre pairs, travail en petits groupes hétérogènes), ou offrir des points d''entrée différents dans un même problème. L''objectif reste identique pour tous les élèves ; c''est l''étayage qui varie. Réduire systématiquement la difficulté risque au contraire d''installer l''élève dans une zone de confort qui ne fait pas progresser.',
  'Penser que différencier = simplifier. Cette confusion conduit à un appauvrissement du contrat didactique pour les élèves en difficulté, alors qu''ils ont besoin d''un étayage adapté, pas d''objectifs revus à la baisse.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques', 'Avance',
  'qcm',
  'Un enseignant propose un problème de partage. Pour les élèves en difficulté, il fournit du matériel de manipulation (jetons). Quel type de différenciation pratique-t-il ?',
  NULL,
  '[{"id":"a","label":"Différenciation par les contenus"},{"id":"b","label":"Différenciation par les processus et les supports"},{"id":"c","label":"Différenciation par les productions"},{"id":"d","label":"Différenciation par la quantité"}]',
  '{"mode":"single","value":"b"}',
  'Le problème posé est le même pour tous les élèves : c''est un problème de partage avec les mêmes données numériques. Ce qui change, c''est le support mis à disposition (les jetons). On parle donc de différenciation par les processus ou les supports. L''élève en difficulté peut manipuler concrètement pour modéliser la situation avant de passer à l''abstraction. Cette approche respecte les étapes de l''apprentissage mathématique (concret → imagé → abstrait) et s''inscrit dans la logique d''étayage de Bruner.',
  'Confondre « changer le support » avec « changer le contenu ». Ici, le contenu mathématique (le problème de partage) reste identique ; seul le moyen d''y accéder est adapté.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques', 'Avance',
  'reponse_courte',
  'Un élève de CM1 ne parvient pas à résoudre le problème : « Marie avait 45 billes. Elle en a perdu. Il lui en reste 28. Combien en a-t-elle perdu ? » Proposez deux aides différenciées qui ne consistent PAS à simplifier le problème.',
  NULL,
  NULL,
  '{"mode":"flexible","acceptableAnswers":["schéma","manipulation","étayage","barre","modélisation","reformulation","matériel"]}',
  'Deux exemples d''aides différenciées possibles : (1) Proposer un schéma en barres (modèle de Singapour) pour représenter visuellement la situation — l''élève dessine une barre représentant les 45 billes, marque la partie « restante » (28) et identifie la partie manquante. (2) Fournir du matériel de manipulation (jetons, cubes) pour modéliser concrètement la situation de perte. D''autres aides valides incluent : reformuler le problème avec des nombres plus petits pour faire comprendre la structure (par exemple 10 et 7), puis revenir au problème initial ; proposer un travail en binôme avec un pair tuteur ; ou décomposer la tâche en étapes guidées (étayage). Dans tous les cas, le problème reste le même — c''est l''accès à la compréhension qui est facilité.',
  'Proposer de « simplifier le problème » en changeant les nombres ou en supprimant une étape. Ce n''est pas de la différenciation mais une réduction du contrat didactique. L''objectif est de fournir un étayage qui permette à l''élève de résoudre le MÊME problème.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques', 'Avance',
  'qcm',
  'Dans le cadre de l''évaluation formative, quel est l''outil le plus adapté pour identifier les besoins de différenciation en mathématiques ?',
  NULL,
  '[{"id":"a","label":"Le contrôle noté sur 20"},{"id":"b","label":"L''observation des stratégies des élèves pendant la résolution et l''analyse de leurs erreurs"},{"id":"c","label":"Le classement des élèves par notes"},{"id":"d","label":"Le test standardisé national"}]',
  '{"mode":"single","value":"b"}',
  'L''évaluation formative vise à comprendre comment l''élève apprend, pas à le classer. L''observation des stratégies de résolution et l''analyse des erreurs permettent d''identifier précisément les obstacles cognitifs de chaque élève : erreurs de compréhension de l''énoncé, erreurs de procédure, erreurs conceptuelles. C''est à partir de ce diagnostic fin que l''enseignant peut mettre en place une différenciation et une remédiation ciblées. Les contrôles notés et les classements relèvent de l''évaluation sommative, qui mesure un résultat mais n''éclaire pas les processus d''apprentissage.',
  'Confondre évaluation formative et évaluation sommative. Un contrôle noté renseigne sur un niveau global mais ne permet pas d''identifier les stratégies erronées ni de cibler la remédiation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques', 'Avance',
  'reponse_courte',
  'Expliquez la différence entre « différenciation successive » et « différenciation simultanée » en mathématiques. Donnez un exemple de chaque.',
  NULL,
  NULL,
  '{"mode":"flexible","acceptableAnswers":["simultanée","même moment","en séquence","successive","temps différents","au même instant"]}',
  'La différenciation successive consiste à alterner, au fil de la séance, différentes modalités de travail pour un même contenu : par exemple, l''enseignant commence par une phase de manipulation collective, puis propose une phase de travail sur schéma, puis une phase d''exercices abstraits. Tous les élèves suivent la même progression, mais les différentes étapes permettent à chacun de trouver un point d''accroche selon son niveau de compréhension. La différenciation simultanée consiste à proposer, au même moment, des activités ou des niveaux d''étayage différents à des groupes d''élèves distincts : par exemple, pendant que le groupe A résout un problème de proportionnalité en autonomie, le groupe B travaille le même type de problème avec un tableau de proportionnalité pré-rempli et l''aide de l''enseignant. La différenciation simultanée est plus exigeante à mettre en œuvre mais permet un ajustement plus fin à la zone proximale de développement de chaque élève.',
  'Inverser les deux termes ou croire que seule la différenciation simultanée est une « vraie » différenciation. Les deux approches sont complémentaires et recommandées par Éduscol.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques', 'Avance',
  'qcm',
  'Un enseignant utilise un « plan de travail » en mathématiques où les élèves choisissent parmi des exercices de niveaux différents. Ce dispositif relève principalement de :',
  NULL,
  '[{"id":"a","label":"La pédagogie frontale"},{"id":"b","label":"La différenciation par l''autonomie et le rythme"},{"id":"c","label":"Le cours magistral"},{"id":"d","label":"L''évaluation sommative"}]',
  '{"mode":"single","value":"b"}',
  'Le plan de travail est un dispositif pédagogique qui permet à chaque élève d''avancer à son propre rythme en choisissant des exercices adaptés à son niveau parmi une offre graduée. Il relève de la différenciation par l''autonomie et le rythme : l''élève est acteur de ses apprentissages, il gère son temps et la progression dans les tâches proposées. Ce dispositif favorise l''engagement et la responsabilisation tout en permettant à l''enseignant de se rendre disponible pour un étayage individualisé auprès des élèves qui en ont le plus besoin. Il s''oppose à la pédagogie frontale où tous les élèves font la même chose au même moment.',
  'Penser que le plan de travail est un simple « menu » d''exercices sans intention pédagogique. En réalité, il repose sur une analyse préalable des besoins et une gradation réfléchie des tâches, avec des objectifs d''apprentissage explicites pour chaque parcours.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

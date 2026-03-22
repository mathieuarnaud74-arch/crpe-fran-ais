-- Seed: Didactique — Variables didactiques (7 exercices, Avancé, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000001', 'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance', 'qcm',
  'Qu''est-ce qu''une variable didactique au sens de Brousseau ?',
  NULL,
  '[{"id":"a","label":"Un paramètre modifiable par l''enseignant qui change la stratégie de résolution de l''élève"},{"id":"b","label":"La note obtenue par l''élève à l''évaluation"},{"id":"c","label":"Le nombre d''exercices donnés en classe"},{"id":"d","label":"Le temps alloué pour réaliser l''activité"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Une variable didactique, concept central de la théorie des situations didactiques de Brousseau, est un paramètre de la situation que l''enseignant peut modifier et dont le changement de valeur provoque une modification des stratégies de résolution optimales de l''élève. Par exemple, dans un problème de partage, changer les nombres choisis (divisibles ou non) modifie fondamentalement la procédure que l''élève doit mobiliser. Le temps alloué ou le nombre d''exercices sont des variables pédagogiques, mais pas des variables didactiques au sens strict car ils ne modifient pas la nature mathématique de la tâche.',
  'Confondre variable didactique (qui modifie la stratégie de résolution) avec variable pédagogique (temps, nombre d''exercices) qui ne change pas la nature mathématique du problème.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000002', 'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance', 'vrai_faux',
  'Dans le problème « Partager 24 bonbons entre 6 enfants », remplacer 24 par 25 modifie la nature mathématique du problème car 25 n''est pas divisible par 6.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Remplacer 24 par 25 constitue une modification d''une variable didactique (la valeur numérique du dividende). Avec 24 bonbons, on obtient un partage exact (24 ÷ 6 = 4), ce qui relève de la division euclidienne sans reste. Avec 25, le partage produit un reste (25 = 6 × 4 + 1), ce qui introduit un obstacle épistémologique nouveau : la gestion du reste dans la division. L''élève doit alors mobiliser une stratégie différente et se confronter à la question « Que fait-on du bonbon restant ? ». C''est précisément ce type de modification qui illustre le rôle des variables didactiques dans la théorie de Brousseau : un simple changement numérique transforme fondamentalement la tâche mathématique.',
  'Penser que changer un nombre dans un énoncé est un changement anodin. En réalité, le passage d''une division exacte à une division avec reste modifie profondément la nature du problème et les compétences mobilisées.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000003', 'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance', 'qcm',
  'Un enseignant propose : « Trace un carré de 5 cm de côté ». Pour travailler le losange, quelle variable didactique modifie-t-il en priorité ?',
  NULL,
  '[{"id":"a","label":"Il change la taille du côté (5 cm → 8 cm)"},{"id":"b","label":"Il remplace « carré » par « losange avec un angle de 60° »"},{"id":"c","label":"Il donne du papier quadrillé au lieu de papier blanc"},{"id":"d","label":"Il demande de colorier l''intérieur de la figure"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse b) est la variable didactique principale ici : remplacer « carré » par « losange avec un angle de 60° » modifie l''objet géométrique visé et donc les propriétés mathématiques que l''élève doit mobiliser (angles non droits, diagonales de longueurs différentes). Changer la taille (a) ne modifie pas la nature de la tâche. Le papier quadrillé (c) est bien une variable didactique (le support modifie les stratégies possibles : repérage sur un quadrillage vs tracé au compas), mais elle est secondaire par rapport au changement de l''objet géométrique lui-même. Colorier l''intérieur (d) est une variable pédagogique sans impact sur le raisonnement géométrique. Dans le cadre du contrat didactique, c''est bien le changement de figure qui déplace l''enjeu mathématique de la situation.',
  'Confondre la variable « support matériel » (papier quadrillé) avec la variable principale qui est l''objet géométrique lui-même. Le support est une variable didactique, mais secondaire par rapport au changement de la figure étudiée.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000004', 'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance', 'reponse_courte',
  'Un exercice demande de calculer 3/4 + 1/4. L''enseignant le remplace par 3/4 + 2/5. Quelle variable didactique a été modifiée et quel obstacle cela introduit-il ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["dénominateur","mise au même dénominateur","dénominateurs différents","le dénominateur","les dénominateurs"]}'::jsonb,
  'La variable didactique modifiée est la nature des dénominateurs : on passe de dénominateurs identiques (4 et 4) à des dénominateurs différents (4 et 5). Ce changement introduit un obstacle épistémologique majeur : la nécessité de la mise au même dénominateur. Avec 3/4 + 1/4, l''élève additionne directement les numérateurs (procédure simple). Avec 3/4 + 2/5, il doit d''abord trouver un dénominateur commun (20), convertir les fractions (15/20 + 8/20), puis additionner. Cette modification de variable didactique permet à l''enseignant d''évaluer si l''élève maîtrise le concept de fractions équivalentes et la technique de réduction au même dénominateur, compétences essentielles du cycle 3.',
  'Ne mentionner que le changement de nombres sans identifier précisément que c''est le caractère identique ou différent des dénominateurs qui constitue la variable didactique, et l''obstacle spécifique de la mise au même dénominateur.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000005', 'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance', 'qcm',
  'Dans une situation-problème au sens de Brousseau, l''enseignant ne doit PAS intervenir pendant la phase de…',
  NULL,
  '[{"id":"a","label":"Dévolution"},{"id":"b","label":"Action"},{"id":"c","label":"Formulation"},{"id":"d","label":"Institutionnalisation"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pendant la phase d''action, l''élève interagit directement avec le milieu (le système antagoniste qui fournit des rétroactions). C''est le moment où l''élève construit ses propres stratégies par essais et ajustements face aux rétroactions du milieu. L''enseignant doit s''abstenir d''intervenir pour ne pas rompre le processus d''apprentissage par adaptation. En revanche, lors de la dévolution, l''enseignant transfère la responsabilité du problème à l''élève (il présente la situation). Lors de la formulation, il peut organiser les échanges entre élèves. Lors de l''institutionnalisation, il reprend la main pour formaliser les savoirs construits et les relier aux savoirs de référence. Cette dialectique entre retrait (action) et intervention (dévolution, institutionnalisation) est au cœur du contrat didactique de Brousseau.',
  'Confondre dévolution et action. La dévolution est le moment où l''enseignant présente le problème et en transfère la responsabilité ; l''action est le moment où l''élève cherche seul, sans aide du professeur.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000006', 'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance', 'reponse_courte',
  'Un problème propose : « Marie a 12 billes, elle en donne 5. Combien lui en reste-t-il ? » L''enseignant veut évaluer si les élèves maîtrisent la soustraction avec retenue. Proposez une modification de la variable numérique.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["32 - 17","43 - 28","42 - 17","51 - 24","53 - 27","32 - 15","41 - 23","52 - 27","soustraction avec retenue","avec retenue","nombres nécessitant une retenue"]}'::jsonb,
  'Pour évaluer la soustraction avec retenue, l''enseignant doit modifier la variable didactique numérique en choisissant des nombres dont la soustraction nécessite un emprunt (retenue). Par exemple : « Marie a 32 billes, elle en donne 17 » ou « Marie a 43 billes, elle en donne 28 ». Dans 12 − 5, aucune retenue n''est nécessaire (on peut soustraire chiffre à chiffre : 12 − 5 = 7). En revanche, dans 32 − 17, on ne peut pas soustraire 7 de 2 sans emprunter une dizaine, ce qui mobilise la compréhension de la numération positionnelle et la technique opératoire de la retenue. Ce changement de variable numérique transforme ainsi la nature de la compétence évaluée, tout en conservant le même habillage contextuel (situation de partage de billes).',
  'Proposer simplement des nombres plus grands (ex. 120 − 50) sans que la soustraction nécessite effectivement une retenue. La clé est que le chiffre des unités (ou des dizaines) du nombre soustrait soit supérieur à celui du nombre de départ.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000007', 'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance', 'qcm',
  'Selon la théorie des situations didactiques de Brousseau, quel est le rôle du milieu ?',
  NULL,
  '[{"id":"a","label":"L''ensemble du matériel pédagogique disponible en classe"},{"id":"b","label":"Le système antagoniste qui fournit des rétroactions à l''élève"},{"id":"c","label":"La salle de classe et son aménagement spatial"},{"id":"d","label":"Le programme officiel et les instructions ministérielles"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans la théorie des situations didactiques (TSD) de Brousseau, le milieu est défini comme le système antagoniste avec lequel l''élève interagit. Il ne se réduit pas au matériel physique : il englobe tout ce qui fournit des rétroactions à l''élève lorsqu''il agit. Par exemple, dans un problème de mesure, le milieu inclut les objets à mesurer, les instruments disponibles, mais aussi les contraintes du problème qui « résistent » aux stratégies erronées et valident les stratégies correctes. C''est cette interaction avec le milieu — et non l''intervention directe de l''enseignant — qui permet l''apprentissage par adaptation. Les variables didactiques sont précisément les paramètres du milieu que l''enseignant peut ajuster pour orienter les apprentissages sans intervenir directement pendant la phase d''action.',
  'Réduire le milieu au matériel concret (manipulables, fiches…). Le milieu au sens de Brousseau est un concept théorique plus large : c''est tout le système qui interagit avec l''élève et lui renvoie des informations sur la validité de ses actions.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

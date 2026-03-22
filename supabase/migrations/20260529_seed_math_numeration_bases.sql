-- Seed: Numération — Bases et systèmes positionnels (7 exercices)
-- Niveau: Intermediaire | Accès: premium | Sous-domaine: nombres_calcul

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_numeration_bases',
  'Numération — Bases et systèmes positionnels', 'Intermediaire', 'qcm',
  'Que signifie le chiffre 3 dans le nombre 4 372 ?', NULL,
  '[{"id":"a","label":"3 unités"},{"id":"b","label":"3 dizaines"},{"id":"c","label":"3 centaines"},{"id":"d","label":"3 milliers"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans notre système de numération décimale positionnelle, la valeur d''un chiffre dépend de sa position dans l''écriture du nombre. En décomposant 4 372 : 4 milliers + 3 centaines + 7 dizaines + 2 unités, soit 4 × 1 000 + 3 × 100 + 7 × 10 + 2 × 1. Le chiffre 3 occupe le rang des centaines : il représente donc 300, c''est-à-dire 3 centaines. Ce principe fondamental — chaque position correspond à une puissance de la base — est au cœur de la numération positionnelle.',
  'Confondre le chiffre (3) avec sa valeur positionnelle (300), ou se tromper de rang en comptant les positions à partir de la gauche au lieu de la droite.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_numeration_bases',
  'Numération — Bases et systèmes positionnels', 'Intermediaire', 'vrai_faux',
  'Dans le nombre 205, le 0 ne sert à rien et peut être supprimé.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le zéro joue un rôle essentiel dans la numération positionnelle : il sert de marqueur de position (on parle parfois de « place-holder »). Dans 205, le 0 indique qu''il n''y a aucune dizaine. Si on le supprimait, on obtiendrait 25, un nombre totalement différent (25 ≠ 205). C''est précisément l''invention du zéro positionnel qui a permis au système décimal de fonctionner efficacement. En didactique, la compréhension du rôle du zéro est un palier fondamental dans l''apprentissage de la numération : les élèves doivent saisir que le zéro « tient la place » d''un rang vide.',
  'Penser que le zéro est « inutile » parce qu''il ne représente aucune quantité, en confondant la valeur nulle du chiffre avec son rôle positionnel indispensable.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_numeration_bases',
  'Numération — Bases et systèmes positionnels', 'Intermediaire', 'reponse_courte',
  'Convertissez le nombre 1101 écrit en base 2 (binaire) en base 10.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["13"]}'::jsonb,
  'Pour convertir un nombre de la base 2 vers la base 10, on décompose selon les puissances de 2, en partant de la droite (rang 0). 1101 en base 2 = 1 × 2³ + 1 × 2² + 0 × 2¹ + 1 × 2⁰ = 1 × 8 + 1 × 4 + 0 × 2 + 1 × 1 = 8 + 4 + 0 + 1 = 13. Le principe est strictement identique à celui de la base 10 : chaque position correspond à une puissance de la base. C''est en travaillant dans des bases non familières que les élèves prennent conscience de ce mécanisme, souvent transparent en base 10 car trop automatisé.',
  'Lire « 1101 » comme un nombre en base 10 (mille cent un), ou oublier que les puissances de 2 commencent à 2⁰ = 1.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_numeration_bases',
  'Numération — Bases et systèmes positionnels', 'Intermediaire', 'qcm',
  'Comment s''écrit le nombre 25 (en base 10) dans le système de numération en base 5 ?', NULL,
  '[{"id":"a","label":"50"},{"id":"b","label":"100"},{"id":"c","label":"25"},{"id":"d","label":"45"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour convertir 25 en base 5, on effectue des divisions successives par 5. 25 ÷ 5 = 5, reste 0 ; 5 ÷ 5 = 1, reste 0 ; 1 ÷ 5 = 0, reste 1. En lisant les restes de bas en haut : 100 en base 5. Vérification : 1 × 5² + 0 × 5¹ + 0 × 5⁰ = 1 × 25 + 0 + 0 = 25. On remarque que 25 = 5², ce qui donne une écriture très simple en base 5 : « 100 ». Ce type d''exercice illustre parfaitement le fonctionnement de la numération positionnelle et permet aux futurs enseignants de comprendre les difficultés que rencontrent les élèves face aux groupements et échanges.',
  'Répondre 50 en pensant que « 25 = 5 × 5 » donne deux paquets de 5 (ce qui serait 2 × 5 + 0, soit 20 en base 5 — pour le nombre 10, pas 25). Ou garder « 25 » tel quel en oubliant de convertir.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_numeration_bases',
  'Numération — Bases et systèmes positionnels', 'Intermediaire', 'qcm',
  'En base 8 (système octal), combien de chiffres différents utilise-t-on pour écrire les nombres ?', NULL,
  '[{"id":"a","label":"7"},{"id":"b","label":"8"},{"id":"c","label":"9"},{"id":"d","label":"10"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans un système de numération en base b, on utilise exactement b chiffres différents, allant de 0 à b − 1. En base 8, les chiffres utilisés sont donc : 0, 1, 2, 3, 4, 5, 6 et 7, soit 8 chiffres au total. Il n''y a pas de chiffre « 8 » en base 8, tout comme il n''y a pas de chiffre « 10 » en base 10 : lorsqu''on atteint la base, on crée un groupement et on passe au rang supérieur. Cette règle universelle est un invariant de tous les systèmes de numération positionnelle.',
  'Répondre 7 en oubliant de compter le 0 parmi les chiffres utilisés, ou répondre 9 en incluant le chiffre 8 qui n''existe pas en base 8.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_numeration_bases',
  'Numération — Bases et systèmes positionnels', 'Intermediaire', 'reponse_courte',
  'Un enseignant utilise le système maya (base 20) pour faire comprendre la numération positionnelle. Si un élève écrit « 2.15 » en numération maya (2 vingtaines et 15 unités), quel nombre en base 10 cela représente-t-il ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["55"]}'::jsonb,
  'Le système de numération maya est un système positionnel en base 20 (vigésimal). L''écriture « 2.15 » signifie : 2 × 20¹ + 15 × 20⁰ = 2 × 20 + 15 × 1 = 40 + 15 = 55. Ce type de situation-problème, recommandé en didactique des mathématiques, permet de « dépayser » les élèves : en travaillant dans une base non familière, ils sont contraints d''expliciter les mécanismes de la numération positionnelle qu''ils appliquent mécaniquement en base 10. C''est un levier puissant pour construire une véritable compréhension du système décimal, conformément aux préconisations d''Éduscol.',
  'Multiplier 2 par 10 (au lieu de 20) par réflexe décimal, ce qui donnerait 35 au lieu de 55.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_numeration_bases',
  'Numération — Bases et systèmes positionnels', 'Intermediaire', 'qcm',
  'Pourquoi l''étude des bases autres que 10 est-elle recommandée en didactique des mathématiques pour enseigner la numération ?', NULL,
  '[{"id":"a","label":"Pour montrer que notre système n''est pas le seul possible et révéler les mécanismes de la numération positionnelle"},{"id":"b","label":"Pour préparer les élèves à l''informatique"},{"id":"c","label":"Pour apprendre l''histoire des mathématiques"},{"id":"d","label":"Pour rendre les cours plus ludiques"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''étude de bases non décimales est un outil didactique majeur, théorisé notamment par Guy Brousseau dans le cadre de la théorie des situations didactiques. En plaçant les élèves dans une base inconnue, on provoque un effet de « dépaysement » qui les oblige à reconstruire les principes de la numération positionnelle : groupements, échanges, rôle du zéro, valeur positionnelle des chiffres. Ces mécanismes, devenus transparents en base 10 par l''habitude, redeviennent visibles et questionnables. Les programmes d''Éduscol recommandent cette approche pour consolider la compréhension du système décimal. Les autres propositions (informatique, histoire, aspect ludique) peuvent être des bénéfices secondaires, mais ne constituent pas la raison didactique fondamentale de cette pratique.',
  'Choisir la réponse « préparer à l''informatique » en confondant l''objectif didactique (comprendre la numération positionnelle) avec une application pratique (le binaire en informatique).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

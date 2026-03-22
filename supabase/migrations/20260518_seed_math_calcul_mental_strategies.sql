-- ============================================================
-- Série : Calcul mental — Stratégies
-- Niveau : Facile | Accès : free | 7 exercices
-- ============================================================

-- Q1 — AMORCE — Identifier la stratégie la plus efficace (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_calcul_mental_strategies',
  'Calcul mental — Stratégies', 'Facile', 'qcm',
  'Pour calculer mentalement 99 × 7, quelle stratégie est la plus efficace ?', NULL,
  '[{"id":"a","label":"Poser la multiplication en colonnes mentalement"},{"id":"b","label":"Calculer 100 × 7 − 1 × 7 = 693"},{"id":"c","label":"Calculer 90 × 7 + 9 × 7"},{"id":"d","label":"Additionner 99 sept fois"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La stratégie la plus efficace consiste à utiliser la distributivité de la multiplication par rapport à la soustraction en s''appuyant sur un nombre « rond » proche :

99 × 7 = (100 − 1) × 7 = 100 × 7 − 1 × 7 = 700 − 7 = 693.

Cette technique repose sur la propriété de distributivité : a × (b − c) = a × b − a × c.

Pourquoi est-ce plus efficace ?
• 100 × 7 est un calcul immédiat (nombre rond).
• La soustraction finale (700 − 7) est triviale.

La proposition c) (90 × 7 + 9 × 7 = 630 + 63 = 693) est correcte mais nécessite deux multiplications non triviales, ce qui la rend moins rapide.

En didactique, on parle de « stratégie de passage par un nombre rond » ou de « compensation multiplicative ». Les programmes (cycle 3) encouragent l''apprentissage de ces stratégies pour développer le sens du nombre et la flexibilité calculatoire.',
  'Choisir la décomposition 90 × 7 + 9 × 7 qui, bien que correcte, est moins efficace car elle nécessite deux produits intermédiaires plus coûteux mentalement.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Décomposition et associativité (Vrai/Faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_calcul_mental_strategies',
  'Calcul mental — Stratégies', 'Facile', 'vrai_faux',
  'Pour calculer 25 × 32, on peut calculer 25 × 4 × 8 = 100 × 8 = 800.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''affirmation est vraie.

La stratégie repose sur deux propriétés fondamentales :

1. La décomposition multiplicative : 32 = 4 × 8.
2. L''associativité de la multiplication : 25 × (4 × 8) = (25 × 4) × 8.

Étapes du calcul :
25 × 32 = 25 × (4 × 8) = (25 × 4) × 8 = 100 × 8 = 800.

L''intérêt pédagogique de cette stratégie est de repérer un « couple produit remarquable » : 25 × 4 = 100. Ce repérage permet de transformer un calcul complexe en un calcul simple avec un nombre rond.

Autres couples remarquables utiles en calcul mental :
• 25 × 4 = 100
• 50 × 2 = 100
• 125 × 8 = 1 000

Les programmes du cycle 3 insistent sur la connaissance de ces résultats intermédiaires pour enrichir le répertoire de calcul mental des élèves.',
  'Penser que l''on ne peut pas « casser » un facteur en produit de deux nombres, ou confondre associativité et distributivité.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Stratégie de compensation additive (Réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_calcul_mental_strategies',
  'Calcul mental — Stratégies', 'Facile', 'reponse_courte',
  'Calculez mentalement 48 + 35 en utilisant la stratégie de compensation. Quel est le résultat ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["83"]}'::jsonb,
  'Le résultat est 83.

La stratégie de compensation consiste à arrondir l''un des termes pour faciliter le calcul, puis à compenser l''ajustement effectué.

Méthode 1 — Arrondir le premier terme :
48 + 35 = (48 + 2) + (35 − 2) = 50 + 33 = 83.
On ajoute 2 à 48 pour obtenir 50 (nombre rond), et on retranche 2 à 35 pour compenser.

Méthode 2 — Arrondir le second terme :
48 + 35 = (48 − 5) + (35 + 5) = 43 + 40 = 83.

Le fondement mathématique est la conservation de la somme : si on ajoute une quantité à un terme et qu''on la retranche à l''autre, la somme reste identique. Formellement : a + b = (a + k) + (b − k).

En didactique du calcul mental, cette stratégie est appelée « compensation » ou « ajustement ». Elle fait partie des procédures expertes attendues au cycle 3 et est explicitement mentionnée dans les repères de progression Éduscol.',
  'Oublier de compenser : arrondir 48 à 50, calculer 50 + 35 = 85, mais ne pas retrancher les 2 ajoutés (résultat erroné : 85 au lieu de 83).', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Identifier la propriété utilisée (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_calcul_mental_strategies',
  'Calcul mental — Stratégies', 'Facile', 'qcm',
  'Lucas calcule 156 − 98 en faisant : 156 − 100 + 2 = 58. Quelle propriété mathématique utilise-t-il ?', NULL,
  '[{"id":"a","label":"La commutativité de la soustraction"},{"id":"b","label":"La distributivité"},{"id":"c","label":"La conservation des écarts"},{"id":"d","label":"La compensation (ajustement du nombre soustrait puis correction)"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Lucas utilise la stratégie de compensation (aussi appelée « ajustement »).

Son raisonnement :
156 − 98 = 156 − 100 + 2 = 56 + 2 = 58.

Il arrondit 98 à 100 (il soustrait 2 de trop), puis il compense en ajoutant 2 au résultat.

Formellement : a − b = a − (b + k) + k, ici avec k = 2.

Pourquoi les autres réponses sont incorrectes :
• a) La commutativité ne s''applique pas à la soustraction (a − b ≠ b − a en général).
• b) La distributivité concerne la multiplication par rapport à l''addition/soustraction.
• c) La conservation des écarts consisterait à ajouter (ou retrancher) la même quantité aux deux termes : (156 + 2) − (98 + 2) = 158 − 100 = 58. Le résultat est le même, mais la démarche de Lucas correspond à la compensation, pas à la conservation des écarts.

La distinction entre compensation et conservation des écarts est un point didactique important pour l''enseignant : les deux stratégies aboutissent au même résultat mais reposent sur des propriétés différentes.',
  'Confondre la compensation avec la conservation des écarts. Dans la conservation des écarts, on modifie les deux termes de la même quantité (156 − 98 → 158 − 100). Dans la compensation, on modifie un seul terme puis on corrige le résultat.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Comparer des décompositions (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_calcul_mental_strategies',
  'Calcul mental — Stratégies', 'Facile', 'qcm',
  'Quelle décomposition permet de calculer le plus rapidement 35 × 12 ?', NULL,
  '[{"id":"a","label":"35 × 10 + 35 × 2 = 350 + 70 = 420"},{"id":"b","label":"30 × 12 + 5 × 12 = 360 + 60 = 420"},{"id":"c","label":"35 × 6 × 2 = 210 × 2 = 420"},{"id":"d","label":"Les trois sont correctes et donnent le même résultat"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Les trois décompositions sont correctes et donnent toutes 420.

Analyse de chaque stratégie :

a) 35 × 12 = 35 × 10 + 35 × 2 = 350 + 70 = 420
→ Distributivité de la multiplication sur l''addition : a × (b + c) = a × b + a × c.
On décompose 12 = 10 + 2.

b) 35 × 12 = 30 × 12 + 5 × 12 = 360 + 60 = 420
→ Même propriété de distributivité, mais en décomposant l''autre facteur : 35 = 30 + 5.

c) 35 × 12 = 35 × 6 × 2 = 210 × 2 = 420
→ Associativité de la multiplication et décomposition multiplicative de 12 = 6 × 2.

L''enjeu didactique est fondamental : il n''existe pas une seule « bonne » méthode de calcul mental. La flexibilité calculatoire — c''est-à-dire la capacité à choisir et adapter sa stratégie en fonction des nombres en jeu — est un objectif central des programmes de cycle 3.

L''enseignant doit valoriser la diversité des procédures et amener les élèves à les comparer lors de moments de mise en commun.',
  'Croire qu''une seule décomposition est « la bonne » et rejeter les autres, alors que les trois reposent sur des propriétés mathématiques valides (distributivité et associativité).', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Analyser un raisonnement d'élève (Réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_calcul_mental_strategies',
  'Calcul mental — Stratégies', 'Facile', 'reponse_courte',
  'Un enseignant demande à ses élèves de calculer 8 × 125. Léa dit : « 8 × 125 = 1 000 parce que 8 × 125 = 8 × (1 000 ÷ 8) = 1 000 ». Le résultat est juste, mais quel est le problème logique dans le raisonnement de Léa ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["raisonnement circulaire","circulaire","cercle vicieux","circularité","raisonnement est circulaire"]}'::jsonb,
  'Le résultat de Léa (1 000) est correct, mais son raisonnement est circulaire.

Le problème logique : Léa écrit 125 = 1 000 ÷ 8, ce qui présuppose déjà que 8 × 125 = 1 000. Elle utilise le résultat qu''elle cherche à démontrer comme point de départ de sa démonstration. C''est un raisonnement circulaire (ou « cercle vicieux »).

Stratégies valides pour calculer 8 × 125 :

Stratégie 1 — Distributivité :
8 × 125 = 8 × 100 + 8 × 25 = 800 + 200 = 1 000.

Stratégie 2 — Décomposition multiplicative et associativité :
8 × 125 = (2 × 2 × 2) × 125 = 2 × (2 × (2 × 125)) = 2 × (2 × 250) = 2 × 500 = 1 000.
Ou encore : 125 × 8 = 125 × 2 × 2 × 2 = 250 × 2 × 2 = 500 × 2 = 1 000.

Stratégie 3 — Couple remarquable :
On sait que 125 × 8 = 1 000 fait partie des « produits remarquables » à connaître, au même titre que 25 × 4 = 100.

Ce type d''exercice développe la compétence « justifier » (domaine « Chercher / Raisonner » des programmes) et sensibilise à la rigueur de l''argumentation mathématique.',
  'Valider le raisonnement de Léa uniquement parce que le résultat est correct, sans repérer la circularité logique (le résultat est utilisé dans la preuve elle-même).', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Justifier une stratégie de division (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_calcul_mental_strategies',
  'Calcul mental — Stratégies', 'Facile', 'qcm',
  'Un élève de CM2 calcule 72 ÷ 4 en faisant : 72 ÷ 2 = 36, puis 36 ÷ 2 = 18. Cette stratégie est valide car…', NULL,
  '[{"id":"a","label":"Diviser par 4 revient à diviser deux fois par 2 (décomposition du diviseur)"},{"id":"b","label":"Il a appliqué la distributivité de la division"},{"id":"c","label":"Il a utilisé la commutativité de la division"},{"id":"d","label":"C''est un hasard, cette méthode ne fonctionne pas toujours"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La stratégie est valide car diviser par 4 revient à diviser deux fois par 2.

Fondement mathématique :
4 = 2 × 2, donc a ÷ 4 = a ÷ (2 × 2) = (a ÷ 2) ÷ 2.

Application : 72 ÷ 4 = (72 ÷ 2) ÷ 2 = 36 ÷ 2 = 18.

Cette stratégie repose sur la décomposition multiplicative du diviseur et fonctionne toujours, pas seulement dans ce cas particulier. On peut la généraliser :
• Diviser par 8 = diviser trois fois par 2.
• Diviser par 6 = diviser par 2 puis par 3 (ou inversement).
• Diviser par 12 = diviser par 4 puis par 3, etc.

Pourquoi les autres réponses sont incorrectes :
• b) La distributivité de la division s''appliquerait sur une somme : (a + b) ÷ c = a ÷ c + b ÷ c. Ce n''est pas ce qui est fait ici.
• c) La division n''est pas commutative : a ÷ b ≠ b ÷ a en général.
• d) Ce n''est pas un hasard : la propriété est générale et découle de l''associativité de la multiplication (4 = 2 × 2).

En classe, cette stratégie est particulièrement efficace car les divisions par 2 sont parmi les premières maîtrisées par les élèves. Les programmes de cycle 3 encouragent le recours à ces décompositions pour développer le répertoire de calcul mental.',
  'Penser que cette méthode est un « truc » qui marche par hasard (réponse d), alors qu''elle repose sur une propriété mathématique générale : la décomposition multiplicative du diviseur.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

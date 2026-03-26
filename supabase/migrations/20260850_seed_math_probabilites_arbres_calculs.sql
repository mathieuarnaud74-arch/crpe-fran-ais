-- Migration: 10 exercices — Probabilités : calculs et arbres pondérés
-- Série : math_probabilites_arbres_calculs (Mathématiques, organisation_donnees)
-- Événements, probabilités simples et composées, arbres de probabilité
-- UUID prefix: b9ca0000

-- Q1 : Définition — probabilité d'un événement dans une expérience équiprobable (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000001',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'qcm',
  'On lance un dé équilibré à 6 faces numérotées de 1 à 6. Quelle est la probabilité d''obtenir un nombre strictement supérieur à 4 ?',
  NULL,
  '[{"id":"a","label":"1/6"},{"id":"b","label":"1/3"},{"id":"c","label":"1/2"},{"id":"d","label":"2/3"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''univers de cette expérience aléatoire équiprobable comporte 6 issues : {1, 2, 3, 4, 5, 6}. Les issues favorables à l''événement « obtenir un nombre strictement supérieur à 4 » sont 5 et 6, soit 2 issues. Dans une expérience équiprobable, la probabilité d''un événement A est égale au nombre d''issues favorables divisé par le nombre total d''issues : P(A) = 2/6 = 1/3. On vérifie que 0 ≤ 1/3 ≤ 1, ce qui est cohérent pour une probabilité.',
  'L''erreur fréquente est d''inclure 4 dans les issues favorables en confondant « supérieur à 4 » et « supérieur ou égal à 4 ». « Strictement supérieur à 4 » exclut 4, donc seuls 5 et 6 sont retenus, ce qui donne 2 issues favorables et non 3.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 : La somme des probabilités de tous les événements élémentaires = 1 (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000002',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans toute expérience aléatoire, la somme des probabilités de tous les événements élémentaires est toujours égale à 1.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai : c''est l''une des propriétés fondamentales des probabilités. L''ensemble des événements élémentaires forme l''univers Ω, et l''événement certain Ω a une probabilité égale à 1 par définition. Puisque les événements élémentaires sont deux à deux incompatibles et qu''ils couvrent l''ensemble de l''univers, leurs probabilités s''additionnent pour donner P(Ω) = 1. Par exemple, pour un dé à 6 faces : 6 × (1/6) = 1. Cette propriété est essentielle pour vérifier la cohérence d''une distribution de probabilités.',
  'Certains confondent cette propriété avec la somme des probabilités sur les branches d''un nœud dans un arbre. Ce sont deux contextes distincts : la somme des probabilités des événements élémentaires vaut 1 pour l''ensemble de l''expérience, et la somme sur les branches issues d''un même nœud vaut aussi 1 (ce sont deux applications du même principe).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 : Probabilité de l'événement contraire P(Ā) = 1 − P(A) (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000003',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'qcm',
  'On tire une carte au hasard dans un jeu de 32 cartes. La probabilité de tirer un as est 4/32 = 1/8. Quelle est la probabilité de ne pas tirer un as ?',
  NULL,
  '[{"id":"a","label":"1/8"},{"id":"b","label":"4/32"},{"id":"c","label":"7/8"},{"id":"d","label":"3/4"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''événement « ne pas tirer un as » est l''événement contraire (complémentaire) de « tirer un as ». La formule de l''événement contraire est : P(Ā) = 1 − P(A). Ici, P(tirer un as) = 4/32 = 1/8, donc P(ne pas tirer un as) = 1 − 1/8 = 7/8. On peut vérifier directement : il y a 32 − 4 = 28 cartes qui ne sont pas des as, donc P = 28/32 = 7/8. Les deux méthodes concordent, ce qui confirme le résultat.',
  'L''erreur classique est de soustraire de 1 la fraction non simplifiée sans vérifier, ou de calculer 1 − 4 = −3 (en oubliant qu''il s''agit d''une probabilité). Il faut systématiquement appliquer P(Ā) = 1 − P(A) et non 1 − numérateur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 : Arbre à 2 niveaux — tirage avec remise, P(Rouge puis Verte) (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000004',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'reponse_courte',
  'Une urne contient 3 billes rouges et 2 billes vertes. On tire une bille au hasard, on note sa couleur, puis on la remet dans l''urne avant de tirer une seconde bille. Calculer la probabilité d''obtenir une bille rouge puis une bille verte. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6/25"]}'::jsonb,
  'L''urne contient 3 + 2 = 5 billes au total. Comme le tirage est avec remise, la composition de l''urne est identique pour les deux tirages. On construit un arbre à deux niveaux : P(Rouge) = 3/5 et P(Verte) = 2/5 à chaque niveau. La probabilité de l''événement « rouge puis verte » correspond à un chemin unique dans l''arbre : on multiplie les probabilités le long de ce chemin. P(R puis V) = P(R) × P(V) = 3/5 × 2/5 = 6/25. On peut vérifier que 6 et 25 sont premiers entre eux, la fraction est donc irréductible.',
  'L''erreur la plus fréquente est d''additionner les probabilités au lieu de les multiplier : 3/5 + 2/5 = 5/5 = 1, ce qui donnerait une probabilité de 1 (événement certain), ce qui est absurde. Dans un arbre de probabilité, on multiplie les probabilités le long d''un chemin.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 : Somme des probabilités sur chaque branche issue d'un même nœud = 1 (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000005',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans un arbre de probabilité, la somme des probabilités portées sur les branches issues d''un même nœud est toujours égale à 1.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. À chaque nœud d''un arbre de probabilité, les branches représentent les différentes issues possibles d''une étape de l''expérience. Ces issues sont exhaustives (elles couvrent tous les cas possibles) et mutuellement exclusives (elles ne peuvent pas se produire simultanément). Par conséquent, la somme de leurs probabilités est égale à 1. C''est une propriété fondamentale qui permet de vérifier la cohérence d''un arbre : si la somme des branches d''un nœud n''est pas 1, l''arbre est mal construit. Par exemple, si P(Rouge) = 3/5, alors P(Non rouge) = 2/5 et 3/5 + 2/5 = 1.',
  'Une erreur courante est de confondre cette propriété (somme des branches d''un nœud = 1) avec la somme des probabilités de tous les chemins terminaux de l''arbre (qui vaut aussi 1, mais c''est une propriété distincte). Les deux sont vraies mais se situent à des niveaux différents de l''arbre.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 : Probabilité d'une intersection P(A∩B) sur un arbre — multiplication des branches (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000006',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'qcm',
  'Un arbre de probabilité à deux niveaux modélise une expérience. On lit : P(A) = 2/5 et P(B|A) = 1/3 (probabilité de B sachant A). Quelle est la probabilité P(A ∩ B) ?',
  NULL,
  '[{"id":"a","label":"3/8"},{"id":"b","label":"2/15"},{"id":"c","label":"1/3"},{"id":"d","label":"2/5"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans un arbre de probabilité, la probabilité d''un chemin (intersection d''événements) s''obtient en multipliant les probabilités le long de ce chemin. Ici, le chemin correspondant à l''événement « A et B » emprunte d''abord la branche A (probabilité 2/5), puis la branche B sachant A (probabilité 1/3). On applique la formule des probabilités conditionnelles : P(A ∩ B) = P(A) × P(B|A) = 2/5 × 1/3 = 2/15. On vérifie : 2/15 ≤ P(A) = 2/5 = 6/15, ce qui est cohérent car A ∩ B est inclus dans A.',
  'L''erreur classique est d''additionner les probabilités au lieu de les multiplier : 2/5 + 1/3 = 6/15 + 5/15 = 11/15, ce qui donne une valeur supérieure à P(A), ce qui est impossible puisque A ∩ B ⊂ A. Dans un arbre, on multiplie le long d''un chemin et on additionne entre plusieurs chemins distincts.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 : Probabilité d'un événement composé — 2 lancers d'une pièce, exactement 1 Face (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000007',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'reponse_courte',
  'On lance une pièce équilibrée deux fois de suite. Calculer la probabilité d''obtenir exactement un Face (et un Pile) en deux lancers. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/2"]}'::jsonb,
  'On construit l''arbre des deux lancers. Chaque branche a une probabilité 1/2 (pièce équilibrée). Les 4 chemins équiprobables sont : (Pile, Pile), (Pile, Face), (Face, Pile), (Face, Face), chacun de probabilité 1/2 × 1/2 = 1/4. Les chemins favorables à « exactement un Face » sont (Pile, Face) et (Face, Pile), qui sont deux chemins distincts (incompatibles). On additionne leurs probabilités : P(exactement un Face) = 1/4 + 1/4 = 2/4 = 1/2. L''arbre met en évidence les deux ordres possibles, qu''il ne faut pas oublier.',
  'L''erreur la plus fréquente est de ne compter qu''un seul chemin favorable — par exemple (Pile, Face) — et d''oublier (Face, Pile). Cela conduit à la réponse incorrecte 1/4. L''ordre des lancers compte dans l''arbre : (Pile, Face) et (Face, Pile) sont deux issues différentes, toutes deux favorables à l''événement.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 : Tableau de contingence — probabilité conditionnelle (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'qcm',
  'Un tableau de contingence recense 100 élèves selon leur pratique sportive et leur réussite à un test. On lit : 40 élèves pratiquent un sport (dont 30 ont réussi le test) ; 60 élèves ne pratiquent pas de sport (dont 20 ont réussi le test). On choisit un élève au hasard parmi les sportifs. Quelle est la probabilité qu''il ait réussi le test ?',
  NULL,
  '[{"id":"a","label":"30/100"},{"id":"b","label":"50/100"},{"id":"c","label":"30/40"},{"id":"d","label":"20/60"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On cherche la probabilité conditionnelle P(Réussi | Sportif), c''est-à-dire la probabilité de réussir sachant que l''élève est sportif. On se restreint à la sous-population des sportifs : il y en a 40. Parmi eux, 30 ont réussi le test. Donc P(Réussi | Sportif) = 30/40 = 3/4. La probabilité conditionnelle se lit dans la ligne (ou colonne) correspondant à la condition : on divise l''effectif de la cellule concernée par le total de la ligne (ou colonne), et non par le total général. Ici, 30/40 = 3/4, et non 30/100.',
  'L''erreur typique est de diviser par le total général (100) au lieu du total de la sous-population concernée (40). P(Réussi | Sportif) = 30/40 ≠ 30/100. La probabilité conditionnelle restreint l''univers à la condition donnée.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 : Deux événements incompatibles peuvent-ils être indépendants ? (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : deux événements incompatibles (dont aucun n''est impossible) sont toujours indépendants.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Deux événements A et B sont incompatibles si A ∩ B = ∅, c''est-à-dire P(A ∩ B) = 0. Deux événements sont indépendants si P(A ∩ B) = P(A) × P(B). Si A et B sont incompatibles et que P(A) > 0 et P(B) > 0, alors P(A) × P(B) > 0, alors que P(A ∩ B) = 0. On aurait donc 0 = P(A) × P(B) > 0, ce qui est contradictoire. Ainsi, deux événements incompatibles de probabilité strictement positive ne peuvent pas être indépendants : ils sont au contraire très liés — si l''un se réalise, l''autre est impossible.',
  'La confusion vient du fait qu''incompatibilité et indépendance sont deux notions proches dans le langage courant mais opposées en probabilités. Des événements incompatibles s''excluent mutuellement (forte dépendance), tandis que des événements indépendants n''ont aucune influence l''un sur l''autre. Ne pas confondre P(A ∩ B) = 0 (incompatibilité) et P(A ∩ B) = P(A) × P(B) (indépendance).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 : Probabilité totale P(B) via la formule des probabilités totales (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9ca0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres_calculs',
  'Probabilités : calculs et arbres pondérés',
  'Standard',
  'reponse_courte',
  'Un arbre de probabilité comporte deux hypothèses : P(A₁) = 0,4 et P(A₂) = 0,6 (avec A₁ et A₂ formant une partition de l''univers). On lit les probabilités conditionnelles : P(B|A₁) = 0,3 et P(B|A₂) = 0,5. Calculer P(B) en appliquant la formule des probabilités totales. Donner le résultat sous forme décimale.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["0,42","0.42"]}'::jsonb,
  'A₁ et A₂ forment une partition de l''univers (P(A₁) + P(A₂) = 0,4 + 0,6 = 1). On applique la formule des probabilités totales : P(B) = P(A₁) × P(B|A₁) + P(A₂) × P(B|A₂). On calcule chaque terme : P(A₁) × P(B|A₁) = 0,4 × 0,3 = 0,12 et P(A₂) × P(B|A₂) = 0,6 × 0,5 = 0,30. On additionne : P(B) = 0,12 + 0,30 = 0,42. Dans un arbre, chaque produit correspond à la probabilité d''un chemin menant à B, et la somme de ces chemins donne la probabilité totale de B.',
  'L''erreur fréquente est d''additionner les probabilités conditionnelles sans les pondérer : (0,3 + 0,5) / 2 = 0,4, ce qui ne tient pas compte du poids respectif des hypothèses A₁ et A₂. La formule des probabilités totales impose de multiplier chaque probabilité conditionnelle par la probabilité de l''hypothèse correspondante avant d''additionner.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

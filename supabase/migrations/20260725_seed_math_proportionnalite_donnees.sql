-- Seed: Proportionnalité dans les données — Tableaux et graphiques (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques', 'Intermediaire',
  'qcm',
  'On donne le tableau suivant : Nombre de cahiers : 2, 5, 8. Prix (en €) : 3, 7.50, 12. Ce tableau représente-t-il une situation de proportionnalité ? Justifier.',
  NULL,
  '[{"id":"a","label":"Oui, car les prix augmentent quand le nombre de cahiers augmente"},{"id":"b","label":"Oui, car le rapport prix / nombre de cahiers est constant et vaut 1,50"},{"id":"c","label":"Non, car les écarts entre les nombres de cahiers ne sont pas réguliers"},{"id":"d","label":"Non, car on ne connaît pas le prix d''un seul cahier"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour vérifier qu''un tableau traduit une situation de proportionnalité, on calcule le rapport entre les valeurs correspondantes des deux grandeurs. Ici : 3 / 2 = 1,50 ; 7,50 / 5 = 1,50 ; 12 / 8 = 1,50. Le rapport est constant et vaut 1,50 € par cahier. Donc le tableau représente bien une situation de proportionnalité. Le coefficient de proportionnalité est 1,50 : il signifie que chaque cahier coûte 1,50 €. Attention : le fait que les valeurs « augmentent ensemble » ne suffit pas à prouver la proportionnalité — il faut que le rapport soit constant.',
  'Se contenter de vérifier que « quand l''un augmente, l''autre aussi » sans calculer le rapport. Ce critère est nécessaire mais pas suffisant : une relation affine (y = ax + b avec b ≠ 0) vérifie aussi cette propriété sans être proportionnelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques', 'Intermediaire',
  'reponse_courte',
  'Un tableau de proportionnalité indique : pour 3 kg de pommes, le prix est 5,40 €. Compléter : pour 7 kg de pommes, le prix est ... €.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12,60","12.60","12,60 €","12.60 €","12,6","12.6"]}'::jsonb,
  'On détermine d''abord le coefficient de proportionnalité : 5,40 / 3 = 1,80 € par kg. Puis on calcule le prix pour 7 kg : 7 × 1,80 = 12,60 €. Autre méthode possible (passage par l''unité) : si 3 kg coûtent 5,40 €, alors 1 kg coûte 5,40 / 3 = 1,80 €, donc 7 kg coûtent 7 × 1,80 = 12,60 €. On peut aussi utiliser le produit en croix : 3 / 5,40 = 7 / x, donc x = 7 × 5,40 / 3 = 37,80 / 3 = 12,60 €. Toutes ces méthodes sont équivalentes et exploitent la constance du rapport prix/masse.',
  'Additionner au lieu de multiplier : certains élèves raisonnent « 7 − 3 = 4, donc le prix augmente de 4 × quelque chose » au lieu de chercher le coefficient multiplicatif.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques', 'Intermediaire',
  'reponse_courte',
  'Dans un tableau de proportionnalité, lorsque x = 4, y = 10. Quel est le coefficient de proportionnalité qui permet de passer de x à y ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2,5","2.5","2,50","2.50","5/2"]}'::jsonb,
  'Le coefficient de proportionnalité k est le nombre tel que y = k × x. Ici, 10 = k × 4, donc k = 10 / 4 = 2,5. Cela signifie que pour obtenir la valeur de y, on multiplie toujours la valeur correspondante de x par 2,5. Par exemple, si x = 6, alors y = 6 × 2,5 = 15. Le coefficient de proportionnalité est unique pour une relation de proportionnalité donnée et il caractérise entièrement la relation. Attention : le coefficient de x vers y (ici 2,5) est différent du coefficient de y vers x (qui serait 1/2,5 = 0,4).',
  'Diviser dans le mauvais sens (x / y = 4 / 10 = 0,4 au lieu de y / x = 10 / 4 = 2,5). Il faut bien identifier quelle grandeur on veut exprimer en fonction de l''autre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques', 'Intermediaire',
  'qcm',
  'Sur un graphique, on observe une droite passant par les points (0 ; 0), (2 ; 6) et (5 ; 15). Que peut-on affirmer ?',
  NULL,
  '[{"id":"a","label":"La relation représentée est affine mais pas proportionnelle"},{"id":"b","label":"La relation représentée est proportionnelle, de coefficient 3"},{"id":"c","label":"La relation représentée est proportionnelle, de coefficient 1/3"},{"id":"d","label":"On ne peut rien conclure car on n''a que trois points"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Une relation de proportionnalité se traduit graphiquement par une droite passant par l''origine du repère. Ici, la droite passe bien par (0 ; 0) et les rapports y/x sont constants : 6/2 = 3 et 15/5 = 3. Le coefficient de proportionnalité est donc 3 : la relation est y = 3x. C''est le critère graphique fondamental : proportionnalité ⟺ droite passant par l''origine. Si la droite ne passait pas par l''origine, la relation serait affine (y = ax + b avec b ≠ 0) mais pas proportionnelle.',
  'Confondre « droite » et « proportionnalité ». Toute droite dans un repère ne traduit pas une proportionnalité : seules les droites passant par l''origine correspondent à des situations de proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques', 'Intermediaire',
  'vrai_faux',
  'On observe un graphique représentant le prix d''un abonnement téléphonique en fonction de la durée d''appel. La courbe est une droite qui coupe l''axe des ordonnées au point (0 ; 5). Cette relation est une relation de proportionnalité.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. La droite coupe l''axe des ordonnées en (0 ; 5), ce qui signifie que lorsque la durée d''appel est nulle, le prix est déjà de 5 €. Il s''agit d''un forfait fixe auquel s''ajoute un coût variable selon la durée. La relation est donc affine : prix = a × durée + 5, avec a le coût par minute. Pour qu''il y ait proportionnalité, il faudrait que la droite passe par l''origine (0 ; 0), c''est-à-dire qu''aucun appel = aucun coût. La distinction entre relation affine et relation proportionnelle est un point clé des programmes du cycle 3 et du CRPE.',
  'Penser que toute droite sur un graphique traduit une proportionnalité. La proportionnalité exige que la droite passe par l''origine. Ici, l''ordonnée à l''origine (5 €) correspond à un coût fixe (abonnement) incompatible avec la proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques', 'Intermediaire',
  'reponse_courte',
  'Dans une situation de proportionnalité, on sait que 5 mètres de tissu coûtent 32 €. Combien coûtent 8 mètres de tissu ? Utiliser le produit en croix.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["51,20","51.20","51,2","51.2","51,20 €","51.20 €"]}'::jsonb,
  'On utilise le produit en croix (ou règle de trois). On pose : 5 m → 32 € et 8 m → x €. La proportionnalité donne : 5 / 8 = 32 / x, soit x = 8 × 32 / 5 = 256 / 5 = 51,20 €. Vérification avec le coefficient : k = 32 / 5 = 6,40 € par mètre, donc 8 × 6,40 = 51,20 €. Le produit en croix est une technique de calcul efficace dans les situations de proportionnalité. Il repose sur la propriété : si a/b = c/d, alors a × d = b × c. Au CRPE, il est important de savoir l''appliquer mais aussi de comprendre pourquoi il fonctionne.',
  'Inverser le produit en croix et calculer 5 × 32 / 8 = 20 au lieu de 8 × 32 / 5 = 51,20. Toujours vérifier la cohérence : 8 mètres coûtent plus que 5 mètres, donc le prix doit être supérieur à 32 €.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques', 'Intermediaire',
  'qcm',
  'Une recette de crêpes pour 4 personnes nécessite 250 g de farine, 3 œufs et 50 cl de lait. On veut préparer la recette pour 10 personnes. Quelles sont les quantités nécessaires ?',
  NULL,
  '[{"id":"a","label":"500 g de farine, 6 œufs, 100 cl de lait"},{"id":"b","label":"625 g de farine, 7,5 œufs, 125 cl de lait"},{"id":"c","label":"625 g de farine, 8 œufs, 125 cl de lait"},{"id":"d","label":"600 g de farine, 7 œufs, 120 cl de lait"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On adapte une recette en utilisant la proportionnalité. Le coefficient multiplicateur est 10 / 4 = 2,5. On multiplie chaque ingrédient par 2,5 : farine : 250 × 2,5 = 625 g ; œufs : 3 × 2,5 = 7,5 ; lait : 50 × 2,5 = 125 cl. Les quantités correctes sont donc 625 g de farine, 7,5 œufs et 125 cl de lait. Certes, 7,5 œufs n''est pas « pratique » dans la vie courante (on arrondirait à 7 ou 8), mais mathématiquement, c''est le résultat exact de la proportionnalité. L''adaptation de recettes est un contexte classique de proportionnalité au cycle 3 et au CRPE.',
  'Arrondir les œufs à 8 (choix c) en pensant qu''on ne peut pas avoir un demi-œuf. Mathématiquement, dans un exercice de proportionnalité, on donne le résultat exact : 7,5. L''arrondissement relève d''une discussion sur le contexte, pas du calcul.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

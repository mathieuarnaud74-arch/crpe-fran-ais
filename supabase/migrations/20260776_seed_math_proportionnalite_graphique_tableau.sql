-- Seed: Proportionnalité — Graphiques et tableaux (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux', 'Intermediaire',
  'qcm',
  'Un tableau présente les valeurs suivantes : x = 2, 4, 6, 8 et y = 5, 10, 15, 20. Ce tableau représente-t-il une situation de proportionnalité ? Comment le vérifier ?',
  NULL,
  '[{"id":"a","label":"Oui, car les valeurs de y augmentent régulièrement"},{"id":"b","label":"Oui, car le rapport y/x est constant : 5/2 = 10/4 = 15/6 = 20/8 = 2,5"},{"id":"c","label":"Non, car les valeurs ne sont pas des nombres entiers"},{"id":"d","label":"On ne peut pas savoir avec seulement quatre valeurs"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour vérifier qu''un tableau représente une situation de proportionnalité, on calcule le rapport y/x pour chaque couple de valeurs. Si ce rapport est constant, il y a proportionnalité. Ici : 5/2 = 2,5 ; 10/4 = 2,5 ; 15/6 = 2,5 ; 20/8 = 2,5. Le rapport est bien constant et vaut 2,5 : c''est le coefficient de proportionnalité. La réponse (a) est insuffisante : le fait que les valeurs « augmentent régulièrement » ne suffit pas à garantir la proportionnalité (une fonction affine non proportionnelle comme y = 2x + 1 augmente aussi régulièrement). C''est le rapport constant qui caractérise la proportionnalité. Éduscol insiste sur la vérification systématique du rapport pour distinguer les situations proportionnelles des situations qui n''en sont pas.',
  'Se contenter de vérifier que y augmente quand x augmente. Ce critère est nécessaire mais pas suffisant : seul le rapport constant y/x = k caractérise la proportionnalité.',
  'valide',
  'Génération Claude — Programmes cycle 3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux', 'Intermediaire',
  'reponse_courte',
  'Dans un tableau de proportionnalité, on lit : pour x = 3, y = 12 et pour x = 7, y = 28. Quel est le coefficient de proportionnalité ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4","4.0","4,0"]}'::jsonb,
  'Le coefficient de proportionnalité est le nombre constant k tel que y = k × x. On le calcule en divisant y par x : k = 12 ÷ 3 = 4. On vérifie avec le second couple : k = 28 ÷ 7 = 4. Le coefficient est bien constant et vaut 4. Cela signifie que pour obtenir y, on multiplie x par 4. On peut aussi le formuler ainsi : « y est le quadruple de x ». Le coefficient de proportionnalité a une interprétation concrète selon le contexte : si x représente un nombre de kilogrammes et y le prix en euros, alors k = 4 €/kg est le prix au kilogramme. Au CRPE, il est fondamental de savoir calculer, interpréter et utiliser le coefficient de proportionnalité dans des contextes variés.',
  'Diviser x par y au lieu de y par x, ce qui donne l''inverse du coefficient (0,25 au lieu de 4). Toujours diviser la grandeur « résultat » par la grandeur « cause ».',
  'valide',
  'Génération Claude — Programmes cycle 3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux', 'Intermediaire',
  'qcm',
  'Dans un tableau de proportionnalité, on connaît : x = 4, y = 14 et x = 10, y = ?. Complétez le tableau en trouvant la valeur manquante.',
  NULL,
  '[{"id":"a","label":"20"},{"id":"b","label":"35"},{"id":"c","label":"24"},{"id":"d","label":"40"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Dans un tableau de proportionnalité, le coefficient est constant : k = y/x = 14/4 = 3,5. Pour x = 10 : y = 3,5 × 10 = 35. On peut aussi utiliser la méthode du passage par l''unité : si 4 unités correspondent à 14, alors 1 unité correspond à 14 ÷ 4 = 3,5, et 10 unités correspondent à 3,5 × 10 = 35. Autre méthode : la propriété de linéarité. On remarque que 10 = 4 × 2,5, donc y = 14 × 2,5 = 35. Ou encore : 10 = 4 + 4 + 2, donc y = 14 + 14 + 7 = 35 (en utilisant l''additivité de la proportionnalité). Les programmes du cycle 3 insistent sur la maîtrise de plusieurs procédures pour compléter un tableau de proportionnalité : passage par l''unité, coefficient, propriétés de linéarité (additivité et homogénéité).',
  'Ajouter 6 à 14 (car 10 − 4 = 6) pour obtenir 20. Cette erreur revient à confondre situation proportionnelle et situation additive.',
  'valide',
  'Génération Claude — Programmes cycle 3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux', 'Intermediaire',
  'vrai_faux',
  'La représentation graphique d''une situation de proportionnalité est toujours une droite passant par l''origine du repère. Si le graphique est une droite qui ne passe pas par l''origine, la situation n''est pas proportionnelle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est la caractérisation graphique fondamentale de la proportionnalité. Si y = k × x (relation de proportionnalité), alors le graphique est une droite passant par l''origine (0, 0), car quand x = 0, y = k × 0 = 0. Le coefficient de proportionnalité k correspond à la pente de cette droite. Si la droite ne passe pas par l''origine — par exemple y = 2x + 3 — c''est une fonction affine mais pas proportionnelle : quand x = 0, y = 3 ≠ 0. Le passage par l''origine est donc un critère discriminant essentiel. Attention : l''inverse n''est pas toujours vrai pour un nuage de points expérimentaux (des points approximativement alignés passant par l''origine suggèrent une proportionnalité, mais il faut vérifier). Au CRPE, la reconnaissance graphique de la proportionnalité (droite passant par l''origine) est un attendu fondamental.',
  'Croire que toute droite dans un repère représente une situation de proportionnalité. Seules les droites passant par l''origine correspondent à des situations de proportionnalité.',
  'valide',
  'Génération Claude — Programmes cycle 3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux', 'Intermediaire',
  'qcm',
  'Dans un tableau de proportionnalité, on sait que 3 kg de pommes coûtent 4,50 €. Combien coûtent 8 kg de pommes ? (Méthode de la quatrième proportionnelle)',
  NULL,
  '[{"id":"a","label":"9,50 €"},{"id":"b","label":"12 €"},{"id":"c","label":"10 €"},{"id":"d","label":"13,50 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On cherche la quatrième proportionnelle : si 3 kg → 4,50 €, alors 8 kg → ? €. Méthode 1 (passage par l''unité) : 1 kg coûte 4,50 ÷ 3 = 1,50 €, donc 8 kg coûtent 1,50 × 8 = 12 €. Méthode 2 (coefficient) : le coefficient est k = 4,50/3 = 1,5, donc le prix = 1,5 × 8 = 12 €. Méthode 3 (produit en croix) : on pose 3/8 = 4,50/x, donc x = (8 × 4,50)/3 = 36/3 = 12 €. Méthode 4 (propriété de linéarité) : 8 = 3 + 3 + 2, donc le prix = 4,50 + 4,50 + 3 = 12 € (car 2 kg = 2/3 de 3 kg, soit 2/3 × 4,50 = 3 €). Les programmes Éduscol privilégient le passage par l''unité et les propriétés de linéarité au cycle 3, le produit en croix étant introduit au collège.',
  'Additionner au lieu de multiplier : 4,50 + 8 = 12,50 € (coïncidence numérique trompeuse ici). Toujours vérifier la cohérence en utilisant le coefficient de proportionnalité.',
  'valide',
  'Génération Claude — Programmes cycle 3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux', 'Intermediaire',
  'qcm',
  'Parmi les trois situations suivantes, laquelle N''est PAS une situation de proportionnalité ? (A) Le prix des pommes à 2,50 €/kg. (B) L''âge d''un enfant en fonction de sa taille. (C) La conversion d''euros en dollars à un taux fixe.',
  NULL,
  '[{"id":"a","label":"Seule la situation (A) n''est pas proportionnelle"},{"id":"b","label":"Seule la situation (B) n''est pas proportionnelle : la taille d''un enfant n''est pas proportionnelle à son âge"},{"id":"c","label":"Seule la situation (C) n''est pas proportionnelle"},{"id":"d","label":"Aucune des trois n''est proportionnelle"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La situation (A) est proportionnelle : le prix est proportionnel au poids (prix = 2,50 × poids). Pour 0 kg, le prix est 0 €. La situation (C) est proportionnelle : le montant en dollars est proportionnel au montant en euros (dollars = taux × euros). Pour 0 €, on obtient 0 $. En revanche, la situation (B) n''est PAS proportionnelle : un enfant de 2 ans ne mesure pas le double d''un enfant de 1 an, et un enfant de 10 ans ne mesure pas 10 fois la taille d''un enfant de 1 an. La relation entre âge et taille n''est pas linéaire et ne passe pas par l''origine (à la naissance, l''enfant mesure environ 50 cm, pas 0 cm). C''est un piège classique au CRPE : distinguer les situations réellement proportionnelles de celles qui ne le sont pas. Éduscol recommande de confronter régulièrement les élèves à des contre-exemples pour affiner leur compréhension de la proportionnalité.',
  'Croire que toute situation où « quand l''un augmente, l''autre augmente » est proportionnelle. La proportionnalité exige un rapport constant ET un passage par l''origine.',
  'valide',
  'Génération Claude — Programmes cycle 3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux', 'Intermediaire',
  'reponse_courte',
  'Un touriste échange des euros en livres sterling. Il obtient 85 £ pour 100 €. Combien de livres obtiendra-t-il pour 260 € ? (Le taux de change est fixe.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["221","221 £","221 livres","221,00"]}'::jsonb,
  'Le taux de change étant fixe, la situation est proportionnelle. Le coefficient de proportionnalité est k = 85/100 = 0,85 £ par euro. Pour 260 € : 260 × 0,85 = 221 £. Détail du calcul mental : 260 × 0,85 = 260 × (1 − 0,15) = 260 − 260 × 0,15 = 260 − 39 = 221. Ou bien : 260 × 0,85 = 260 × 85/100 = (260 × 85) ÷ 100. On calcule 260 × 85 = 260 × 80 + 260 × 5 = 20 800 + 1 300 = 22 100, puis 22 100 ÷ 100 = 221. On peut aussi utiliser la linéarité : 200 € → 170 £ (× 2), 60 € → 51 £ (× 0,6), total = 170 + 51 = 221 £. Ce problème de conversion monétaire est un grand classique du CRPE et illustre parfaitement l''application de la proportionnalité à une situation concrète.',
  'Diviser au lieu de multiplier (ou inversement). Toujours vérifier le sens : 1 € < 1 £ en valeur, donc le nombre de livres doit être inférieur au nombre d''euros.',
  'valide',
  'Génération Claude — Programmes cycle 3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

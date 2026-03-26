-- Migration: 10 exercices — Arrondis, troncatures et valeurs approchées
-- Série : math_arrondis_troncatures (Mathématiques, nombres_calcul)
-- Arrondir, tronquer, encadrer, valeur approchée par excès/défaut
-- UUID prefix: e9380000

-- Q1 — QCM — Définition arrondi au dixième
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'qcm',
  'Quel est l''arrondi de 3,847 au dixième ?',
  NULL,
  '[{"id":"a","label":"3,8"},{"id":"b","label":"3,9"},{"id":"c","label":"3,84"},{"id":"d","label":"4"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''arrondi de 3,847 au dixième est 3,8. Pour arrondir au dixième, on regarde le chiffre des centièmes (ici 4). Si ce chiffre est < 5, on conserve le chiffre des dixièmes (8) ; si ≥ 5, on augmente le chiffre des dixièmes de 1. Ici, 4 < 5, donc on garde 3,8. Règle générale : pour arrondir à un rang donné, on regarde le chiffre immédiatement à droite. S''il est < 5, on tronque ; s''il est ≥ 5, on arrondit vers le haut.',
  'Confondre arrondi au dixième et troncature au dixième. Ici, les deux donnent le même résultat (3,8), mais ce n''est pas toujours le cas (ex. : 3,857 → arrondi 3,9, troncature 3,8).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Réponse courte — Arrondi au centième
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'reponse_courte',
  'Donnez l''arrondi de 7,2951 au centième.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7,30","7.30"]}'::jsonb,
  'L''arrondi de 7,2951 au centième est 7,30. On regarde le chiffre des millièmes (5). Comme 5 ≥ 5, on augmente le chiffre des centièmes de 1 : 9 + 1 = 10, ce qui provoque une retenue. Le 9 des centièmes devient 0, et le 2 des dixièmes devient 3. Résultat : 7,30 (on écrit le 0 final pour indiquer la précision au centième). Attention : ne pas écrire 7,3, car cela suggère un arrondi au dixième, pas au centième. Le 0 final est significatif.',
  'Écrire 7,29 (troncature) au lieu de 7,30 (arrondi). Quand le chiffre suivant est ≥ 5, on arrondit vers le HAUT. Et attention à la retenue du 9→10.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — Troncature vs arrondi
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : la troncature de 6,789 au dixième est 6,7.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! La troncature consiste simplement à « couper » les chiffres après le rang demandé, sans arrondir. Pour 6,789 au dixième : on garde 6,7 et on supprime le reste (89). La troncature est toujours une valeur approchée par défaut (inférieure ou égale au nombre exact). Comparaison : troncature de 6,789 au dixième = 6,7 ; arrondi de 6,789 au dixième = 6,8 (car le chiffre des centièmes, 8, est ≥ 5). La troncature est plus simple à calculer mais moins précise que l''arrondi.',
  'Confondre troncature et arrondi. La troncature ne regarde JAMAIS le chiffre suivant. Elle coupe, c''est tout.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Valeur approchée par excès et par défaut
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'qcm',
  'Quelle est la valeur approchée par excès de π ≈ 3,14159… au centième ?',
  NULL,
  '[{"id":"a","label":"3,14"},{"id":"b","label":"3,15"},{"id":"c","label":"3,141"},{"id":"d","label":"3,2"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La valeur approchée par excès de π au centième est 3,15. La valeur approchée par excès est la plus petite valeur (au rang demandé) qui est SUPÉRIEURE ou ÉGALE au nombre. Ici, 3,14 < π < 3,15, donc 3,14 est la valeur approchée par défaut et 3,15 est la valeur approchée par excès. L''encadrement au centième est : 3,14 ≤ π ≤ 3,15 (amplitude = 0,01). La valeur approchée par défaut = troncature. La valeur approchée par excès = troncature + 1 unité au dernier rang.',
  'Confondre valeur approchée par excès et arrondi. L''arrondi de π au centième est 3,14 (car le chiffre des millièmes est 1 < 5). La valeur approchée par excès est toujours ≥ au nombre : ici 3,15.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Réponse courte — Encadrement à l'unité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'reponse_courte',
  'Quel est l''arrondi de √50 à l''unité ? (Indication : 7² = 49 et 8² = 64)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7"]}'::jsonb,
  'L''arrondi de √50 à l''unité est 7. On sait que 7² = 49 et 8² = 64. Comme 49 < 50 < 64, on a 7 < √50 < 8. Pour décider entre 7 et 8, on calcule 7,5² = 56,25. Comme 50 < 56,25, on a √50 < 7,5, donc √50 est plus proche de 7 que de 8. L''arrondi à l''unité est donc 7. Valeur exacte : √50 = 5√2 ≈ 7,071. Cette technique d''encadrement successif est fondamentale : on encadre d''abord entre deux entiers, puis on affine avec le milieu.',
  'Arrondir à 8 parce que 50 est « entre 49 et 64, plus près du milieu ». Attention : c''est √50 qu''il faut comparer à 7,5, pas 50 qu''il faut comparer à 56,5.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Chiffres significatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'qcm',
  'Combien de chiffres significatifs comporte le nombre 0,00340 ?',
  NULL,
  '[{"id":"a","label":"3"},{"id":"b","label":"5"},{"id":"c","label":"6"},{"id":"d","label":"2"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '0,00340 comporte 3 chiffres significatifs : 3, 4 et 0 (le dernier zéro). Règles des chiffres significatifs : (1) les zéros à GAUCHE ne comptent pas (ils servent uniquement à placer la virgule) ; (2) les zéros à DROITE comptent (ils indiquent une précision de mesure) ; (3) tous les chiffres non nuls comptent. Ici : 0,00340 → les trois premiers zéros (0,00…) ne comptent pas, mais le 0 final après 34 compte. Donc : 3, 4, 0 = 3 chiffres significatifs. En écriture scientifique : 3,40 × 10⁻³.',
  'Compter les zéros de placement (avant le 3) comme significatifs. Seuls les zéros de précision (après le dernier chiffre non nul) comptent.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Précision d'un arrondi
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : si l''arrondi d''un nombre x au dixième est 4,3, alors 4,25 ≤ x < 4,35.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Si l''arrondi au dixième est 4,3, cela signifie que x est plus proche de 4,3 que de 4,2 ou 4,4. Donc x ∈ [4,25 ; 4,35[. La borne inférieure 4,25 est incluse (4,250 arrondi au dixième donne 4,3). La borne supérieure 4,35 est exclue (4,350 arrondi au dixième donne 4,4 par la convention « le 5 arrondit vers le haut »). L''amplitude de cet intervalle est 0,10 = un dixième. Remarque : connaître l''arrondi d''un nombre, c''est le connaître à un demi-dixième près (erreur max = 0,05).',
  'Écrire 4,3 ≤ x ≤ 4,4 (intervalle trop large). L''encadrement correct est centré sur 4,3 avec une demi-unité de chaque côté au rang de l''arrondi.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Arrondi en situation concrète
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'qcm',
  'On doit transporter 53 élèves en car. Chaque car contient 20 places. Combien de cars faut-il réserver ?',
  NULL,
  '[{"id":"a","label":"2 (arrondi par défaut de 53/20 = 2,65)"},{"id":"b","label":"3 (arrondi par excès car on ne peut pas laisser d''élèves)"},{"id":"c","label":"2,65 (valeur exacte)"},{"id":"d","label":"3 (arrondi mathématique de 2,65)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il faut 3 cars. 53 ÷ 20 = 2,65. On ne peut pas commander 2,65 cars. Et 2 cars = 40 places, ce qui est insuffisant (53 élèves). Il faut donc 3 cars = 60 places. Ici, on arrondit par EXCÈS par nécessité pratique (on ne peut pas laisser 13 élèves sans transport). C''est un arrondi « contextuel » : la situation impose l''arrondi par excès, pas l''arrondi mathématique (qui donnerait aussi 3 ici, mais pas pour la même raison). Au CRPE, il est fréquent de rencontrer des problèmes où le contexte impose le sens de l''arrondi.',
  'Arrondir par défaut (2 cars) en appliquant la règle mathématique sans réfléchir au contexte. Ici, le contexte (transporter TOUS les élèves) impose l''arrondi par excès.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Troncature d'un quotient
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'reponse_courte',
  'Donnez la troncature au centième du quotient 10 ÷ 3.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3,33"]}'::jsonb,
  '10 ÷ 3 = 3,3333… La troncature au centième consiste à couper après le deuxième chiffre après la virgule, sans arrondir : 3,33. La valeur approchée par défaut au centième est 3,33 et la valeur approchée par excès au centième est 3,34. L''arrondi au centième serait aussi 3,33 (car le chiffre des millièmes est 3 < 5). L''encadrement au centième est : 3,33 < 10/3 < 3,34. 10/3 est un nombre rationnel non décimal (son développement décimal est infini et périodique).',
  'Écrire 3,34 (arrondi au centième en regardant le mauvais chiffre) au lieu de 3,33 (troncature). La troncature ne regarde jamais le chiffre suivant.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Erreur d'arrondi et propagation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9380000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_arrondis_troncatures',
  'Arrondis, troncatures et valeurs approchées',
  'Standard',
  'qcm',
  'Un élève calcule 1/3 + 1/3 + 1/3 en utilisant des valeurs arrondies au dixième : 0,3 + 0,3 + 0,3 = 0,9. Quelle est l''erreur commise et sa cause ?',
  NULL,
  '[{"id":"a","label":"L''erreur est de 0,1 due à la propagation des erreurs d''arrondi"},{"id":"b","label":"L''erreur est de 0,01 due à un mauvais calcul"},{"id":"c","label":"Il n''y a pas d''erreur, 0,9 est exact"},{"id":"d","label":"L''erreur vient d''une mauvaise utilisation de la calculatrice"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''erreur est de 0,1 (le résultat exact est 1, pas 0,9). Chaque arrondi de 1/3 ≈ 0,333… au dixième introduit une erreur de −0,033…. En additionnant trois fois cette erreur, on obtient une erreur cumulée de −0,1. C''est le phénomène de propagation des erreurs d''arrondi : les petites erreurs individuelles s''accumulent et peuvent devenir significatives. Cet exemple est un classique pour illustrer les limites de la représentation décimale approchée des fractions. Il montre pourquoi il est préférable de calculer avec les fractions exactes et de n''arrondir qu''à la fin.',
  'Croire que les arrondis sont toujours sans conséquence. La propagation des erreurs d''arrondi est un phénomène réel qui peut fausser significativement les résultats, surtout en chaîne de calculs.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

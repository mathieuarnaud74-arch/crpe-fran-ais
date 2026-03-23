-- Seed: Didactique de la multiplication — Sens et algorithmes (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'qcm',
  'Dans la théorie des champs conceptuels de Vergnaud, le problème « Une boîte contient 6 œufs. Maman achète 4 boîtes. Combien d''œufs a-t-elle en tout ? » relève d''une structure multiplicative. De quel type de problème s''agit-il ?',
  NULL,
  '[{"id":"a","label":"Isomorphisme de mesures (proportionnalité simple entre deux grandeurs)"},{"id":"b","label":"Produit de mesures (le produit de deux grandeurs donne une troisième grandeur)"},{"id":"c","label":"Proportion multiple (une grandeur est proportionnelle à plusieurs autres)"},{"id":"d","label":"Comparaison multiplicative (une quantité est N fois plus grande qu''une autre)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Ce problème relève de l''isomorphisme de mesures, le type le plus fréquent et le plus élémentaire des structures multiplicatives selon Vergnaud. Il met en jeu deux espaces de mesures liés par une relation de proportionnalité simple : le nombre de boîtes (espace 1) et le nombre d''œufs (espace 2). On passe de l''un à l''autre par un opérateur scalaire (×6). Le schéma est : 1 boîte → 6 œufs, donc 4 boîtes → ? œufs. Ce type de problème est introduit dès le CE1 et constitue la porte d''entrée dans le champ multiplicatif. Un produit de mesures serait par exemple le calcul d''une aire (longueur × largeur), où deux grandeurs de nature différente engendrent une troisième.',
  'Confondre isomorphisme de mesures et produit de mesures. Le produit de mesures implique que le résultat est d''une nature différente des deux opérandes (ex : m × m = m²). Ici, on reste dans la même logique proportionnelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'vrai_faux',
  'Un élève de CE2 calcule 34 × 6 et écrit : 34 × 6 = 30 × 6 + 4 × 6 = 180 + 24 = 204. Cet élève utilise la propriété de commutativité de la multiplication.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'L''élève utilise la propriété de distributivité de la multiplication par rapport à l''addition, et non la commutativité. Il décompose 34 = 30 + 4, puis applique : (30 + 4) × 6 = 30 × 6 + 4 × 6. La distributivité est le fondement de tous les algorithmes de multiplication posée et du calcul mental multiplicatif. La commutativité, elle, consiste à inverser l''ordre des facteurs (a × b = b × a). Éduscol recommande de travailler explicitement la distributivité en calcul mental dès le CE2, car elle permet de ramener un calcul complexe à des calculs simples sur les dizaines et les unités. C''est cette propriété qui donne sens à l''algorithme posé.',
  'Confondre distributivité et commutativité. La commutativité change l''ordre des facteurs (3 × 4 = 4 × 3), tandis que la distributivité décompose l''un des facteurs en une somme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'qcm',
  'Un élève de CM1 calcule 246 × 37 avec l''algorithme posé et obtient un résultat erroné. En analysant sa copie, vous constatez que les produits partiels (246 × 7 et 246 × 3) sont corrects, mais le résultat final est faux. Quelle est l''erreur la plus probable ?',
  NULL,
  '[{"id":"a","label":"L''élève ne maîtrise pas les tables de multiplication"},{"id":"b","label":"L''élève a oublié de décaler le deuxième produit partiel d''un rang vers la gauche (oubli de la retenue positionnelle)"},{"id":"c","label":"L''élève a additionné les deux produits partiels de droite à gauche au lieu de gauche à droite"},{"id":"d","label":"L''élève a inversé l''ordre des deux produits partiels"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''erreur la plus probable est l''oubli du décalage du deuxième produit partiel. Quand on multiplie 246 par 37, on calcule d''abord 246 × 7 (unités), puis 246 × 3 (dizaines). Le deuxième produit partiel doit être décalé d''un rang vers la gauche (ou, de façon équivalente, on place un 0 à droite) car on multiplie en réalité par 30 et non par 3. Si l''élève écrit les deux produits partiels alignés à droite sans décalage, l''addition finale sera fausse. Cette erreur révèle que l''élève applique mécaniquement l''algorithme sans comprendre la valeur positionnelle des chiffres du multiplicateur. C''est un argument fort pour travailler le sens de l''algorithme via la décomposition : 246 × 37 = 246 × 7 + 246 × 30.',
  'Penser que l''erreur vient des tables alors que les produits partiels sont corrects. Si 246 × 7 et 246 × 3 sont justes, les tables sont maîtrisées. Le problème se situe dans la gestion de la valeur positionnelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'reponse_courte',
  'Dans la théorie des champs conceptuels de Vergnaud, comment appelle-t-on le type de problème multiplicatif dans lequel le produit de deux grandeurs de natures différentes donne une grandeur d''une troisième nature (par exemple : longueur × largeur = aire) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["produit de mesures","le produit de mesures","Produit de mesures","Le produit de mesures"]}'::jsonb,
  'Il s''agit du « produit de mesures », l''un des trois grands types de problèmes multiplicatifs identifiés par Vergnaud. Contrairement à l''isomorphisme de mesures (proportionnalité entre deux grandeurs de même nature ou liées linéairement), le produit de mesures combine deux grandeurs de natures différentes pour en produire une troisième. L''exemple canonique est le calcul d''aire : longueur (en m) × largeur (en m) = aire (en m²). Autre exemple : le produit cartésien (3 chemises × 4 pantalons = 12 tenues possibles). Ce type de problème est plus abstrait et apparaît plus tardivement dans la scolarité (fin C2, surtout C3), car l''élève doit comprendre que le résultat n''est pas « du même type » que les opérandes.',
  'Confondre produit de mesures et proportion multiple. La proportion multiple met en jeu une grandeur proportionnelle à plusieurs autres simultanément (ex : le prix dépend à la fois du poids et du type de fruit), tandis que le produit de mesures génère une grandeur nouvelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'qcm',
  'Les programmes Éduscol précisent la progression de l''apprentissage de la multiplication à l''école élémentaire. Quelle affirmation reflète le mieux cette progression du cycle 2 au cycle 3 ?',
  NULL,
  '[{"id":"a","label":"Au C2, on mémorise les tables de 1 à 9 et on pose la multiplication à deux chiffres ; au C3, on révise uniquement"},{"id":"b","label":"Au C2, on introduit la multiplication comme addition itérée, on mémorise progressivement les tables et on aborde la multiplication par un nombre à un chiffre ; au C3, on étend à la multiplication de deux nombres à plusieurs chiffres et on travaille la distributivité"},{"id":"c","label":"La multiplication n''est introduite qu''au C3 ; au C2, on ne travaille que l''addition et la soustraction"},{"id":"d","label":"Au C2, on apprend l''algorithme posé complet ; au C3, on passe directement à la division"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La progression Éduscol suit une logique spiralaire. Au cycle 2 (CP-CE1-CE2), la multiplication est d''abord introduite par le sens : l''addition itérée (3 + 3 + 3 + 3 = 4 × 3), puis les situations de proportionnalité simple. Les tables sont mémorisées progressivement (tables de 2 et 5 au CE1, toutes les tables au CE2). L''algorithme posé se limite à la multiplication d''un nombre à plusieurs chiffres par un nombre à un chiffre. Au cycle 3 (CM1-CM2-6e), on étend à la multiplication de deux nombres à plusieurs chiffres, on travaille explicitement la distributivité comme propriété mathématique, et on applique la multiplication à de nouveaux domaines (décimaux, proportionnalité, aires). Cette progression respecte le principe de complexification progressive.',
  'Croire que la multiplication n''est abordée qu''au C3 ou que l''algorithme complet est attendu dès le C2. Les programmes prévoient un travail sur le sens dès le CP (groupements, partages) et une montée en complexité progressive.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'vrai_faux',
  'L''algorithme de multiplication « en jalousie » (ou « per gelosia ») repose sur un principe mathématique différent de l''algorithme traditionnel posé et donne parfois des résultats différents.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'L''algorithme en jalousie (ou per gelosia, aussi appelé « multiplication en treillis ») repose exactement sur le même principe mathématique que l''algorithme traditionnel : la distributivité de la multiplication par rapport à l''addition et la décomposition en unités de numération. Il donne toujours le même résultat. Sa présentation en grille fait apparaître explicitement chaque produit partiel dans une case, les retenues étant gérées par les diagonales du treillis. L''intérêt pédagogique de cet algorithme est qu''il sépare clairement les deux étapes (produits partiels, puis addition des retenues), ce qui peut aider les élèves qui confondent « multiplier et retenir » dans l''algorithme classique. Éduscol encourage la découverte de plusieurs algorithmes pour enrichir la compréhension de l''opération.',
  'Croire que différents algorithmes de multiplication reposent sur des principes différents. Tous s''appuient sur la distributivité et la numération positionnelle ; seule la présentation spatiale et la gestion des retenues diffèrent.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'qcm',
  'Vous devez concevoir une situation d''introduction de la multiplication au CE1. Selon les recommandations didactiques, quelle séquence est la plus pertinente pour faire émerger le sens de cette opération avant de la formaliser ?',
  NULL,
  '[{"id":"a","label":"Donner directement la définition « multiplier c''est faire une addition répétée » puis faire des exercices d''application"},{"id":"b","label":"Proposer un problème de groupements égaux (ex : « distribuer 4 bonbons à chaque enfant, il y a 6 enfants ») puis faire émerger l''écriture multiplicative à partir des procédures des élèves (addition itérée, dessin, comptage)"},{"id":"c","label":"Faire mémoriser les tables de multiplication par cœur avant toute mise en situation"},{"id":"d","label":"Présenter l''algorithme posé et demander aux élèves de l''appliquer à des calculs simples"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La démarche la plus pertinente s''inscrit dans la théorie des situations didactiques de Brousseau : on propose d''abord une situation-problème (phase d''action) où les élèves mobilisent leurs procédures personnelles (dessins, comptage par bonds, addition répétée). Ensuite, lors de la mise en commun (phase de formulation), on fait émerger l''écriture multiplicative comme un outil d''écriture plus économique : « 4 + 4 + 4 + 4 + 4 + 4 = 6 × 4 ». Enfin, la phase d''institutionnalisation formalise le lien. Cette approche permet de dépasser progressivement la vision de la multiplication comme simple addition répétée pour construire un véritable sens multiplicatif (isomorphisme de mesures). Commencer par la définition ou par les tables serait mettre la charrue avant les bœufs.',
  'Introduire la multiplication uniquement comme « addition répétée » sans jamais la dépasser. Si cette entrée est légitime au CE1, il faut rapidement proposer des situations qui ne se réduisent pas à l''addition itérée (produit cartésien, aire) pour enrichir le champ conceptuel.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

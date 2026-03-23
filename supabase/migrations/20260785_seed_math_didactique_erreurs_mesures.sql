-- Seed: Didactique des mesures — Erreurs typiques d'élèves (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves', 'Intermediaire',
  'qcm',
  'Un élève de CM1 confond systématiquement périmètre et aire. Quand on lui demande le périmètre d''un rectangle de 5 cm sur 3 cm, il répond « 15 cm² ». Quel est l''obstacle didactique principal qui explique cette confusion ?',
  NULL,
  '[{"id":"a","label":"L''élève n''a pas construit la distinction conceptuelle entre la mesure d''une longueur (grandeur unidimensionnelle) et la mesure d''une surface (grandeur bidimensionnelle)"},{"id":"b","label":"L''élève ne connaît pas les formules et les confond par manque de mémorisation"},{"id":"c","label":"L''élève a un trouble de l''attention qui l''empêche de lire correctement la consigne"},{"id":"d","label":"L''élève n''a jamais vu de rectangle auparavant et ne sait pas ce que c''est"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La confusion périmètre/aire est l''une des erreurs les plus fréquentes et les plus résistantes dans l''enseignement des grandeurs et mesures. Elle ne relève pas d''un simple problème de mémorisation de formules mais d''un obstacle conceptuel profond : l''élève n''a pas construit la distinction entre une grandeur unidimensionnelle (longueur, mesurée en cm, m...) et une grandeur bidimensionnelle (aire, mesurée en cm², m²...). Quand il calcule 5 × 3 = 15 pour le périmètre, il confond « combiner les dimensions du rectangle » avec « en faire le tour ». Vergnaud montre que les grandeurs constituent un champ conceptuel à part entière, avec ses propres invariants opératoires : l''élève doit comprendre que le périmètre est une somme de longueurs (même dimension) tandis que l''aire est un produit de deux longueurs (changement de dimension). Brousseau insiste sur la nécessité de situations concrètes de comparaison : deux rectangles peuvent avoir le même périmètre mais des aires différentes (et inversement). Éduscol recommande de travailler ces deux notions simultanément, par contraste, plutôt que séquentiellement, pour favoriser la distinction.',
  'Traiter cette confusion comme un simple problème de mémorisation des formules. C''est un obstacle conceptuel sur la nature des grandeurs.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves', 'Intermediaire',
  'vrai_faux',
  'Un élève de CM2 doit convertir 3 m² en cm². Il écrit : « 3 m² = 300 cm² » en appliquant le facteur ×100 (car 1 m = 100 cm). Cette erreur provient de l''application incorrecte de la conversion linéaire (×100) à une grandeur de dimension 2, alors que le facteur correct est ×10 000 (car 1 m² = 100 cm × 100 cm = 10 000 cm²).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cette erreur est extrêmement courante et révèle un obstacle conceptuel majeur dans la compréhension des conversions de grandeurs. L''élève applique la relation linéaire 1 m = 100 cm directement aux unités d''aire, sans comprendre que l''aire est une grandeur bidimensionnelle. En réalité, 1 m² = 1 m × 1 m = 100 cm × 100 cm = 10 000 cm². Le facteur de conversion pour les aires est le carré du facteur de conversion pour les longueurs : si 1 m = 100 cm (facteur 100), alors 1 m² = 10 000 cm² (facteur 100² = 10 000). De même, 1 m³ = 1 000 000 cm³ (facteur 100³). Vergnaud montre que cette erreur provient d''un théorème-en-acte erroné : « les conversions de mesures utilisent toujours le même facteur, quelle que soit la grandeur ». Brousseau recommande de faire vivre concrètement cette conversion : découper un carré de 1 m de côté en carrés de 1 cm de côté pour que l''élève constate qu''il en faut 10 000 et non 100. Éduscol insiste sur le lien entre manipulation concrète et compréhension des conversions d''unités d''aire et de volume.',
  'Ne pas relier les conversions d''aire à la structure bidimensionnelle de cette grandeur. Le facteur de conversion est le carré du facteur linéaire.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves', 'Intermediaire',
  'qcm',
  'Un enseignant demande à ses élèves de CM1 d''exprimer la contenance d''un aquarium en différentes unités. Un élève écrit : « 1 L = 1 cm³ ». Quelle est l''équivalence correcte entre le litre et les unités de volume du système métrique ?',
  NULL,
  '[{"id":"a","label":"1 L = 1 dm³ = 1 000 cm³"},{"id":"b","label":"1 L = 1 cm³ = 0,001 dm³"},{"id":"c","label":"1 L = 1 m³ = 1 000 000 cm³"},{"id":"d","label":"1 L = 100 cm³ = 0,1 dm³"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''équivalence fondamentale est : 1 L = 1 dm³ = 1 000 cm³. Cette relation est souvent source de confusion chez les élèves car elle articule deux systèmes de mesure : les unités de capacité (litre, décilitre, centilitre, millilitre) et les unités de volume (m³, dm³, cm³, mm³). L''erreur de l''élève (1 L = 1 cm³) est très fréquente car le centimètre est une unité familière et « petite », ce qui semble correspondre intuitivement à une « petite » quantité de liquide. En réalité, 1 cm³ = 1 mL, soit un millième de litre. Vergnaud montre que la compréhension de ces équivalences nécessite la coordination de deux champs conceptuels : celui des volumes (grandeur tridimensionnelle) et celui des capacités (mesure de contenance). Brousseau recommande des situations concrètes : remplir un cube de 1 dm de côté avec de l''eau et constater qu''il contient exactement 1 L. Éduscol précise que ces équivalences doivent être construites expérimentalement au cycle 3 et non simplement mémorisées.',
  'Mémoriser l''équivalence L/dm³ sans la comprendre. La manipulation concrète (remplir un cube de 10 cm de côté) est essentielle pour ancrer cette relation.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves', 'Intermediaire',
  'reponse_courte',
  'Un élève doit mesurer la longueur d''un segment avec une règle graduée. Il place le début du segment sur la graduation « 1 » au lieu de « 0 » et lit la graduation finale « 8 ». Il annonce que le segment mesure 8 cm. Quelle est la longueur réelle du segment ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7 cm","7cm","7"]}'::jsonb,
  'Le segment mesure en réalité 7 cm (8 - 1 = 7). Cette erreur, dite erreur de « lecture d''instrument gradué » ou erreur d''origine, est très fréquente au cycle 2 et persiste parfois au cycle 3. L''élève confond « lire la graduation finale » avec « calculer la différence entre graduation finale et graduation initiale ». Quand on place le début du segment sur le repère 0, les deux coïncident. Mais dès que le repère d''origine est différent de 0, l''erreur apparaît. Cette confusion révèle que l''élève n''a pas construit le concept de mesure comme différence entre deux repères. Vergnaud montre que la mesure d''une longueur relève du champ conceptuel additif : mesurer, c''est calculer un écart. Brousseau recommande de confronter intentionnellement les élèves à des situations où le repère 0 n''est pas disponible (règle cassée, graduation commençant à 3...) pour les obliger à utiliser la soustraction. Éduscol insiste sur l''importance de faire manipuler des instruments variés et de travailler explicitement la notion de « zéro » comme origine de la mesure.',
  'Penser que cette erreur est anecdotique. Elle révèle une incompréhension fondamentale de la mesure comme écart entre deux repères.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves', 'Intermediaire',
  'qcm',
  'Un élève de CE2 doit estimer la hauteur de la porte de la classe. Il propose « 2 km ». Quelle compétence fait défaut à cet élève, et comment y remédier ?',
  NULL,
  '[{"id":"a","label":"L''élève manque de repères de grandeur (ordres de grandeur) pour les unités de longueur. Il faut construire des « références corporelles et environnementales » : ma taille ≈ 1,30 m, la porte ≈ 2 m, la cour ≈ 50 m"},{"id":"b","label":"L''élève ne sait pas lire les nombres et confond 2 km avec 2 m"},{"id":"c","label":"L''élève plaisante et ne prend pas l''exercice au sérieux"},{"id":"d","label":"L''élève n''a jamais vu de porte et ne peut pas estimer sa taille"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''estimation des grandeurs est une compétence fondamentale qui repose sur la construction de « repères de grandeur » — des références mémorisées qui permettent d''évaluer la plausibilité d''une mesure. Un élève qui propose 2 km pour une porte n''a pas construit de lien entre les unités de mesure et les objets du quotidien. Les repères de grandeur sont des connaissances pragmatiques que Vergnaud appelle des « invariants opératoires » : ils permettent de contrôler la vraisemblance d''un résultat. Par exemple : ma taille ≈ 1,30 m, la porte de la classe ≈ 2 m, la cour de récréation ≈ 50 m de long, la distance maison-école ≈ 1 km. Brousseau montre que ces repères ne se construisent pas par l''apprentissage de tableaux de conversion mais par des activités de mesurage effectif dans l''environnement de l''élève. Les programmes Éduscol insistent sur l''importance des activités d''estimation avant toute mesure : « Estime d''abord, mesure ensuite, compare tes résultats. » Cette démarche développe progressivement le sens des grandeurs et la capacité de contrôle des résultats.',
  'Se contenter d''enseigner les tableaux de conversion sans construire de repères concrets. Les repères de grandeur sont la base de toute estimation raisonnable.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves', 'Intermediaire',
  'qcm',
  'Pour remédier à la confusion périmètre/aire chez des élèves de CM1, un enseignant conçoit une activité. Laquelle est la plus pertinente au regard de la recherche en didactique ?',
  NULL,
  '[{"id":"a","label":"Donner aux élèves des rectangles isopérimétriques (même périmètre) mais d''aires différentes, et leur demander de les recouvrir avec des carrés-unités. Ils constatent que « même tour » ne signifie pas « même surface »"},{"id":"b","label":"Faire recopier 20 fois les formules P = 2(L+l) et A = L×l pour les mémoriser"},{"id":"c","label":"Faire un cours magistral sur la différence entre grandeur unidimensionnelle et bidimensionnelle"},{"id":"d","label":"Interdire aux élèves de calculer l''aire tant qu''ils n''ont pas parfaitement maîtrisé le périmètre"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''activité proposée (rectangles isopérimétriques d''aires différentes) est une situation didactique puissante car elle crée un conflit cognitif : l''élève qui confond périmètre et aire s''attend à ce que des rectangles ayant « le même tour » aient aussi « la même surface ». En les recouvrant de carrés-unités (pavage), il constate que ce n''est pas le cas : un rectangle de 6×4 (P=20, A=24) et un rectangle de 9×1 (P=20, A=9) ont le même périmètre mais des aires très différentes. Cette découverte ébranle la conception erronée et oblige l''élève à distinguer les deux grandeurs. Vergnaud montre que cette distinction exige la construction de nouveaux invariants opératoires : le périmètre est une somme de longueurs (même dimension), l''aire est un recouvrement par des unités de surface (dimension 2). Brousseau insiste sur le fait que la remédiation doit passer par l''action de l''élève sur un milieu (ici, les rectangles et les carrés-unités) et non par la répétition de formules. Éduscol recommande explicitement de travailler périmètre et aire en parallèle, par contraste, avec du matériel de manipulation.',
  'Séparer l''enseignement du périmètre et de l''aire dans le temps. Les recherches montrent que le travail simultané par contraste est plus efficace pour construire la distinction.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves', 'Intermediaire',
  'vrai_faux',
  'Voici la production d''un élève de CM2 : « Pour calculer l''aire d''un triangle, je multiplie la base par la hauteur : A = b × h. » L''analyse didactique de cette production révèle que l''élève a oublié de diviser par 2. Cette erreur est souvent liée au fait que l''élève n''a pas compris que l''aire du triangle est la moitié de l''aire du rectangle (ou parallélogramme) associé.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''oubli de la division par 2 dans la formule de l''aire du triangle est une erreur fréquente qui révèle un manque de compréhension géométrique. L''aire du triangle est A = (b × h) / 2 précisément parce qu''un triangle peut être vu comme la moitié d''un parallélogramme (ou d''un rectangle, dans le cas d''un triangle rectangle). Si l''élève a mémorisé la formule sans comprendre sa construction géométrique — par exemple, en découpant un parallélogramme en deux triangles égaux par une diagonale — il risque d''oublier le facteur 1/2 ou de ne pas savoir quand l''appliquer. Vergnaud montre que la compréhension d''une formule suppose l''articulation entre le registre géométrique (la figure, le découpage) et le registre numérique (le calcul). Un apprentissage purement procédural (mémoriser A = b×h/2) est fragile car non relié au sens géométrique. Brousseau recommande de faire construire la formule par les élèves eux-mêmes, à travers des activités de découpage et de recomposition de figures. Éduscol insiste sur le passage par la manipulation concrète (découper, superposer) avant la formalisation de la formule au cycle 3.',
  'Réduire l''enseignement de l''aire du triangle à la mémorisation d''une formule. La construction géométrique (le triangle comme moitié du parallélogramme) est essentielle pour la compréhension.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
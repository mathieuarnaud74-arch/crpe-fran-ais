-- Seed: Didactique de la proportionnalité — Situations et obstacles (7 exercices, Difficile, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000001', 'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Difficile', 'qcm',
  'Un élève de CM2 résout le problème suivant : « 3 stylos coûtent 6 €, combien coûtent 5 stylos ? » Il écrit : 6 + 2 = 8 €. Quelle procédure cet élève utilise-t-il ?',
  NULL,
  '[{"id": "a", "label": "Un raisonnement proportionnel par passage à l''unité"}, {"id": "b", "label": "Un raisonnement additif erroné (il ajoute l''écart entre 3 et 5 au prix)"}, {"id": "c", "label": "Un raisonnement par produit en croix"}, {"id": "d", "label": "Un raisonnement par linéarité multiplicative"}]',
  '{"mode": "single", "value": "b"}',
  'L''élève utilise un raisonnement additif erroné : il calcule la différence entre 5 et 3 (soit 2) et l''ajoute au prix initial (6 + 2 = 8). Ce type d''erreur, appelé « modèle additif » ou « stratégie additive », est l''un des obstacles les plus documentés en didactique de la proportionnalité (Hart, 1981 ; Vergnaud, 1983). L''élève raisonne en termes d''écarts constants au lieu de rapports constants. La réponse correcte est : 1 stylo coûte 6 ÷ 3 = 2 €, donc 5 stylos coûtent 5 × 2 = 10 €. La remédiation doit faire apparaître le caractère multiplicatif de la situation par des exemples contrastés (doubler la quantité double le prix, ce qui n''est pas compatible avec un modèle additif).',
  'Confondre cette erreur avec un simple problème de calcul, alors qu''elle révèle un obstacle conceptuel profond : la non-distinction entre relation additive et relation multiplicative.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000002', 'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Difficile', 'vrai_faux',
  'La situation suivante est une situation de proportionnalité : « Un enfant mesure 80 cm à 2 ans. Combien mesurera-t-il à 6 ans ? »',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}',
  'Cette situation n''est PAS proportionnelle. La taille d''un enfant ne croît pas de manière proportionnelle à son âge : un enfant de 6 ans ne mesure pas 3 × 80 = 240 cm. C''est un exemple classique de piège en didactique de la proportionnalité. Vergnaud insiste sur l''importance de confronter les élèves à des « situations de non-proportionnalité » pour qu''ils apprennent à vérifier si le modèle proportionnel est pertinent. Les critères de vérification sont : (1) quand une grandeur est multipliée par k, l''autre l''est aussi ; (2) quand une grandeur vaut 0, l''autre vaut 0. La croissance humaine ne respecte aucun de ces critères. L''enseignant doit proposer ce type de contre-exemple pour éviter l''application aveugle de la proportionnalité.',
  'Appliquer automatiquement un raisonnement proportionnel (× 3) sans vérifier si la situation est réellement proportionnelle. C''est l''erreur de « surextension » du modèle proportionnel.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000003', 'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Difficile', 'qcm',
  'Selon le modèle de Vergnaud, l''isomorphisme de mesures consiste à :',
  NULL,
  '[{"id": "a", "label": "Appliquer un coefficient de proportionnalité entre deux grandeurs de même nature"}, {"id": "b", "label": "Mettre en correspondance deux espaces de mesures liés par une relation linéaire (f(x) = kx)"}, {"id": "c", "label": "Comparer deux grandeurs en calculant leur différence"}, {"id": "d", "label": "Convertir une unité de mesure en une autre"}]',
  '{"mode": "single", "value": "b"}',
  'L''isomorphisme de mesures, concept central de la théorie de Vergnaud sur les structures multiplicatives, consiste à mettre en correspondance deux « espaces de mesures » (par exemple : quantité d''objets et prix) liés par une fonction linéaire f(x) = kx. Ce modèle permet de comprendre pourquoi f(a + b) = f(a) + f(b) et f(ka) = k × f(a) : les propriétés de linéarité sont au cœur de la proportionnalité. La distinction avec le « produit de mesures » (autre schème de Vergnaud, comme aire = longueur × largeur) est fondamentale. Au cycle 3, les procédures attendues (passage à l''unité, retour à l''unité, linéarité additive et multiplicative) découlent directement de ce cadre conceptuel.',
  'Confondre l''isomorphisme de mesures (relation entre deux grandeurs différentes) avec la simple application d''un coefficient multiplicatif, ce qui occulte la structure conceptuelle sous-jacente.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000004', 'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Difficile', 'reponse_courte',
  'Un enseignant propose le problème : « Un robinet remplit une baignoire en 10 minutes. En combien de temps 2 robinets identiques remplissent-ils la même baignoire ? » Un élève répond 20 minutes en appliquant la proportionnalité « 2 fois plus de robinets = 2 fois plus de temps ». Quelle est la bonne réponse en minutes ?',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["5", "5 minutes", "5 min"]}',
  'La bonne réponse est 5 minutes. Avec 2 robinets identiques, le débit est doublé, donc le temps est divisé par 2 : 10 ÷ 2 = 5 minutes. L''erreur de l''élève est fondamentale en didactique : il applique une proportionnalité directe (« 2 fois plus → 2 fois plus ») alors que la situation relève d''une proportionnalité inverse (« 2 fois plus de robinets → 2 fois moins de temps »). Cette confusion entre proportionnalité directe et inverse est un obstacle classique. La variable didactique clé ici est le sens de la variation : quand une grandeur augmente, l''autre diminue. Vergnaud souligne que la compréhension de la proportionnalité inverse nécessite un schème plus complexe que celui de la proportionnalité directe, car il implique la notion de produit constant (nombre de robinets × temps = constante).',
  'Appliquer une proportionnalité directe (2 × 10 = 20 minutes) au lieu d''une proportionnalité inverse, ne percevant pas que plus il y a de robinets, moins le remplissage est long.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000005', 'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Difficile', 'qcm',
  'Un élève résout le problème « 4 kg de pommes coûtent 6 €. Combien coûtent 10 kg ? » en écrivant : 4 → 6, donc 10 → 10 × 6 ÷ 4 = 15 €. Quelle procédure de résolution utilise-t-il ?',
  NULL,
  '[{"id": "a", "label": "La linéarité additive (propriété d''additivité)"}, {"id": "b", "label": "Le passage à l''unité (valeur du coefficient unitaire)"}, {"id": "c", "label": "Le produit en croix (quatrième proportionnelle)"}, {"id": "d", "label": "La linéarité multiplicative (coefficient scalaire)"}]',
  '{"mode": "single", "value": "c"}',
  'L''élève utilise le produit en croix (ou règle de trois) : il calcule 10 × 6 ÷ 4 = 15 €. Cette procédure, bien qu''efficace, est souvent appliquée mécaniquement sans compréhension. Les programmes du cycle 3 privilégient d''autres procédures plus porteuses de sens : le passage à l''unité (1 kg coûte 6 ÷ 4 = 1,50 €, donc 10 kg coûtent 15 €), la linéarité additive (4 kg → 6 €, donc 8 kg → 12 € et 2 kg → 3 €, soit 10 kg → 15 €) et la linéarité multiplicative (10 = 4 × 2,5, donc prix = 6 × 2,5 = 15 €). Éduscol recommande que le produit en croix ne soit introduit qu''après la maîtrise de ces procédures, pour garantir une compréhension conceptuelle de la proportionnalité.',
  'Confondre le produit en croix avec le passage à l''unité. Le passage à l''unité calcule d''abord le prix d''1 kg, tandis que le produit en croix opère directement sur les quatre termes de la proportion.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000006', 'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Difficile', 'vrai_faux',
  'La situation suivante est une situation de proportionnalité : « Un taxi facture une prise en charge de 3 € plus 1,20 € par kilomètre parcouru. »',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}',
  'Cette situation n''est PAS proportionnelle, c''est une situation affine (ou linéaire affine) : le prix total est donné par f(x) = 1,20x + 3, où 3 € est le terme constant (prise en charge). Une situation de proportionnalité exige que f(0) = 0 (pour 0 km, le prix devrait être 0 €), ce qui n''est pas le cas ici. La confusion entre situation proportionnelle (f(x) = kx, linéaire passant par l''origine) et situation affine (f(x) = kx + b, avec b ≠ 0) est un obstacle classique identifié par les recherches en didactique. C''est un piège récurrent dans les sujets du CRPE. Pour les élèves, la distinction peut être travaillée graphiquement : une situation proportionnelle donne une droite passant par l''origine, une situation affine donne une droite qui ne passe pas par l''origine.',
  'Considérer que toute situation où le prix augmente régulièrement avec la distance est proportionnelle, en oubliant de vérifier la condition f(0) = 0.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000007', 'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Difficile', 'reponse_courte',
  'Un enseignant souhaite concevoir un problème de proportionnalité où la procédure de « passage à l''unité » est difficile à mettre en œuvre (pour pousser les élèves à utiliser la linéarité). Il choisit les valeurs : 7 crayons coûtent 4,90 €. Combien coûtent 21 crayons ? Quel est le coefficient scalaire (multiplicateur entier) entre 7 et 21 ?',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["3", "× 3", "x3"]}',
  'Le coefficient scalaire entre 7 et 21 est 3 (car 21 = 7 × 3). Ainsi, le prix de 21 crayons est 4,90 × 3 = 14,70 €. Le choix des valeurs numériques est une variable didactique fondamentale. Ici, l''enseignant a choisi 7 comme nombre de départ pour que le passage à l''unité donne un nombre décimal non simple (4,90 ÷ 7 = 0,70 €), tandis que le coefficient scalaire 3 est un entier simple. Cette configuration pousse les élèves vers la procédure de linéarité multiplicative (× 3) plutôt que vers le passage à l''unité. Selon Vergnaud, le choix des nombres dans les problèmes de proportionnalité oriente fortement les procédures mobilisées par les élèves : c''est une variable didactique que l''enseignant doit maîtriser.',
  'Ne pas voir que le coefficient scalaire 3 est la voie la plus naturelle et s''acharner sur le passage à l''unité (0,70 € par crayon), qui est ici plus laborieux.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Série : Unités d'aire et de volume — Conversions avancées (7 exercices, Difficile, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Difficile',
  'qcm',
  'Combien y a-t-il de cm² dans 1 m² ?',
  NULL,
  '[{"id":"a","label":"100 cm²"},{"id":"b","label":"1 000 cm²"},{"id":"c","label":"10 000 cm²"},{"id":"d","label":"100 000 cm²"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '1 m = 100 cm. Pour les aires, on élève le facteur de conversion au carré : 1 m² = (100 cm)² = 100 × 100 cm² = 10 000 cm². C''est le principe fondamental de la conversion d''unités d''aire : le facteur entre deux unités d''aire successives est le carré du facteur entre les unités de longueur correspondantes. Entre m et cm, le facteur linéaire est 100, donc le facteur d''aire est 100² = 10 000.',
  'Répondre 100 cm² en appliquant le facteur de conversion linéaire (1 m = 100 cm) directement aux aires. C''est l''erreur la plus courante : oublier d''élever au carré le facteur de conversion quand on passe aux unités d''aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Difficile',
  'vrai_faux',
  '1 dm³ = 1 L (un décimètre cube est égal à un litre).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est une équivalence fondamentale du système métrique : 1 dm³ = 1 L exactement. Un litre est défini comme le volume d''un cube de 1 dm de côté, soit 10 cm × 10 cm × 10 cm = 1 000 cm³. On en déduit : 1 L = 1 dm³ = 1 000 cm³ = 1 000 mL. Cette correspondance permet de passer facilement entre les unités de volume (m³, dm³, cm³) et les unités de capacité (L, dL, cL, mL).',
  'Confondre 1 dm³ avec 1 dL (décilitre). Le préfixe « déci » pourrait induire en erreur, mais 1 dm³ = 1 L et non 1 dL. Le décilitre vaut 0,1 L = 100 cm³.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Difficile',
  'qcm',
  'Convertir 3,5 m³ en litres.',
  NULL,
  '[{"id":"a","label":"35 L"},{"id":"b","label":"350 L"},{"id":"c","label":"3 500 L"},{"id":"d","label":"35 000 L"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '1 m³ = 1 000 dm³ et 1 dm³ = 1 L, donc 1 m³ = 1 000 L. Par conséquent : 3,5 m³ = 3,5 × 1 000 = 3 500 L. Chaîne de conversion complète : 1 m = 10 dm, donc 1 m³ = (10 dm)³ = 1 000 dm³ = 1 000 L. Le facteur ×1 000 entre m³ et dm³ (ou L) vient de 10³ = 1 000, car entre le mètre et le décimètre il y a un facteur 10 en longueur.',
  'Répondre 350 L en multipliant par 100 au lieu de 1 000. L''élève confond le facteur de conversion des aires (×100 entre m² et dm²) avec celui des volumes (×1 000 entre m³ et dm³).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Difficile',
  'reponse_courte',
  'Un terrain a une superficie de 2,5 hectares. Exprimer cette superficie en m².',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25000","25 000","25000 m²","25 000 m²"]}'::jsonb,
  'Un hectare (ha) est l''aire d''un carré de 100 m de côté : 1 ha = 100 × 100 = 10 000 m². Donc : 2,5 ha = 2,5 × 10 000 = 25 000 m². Rappel des unités agraires : 1 ha = 100 a (ares) = 10 000 m². Un are est l''aire d''un carré de 10 m de côté : 1 a = 100 m². Ces unités agraires sont spécifiques aux mesures de surfaces de terrain et sont très utilisées dans les problèmes du CRPE.',
  'Multiplier par 1 000 au lieu de 10 000 et trouver 2 500 m². L''élève retient mal la définition de l''hectare ou confond hectare et are.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Difficile',
  'qcm',
  'Un aquarium parallélépipédique mesure 80 cm de long, 40 cm de large et 50 cm de haut. On le remplit aux trois quarts. Quel volume d''eau contient-il en litres ?',
  NULL,
  '[{"id":"a","label":"120 L"},{"id":"b","label":"160 L"},{"id":"c","label":"12 L"},{"id":"d","label":"1 200 L"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Volume total de l''aquarium : 80 × 40 × 50 = 160 000 cm³. Conversion en litres : 1 L = 1 dm³ = 1 000 cm³, donc 160 000 cm³ = 160 L. Volume d''eau (trois quarts) : 160 × 3/4 = 120 L. Méthode alternative : on peut d''abord convertir en dm (8 dm × 4 dm × 5 dm = 160 dm³ = 160 L) puis calculer les 3/4. La clé est de bien maîtriser l''équivalence 1 L = 1 000 cm³.',
  'Répondre 160 L en oubliant de prendre les trois quarts, ou 12 L en divisant 160 000 cm³ par 10 000 au lieu de 1 000 (confusion cm³ → L avec le facteur des cm² → dm²).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Difficile',
  'vrai_faux',
  'Pour convertir des km² en m², on multiplie par 1 000.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Pour convertir des km² en m², on multiplie par 1 000 000 (soit 10^6). En effet : 1 km = 1 000 m, donc 1 km² = (1 000 m)² = 1 000 × 1 000 m² = 1 000 000 m². Le facteur de conversion linéaire entre km et m est 1 000, mais le facteur de conversion d''aire est le carré de ce facteur : 1 000² = 1 000 000. C''est l''erreur classique de confondre facteur linéaire et facteur d''aire.',
  'Croire que le facteur est 1 000 en appliquant directement la conversion linéaire (1 km = 1 000 m) aux unités d''aire. Il faut toujours élever au carré le facteur linéaire pour obtenir le facteur d''aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Difficile',
  'reponse_courte',
  'On souhaite peindre les quatre murs d''une pièce rectangulaire de 5 m × 4 m et de hauteur 2,5 m (sans déduire portes ni fenêtres). Un pot de peinture couvre 10 m². Combien de pots faut-il acheter ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5","5 pots"]}'::jsonb,
  'Calcul de la surface totale des murs. Deux murs de 5 m × 2,5 m : 2 × (5 × 2,5) = 2 × 12,5 = 25 m². Deux murs de 4 m × 2,5 m : 2 × (4 × 2,5) = 2 × 10 = 20 m². Surface totale : 25 + 20 = 45 m². Nombre de pots : 45 ÷ 10 = 4,5. On ne peut pas acheter un demi-pot, il faut arrondir au pot supérieur : 5 pots. Ce problème combine le calcul d''aires (surfaces latérales) avec un raisonnement pratique (arrondi à l''entier supérieur).',
  'Répondre 4 pots en arrondissant à l''entier inférieur (4,5 → 4). Dans la vie courante, on ne peut pas acheter un demi-pot de peinture, il faut donc prendre l''entier supérieur pour couvrir toute la surface. Autre erreur : calculer le périmètre au lieu de la surface.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

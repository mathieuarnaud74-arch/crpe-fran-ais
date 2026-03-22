-- Migration: série math_masses_contenances_ordres (7 questions)
-- Masses, contenances et ordres de grandeur
-- UUID prefix: b0200000
-- Types : qcm (3), vrai_faux (1), reponse_courte (3)
-- Niveau : Facile
-- Access : free

-- ============================================================================
-- Q1 — QCM — AMORCE — Masse d''une baguette de pain
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000001',
  'Mathematiques',
  'grandeurs_mesures',
  'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur',
  'Facile',
  'qcm',
  'Quelle est la masse approximative d''une baguette de pain ?',
  NULL,
  '[{"id":"a","label":"25 g"},{"id":"b","label":"250 g"},{"id":"c","label":"2,5 kg"},{"id":"d","label":"25 kg"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Une baguette de pain standard pèse environ 250 g (soit un quart de kilogramme). C''est un repère d''ordre de grandeur essentiel. Pour comparaison : 25 g correspond à la masse d''une tranche de pain, 2,5 kg à celle d''un gros melon, et 25 kg à celle d''une valise bien remplie. Au CRPE, savoir associer des objets courants à leur ordre de grandeur en masse est une compétence évaluée.',
  'Confondre les ordres de grandeur en se trompant d''un facteur 10. Une erreur fréquente est de choisir 25 g (facteur 10 trop petit) ou 2,5 kg (facteur 10 trop grand), faute de repères concrets sur les masses d''objets du quotidien.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — VRAI/FAUX — AMORCE — Relation masse/volume de l''eau
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000002',
  'Mathematiques',
  'grandeurs_mesures',
  'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur',
  'Facile',
  'vrai_faux',
  'Un litre d''eau a une masse d''environ 1 kg.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'C''est vrai. À température et pression standard (environ 4 °C, pression atmosphérique normale), la masse volumique de l''eau est de 1 kg/L (ou 1 000 kg/m³). Cette correspondance fondamentale — 1 L d''eau ≈ 1 kg — est un repère essentiel en grandeurs et mesures. Elle permet de faire le lien entre les unités de contenance (litre) et les unités de masse (kilogramme). Par extension : 1 mL d''eau ≈ 1 g, et 1 m³ d''eau ≈ 1 000 kg = 1 tonne.',
  'Penser que cette relation est fausse ou ne s''applique qu''à des conditions très particulières. En réalité, pour l''eau (et uniquement l''eau), la correspondance 1 L ≈ 1 kg est valable dans les conditions courantes et constitue un savoir de référence attendu au CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — QCM — CONSOLIDATION — Conversion litres en centilitres
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur',
  'Facile',
  'qcm',
  'Combien de centilitres contient une bouteille de 1,5 L ?',
  NULL,
  '[{"id":"a","label":"15 cL"},{"id":"b","label":"150 cL"},{"id":"c","label":"1 500 cL"},{"id":"d","label":"0,15 cL"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe « centi- » signifie « centième ». Un centilitre (cL) vaut un centième de litre, donc 1 L = 100 cL. Pour convertir des litres en centilitres, on multiplie par 100 : 1,5 × 100 = 150 cL. Repères utiles : un verre standard contient environ 25 cL, une canette 33 cL, une bouteille d''eau courante 50 cL ou 150 cL.',
  'Multiplier par 10 au lieu de 100 (confusion avec les décilitres : 1 L = 10 dL) ou par 1 000 (confusion avec les millilitres : 1 L = 1 000 mL). Il faut bien distinguer les préfixes : déci- (÷ 10), centi- (÷ 100), milli- (÷ 1 000).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — RÉPONSE COURTE — CONSOLIDATION — Chargement d''un camion
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000004',
  'Mathematiques',
  'grandeurs_mesures',
  'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur',
  'Facile',
  'reponse_courte',
  'Un camion peut transporter 3,5 tonnes. On charge des sacs de 25 kg. Combien de sacs peut-on charger au maximum ?',
  NULL,
  NULL,
  '{"mode":"exact","acceptableAnswers":["140"]}'::jsonb,
  'Il faut d''abord convertir les tonnes en kilogrammes : 3,5 tonnes = 3 500 kg (car 1 tonne = 1 000 kg). Ensuite, on divise la charge maximale par la masse d''un sac : 3 500 ÷ 25 = 140 sacs. On peut vérifier : 140 × 25 = 3 500 kg = 3,5 t. Repère : une tonne, c''est la masse d''un mètre cube d''eau, ou environ la masse d''une petite voiture.',
  'Oublier de convertir les tonnes en kilogrammes et calculer 3,5 ÷ 25 (ce qui donne 0,14). Autre erreur : faire une division avec reste et donner 141 sacs, alors que 140 × 25 = 3 500 kg exactement (ici la division tombe juste).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — QCM — CONSOLIDATION — Unité adaptée pour une piscine
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000005',
  'Mathematiques',
  'grandeurs_mesures',
  'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur',
  'Facile',
  'qcm',
  'Quelle unité est la plus adaptée pour exprimer la contenance d''une piscine ?',
  NULL,
  '[{"id":"a","label":"mL"},{"id":"b","label":"cL"},{"id":"c","label":"L"},{"id":"d","label":"m³"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Une piscine municipale contient typiquement entre 500 et 2 000 m³ d''eau (soit 500 000 à 2 000 000 litres). L''unité la plus adaptée est donc le mètre cube (m³), qui évite de manipuler des nombres très grands. Rappel : 1 m³ = 1 000 L. Le choix de l''unité de mesure adaptée fait partie des compétences évaluées au CRPE : on privilégie l''unité qui donne un nombre « raisonnable » (ni trop grand, ni trop petit).',
  'Répondre « L » (litre) : bien que techniquement correct, le litre donnerait des nombres de l''ordre de centaines de milliers, ce qui n''est pas pratique. L''enjeu est de choisir l''unité la plus adaptée, pas simplement une unité valide. Le mL et le cL sont clairement inadaptés pour de tels volumes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — RÉPONSE COURTE — APPROFONDISSEMENT — Masse totale d''une recette
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000006',
  'Mathematiques',
  'grandeurs_mesures',
  'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur',
  'Facile',
  'reponse_courte',
  'Une recette nécessite 750 g de farine, 200 g de sucre, 3 œufs de 60 g chacun et 125 mL de lait (densité ≈ 1). Quelle est la masse totale de la préparation en kg ?',
  NULL,
  NULL,
  '{"mode":"exact","acceptableAnswers":["1,255","1,255 kg","1.255"]}'::jsonb,
  'On additionne toutes les masses en grammes. Farine : 750 g. Sucre : 200 g. Œufs : 3 × 60 = 180 g. Lait : comme la densité du lait est environ 1, 125 mL de lait ≈ 125 g (on utilise ici la relation 1 mL d''eau ≈ 1 g, étendue au lait dont la densité est proche de celle de l''eau). Total : 750 + 200 + 180 + 125 = 1 255 g. Conversion en kg : 1 255 g ÷ 1 000 = 1,255 kg.',
  'Oublier de convertir les millilitres de lait en grammes (ou ne pas savoir que 125 mL ≈ 125 g pour un liquide de densité 1). Autre erreur fréquente : mal placer la virgule lors de la conversion g → kg, par exemple écrire 12,55 kg au lieu de 1,255 kg.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — QCM — APPROFONDISSEMENT — Erreur d''ordre de grandeur
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur',
  'Facile',
  'qcm',
  'Un élève écrit : « Ma trousse pèse 3 kg ». Son enseignant lui dit que c''est une erreur d''ordre de grandeur. Quelle masse est plus réaliste pour une trousse ?',
  NULL,
  '[{"id":"a","label":"300 g"},{"id":"b","label":"30 g"},{"id":"c","label":"3 g"},{"id":"d","label":"30 kg"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Une trousse garnie (contenant stylos, crayons, gomme, règle, etc.) pèse environ 200 à 400 g, soit de l''ordre de 300 g. L''élève a commis une erreur d''ordre de grandeur d''un facteur 10 : il a écrit 3 kg au lieu de 300 g (= 0,3 kg). Pour comparaison : 3 g, c''est la masse d''une pièce de 1 centime ; 30 g, c''est la masse d''un stylo ; 3 kg, c''est la masse d''un dictionnaire épais ; 30 kg, c''est la masse d''un enfant de 8 ans. Développer ces repères d''ordre de grandeur est un objectif central de l''enseignement des grandeurs et mesures au cycle 3.',
  'Choisir 30 g en pensant qu''une trousse est très légère. Or 30 g correspond à la masse d''un seul stylo : une trousse complète avec son contenu est bien plus lourde. Il faut se représenter concrètement l''objet pour évaluer son ordre de grandeur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

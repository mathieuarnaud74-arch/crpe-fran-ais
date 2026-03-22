-- Migration: 2 séries interactives pour le domaine Lexique
-- Série 1 : tri_formation_mots (tri_categories, 10 questions, free)
-- Série 2 : surlignage_champs_lexicaux (surlignage_propositions, 10 questions, premium)

-- ============================================================
-- SÉRIE 1 : Tri — Formation des mots (tri_categories)
-- ============================================================

-- Q1 — Facile : Dérivation vs Composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon son procédé de formation : dérivation ou composition.',
  NULL,
  '[{"id":"s1q1w1","label":"refaire"},{"id":"s1q1w2","label":"porte-monnaie"},{"id":"s1q1w3","label":"maisonnette"},{"id":"s1q1w4","label":"arc-en-ciel"},{"id":"s1q1w5","label":"incroyable"},{"id":"s1q1w6","label":"pomme de terre"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"derivation","label":"Dérivation (préfixe/suffixe)"},{"id":"composition","label":"Composition"}],"mapping":{"s1q1w1":"derivation","s1q1w2":"composition","s1q1w3":"derivation","s1q1w4":"composition","s1q1w5":"derivation","s1q1w6":"composition"}}'::jsonb,
  'La dérivation consiste à ajouter un affixe (préfixe ou suffixe) à un radical : re-faire, maison-nette, in-croyable. La composition réunit deux mots autonomes : porte-monnaie, arc-en-ciel, pomme de terre. Les programmes Éduscol cycle 3 font de la morphologie lexicale un axe majeur de l''étude du vocabulaire.',
  'Confondre composition et dérivation : « porte-monnaie » n''est pas un mot dérivé car il est formé de deux mots indépendants (porter + monnaie), non d''un radical et d''un affixe.',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile : Dérivation vs Composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Facile',
  'tri_categories',
  'Classez ces mots selon qu''ils sont formés par dérivation ou par composition.',
  NULL,
  '[{"id":"s1q2w1","label":"déplier"},{"id":"s1q2w2","label":"chou-fleur"},{"id":"s1q2w3","label":"blancheur"},{"id":"s1q2w4","label":"tire-bouchon"},{"id":"s1q2w5","label":"imprévu"},{"id":"s1q2w6","label":"coffre-fort"},{"id":"s1q2w7","label":"jardinage"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"derivation","label":"Dérivation (préfixe/suffixe)"},{"id":"composition","label":"Composition"}],"mapping":{"s1q2w1":"derivation","s1q2w2":"composition","s1q2w3":"derivation","s1q2w4":"composition","s1q2w5":"derivation","s1q2w6":"composition","s1q2w7":"derivation"}}'::jsonb,
  'Dé-plier (préfixe dé-), blanch-eur (suffixe -eur), im-prévu (préfixe im-) et jardin-age (suffixe -age) sont des dérivés. Chou-fleur, tire-bouchon et coffre-fort sont des mots composés associant deux bases autonomes. Les programmes Éduscol insistent sur la capacité des élèves à identifier ces procédés pour enrichir leur vocabulaire.',
  'Penser que « tire-bouchon » est un dérivé à cause du trait d''union. Le trait d''union est une marque graphique de la composition, pas de la dérivation.',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile : Dérivation vs Composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Facile',
  'tri_categories',
  'Classez ces mots : lesquels sont formés par dérivation, lesquels par composition ?',
  NULL,
  '[{"id":"s1q3w1","label":"malheureux"},{"id":"s1q3w2","label":"plate-bande"},{"id":"s1q3w3","label":"courage"},{"id":"s1q3w4","label":"essuie-glace"},{"id":"s1q3w5","label":"illisible"},{"id":"s1q3w6","label":"rouge-gorge"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"derivation","label":"Dérivation (préfixe/suffixe)"},{"id":"composition","label":"Composition"}],"mapping":{"s1q3w1":"derivation","s1q3w2":"composition","s1q3w3":"derivation","s1q3w4":"composition","s1q3w5":"derivation","s1q3w6":"composition"}}'::jsonb,
  'Mal-heureux (préfixe mal-), courage (suffixe -age sur le radical cour- issu de cœur) et il-lisible (préfixe il- + suffixe -ible) sont des dérivés. Plate-bande, essuie-glace et rouge-gorge sont des composés réunissant deux éléments autonomes. Éduscol recommande de travailler explicitement ces procédés dès le cycle 2 pour développer la conscience morphologique.',
  'Classer « courage » comme mot simple. Le mot est bien formé par dérivation suffixale à partir d''un radical, même si l''étymologie n''est plus transparente pour tous les locuteurs.',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire : Préfixation / Suffixation / Composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon son procédé de formation : préfixation, suffixation ou composition.',
  NULL,
  '[{"id":"s1q4w1","label":"relire"},{"id":"s1q4w2","label":"gentillesse"},{"id":"s1q4w3","label":"avant-garde"},{"id":"s1q4w4","label":"impossible"},{"id":"s1q4w5","label":"boulangerie"},{"id":"s1q4w6","label":"haut-parleur"},{"id":"s1q4w7","label":"désobéir"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prefixation","label":"Préfixation"},{"id":"suffixation","label":"Suffixation"},{"id":"composition","label":"Composition"}],"mapping":{"s1q4w1":"prefixation","s1q4w2":"suffixation","s1q4w3":"composition","s1q4w4":"prefixation","s1q4w5":"suffixation","s1q4w6":"composition","s1q4w7":"prefixation"}}'::jsonb,
  'Re-lire, im-possible et dés-obéir sont formés par préfixation (ajout d''un préfixe au radical). Gentill-esse et boulanger-ie sont formés par suffixation. Avant-garde et haut-parleur sont des mots composés. Les programmes Éduscol cycle 3 distinguent explicitement préfixation et suffixation comme deux sous-types de la dérivation.',
  'Classer « haut-parleur » en suffixation à cause de la terminaison -eur. Or « haut-parleur » est un mot composé de « haut » + « parleur », deux éléments autonomes.',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire : Préfixation / Suffixation / Composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Intermediaire',
  'tri_categories',
  'Identifiez le procédé de formation de chaque mot : préfixation, suffixation ou composition.',
  NULL,
  '[{"id":"s1q5w1","label":"pommier"},{"id":"s1q5w2","label":"prédire"},{"id":"s1q5w3","label":"portefeuille"},{"id":"s1q5w4","label":"lavable"},{"id":"s1q5w5","label":"survoler"},{"id":"s1q5w6","label":"sage-femme"},{"id":"s1q5w7","label":"courageux"},{"id":"s1q5w8","label":"méconnaître"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prefixation","label":"Préfixation"},{"id":"suffixation","label":"Suffixation"},{"id":"composition","label":"Composition"}],"mapping":{"s1q5w1":"suffixation","s1q5w2":"prefixation","s1q5w3":"composition","s1q5w4":"suffixation","s1q5w5":"prefixation","s1q5w6":"composition","s1q5w7":"suffixation","s1q5w8":"prefixation"}}'::jsonb,
  'Pomm-ier (suffixe -ier), lav-able (suffixe -able) et courag-eux (suffixe -eux) sont des suffixés. Pré-dire, sur-voler et mé-connaître sont des préfixés. Portefeuille et sage-femme sont des composés. Selon Éduscol, la maîtrise de ces procédés est un levier essentiel pour l''accès autonome au sens des mots inconnus.',
  'Considérer « portefeuille » comme un préfixé (porte- n''est pas un préfixe mais le verbe « porter » servant de base dans ce composé).',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire : Préfixation / Suffixation / Composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Intermediaire',
  'tri_categories',
  'Classez ces mots selon leur procédé de formation : préfixation, suffixation ou composition.',
  NULL,
  '[{"id":"s1q6w1","label":"antibrouillard"},{"id":"s1q6w2","label":"fierté"},{"id":"s1q6w3","label":"compte-gouttes"},{"id":"s1q6w4","label":"noirceur"},{"id":"s1q6w5","label":"déranger"},{"id":"s1q6w6","label":"garde-manger"},{"id":"s1q6w7","label":"visiblement"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prefixation","label":"Préfixation"},{"id":"suffixation","label":"Suffixation"},{"id":"composition","label":"Composition"}],"mapping":{"s1q6w1":"prefixation","s1q6w2":"suffixation","s1q6w3":"composition","s1q6w4":"suffixation","s1q6w5":"prefixation","s1q6w6":"composition","s1q6w7":"suffixation"}}'::jsonb,
  'Anti-brouillard et dé-ranger sont formés par préfixation. Fier-té, noir-ceur et visible-ment sont formés par suffixation. Compte-gouttes et garde-manger sont des composés verbe + nom. Les instructions officielles Éduscol précisent que la morphologie lexicale doit être travaillée de manière régulière et structurée à partir du CE2.',
  'Analyser « antibrouillard » comme un composé. Bien que « anti- » puisse ressembler à un mot autonome, il fonctionne ici comme un préfixe modifiant le sens de « brouillard ».',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire : Préfixation / Suffixation / Composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Intermediaire',
  'tri_categories',
  'Déterminez le procédé de formation de chaque mot : préfixation, suffixation ou composition.',
  NULL,
  '[{"id":"s1q7w1","label":"ensoleillé"},{"id":"s1q7w2","label":"parapluie"},{"id":"s1q7w3","label":"lentement"},{"id":"s1q7w4","label":"gratte-ciel"},{"id":"s1q7w5","label":"décoller"},{"id":"s1q7w6","label":"semaine"},{"id":"s1q7w7","label":"chasse-neige"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prefixation","label":"Préfixation"},{"id":"suffixation","label":"Suffixation"},{"id":"composition","label":"Composition"}],"mapping":{"s1q7w1":"suffixation","s1q7w2":"prefixation","s1q7w3":"suffixation","s1q7w4":"composition","s1q7w5":"prefixation","s1q7w6":"suffixation","s1q7w7":"composition"}}'::jsonb,
  'Ensoleill-é (suffixe -é) et lente-ment (suffixe -ment) sont des suffixés. Semain-e est un suffixé issu du latin septimana avec évolution morphologique. Para-pluie (préfixe para- « contre ») et dé-coller (préfixe dé-) sont des préfixés. Gratte-ciel et chasse-neige sont des composés verbe + nom. Les programmes Éduscol recommandent l''utilisation de familles de mots pour consolider ces apprentissages.',
  'Classer « parapluie » en composition car « para » ressemble à un mot. En réalité, « para- » est un préfixe d''origine grecque/italienne signifiant « qui protège contre ».',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile : Préfixation / Suffixation / Composition / Parasynthèse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Difficile',
  'tri_categories',
  'Classez ces mots selon leur procédé de formation. Attention à la parasynthèse : ajout simultané d''un préfixe et d''un suffixe à une base.',
  NULL,
  '[{"id":"s1q8w1","label":"emprisonner"},{"id":"s1q8w2","label":"relecture"},{"id":"s1q8w3","label":"tourne-disque"},{"id":"s1q8w4","label":"encadrer"},{"id":"s1q8w5","label":"blanchissage"},{"id":"s1q8w6","label":"aplatir"},{"id":"s1q8w7","label":"sous-marin"},{"id":"s1q8w8","label":"déboiser"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prefixation","label":"Préfixation"},{"id":"suffixation","label":"Suffixation"},{"id":"composition","label":"Composition"},{"id":"parasynthese","label":"Parasynthèse (préfixe + suffixe simultanés)"}],"mapping":{"s1q8w1":"parasynthese","s1q8w2":"prefixation","s1q8w3":"composition","s1q8w4":"parasynthese","s1q8w5":"suffixation","s1q8w6":"parasynthese","s1q8w7":"composition","s1q8w8":"parasynthese"}}'::jsonb,
  'Em-prison-ner, en-cadr-er, a-plat-ir et dé-bois-er sont des parasynthétiques : le préfixe et le suffixe s''ajoutent simultanément (on ne dit pas *prisonner, *cadrer seul au sens d''encadrer, *platir, *boiser au sens de déboiser). Re-lecture est un préfixé et blanchiss-age un suffixé. Tourne-disque et sous-marin sont des composés. La parasynthèse est un procédé important dans les programmes Éduscol pour le CRPE.',
  'Analyser « emprisonner » comme une simple préfixation. Or *prisonner n''existe pas en français : le préfixe em- et le suffixe -er s''ajoutent simultanément à la base « prison », ce qui caractérise la parasynthèse.',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile : Préfixation / Suffixation / Composition / Parasynthèse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Difficile',
  'tri_categories',
  'Classez ces mots en quatre procédés : préfixation, suffixation, composition et parasynthèse.',
  NULL,
  '[{"id":"s1q9w1","label":"embarquer"},{"id":"s1q9w2","label":"prédéfinir"},{"id":"s1q9w3","label":"chauffagiste"},{"id":"s1q9w4","label":"arc-boutant"},{"id":"s1q9w5","label":"enrichir"},{"id":"s1q9w6","label":"enhardir"},{"id":"s1q9w7","label":"dénoyauter"},{"id":"s1q9w8","label":"malhonnêteté"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prefixation","label":"Préfixation"},{"id":"suffixation","label":"Suffixation"},{"id":"composition","label":"Composition"},{"id":"parasynthese","label":"Parasynthèse (préfixe + suffixe simultanés)"}],"mapping":{"s1q9w1":"parasynthese","s1q9w2":"prefixation","s1q9w3":"suffixation","s1q9w4":"composition","s1q9w5":"parasynthese","s1q9w6":"parasynthese","s1q9w7":"parasynthese","s1q9w8":"suffixation"}}'::jsonb,
  'Em-barqu-er, en-rich-ir, en-hard-ir et dé-noyaut-er sont des parasynthétiques (*barquer, *richir, *hardir, *noyauter n''existent pas comme verbes autonomes). Pré-définir est un préfixé (définir existe). Chauffag-iste et malhonnête-té sont des suffixés. Arc-boutant est un composé. Éduscol distingue la parasynthèse de la double affixation pour affiner l''analyse morphologique au cycle 3.',
  'Confondre parasynthèse et double dérivation successive. Dans « malhonnêteté », on a d''abord honnête → malhonnête (préfixation), puis malhonnête → malhonnêteté (suffixation) : c''est une dérivation en deux étapes, pas une parasynthèse.',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile : Préfixation / Suffixation / Composition / Parasynthèse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4010000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'tri_formation_mots',
  'Tri — Formation des mots',
  'Difficile',
  'tri_categories',
  'Classez ces mots selon les quatre procédés de formation : préfixation, suffixation, composition ou parasynthèse.',
  NULL,
  '[{"id":"s1q10w1","label":"enlaidir"},{"id":"s1q10w2","label":"contredire"},{"id":"s1q10w3","label":"amincir"},{"id":"s1q10w4","label":"porte-avions"},{"id":"s1q10w5","label":"glorieusement"},{"id":"s1q10w6","label":"embouteiller"},{"id":"s1q10w7","label":"déterrer"},{"id":"s1q10w8","label":"cerf-volant"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prefixation","label":"Préfixation"},{"id":"suffixation","label":"Suffixation"},{"id":"composition","label":"Composition"},{"id":"parasynthese","label":"Parasynthèse (préfixe + suffixe simultanés)"}],"mapping":{"s1q10w1":"parasynthese","s1q10w2":"prefixation","s1q10w3":"parasynthese","s1q10w4":"composition","s1q10w5":"suffixation","s1q10w6":"parasynthese","s1q10w7":"parasynthese","s1q10w8":"composition"}}'::jsonb,
  'En-laid-ir, a-minc-ir, em-bouteil-ler et dé-terr-er sont des parasynthétiques : *laidir, *mincir (au sens transitif), *bouteiller et *terrer (au sens d''extraire) n''existent pas. Contre-dire est un préfixé (dire existe). Glorieuse-ment est un suffixé. Porte-avions et cerf-volant sont des composés. Les programmes Éduscol cycle 3 attendent des enseignants qu''ils maîtrisent ces distinctions fines pour guider l''analyse morphologique des élèves.',
  'Classer « contredire » comme composé parce que « contre » peut fonctionner comme préposition autonome. En morphologie lexicale, « contre- » fonctionne ici comme un préfixe car il modifie le sens du verbe « dire » sans former un véritable composé à deux bases verbales.',
  'valide',
  'CRPE Français — Lexique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Surlignage — Champs lexicaux (surlignage_propositions)
-- ============================================================

-- Q1 — Facile : Nature / Ville
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots appartenant au champ lexical de la nature et ceux du champ lexical de la ville.',
  NULL,
  '[{"id":"s1","label":"Entre"},{"id":"s2","label":"les"},{"id":"s3","label":"immeubles"},{"id":"s4","label":"gris,"},{"id":"s5","label":"un"},{"id":"s6","label":"arbre"},{"id":"s7","label":"solitaire"},{"id":"s8","label":"étendait"},{"id":"s9","label":"ses"},{"id":"s10","label":"branches"},{"id":"s11","label":"vers"},{"id":"s12","label":"le"},{"id":"s13","label":"trottoir"},{"id":"s14","label":"craquelé."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"nature","label":"Champ lexical de la nature","color":"#4A6E8F"},{"id":"ville","label":"Champ lexical de la ville","color":"#A46849"}],"mapping":{"s3":"ville","s6":"nature","s10":"nature","s13":"ville"}}'::jsonb,
  'Le champ lexical de la nature regroupe les mots qui évoquent le monde naturel : « arbre », « branches ». Le champ lexical de la ville inclut les éléments urbains : « immeubles », « trottoir ». Selon les programmes Éduscol, le repérage des champs lexicaux est essentiel à la compréhension fine des textes.',
  'Surligner « gris » ou « craquelé » comme appartenant à un champ lexical. Ces adjectifs sont descriptifs mais n''appartiennent pas en propre au champ de la ville ni de la nature : ils pourraient qualifier n''importe quel référent.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile : Mer / Montagne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots appartenant au champ lexical de la mer et ceux du champ lexical de la montagne.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"vagues"},{"id":"s3","label":"se"},{"id":"s4","label":"brisaient"},{"id":"s5","label":"au"},{"id":"s6","label":"pied"},{"id":"s7","label":"des"},{"id":"s8","label":"falaises,"},{"id":"s9","label":"tandis"},{"id":"s10","label":"que"},{"id":"s11","label":"les"},{"id":"s12","label":"sommets"},{"id":"s13","label":"enneigés"},{"id":"s14","label":"dominaient"},{"id":"s15","label":"la"},{"id":"s16","label":"baie."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"mer","label":"Champ lexical de la mer","color":"#4A6E8F"},{"id":"montagne","label":"Champ lexical de la montagne","color":"#A46849"}],"mapping":{"s2":"mer","s8":"mer","s12":"montagne","s13":"montagne","s16":"mer"}}'::jsonb,
  '« Vagues », « falaises » et « baie » appartiennent au champ lexical de la mer (éléments du littoral et du milieu marin). « Sommets » et « enneigés » relèvent du champ lexical de la montagne. Les programmes Éduscol invitent les enseignants à travailler les champs lexicaux comme outil de compréhension et de production textuelle.',
  'Exclure « falaises » du champ lexical de la mer. Les falaises sont des formations géologiques côtières qui appartiennent bien au lexique maritime, même si elles sont aussi des reliefs.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile : Joie / Colère
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots appartenant au champ lexical de la joie et ceux du champ lexical de la colère.',
  NULL,
  '[{"id":"s1","label":"Son"},{"id":"s2","label":"sourire"},{"id":"s3","label":"radieux"},{"id":"s4","label":"contrastait"},{"id":"s5","label":"avec"},{"id":"s6","label":"la"},{"id":"s7","label":"fureur"},{"id":"s8","label":"de"},{"id":"s9","label":"son"},{"id":"s10","label":"frère,"},{"id":"s11","label":"qui"},{"id":"s12","label":"fulminait"},{"id":"s13","label":"en"},{"id":"s14","label":"riant"},{"id":"s15","label":"jaune."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"joie","label":"Champ lexical de la joie","color":"#4A6E8F"},{"id":"colere","label":"Champ lexical de la colère","color":"#A46849"}],"mapping":{"s2":"joie","s3":"joie","s7":"colere","s12":"colere"}}'::jsonb,
  '« Sourire » et « radieux » expriment la joie ou le bonheur. « Fureur » et « fulminait » relèvent du champ lexical de la colère. « Riant jaune » est une expression figée qui ne relève pas du champ de la joie (elle exprime un malaise). Éduscol souligne que les champs lexicaux des émotions sont fondamentaux pour développer le vocabulaire des sentiments dès le cycle 2.',
  'Surligner « riant » comme appartenant au champ de la joie. Dans l''expression « rire jaune », le verbe rire perd son sens premier et exprime au contraire un malaise ou une gêne.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire : Peur / Courage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots appartenant au champ lexical de la peur et ceux du champ lexical du courage.',
  NULL,
  '[{"id":"s1","label":"Malgré"},{"id":"s2","label":"la"},{"id":"s3","label":"terreur"},{"id":"s4","label":"qui"},{"id":"s5","label":"le"},{"id":"s6","label":"paralysait,"},{"id":"s7","label":"le"},{"id":"s8","label":"soldat"},{"id":"s9","label":"fit"},{"id":"s10","label":"preuve"},{"id":"s11","label":"d''une"},{"id":"s12","label":"bravoure"},{"id":"s13","label":"remarquable"},{"id":"s14","label":"et"},{"id":"s15","label":"affronta"},{"id":"s16","label":"l''effroi"},{"id":"s17","label":"avec"},{"id":"s18","label":"vaillance."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"peur","label":"Champ lexical de la peur","color":"#4A6E8F"},{"id":"courage","label":"Champ lexical du courage","color":"#A46849"}],"mapping":{"s3":"peur","s12":"courage","s15":"courage","s16":"peur","s18":"courage"}}'::jsonb,
  '« Terreur » et « effroi » sont des substantifs appartenant au champ lexical de la peur. « Bravoure », « affronta » et « vaillance » relèvent du champ lexical du courage. Selon Éduscol, l''étude des champs lexicaux antonymiques permet de travailler les nuances sémantiques et d''enrichir les productions écrites des élèves.',
  'Surligner « paralysait » comme mot de la peur. Bien que la paralysie soit ici causée par la peur, le verbe « paralyser » appartient au champ lexical du corps et non à celui de la peur en propre.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire : Lumière / Obscurité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots appartenant au champ lexical de la lumière et ceux du champ lexical de l''obscurité.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"crépuscule"},{"id":"s3","label":"enveloppait"},{"id":"s4","label":"la"},{"id":"s5","label":"vallée"},{"id":"s6","label":"de"},{"id":"s7","label":"ténèbres,"},{"id":"s8","label":"mais"},{"id":"s9","label":"une"},{"id":"s10","label":"lueur"},{"id":"s11","label":"éclatante"},{"id":"s12","label":"perçait"},{"id":"s13","label":"à"},{"id":"s14","label":"travers"},{"id":"s15","label":"les"},{"id":"s16","label":"ombres"},{"id":"s17","label":"du"},{"id":"s18","label":"soir."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"lumiere","label":"Champ lexical de la lumière","color":"#4A6E8F"},{"id":"obscurite","label":"Champ lexical de l''obscurité","color":"#A46849"}],"mapping":{"s2":"obscurite","s7":"obscurite","s10":"lumiere","s11":"lumiere","s16":"obscurite"}}'::jsonb,
  '« Crépuscule », « ténèbres » et « ombres » relèvent du champ lexical de l''obscurité (ils évoquent l''absence de lumière). « Lueur » et « éclatante » appartiennent au champ lexical de la lumière. Les programmes Éduscol recommandent de travailler les champs lexicaux en contexte littéraire pour développer la sensibilité aux effets stylistiques.',
  'Classer « crépuscule » dans le champ de la lumière parce qu''il reste un peu de jour. Le crépuscule désigne le moment où la lumière décline et les ténèbres s''installent : il appartient au champ de l''obscurité.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire : Bonheur / Tristesse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots appartenant au champ lexical du bonheur et ceux du champ lexical de la tristesse.',
  NULL,
  '[{"id":"s1","label":"La"},{"id":"s2","label":"mélancolie"},{"id":"s3","label":"de"},{"id":"s4","label":"l''automne"},{"id":"s5","label":"s''effaçait"},{"id":"s6","label":"devant"},{"id":"s7","label":"l''allégresse"},{"id":"s8","label":"des"},{"id":"s9","label":"enfants"},{"id":"s10","label":"qui"},{"id":"s11","label":"chantaient,"},{"id":"s12","label":"malgré"},{"id":"s13","label":"le"},{"id":"s14","label":"chagrin"},{"id":"s15","label":"qui"},{"id":"s16","label":"affleurait"},{"id":"s17","label":"dans"},{"id":"s18","label":"leurs"},{"id":"s19","label":"regards"},{"id":"s20","label":"épanouis."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"bonheur","label":"Champ lexical du bonheur","color":"#4A6E8F"},{"id":"tristesse","label":"Champ lexical de la tristesse","color":"#A46849"}],"mapping":{"s2":"tristesse","s7":"bonheur","s14":"tristesse","s20":"bonheur"}}'::jsonb,
  '« Mélancolie » et « chagrin » appartiennent au champ lexical de la tristesse. « Allégresse » et « épanouis » relèvent du champ lexical du bonheur. Éduscol insiste sur l''importance de travailler les nuances de sens entre mots d''un même champ lexical (tristesse / mélancolie / chagrin) pour enrichir le lexique des émotions.',
  'Inclure « chantaient » dans le champ du bonheur. Chanter n''est pas intrinsèquement lié au bonheur : on peut chanter par tristesse, par habitude ou par devoir.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire : Guerre / Paix
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots appartenant au champ lexical de la guerre et ceux du champ lexical de la paix.',
  NULL,
  '[{"id":"s1","label":"Après"},{"id":"s2","label":"les"},{"id":"s3","label":"combats"},{"id":"s4","label":"acharnés"},{"id":"s5","label":"et"},{"id":"s6","label":"les"},{"id":"s7","label":"bombardements,"},{"id":"s8","label":"l''armistice"},{"id":"s9","label":"apporta"},{"id":"s10","label":"enfin"},{"id":"s11","label":"la"},{"id":"s12","label":"sérénité"},{"id":"s13","label":"et"},{"id":"s14","label":"la"},{"id":"s15","label":"concorde"},{"id":"s16","label":"entre"},{"id":"s17","label":"les"},{"id":"s18","label":"belligérants."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"guerre","label":"Champ lexical de la guerre","color":"#4A6E8F"},{"id":"paix","label":"Champ lexical de la paix","color":"#A46849"}],"mapping":{"s3":"guerre","s7":"guerre","s8":"paix","s12":"paix","s15":"paix","s18":"guerre"}}'::jsonb,
  '« Combats », « bombardements » et « belligérants » appartiennent au champ lexical de la guerre (affrontement armé). « Armistice », « sérénité » et « concorde » relèvent du champ lexical de la paix (cessation des hostilités et harmonie). Selon Éduscol, l''étude des champs lexicaux en contexte historique ou littéraire favorise la compréhension des enjeux textuels.',
  'Classer « armistice » dans le champ de la guerre. Bien que l''armistice soit lié au contexte guerrier, il désigne précisément l''accord de cessez-le-feu et appartient au champ de la paix.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile : Voyage / Enfermement / Rêverie (3 champs)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les mots selon trois champs lexicaux : le voyage, l''enfermement et la rêverie.',
  NULL,
  '[{"id":"s1","label":"Derrière"},{"id":"s2","label":"les"},{"id":"s3","label":"barreaux"},{"id":"s4","label":"de"},{"id":"s5","label":"sa"},{"id":"s6","label":"cellule,"},{"id":"s7","label":"le"},{"id":"s8","label":"prisonnier"},{"id":"s9","label":"songeait"},{"id":"s10","label":"aux"},{"id":"s11","label":"horizons"},{"id":"s12","label":"lointains,"},{"id":"s13","label":"imaginant"},{"id":"s14","label":"des"},{"id":"s15","label":"contrées"},{"id":"s16","label":"fabuleuses"},{"id":"s17","label":"par-delà"},{"id":"s18","label":"les"},{"id":"s19","label":"murailles."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"voyage","label":"Champ lexical du voyage","color":"#4A6E8F"},{"id":"enfermement","label":"Champ lexical de l''enfermement","color":"#A46849"},{"id":"reverie","label":"Champ lexical de la rêverie","color":"#6B8E5A"}],"mapping":{"s3":"enfermement","s6":"enfermement","s8":"enfermement","s9":"reverie","s11":"voyage","s13":"reverie","s15":"voyage","s19":"enfermement"}}'::jsonb,
  '« Barreaux », « cellule », « prisonnier » et « murailles » évoquent l''enfermement. « Horizons » et « contrées » relèvent du voyage (espaces à explorer). « Songeait » et « imaginant » appartiennent au champ de la rêverie. Ce texte illustre un procédé littéraire classique : l''opposition entre enfermement physique et évasion mentale. Éduscol recommande l''identification de champs lexicaux multiples pour développer l''interprétation littéraire.',
  'Classer « lointains » dans le champ du voyage. Cet adjectif qualifie « horizons » mais n''appartient pas en propre au champ lexical du voyage : il exprime une distance qui pourrait concerner n''importe quel référent.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile : Mort / Vie / Temps (3 champs, extrait littéraire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les mots selon trois champs lexicaux : la mort, la vie et le temps qui passe.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"saisons"},{"id":"s3","label":"s''écoulaient"},{"id":"s4","label":"et"},{"id":"s5","label":"le"},{"id":"s6","label":"jardin"},{"id":"s7","label":"refleurissait"},{"id":"s8","label":"chaque"},{"id":"s9","label":"printemps,"},{"id":"s10","label":"tandis"},{"id":"s11","label":"que"},{"id":"s12","label":"les"},{"id":"s13","label":"feuilles"},{"id":"s14","label":"mortes"},{"id":"s15","label":"jonchaient"},{"id":"s16","label":"le"},{"id":"s17","label":"sol,"},{"id":"s18","label":"témoins"},{"id":"s19","label":"éphémères"},{"id":"s20","label":"du"},{"id":"s21","label":"déclin."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"mort","label":"Champ lexical de la mort","color":"#4A6E8F"},{"id":"vie","label":"Champ lexical de la vie","color":"#6B8E5A"},{"id":"temps","label":"Champ lexical du temps","color":"#A46849"}],"mapping":{"s2":"temps","s3":"temps","s7":"vie","s9":"temps","s14":"mort","s19":"temps","s21":"mort"}}'::jsonb,
  '« Saisons », « s''écoulaient », « printemps » et « éphémères » renvoient au champ lexical du temps qui passe. « Refleurissait » évoque la vie et le renouveau. « Mortes » et « déclin » appartiennent au champ lexical de la mort et de la fin. Ce passage illustre le topos littéraire du cycle naturel liant temps, vie et mort. Les programmes Éduscol invitent à repérer ces réseaux sémantiques pour accéder à l''interprétation symbolique des textes.',
  'Surligner « feuilles » dans le champ de la vie ou de la mort. Le mot « feuilles » est neutre ; c''est l''adjectif « mortes » qui oriente vers le champ lexical de la mort. « Feuilles » seul désigne un élément végétal sans connotation de mort ni de vie.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile : Savoir / Ignorance / Pouvoir (3 champs, texte argumentatif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f4020000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'surlignage_champs_lexicaux',
  'Surlignage — Champs lexicaux',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les mots selon trois champs lexicaux : le savoir, l''ignorance et le pouvoir.',
  NULL,
  '[{"id":"s1","label":"L''érudition"},{"id":"s2","label":"confère"},{"id":"s3","label":"une"},{"id":"s4","label":"autorité"},{"id":"s5","label":"que"},{"id":"s6","label":"la"},{"id":"s7","label":"méconnaissance"},{"id":"s8","label":"ne"},{"id":"s9","label":"saurait"},{"id":"s10","label":"offrir :"},{"id":"s11","label":"celui"},{"id":"s12","label":"qui"},{"id":"s13","label":"maîtrise"},{"id":"s14","label":"le"},{"id":"s15","label":"savoir"},{"id":"s16","label":"détient"},{"id":"s17","label":"l''empire"},{"id":"s18","label":"sur"},{"id":"s19","label":"les"},{"id":"s20","label":"esprits"},{"id":"s21","label":"ignorants."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"savoir","label":"Champ lexical du savoir","color":"#4A6E8F"},{"id":"ignorance","label":"Champ lexical de l''ignorance","color":"#A46849"},{"id":"pouvoir","label":"Champ lexical du pouvoir","color":"#6B8E5A"}],"mapping":{"s1":"savoir","s4":"pouvoir","s7":"ignorance","s13":"savoir","s15":"savoir","s16":"pouvoir","s17":"pouvoir","s21":"ignorance"}}'::jsonb,
  '« Érudition », « maîtrise » (au sens de connaissance approfondie) et « savoir » relèvent du champ lexical du savoir. « Méconnaissance » et « ignorants » appartiennent au champ de l''ignorance. « Autorité », « détient » et « empire » renvoient au pouvoir. Ce texte argumentatif illustre la thèse classique reliant savoir et pouvoir. Éduscol souligne que l''analyse des champs lexicaux dans les textes argumentatifs permet de dégager la stratégie de l''auteur.',
  'Classer « maîtrise » dans le champ du pouvoir. Ici, « maîtrise » est employé au sens de « posséder une connaissance approfondie », et non au sens de « domination ». Le contexte syntaxique (maîtrise le savoir) oriente vers le champ du savoir.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

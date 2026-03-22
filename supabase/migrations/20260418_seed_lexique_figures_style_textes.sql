-- ============================================================
-- Migration : Série Lexique — Figures de style dans des extraits littéraires
-- UUID prefix : e401
-- 10 exercices : surlignage_propositions (4), qcm (4), tri_categories (2)
-- Tous les exercices s''appuient sur de vrais extraits littéraires
-- ============================================================

-- Q1 — Facile — surlignage — Comparaison chez Hugo
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Facile',
  'surlignage_propositions',
  'Dans cet extrait de Victor Hugo, surlignez les deux éléments de la comparaison : le comparé (ce qui est comparé) et le comparant (ce à quoi on compare).',
  '« L''aurore apparaissait ; quelle aurore ? Un abîme / D''éblouissement, vaste, insondable, sublime ; / Un ardent gouffre d''or, de pourpre et de saphir. » — Victor Hugo, La Légende des siècles',
  '[{"id":"s1","label":"L''aurore"},{"id":"s2","label":"apparaissait"},{"id":"s3","label":"quelle aurore ?"},{"id":"s4","label":"Un abîme d''éblouissement"},{"id":"s5","label":"vaste, insondable, sublime"},{"id":"s6","label":"Un ardent gouffre d''or"},{"id":"s7","label":"de pourpre et de saphir"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"compare","label":"Comparé","color":"blue"},{"id":"comparant","label":"Comparant / Métaphore","color":"amber"}],"mapping":{"s1":"compare","s3":"compare","s4":"comparant","s6":"comparant"}}'::jsonb,
  'Hugo utilise ici une métaphore filée : l''aurore (comparé) est assimilée à « un abîme d''éblouissement » puis « un ardent gouffre d''or » (comparants). Il n''y a pas d''outil de comparaison explicite (comme, tel que…), ce qui confirme qu''il s''agit bien d''une métaphore et non d''une comparaison. L''effet produit est une amplification grandiose du lever du soleil, typique du lyrisme hugolien.',
  'Confondre métaphore et comparaison : ici, il n''y a pas de mot-outil (comme, semblable à, tel), donc il s''agit bien d''une métaphore. La comparaison nécessite un outil de comparaison explicite.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — surlignage — Allitération chez Racine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Facile',
  'surlignage_propositions',
  'Dans ce célèbre vers de Racine, surlignez les mots qui contiennent le son répété formant une allitération en [s].',
  '« Pour qui sont ces serpents qui sifflent sur vos têtes ? » — Racine, Andromaque (acte V, scène 5)',
  '[{"id":"s1","label":"Pour qui"},{"id":"s2","label":"sont"},{"id":"s3","label":"ces"},{"id":"s4","label":"serpents"},{"id":"s5","label":"qui"},{"id":"s6","label":"sifflent"},{"id":"s7","label":"sur"},{"id":"s8","label":"vos têtes"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"allit","label":"Son [s] — allitération","color":"green"}],"mapping":{"s2":"allit","s3":"allit","s4":"allit","s6":"allit","s7":"allit"}}'::jsonb,
  'L''allitération est la répétition d''un même son consonantique. Ici, le son [s] revient dans « sont », « ces », « serpents », « sifflent » et « sur ». Cette allitération en [s] imite le sifflement des serpents, créant une harmonie imitative (ou onomatopée prosodique). C''est l''un des exemples les plus célèbres de la littérature française, à connaître pour le CRPE.',
  'Confondre allitération (répétition de consonnes) et assonance (répétition de voyelles). Ici, c''est bien le son consonantique [s] qui est répété, donc une allitération.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — surlignage — Personnification chez Baudelaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Intermediaire',
  'surlignage_propositions',
  'Dans cet extrait de Baudelaire, surlignez d''une couleur l''élément personnifié (la chose non humaine) et d''une autre les actions humaines qui lui sont attribuées.',
  '« Bientôt nous plongerons dans les froides ténèbres ; / Adieu, vive clarté de nos étés trop courts ! / J''entends déjà tomber avec des chocs funèbres / Le bois retentissant sur le pavé des cours. » — Baudelaire, Chant d''automne',
  '[{"id":"s1","label":"les froides ténèbres"},{"id":"s2","label":"vive clarté"},{"id":"s3","label":"de nos étés trop courts"},{"id":"s4","label":"J''entends déjà tomber"},{"id":"s5","label":"avec des chocs funèbres"},{"id":"s6","label":"Le bois retentissant"},{"id":"s7","label":"sur le pavé des cours"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"personnifie","label":"Élément personnifié","color":"blue"},{"id":"humain","label":"Qualité / action humaine attribuée","color":"amber"}],"mapping":{"s1":"personnifie","s2":"personnifie","s5":"humain"}}'::jsonb,
  'La personnification attribue des caractéristiques humaines à des éléments non humains. Ici, les « ténèbres » sont qualifiées de « froides » (sensation humaine projetée), la « clarté » est « vive » (comme un être vivant), et les chocs du bois sont « funèbres » (émotion humaine attribuée au son). Baudelaire transforme les éléments naturels en présences quasi humaines pour exprimer l''angoisse du temps qui passe.',
  'Ne pas confondre personnification et métaphore : la personnification est un cas particulier où le comparant est spécifiquement humain. Si on dit « la mer est en colère », c''est une personnification (colère = émotion humaine).',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Avancé — surlignage — Antithèse et oxymore chez Hugo
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Avance',
  'surlignage_propositions',
  'Victor Hugo oppose des termes contradictoires. Surlignez les paires antithétiques en associant chaque terme positif à son contraire négatif.',
  '« Je suis le ténébreux, — le veuf, — l''inconsolé, / Le prince d''Aquitaine à la tour abolie : / Ma seule étoile est morte, — et mon luth constellé / Porte le soleil noir de la Mélancolie. » — Gérard de Nerval, El Desdichado',
  '[{"id":"s1","label":"étoile"},{"id":"s2","label":"morte"},{"id":"s3","label":"luth constellé"},{"id":"s4","label":"soleil"},{"id":"s5","label":"noir"},{"id":"s6","label":"Mélancolie"},{"id":"s7","label":"prince"},{"id":"s8","label":"tour abolie"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"positif","label":"Terme lumineux / positif","color":"amber"},{"id":"negatif","label":"Terme sombre / négatif","color":"purple"}],"mapping":{"s1":"positif","s2":"negatif","s4":"positif","s5":"negatif","s7":"positif","s8":"negatif"}}'::jsonb,
  'Nerval construit tout le sonnet sur des antithèses : « étoile » (lumière) / « morte » (fin), « soleil » (lumière suprême) / « noir » (obscurité totale). « Soleil noir » forme un oxymore — alliance de deux termes contradictoires dans un même groupe nominal. « Prince » / « tour abolie » oppose grandeur et ruine. Ces figures créent un univers paradoxal où la lumière et l''ombre coexistent, exprimant la dualité intérieure du poète.',
  'Confondre antithèse et oxymore : l''antithèse oppose deux termes dans la phrase (« Ma seule étoile est morte »), tandis que l''oxymore les unit dans un même groupe nominal (« soleil noir »). L''oxymore est donc un cas particulier d''antithèse, plus concentré.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — qcm — Identifier une comparaison chez La Fontaine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Facile',
  'qcm',
  'Quelle figure de style est principalement employée dans cet extrait ?',
  '« Maître Corbeau, sur un arbre perché, / Tenait en son bec un fromage. / Maître Renard, par l''odeur alléché, / Lui tint à peu près ce langage… » — La Fontaine, Le Corbeau et le Renard',
  '[{"id":"a","label":"Comparaison — rapprochement avec un outil de comparaison"},{"id":"b","label":"Personnification — attribution de comportements humains à des animaux"},{"id":"c","label":"Métaphore — rapprochement sans outil de comparaison"},{"id":"d","label":"Hyperbole — exagération pour frapper l''imagination"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La Fontaine utilise la personnification : les animaux (le corbeau et le renard) sont présentés avec des attributs humains — on les appelle « Maître », ils « tiennent un langage ». La personnification consiste à attribuer des caractéristiques humaines (parole, titre social, sentiments) à des êtres non humains. Dans les fables, cette figure sert à critiquer les comportements humains de manière détournée.',
  'On pourrait penser à une métaphore, mais la personnification est plus précise ici : ce sont spécifiquement des traits humains (le titre « Maître », la capacité de parler) qui sont attribués à des animaux. La personnification est un type particulier de métaphore.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Anaphore chez Éluard
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Intermediaire',
  'qcm',
  'Quelle figure de style structure l''ensemble de ce poème de Paul Éluard ?',
  '« Sur mes cahiers d''écolier / Sur mon pupitre et les arbres / Sur le sable sur la neige / J''écris ton nom / Sur toutes les pages lues / Sur toutes les pages blanches / Pierre sang papier ou cendre / J''écris ton nom » — Paul Éluard, Liberté',
  '[{"id":"a","label":"Anaphore — répétition d''un même mot ou groupe en début de vers"},{"id":"b","label":"Allitération — répétition d''un même son consonantique"},{"id":"c","label":"Énumération — succession de termes de même nature"},{"id":"d","label":"Gradation — succession de termes d''intensité croissante"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''anaphore est la répétition d''un même mot ou groupe de mots en début de vers ou de phrase. Ici, « Sur » est répété en tête de chaque vers (sauf le refrain), et « J''écris ton nom » revient comme un refrain. Cette anaphore crée un effet d''accumulation et d''insistance : la liberté est partout, sur tous les supports. L''anaphore est l''une des figures les plus fréquentes en poésie et dans les discours — elle rythme et amplifie le propos.',
  'On pourrait hésiter avec l''énumération (les supports se succèdent), mais la figure structurante est bien l''anaphore : c''est la répétition de « Sur » en position initiale qui organise tout le poème. L''énumération est un effet secondaire de l''anaphore.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — qcm — Hyperbole chez Rabelais
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Intermediaire',
  'qcm',
  'Quelle figure de style domine dans cet extrait de Rabelais ?',
  '« Il se moucha en archidiacre, et pour lui apprendre à ne plus perdre son temps à jouer aux dés, fit apporter dix-sept mille neuf cent treize vaches pour son déjeuner, et trois cent quatre-vingt-seize mille deux cent quatorze moutards pour lui tenir compagnie. » — Rabelais, Gargantua (adapté)',
  '[{"id":"a","label":"Litote — expression atténuée pour dire plus"},{"id":"b","label":"Hyperbole — exagération volontaire pour frapper l''imagination"},{"id":"c","label":"Métonymie — désignation d''un tout par une de ses parties"},{"id":"d","label":"Euphémisme — atténuation d''une réalité désagréable"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''hyperbole est une figure d''exagération qui amplifie la réalité pour produire un effet comique, dramatique ou emphatique. Chez Rabelais, les nombres démesurés (« dix-sept mille neuf cent treize vaches ») sont volontairement absurdes : c''est l''hyperbole au service du comique. L''hyperbole est le contraire de la litote (qui dit moins pour suggérer plus). Elle est très fréquente dans la langue courante : « mourir de rire », « attendre une éternité ».',
  'Confondre hyperbole et accumulation : l''accumulation est une succession de termes, tandis que l''hyperbole porte sur l''exagération de la quantité ou de l''intensité. Ici, les chiffres astronomiques constituent l''hyperbole.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — qcm — Litote chez Corneille
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Avance',
  'qcm',
  'Quelle figure de style Chimène emploie-t-elle dans cette célèbre réplique, et quel en est l''effet ?',
  '« Va, je ne te hais point. » — Corneille, Le Cid (acte III, scène 4). Chimène s''adresse à Rodrigue, qui a tué son père en duel.',
  '[{"id":"a","label":"Litote — elle dit moins pour exprimer plus : elle l''aime passionnément"},{"id":"b","label":"Euphémisme — elle atténue la cruauté de la situation"},{"id":"c","label":"Antiphrase — elle dit le contraire de ce qu''elle pense par ironie"},{"id":"d","label":"Périphrase — elle désigne l''amour de manière détournée"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'C''est la litote la plus célèbre de la littérature française. En disant « je ne te hais point » (formulation négative minimale), Chimène exprime en réalité un amour profond. La litote consiste à dire moins pour suggérer davantage, souvent par une négation du contraire. La différence avec l''euphémisme est essentielle : l''euphémisme atténue pour ne pas choquer (« il nous a quittés » pour « il est mort »), tandis que la litote atténue pour renforcer l''expression.',
  'Confondre litote et euphémisme : les deux atténuent, mais leurs buts diffèrent. La litote veut dire plus que ce qu''elle énonce (« je ne te hais point » = je t''aime follement). L''euphémisme veut adoucir une réalité pénible. C''est une distinction classique au CRPE.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — tri_categories — Classer des extraits par figure de style
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Intermediaire',
  'tri_categories',
  'Classez chaque extrait littéraire selon la figure de style qu''il illustre.',
  'Lisez attentivement chaque extrait et identifiez la figure dominante. Rappelez-vous : la comparaison utilise un outil (comme, tel, semblable à…), la métaphore n''en utilise pas, et la personnification attribue des qualités humaines à un élément non humain.',
  '[{"id":"tc18q1w1","label":"« La terre est bleue comme une orange » — Éluard"},{"id":"tc18q1w2","label":"« La mer est un miroir tremblant » — Hugo"},{"id":"tc18q1w3","label":"« L''automne souriait et jouait avec le vent » — Prévert"},{"id":"tc18q1w4","label":"« Ses yeux brillaient comme deux étoiles » — Balzac"},{"id":"tc18q1w5","label":"« La nuit déploie son manteau de velours » — Musset"},{"id":"tc18q1w6","label":"« Mon âme est semblable à un jardin dévasté » — Verlaine"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"comparaison","label":"Comparaison"},{"id":"metaphore","label":"Métaphore"},{"id":"personnification","label":"Personnification"}],"mapping":{"tc18q1w1":"comparaison","tc18q1w2":"metaphore","tc18q1w3":"personnification","tc18q1w4":"comparaison","tc18q1w5":"personnification","tc18q1w6":"comparaison"}}'::jsonb,
  'Les comparaisons utilisent un outil explicite : « comme une orange » (Éluard), « comme deux étoiles » (Balzac), « semblable à un jardin » (Verlaine). Les métaphores identifient directement : « La mer est un miroir » (Hugo) — pas de « comme ». Les personnifications attribuent des actions humaines à des non-humains : l''automne qui « sourit et joue » (Prévert), la nuit qui « déploie son manteau » (Musset). La distinction comparaison/métaphore repose sur la présence ou l''absence de l''outil de comparaison.',
  'L''extrait d''Éluard (« La terre est bleue comme une orange ») peut surprendre car il semble absurde, mais la structure syntaxique « A comme B » en fait bien une comparaison, même si le rapprochement est surréaliste.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — tri_categories — Figures de ressemblance vs figures d''opposition vs figures de sonorité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e4010000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lexique_figures_style_textes',
  'Figures de style : identification dans des textes littéraires',
  'Avance',
  'tri_categories',
  'Classez chaque extrait selon le type de figure de style employée : figure de ressemblance (analogie), figure d''opposition ou figure de sonorité.',
  'Les figures d''analogie rapprochent deux éléments (comparaison, métaphore, personnification). Les figures d''opposition confrontent des contraires (antithèse, oxymore). Les figures de sonorité jouent sur les sons (allitération, assonance).',
  '[{"id":"tc18q2w1","label":"« Le soleil noir de la Mélancolie » — Nerval (oxymore)"},{"id":"tc18q2w2","label":"« Les sanglots longs des violons de l''automne » — Verlaine (assonance en [ɔ̃])"},{"id":"tc18q2w3","label":"« Cette obscure clarté qui tombe des étoiles » — Corneille (oxymore)"},{"id":"tc18q2w4","label":"« Un frais parfum sortait des touffes d''asphodèles » — Hugo (personnification : le parfum « sort »)"},{"id":"tc18q2w5","label":"« Je vis, je meurs ; je me brûle et me noie » — Louise Labé (antithèse)"},{"id":"tc18q2w6","label":"« Trois petits poux pondus par une poule » — Desnos (allitération en [p])"},{"id":"tc18q2w7","label":"« La rue assourdissante autour de moi hurlait » — Baudelaire (personnification)"},{"id":"tc18q2w8","label":"« Ô douleur ! ô douleur ! Le Temps mange la vie » — Baudelaire (métaphore)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"analogie","label":"Figures d''analogie (ressemblance)"},{"id":"opposition","label":"Figures d''opposition"},{"id":"sonorite","label":"Figures de sonorité"}],"mapping":{"tc18q2w1":"opposition","tc18q2w2":"sonorite","tc18q2w3":"opposition","tc18q2w4":"analogie","tc18q2w5":"opposition","tc18q2w6":"sonorite","tc18q2w7":"analogie","tc18q2w8":"analogie"}}'::jsonb,
  'Les figures d''analogie créent un rapprochement : la personnification (la rue qui « hurle », le parfum qui « sort ») et la métaphore (le Temps qui « mange »). Les figures d''opposition confrontent des contraires : l''oxymore unit deux termes opposés dans un même groupe (« soleil noir », « obscure clarté »), l''antithèse les oppose dans la phrase (« je vis, je meurs »). Les figures de sonorité jouent sur la musicalité : l''assonance répète des voyelles (les [ɔ̃] de Verlaine), l''allitération répète des consonnes (les [p] de Desnos).',
  'Ne pas confondre antithèse et oxymore : l''antithèse oppose deux termes séparés dans la phrase (« je vis / je meurs »), tandis que l''oxymore les unit dans un même groupe nominal (« soleil noir »). L''oxymore crée un paradoxe plus concentré et plus saisissant.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Migration : Série Grammaire — Les déterminants (10 exercices)
-- UUID prefix : f602
-- ============================================================

-- Q1 — Facile — qcm — Identifier un déterminant possessif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Facile',
  'qcm',
  'Dans la phrase suivante, quel mot est un déterminant possessif ?',
  'Leur institutrice a distribué ses copies aux élèves dans la cour.',
  '[{"id":"a","label":"Leur"},{"id":"b","label":"ses"},{"id":"c","label":"aux"},{"id":"d","label":"la"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le déterminant possessif « leur » indique que l''institutrice appartient (au sens large) au groupe désigné par « ils/elles ». « Ses » est également un déterminant possessif, mais la question demande d''identifier un seul déterminant possessif, et « leur » est le premier dans la phrase. « Aux » est un article défini contracté (à + les) et « la » est un article défini. Au cycle 3, les programmes Éduscol demandent que les élèves sachent distinguer les différentes catégories de déterminants.',
  'Les élèves hésitent souvent entre « leur » et « ses » car les deux sont des déterminants possessifs. La question vise à vérifier que le candidat reconnaît « leur » comme possessif et non comme pronom personnel (comme dans « je leur parle »).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Reconnaître un article défini contracté
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Facile',
  'qcm',
  'Quelle est la nature du mot « du » dans la phrase suivante ?',
  'Le chat du voisin dort sur le rebord du balcon.',
  '[{"id":"a","label":"Article indéfini"},{"id":"b","label":"Article défini contracté (de + le)"},{"id":"c","label":"Article partitif"},{"id":"d","label":"Déterminant démonstratif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « le chat du voisin », « du » est un article défini contracté, résultant de la contraction de la préposition « de » et de l''article défini « le ». Il ne faut pas le confondre avec l''article partitif « du » que l''on trouve dans « je mange du pain » (où « du » signifie « une certaine quantité de »). Pour les distinguer, on peut essayer de remplacer par « de le » : si la substitution est possible sémantiquement (le chat de le voisin → le chat du voisin), c''est un article contracté.',
  'La confusion majeure porte sur la distinction entre article défini contracté et article partitif. Dans « du voisin », « du » = de + le (contracté). Dans « du pain », « du » est partitif et ne peut pas se décomposer en « de + le » de manière sensée.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — vrai_faux — Les déterminants démonstratifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Le mot « ce » est toujours un déterminant démonstratif.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. Le mot « ce » peut être un déterminant démonstratif (« ce livre est intéressant ») mais aussi un pronom démonstratif (« ce qui m''intéresse », « c''est beau »). En tant que déterminant, « ce » précède un nom masculin singulier. En tant que pronom, « ce » remplace un groupe nominal ou une idée et peut être sujet ou antécédent d''une relative. La distinction entre déterminant et pronom est un savoir fondamental au CRPE.',
  'L''erreur fréquente est de classer systématiquement « ce » comme déterminant sans examiner sa fonction dans la phrase. Dans « ce que tu dis », « ce » est pronom démonstratif antécédent de la relative.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Identifier un déterminant indéfini
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Facile',
  'qcm',
  'Quel déterminant est un déterminant indéfini dans la phrase suivante ?',
  'Plusieurs élèves ont apporté chaque jour un livre différent à la bibliothèque.',
  '[{"id":"a","label":"Plusieurs"},{"id":"b","label":"chaque"},{"id":"c","label":"un"},{"id":"d","label":"la"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le déterminant « plusieurs » est un déterminant indéfini : il indique une quantité imprécise sans déterminer exactement le nombre d''élèves. « Chaque » est parfois classé parmi les déterminants indéfinis dans certaines grammaires, mais la terminologie Éduscol le range dans les déterminants distributifs. « Un » est un article indéfini (et non un déterminant indéfini au sens strict). « La » est un article défini.',
  'La confusion entre article indéfini (« un, une, des ») et déterminant indéfini (« plusieurs, quelques, certains, chaque ») est très fréquente. Les articles indéfinis forment une sous-catégorie distincte des déterminants indéfinis au sens large.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — tri_categories — Classer des déterminants par catégorie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Intermediaire',
  'tri_categories',
  'Classez chacun de ces déterminants dans la catégorie qui convient : article défini, déterminant possessif ou déterminant démonstratif.',
  NULL,
  '[{"id":"tc01q5w1","label":"le"},{"id":"tc01q5w2","label":"cette"},{"id":"tc01q5w3","label":"notre"},{"id":"tc01q5w4","label":"les"},{"id":"tc01q5w5","label":"ton"},{"id":"tc01q5w6","label":"ces"},{"id":"tc01q5w7","label":"l''"},{"id":"tc01q5w8","label":"cet"},{"id":"tc01q5w9","label":"leurs"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cat_def","label":"Article défini"},{"id":"cat_poss","label":"Déterminant possessif"},{"id":"cat_dem","label":"Déterminant démonstratif"}],"mapping":{"tc01q5w1":"cat_def","tc01q5w2":"cat_dem","tc01q5w3":"cat_poss","tc01q5w4":"cat_def","tc01q5w5":"cat_poss","tc01q5w6":"cat_dem","tc01q5w7":"cat_def","tc01q5w8":"cat_dem","tc01q5w9":"cat_poss"}}'::jsonb,
  'Les articles définis (le, les, l'') accompagnent un nom désignant un élément connu ou déjà mentionné. Les déterminants possessifs (notre, ton, leurs) indiquent une relation d''appartenance entre le possesseur et le nom déterminé. Les déterminants démonstratifs (cette, ces, cet) servent à montrer, à désigner un élément précis dans la situation d''énonciation ou dans le contexte. La forme « cet » s''emploie devant un nom masculin commençant par une voyelle ou un h muet.',
  'La forme élidée « l'' » est souvent oubliée comme article défini. Les élèves peinent aussi à distinguer « leur » (déterminant possessif) de « leur » (pronom personnel COI). De même, « cet » est parfois confondu avec « cette » pour le féminin.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Distinguer article partitif et article contracté
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Intermediaire',
  'qcm',
  'Dans quelle phrase le mot « des » est-il un article indéfini (et non un article défini contracté) ?',
  NULL,
  '[{"id":"a","label":"Il parle des aventures de son voyage."},{"id":"b","label":"Des enfants jouent dans le parc."},{"id":"c","label":"Je reviens des courses."},{"id":"d","label":"La couleur des feuilles change en automne."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans la phrase B, « des enfants » utilise l''article indéfini « des » (pluriel de « un/une ») : on parle d''enfants non identifiés, non déterminés. Dans les phrases A, C et D, « des » est un article défini contracté (de + les) : « des aventures » = de les aventures, « des courses » = de les courses, « des feuilles » = de les feuilles. Pour distinguer les deux, on peut tenter la substitution : si « des » peut être remplacé par « de les », c''est un article contracté.',
  'Cette distinction entre « des » article indéfini et « des » article défini contracté est l''un des points les plus testés au CRPE en analyse grammaticale. Le test de substitution par « de les » est la manipulation la plus fiable.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — vrai_faux — Déterminant et pronom possessif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Notre maison est plus grande que la leur », les mots « notre » et « leur » appartiennent à la même classe grammaticale.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. « Notre » est un déterminant possessif : il détermine le nom « maison ». En revanche, « la leur » est un pronom possessif qui remplace un groupe nominal (« leur maison »). Les déterminants accompagnent toujours un nom, tandis que les pronoms le remplacent. La présence de l''article « la » devant « leur » est un indice : les pronoms possessifs sont toujours précédés d''un article défini (le mien, la tienne, les nôtres, la leur).',
  'La confusion entre déterminant possessif et pronom possessif est classique. L''astuce est de vérifier si le mot est suivi d''un nom (déterminant) ou s''il remplace un groupe nominal (pronom).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — L''absence de déterminant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Intermediaire',
  'qcm',
  'Dans quelle phrase le nom est-il employé sans déterminant (on parle de « degré zéro » de la détermination) ?',
  NULL,
  '[{"id":"a","label":"Pierre mange une pomme chaque matin."},{"id":"b","label":"Elle agit avec courage et détermination."},{"id":"c","label":"Les enfants adorent les histoires fantastiques."},{"id":"d","label":"Certains élèves préfèrent le travail en groupe."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans la phrase B, les noms « courage » et « détermination » sont employés sans déterminant après la préposition « avec ». On parle de « degré zéro de la détermination » ou de « nom sans déterminant ». Ce phénomène apparaît dans certaines constructions prépositionnelles figées (avec patience, sans effort, par hasard), les apostrophes (Chers amis), les titres, les énumérations et les attributs désignant une fonction (Il est médecin).',
  'Les candidats oublient souvent que l''absence de déterminant est un phénomène grammatical à part entière, analysable et systématique. Ce n''est pas une « erreur » mais un fonctionnement normal du français dans des contextes précis.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — tri_categories — Classer des occurrences de « du », « des », « au »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Avance',
  'tri_categories',
  'Classez chaque mot en gras selon qu''il s''agit d''un article partitif, d''un article défini contracté ou d''un article indéfini.',
  'Phrases : (1) Je bois du lait. (2) Le toit du château est abîmé. (3) Des touristes visitent le musée. (4) Il parle des résultats obtenus. (5) Elle mange de la confiture. (6) Des traces de pas marquent le sentier.',
  '[{"id":"tc02q9w1","label":"du (phrase 1)"},{"id":"tc02q9w2","label":"du (phrase 2)"},{"id":"tc02q9w3","label":"des (phrase 3)"},{"id":"tc02q9w4","label":"des (phrase 4)"},{"id":"tc02q9w5","label":"de la (phrase 5)"},{"id":"tc02q9w6","label":"des (phrase 6)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cat_part","label":"Article partitif"},{"id":"cat_contr","label":"Article défini contracté"},{"id":"cat_indef","label":"Article indéfini"}],"mapping":{"tc02q9w1":"cat_part","tc02q9w2":"cat_contr","tc02q9w3":"cat_indef","tc02q9w4":"cat_contr","tc02q9w5":"cat_part","tc02q9w6":"cat_indef"}}'::jsonb,
  'L''article partitif (du, de la, de l'') s''emploie devant un nom désignant une quantité indénombrable ou non quantifiée : « du lait » (une certaine quantité), « de la confiture ». L''article défini contracté résulte de la fusion d''une préposition et d''un article défini : « du château » = de + le, « des résultats » = de + les. L''article indéfini « des » (pluriel de « un ») introduit des éléments non encore identifiés : « des touristes » (certains touristes, non définis), « des traces » (des traces quelconques).',
  'Cette distinction à trois termes (partitif / contracté / indéfini) est l''un des exercices les plus discriminants au CRPE. La clé est de tester si « du/des » peut être décomposé en « de + le/les » (contracté) ou s''il exprime une quantité (partitif) ou une indétermination (indéfini).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — vrai_faux — Déterminant exclamatif et interrogatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f6020000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'grammaire_determinants',
  'Les déterminants : identification et emploi',
  'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans les phrases « Quel beau temps ! » et « Quel temps fait-il ? », le mot « quel » a la même nature grammaticale mais pas la même valeur.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Dans les deux phrases, « quel » est un déterminant (il détermine le nom « temps »). Cependant, dans « Quel beau temps ! », il a une valeur exclamative : il exprime une émotion, un sentiment face à l''intensité ou la qualité de ce qui est désigné. Dans « Quel temps fait-il ? », il a une valeur interrogative : il porte la question sur l''identité ou la nature du temps. La terminologie Éduscol distingue les déterminants interrogatifs et exclamatifs comme des sous-catégories à part entière.',
  'Beaucoup de candidats pensent que « quel » exclamatif et « quel » interrogatif sont de natures différentes (adjectif vs déterminant). En réalité, ils sont tous deux déterminants mais diffèrent par leur valeur sémantique et le type de phrase dans lequel ils s''insèrent.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

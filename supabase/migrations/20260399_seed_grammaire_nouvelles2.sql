-- ============================================================
-- Migration : 2 séries Grammaire — Phrase emphatique + Compléments du nom (20 exercices)
-- UUID prefix série 1 : e1110000 (gram_phrase_emphatique) — free
-- UUID prefix série 2 : e1120000 (gram_complements_du_nom) — premium
-- NOTE : les préfixes e1010000/e1020000 demandés sont déjà utilisés
--        dans 20260349_seed_tri_surlignage.sql → remplacés par e111/e112
-- ============================================================

-- ============================================================
-- SÉRIE 1 : gram_phrase_emphatique / La phrase emphatique et la mise en relief
-- 10 questions — 6 QCM, 2 vrai_faux, 2 réponse_courte
-- Niveaux : 4 Facile, 3 Intermédiaire, 3 Difficile
-- Accès : free
-- ============================================================

-- Q1 — Facile — QCM — Identifier une phrase emphatique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Facile',
  'qcm',
  'Parmi les phrases suivantes, laquelle est une phrase emphatique ?',
  NULL,
  '[{"id":"a","label":"Le chat dort sur le canapé."},{"id":"b","label":"C''est le chat qui dort sur le canapé."},{"id":"c","label":"Le chat dort-il sur le canapé ?"},{"id":"d","label":"Que le chat dorme sur le canapé !"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase « C''est le chat qui dort sur le canapé » est emphatique car elle utilise le procédé d''extraction (tournure « C''est… qui ») pour mettre en relief le sujet « le chat ». Selon les programmes Éduscol, la phrase emphatique s''oppose à la phrase neutre et se caractérise par la mise en valeur d''un de ses constituants.',
  'Confondre la phrase emphatique avec la phrase exclamative. L''emphase porte sur la mise en relief d''un élément, pas sur l''expression d''une émotion.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Reconnaître la forme neutre correspondante
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Facile',
  'qcm',
  'Quelle est la forme neutre de la phrase emphatique « C''est à Paris que nous irons cet été » ?',
  NULL,
  '[{"id":"a","label":"Nous irons à Paris cet été."},{"id":"b","label":"À Paris, nous irons cet été."},{"id":"c","label":"Irons-nous à Paris cet été ?"},{"id":"d","label":"Nous irons cet été, à Paris."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La forme neutre correspondante est « Nous irons à Paris cet été », où aucun constituant n''est mis en relief. La phrase emphatique « C''est à Paris que nous irons cet été » utilise l''extraction avec le présentatif « c''est… que » pour mettre en valeur le complément circonstanciel de lieu. La transformation emphatique → neutre est une compétence attendue au CRPE pour l''analyse syntaxique.',
  'Choisir la phrase avec détachement en tête (option b) en pensant qu''il s''agit de la forme neutre. Le détachement est aussi un procédé emphatique, pas une forme neutre.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — vrai_faux — Dislocation et détachement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Facile',
  'vrai_faux',
  'Dans la phrase « Moi, je n''aime pas les épinards », le pronom tonique « moi » est un procédé de dislocation (détachement).',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La dislocation (ou détachement) consiste à reprendre un élément de la phrase par un pronom. Ici, « moi » est détaché en tête de phrase et repris par le pronom personnel sujet « je ». Ce procédé met en relief le sujet et relève de la phrase emphatique selon la terminologie Éduscol. La virgule après l''élément détaché est un indice typographique de ce procédé.',
  'Penser que « moi » est simplement un renforcement sans valeur grammaticale particulière. Il s''agit bien d''un procédé syntaxique identifiable : la dislocation à gauche.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — QCM — Les tournures présentatives
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Facile',
  'qcm',
  'Quel procédé de mise en relief est utilisé dans la phrase « Voilà le livre que je cherchais » ?',
  NULL,
  '[{"id":"a","label":"Extraction avec « c''est… qui »"},{"id":"b","label":"Dislocation à gauche"},{"id":"c","label":"Tournure présentative"},{"id":"d","label":"Dislocation à droite"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Voilà » est un présentatif. Les tournures présentatives (« voici/voilà », « il y a », « c''est ») permettent de présenter un élément en le mettant en relief. Elles font partie des procédés emphatiques identifiés dans les programmes Éduscol. Le présentatif « voilà » introduit ici le groupe nominal « le livre que je cherchais » en le mettant au premier plan.',
  'Confondre la tournure présentative avec l''extraction. L''extraction utilise spécifiquement « c''est… qui/que » comme encadrement, tandis que « voilà » est un présentatif autonome.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Identifier le constituant mis en relief
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Intermediaire',
  'qcm',
  'Dans la phrase « C''est à son frère qu''elle a offert ce cadeau », quel constituant est mis en relief par l''extraction ?',
  NULL,
  '[{"id":"a","label":"Le sujet « elle »"},{"id":"b","label":"Le complément d''objet indirect « à son frère »"},{"id":"c","label":"Le complément d''objet direct « ce cadeau »"},{"id":"d","label":"Le verbe « a offert »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le constituant mis en relief est le complément d''objet indirect « à son frère », encadré par « C''est… que ». La forme neutre serait « Elle a offert ce cadeau à son frère ». L''extraction par « c''est… que » isole le COI en position frontale pour le mettre en valeur. Au CRPE, il est essentiel de savoir identifier la fonction du constituant extrait pour analyser correctement la transformation syntaxique.',
  'Confondre le COI extrait avec le COD. Le COD est « ce cadeau » (offrir quelque chose), tandis que le COI est « à son frère » (offrir à quelqu''un), introduit par la préposition « à ».',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Dislocation à droite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Intermediaire',
  'vrai_faux',
  'Dans la phrase « Il est magnifique, ce tableau ! », le groupe nominal « ce tableau » est détaché à droite.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. On observe ici une dislocation à droite : le groupe nominal « ce tableau » est rejeté après le verbe et repris par le pronom « il » en position sujet. Ce procédé de détachement est caractéristique de la phrase emphatique. À la différence de la dislocation à gauche (« Ce tableau, il est magnifique »), l''élément détaché apparaît en fin de phrase, souvent dans un registre plus oral.',
  'Ne pas reconnaître la dislocation parce que le pronom « il » précède le nom. Dans la dislocation à droite, c''est bien le pronom qui annonce le groupe nominal rejeté en fin de phrase.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Réécrire en phrase emphatique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Intermediaire',
  'reponse_courte',
  'Transformez la phrase neutre « Pierre a gagné la course » en phrase emphatique en mettant le sujet en relief par extraction. Écrivez la phrase complète.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["C''est Pierre qui a gagné la course","C''est Pierre qui a gagné la course."]}'::jsonb,
  'La transformation par extraction du sujet utilise le tour « C''est… qui ». On obtient « C''est Pierre qui a gagné la course ». Le pronom relatif « qui » est obligatoire lorsque l''élément extrait a la fonction sujet (« que » pour les autres fonctions). Cette manipulation syntaxique est fondamentale au CRPE pour démontrer la maîtrise des types de phrases.',
  'Utiliser « que » au lieu de « qui » (*C''est Pierre que a gagné). Quand l''élément extrait est sujet, le pronom relatif est toujours « qui ».',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Valeur stylistique de la mise en relief
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Difficile',
  'qcm',
  'Dans l''extrait « Les étoiles, elles, ne mentent jamais » (Saint-Exupéry), quel est l''effet produit par la dislocation du sujet ?',
  NULL,
  '[{"id":"a","label":"Créer une opposition implicite entre les étoiles et un autre référent"},{"id":"b","label":"Corriger une ambiguïté grammaticale sur le sujet"},{"id":"c","label":"Introduire une subordonnée relative"},{"id":"d","label":"Transformer la phrase en phrase interrogative indirecte"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La dislocation « Les étoiles, elles, ne mentent jamais » crée un effet de contraste : en détachant le sujet et en le reprenant par le pronom tonique « elles », l''auteur oppose implicitement les étoiles à d''autres référents (les hommes, par exemple) qui, eux, peuvent mentir. Cette valeur contrastive de la dislocation est un effet stylistique majeur que les candidats au CRPE doivent savoir analyser dans les textes littéraires.',
  'Réduire la dislocation à un simple effet d''insistance sans percevoir la dimension contrastive. La reprise pronominale « elles » suggère fortement une opposition avec un autre référent.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — reponse_courte — Nommer le procédé emphatique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Difficile',
  'reponse_courte',
  'Quel est le nom du procédé emphatique utilisé dans la phrase « C''est demain que nous partons » ? Donnez le terme grammatical précis.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["extraction","l''extraction","Extraction","L''extraction"]}'::jsonb,
  'Le procédé utilisé est l''extraction (ou clivage). Il consiste à encadrer un constituant de la phrase par « c''est… qui/que » pour le mettre en relief. Ici, le complément circonstanciel de temps « demain » est extrait de sa position habituelle. La terminologie Éduscol emploie le terme « extraction » pour désigner ce procédé, aussi appelé « phrase clivée » dans la grammaire universitaire.',
  'Répondre « mise en relief » ou « emphase » qui sont des termes trop généraux. Le terme précis attendu est « extraction » (ou « clivage »), qui désigne spécifiquement le tour « c''est… qui/que ».',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — QCM — Analyse complexe de procédés combinés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1110000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'gram_phrase_emphatique',
  'La phrase emphatique et la mise en relief',
  'Difficile',
  'qcm',
  'Quelle analyse est correcte pour la phrase « Ce roman, c''est en classe que je l''ai découvert » ?',
  NULL,
  '[{"id":"a","label":"Un seul procédé : extraction de « en classe »"},{"id":"b","label":"Deux procédés : dislocation de « ce roman » à gauche + extraction de « en classe »"},{"id":"c","label":"Un seul procédé : dislocation de « ce roman » à gauche"},{"id":"d","label":"Deux procédés : extraction de « ce roman » + présentatif « c''est »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Cette phrase combine deux procédés emphatiques distincts. D''abord, « ce roman » est détaché à gauche (dislocation) et repris par le pronom « l'' » (COD). Ensuite, « en classe » est extrait par la tournure « c''est… que ». La capacité à identifier la superposition de procédés emphatiques est une compétence de niveau avancé attendue au CRPE, qui témoigne d''une maîtrise fine de l''analyse syntaxique.',
  'Ne repérer qu''un seul des deux procédés. La phrase présente bien une double mise en relief : dislocation (« ce roman… l'' ») ET extraction (« c''est… que »).',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : gram_complements_du_nom / Les compléments du nom et expansions nominales
-- 10 questions — 5 QCM, 3 vrai_faux, 2 réponse_courte
-- Niveaux : 3 Facile, 4 Intermédiaire, 3 Difficile
-- Accès : premium
-- ============================================================

-- Q1 — Facile — QCM — Identifier un complément du nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Facile',
  'qcm',
  'Dans le groupe nominal « la maison de mon oncle », quel est le complément du nom ?',
  NULL,
  '[{"id":"a","label":"la maison"},{"id":"b","label":"de mon oncle"},{"id":"c","label":"mon oncle"},{"id":"d","label":"maison de mon"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément du nom est « de mon oncle ». C''est un groupe prépositionnel (préposition « de » + GN « mon oncle ») qui apporte une précision sur le nom « maison ». Le complément du nom est une expansion du nom introduite par une préposition. Selon les programmes Éduscol, c''est l''une des quatre expansions du groupe nominal que les élèves doivent savoir identifier.',
  'Répondre « mon oncle » en oubliant la préposition « de ». Le complément du nom est le groupe prépositionnel complet, préposition incluse.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Nature du complément du nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Facile',
  'vrai_faux',
  'Dans « un gâteau au chocolat », le groupe « au chocolat » est une épithète du nom « gâteau ».',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Au chocolat » (= à le chocolat) est un complément du nom introduit par la préposition « à ». Ce n''est pas une épithète. L''épithète est un adjectif qualificatif directement lié au nom sans préposition (ex. : « un gâteau délicieux »). Il est essentiel au CRPE de distinguer la nature de l''expansion (adjectif, groupe prépositionnel, subordonnée relative) de sa fonction (épithète, complément du nom).',
  'Confondre complément du nom et épithète. L''épithète est toujours un adjectif qualificatif ; un groupe prépositionnel a la fonction de complément du nom.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Reconnaître les expansions du nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Facile',
  'qcm',
  'Parmi les groupes soulignés, lequel est une épithète liée ?',
  'a) Le chat _noir_ dort. b) Le chat, _épuisé_, dort. c) Le chat _de la voisine_ dort. d) Le chat _qui miaule_ dort.',
  '[{"id":"a","label":"noir (option a)"},{"id":"b","label":"épuisé (option b)"},{"id":"c","label":"de la voisine (option c)"},{"id":"d","label":"qui miaule (option d)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Noir » est une épithète liée : c''est un adjectif qualificatif placé directement à côté du nom « chat » sans virgule ni pause. L''option b (« épuisé ») est une épithète détachée (séparée par des virgules). L''option c est un complément du nom (groupe prépositionnel). L''option d est une subordonnée relative, autre type d''expansion. Les programmes Éduscol distinguent clairement épithète liée et épithète détachée.',
  'Confondre épithète liée et épithète détachée. L''épithète détachée est séparée du nom par une virgule (ou deux), ce qui n''est pas le cas de l''épithète liée.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Subordonnée relative comme expansion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Intermediaire',
  'qcm',
  'Dans la phrase « L''élève qui travaille régulièrement progressera », quelle est la fonction de la subordonnée relative « qui travaille régulièrement » ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct du verbe « progressera »"},{"id":"b","label":"Complément du nom « élève »"},{"id":"c","label":"Complément circonstanciel de cause"},{"id":"d","label":"Attribut du sujet « élève »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La subordonnée relative « qui travaille régulièrement » est complément du nom (ou complément de l''antécédent) « élève ». Elle fonctionne comme une expansion du groupe nominal, au même titre qu''un adjectif épithète ou un complément du nom prépositionnel. Selon la terminologie Éduscol, la subordonnée relative est l''une des expansions du nom que les élèves de cycle 3 doivent apprendre à identifier.',
  'Analyser la subordonnée relative comme un complément du verbe principal. Elle ne complète pas « progressera » mais bien le nom « élève » dont elle restreint le référent.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Apposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Intermediaire',
  'vrai_faux',
  'Dans la phrase « Victor Hugo, célèbre écrivain romantique, est né à Besançon », le groupe « célèbre écrivain romantique » est une apposition.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Célèbre écrivain romantique » est une apposition au nom propre « Victor Hugo ». L''apposition est un groupe nominal (ou un adjectif) détaché par des virgules qui apporte une information complémentaire sur le nom auquel il se rapporte. Elle se distingue de l''épithète détachée par sa nature : ici, c''est un groupe nominal, pas un simple adjectif. La maîtrise de l''apposition est un attendu du CRPE en analyse grammaticale.',
  'Confondre l''apposition avec une épithète détachée. Bien que les deux soient séparées par des virgules, l''apposition est un groupe nominal tandis que l''épithète détachée est un adjectif qualificatif.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — QCM — Distinguer nature et fonction des expansions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Intermediaire',
  'qcm',
  'Dans le groupe nominal « une robe en soie rouge », combien d''expansions du nom « robe » peut-on identifier ?',
  NULL,
  '[{"id":"a","label":"Une seule : « en soie rouge »"},{"id":"b","label":"Deux : « en soie » (complément du nom) et « rouge » (épithète)"},{"id":"c","label":"Deux : « en soie rouge » (complément du nom) et « rouge » (épithète)"},{"id":"d","label":"Trois : « en » + « soie » + « rouge »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'On identifie deux expansions du nom « robe » : le complément du nom « en soie » (groupe prépositionnel) et l''épithète « rouge » (adjectif qualificatif). L''adjectif « rouge » qualifie « robe » (une robe rouge), et non « soie ». Il est important au CRPE de savoir décomposer un groupe nominal complexe en identifiant chaque expansion et sa fonction respective.',
  'Considérer « en soie rouge » comme un seul complément du nom. L''adjectif « rouge » se rapporte au nom noyau « robe » et non à « soie » — il constitue donc une expansion distincte.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Identifier la fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Intermediaire',
  'reponse_courte',
  'Dans la phrase « J''ai lu un roman passionnant », quelle est la fonction de l''adjectif « passionnant » par rapport au nom « roman » ? Donnez le terme grammatical précis.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["épithète liée","épithète","epithète liée","epithète","Épithète liée","Épithète","Epithète liée","Epithète"]}'::jsonb,
  '« Passionnant » est épithète liée du nom « roman ». L''adjectif qualificatif est placé directement après le nom, sans virgule ni préposition, ce qui en fait une épithète liée (par opposition à l''épithète détachée, séparée par des virgules). Les programmes Éduscol insistent sur la distinction entre épithète liée et épithète détachée dès le cycle 3.',
  'Répondre « attribut » ou « complément du nom ». L''attribut est lié au nom par un verbe d''état, et le complément du nom est un groupe prépositionnel. Ici, l''adjectif est directement adjoint au nom : c''est une épithète.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Analyse d''un GN complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Difficile',
  'qcm',
  'Dans le groupe nominal « le vieux château fort de la Loire qui domine la vallée », combien d''expansions du nom noyau « château » peut-on identifier ?',
  NULL,
  '[{"id":"a","label":"Deux : « vieux » et « de la Loire »"},{"id":"b","label":"Trois : « vieux », « fort » et « de la Loire »"},{"id":"c","label":"Quatre : « vieux », « fort », « de la Loire » et « qui domine la vallée »"},{"id":"d","label":"Trois : « vieux », « de la Loire » et « qui domine la vallée »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On identifie quatre expansions du nom « château » : deux épithètes liées (« vieux » avant le nom, « fort » après), un complément du nom (« de la Loire ») et une subordonnée relative (« qui domine la vallée »). Note : « château fort » forme un nom composé dans l''usage courant, mais en analyse grammaticale stricte, « fort » reste un adjectif épithète. Au CRPE, il faut savoir décomposer systématiquement un GN complexe en identifiant toutes ses expansions.',
  'Oublier « fort » en le considérant uniquement comme partie du nom composé « château fort ». En analyse grammaticale pour le CRPE, on distingue le nom noyau de ses expansions, y compris dans les noms composés libres.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Épithète détachée vs apposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Difficile',
  'vrai_faux',
  'Dans la phrase « Fatiguée par le voyage, Marie s''endormit aussitôt », le mot « fatiguée » est une apposition au nom « Marie ».',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Fatiguée » est un adjectif qualificatif en fonction d''épithète détachée (et non une apposition). L''apposition est un groupe nominal ou un nom qui désigne la même réalité que le nom auquel il se rapporte (ex. : « Marie, ma voisine, s''endormit »). Ici, « fatiguée » est un adjectif (participe passé employé comme adjectif) détaché en tête de phrase par une virgule. Cette distinction entre épithète détachée et apposition est un point fréquent aux épreuves du CRPE.',
  'Confondre épithète détachée et apposition. La clé est la nature du terme : un adjectif détaché est épithète détachée ; un nom ou GN détaché désignant le même référent est une apposition.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Identifier la nature d''une expansion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1120000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'gram_complements_du_nom',
  'Les compléments du nom et expansions nominales',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Les enfants que j''ai vus jouaient dans le parc », quelle est la nature grammaticale du groupe « que j''ai vus » ? Donnez le terme précis.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["subordonnée relative","proposition subordonnée relative","Subordonnée relative","Proposition subordonnée relative","une subordonnée relative","une proposition subordonnée relative"]}'::jsonb,
  '« Que j''ai vus » est une subordonnée relative (ou proposition subordonnée relative). Elle est introduite par le pronom relatif « que » et complète le nom « enfants » dont elle est une expansion. Sa fonction est complément de l''antécédent « enfants ». Au CRPE, il est essentiel de distinguer la nature de l''expansion (subordonnée relative, groupe prépositionnel, adjectif) de sa fonction (complément du nom, épithète).',
  'Répondre « complément du nom » qui est la fonction et non la nature. La question porte sur la nature grammaticale (ce que c''est), pas sur la fonction (le rôle qu''elle joue).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

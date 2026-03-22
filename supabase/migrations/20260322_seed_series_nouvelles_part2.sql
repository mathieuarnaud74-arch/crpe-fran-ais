-- ============================================================
-- Migration : 5 séries × 10 exercices = 50 questions
-- Séries 6–10 — Terminologie officielle Éduscol 2021
-- Types : qcm, vrai_faux, reponse_courte, surlignage_propositions,
--         tri_categories, correction_orthographique
-- ============================================================

-- ============================================================
-- SÉRIE 6 : Valeurs des modes verbaux (conjugaison)
-- Topic : modes_verbaux_valeurs
-- UUID prefix : b4060000
-- 5× qcm + 3× vrai_faux + 2× reponse_courte
-- ============================================================

-- Q1 — QCM — Valeur du subjonctif (souhait)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'qcm',
  'Quelle valeur le subjonctif exprime-t-il dans la phrase suivante ?',
  'Je souhaite que tu réussisses ton concours.',
  '[{"id":"a","label":"Le souhait"},{"id":"b","label":"La certitude"},{"id":"c","label":"L''hypothèse"},{"id":"d","label":"L''ordre"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le verbe « réussisses » est au subjonctif présent. Ici, il exprime le souhait du locuteur, introduit par le verbe « souhaiter ». Le subjonctif est le mode de la subjectivité : il présente l''action comme envisagée, désirée ou incertaine, jamais comme un fait réel.',
  'Confondre subjonctif de souhait et impératif d''ordre : « je souhaite que tu réussisses » exprime un désir, pas un commandement.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — Valeur du conditionnel (hypothèse)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'qcm',
  'Quelle valeur le conditionnel exprime-t-il dans cette phrase ?',
  'Si j''avais des ailes, je volerais au-dessus des nuages.',
  '[{"id":"a","label":"La politesse"},{"id":"b","label":"L''hypothèse irréelle (potentiel)"},{"id":"c","label":"Le fait incertain rapporté"},{"id":"d","label":"L''ordre atténué"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le conditionnel présent « volerais » est employé dans un système hypothétique avec « si + imparfait ». Il exprime une hypothèse irréelle : la condition (avoir des ailes) n''est pas remplie, l''action de voler reste imaginaire. C''est la valeur modale la plus fréquente du conditionnel.',
  'Confondre conditionnel d''hypothèse et futur dans le passé. Ici, la présence de « si + imparfait » confirme qu''il s''agit bien d''une hypothèse irréelle.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Valeur de l'indicatif (certitude)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'qcm',
  'Pourquoi le verbe est-il à l''indicatif dans cette phrase ?',
  'Je sais que la Terre tourne autour du Soleil.',
  '[{"id":"a","label":"Il exprime un souhait"},{"id":"b","label":"Il exprime un fait présenté comme certain"},{"id":"c","label":"Il exprime une hypothèse"},{"id":"d","label":"Il exprime un ordre poli"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Après « je sais que », le verbe de la subordonnée est à l''indicatif parce que le locuteur présente le fait comme certain et réel. L''indicatif est le mode de la réalité et de la certitude. Comparez avec « je doute que la Terre… » qui appellerait le subjonctif.',
  'Ne pas voir que le choix du mode dépend du verbe introducteur : « savoir que » → indicatif (certitude) vs « douter que » → subjonctif (incertitude).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Valeur de l'impératif (conseil)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'qcm',
  'Quelle valeur l''impératif exprime-t-il ici ?',
  'Prends ton temps et relis bien ta copie avant de la rendre.',
  '[{"id":"a","label":"Un ordre strict"},{"id":"b","label":"Un souhait"},{"id":"c","label":"Un conseil bienveillant"},{"id":"d","label":"Une hypothèse"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''impératif n''exprime pas toujours un ordre au sens strict. Ici, « prends ton temps » et « relis bien » sont des conseils bienveillants, pas des commandements. L''impératif peut aussi exprimer une prière (« pardonnez-moi »), une invitation (« entrez donc ») ou une interdiction (« ne touchez pas »).',
  'Réduire l''impératif à la seule valeur d''ordre. Au CRPE, il faut savoir distinguer ordre, conseil, prière et invitation.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Conditionnel de politesse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'qcm',
  'Quelle est la valeur du conditionnel dans cette phrase ?',
  'Pourriez-vous m''indiquer le chemin de la gare, s''il vous plaît ?',
  '[{"id":"a","label":"L''hypothèse irréelle"},{"id":"b","label":"Le fait incertain rapporté par un journaliste"},{"id":"c","label":"La politesse (atténuation)"},{"id":"d","label":"Le regret"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '« Pourriez-vous » est un conditionnel de politesse (ou d''atténuation). Le locuteur utilise le conditionnel pour formuler sa demande de manière plus courtoise qu''avec l''indicatif (« pouvez-vous ») ou l''impératif (« indiquez-moi »). Cette valeur modale du conditionnel est fréquente dans les interactions quotidiennes.',
  'Confondre conditionnel de politesse et conditionnel d''hypothèse. Ici, il n''y a pas de condition irréelle : la demande est bien réelle, mais adoucie.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Subjonctif et obligation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ?',
  'Dans « Il faut que tu finisses tes devoirs », le subjonctif exprime l''obligation.',
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vrai. La construction impersonnelle « il faut que » impose une obligation et appelle systématiquement le subjonctif dans la subordonnée. C''est l''une des valeurs du subjonctif : il exprime ici la nécessité, l''obligation. Autres valeurs possibles : le souhait, le doute, la possibilité.',
  'Penser que le subjonctif exprime uniquement le souhait. Il peut aussi exprimer l''obligation (« il faut que »), le doute (« je doute que ») ou la possibilité (« il est possible que »).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Conditionnel journalistique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ?',
  'Dans « Le suspect aurait quitté le pays hier soir », le conditionnel exprime une hypothèse irréelle.',
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Faux. Ici, le conditionnel passé « aurait quitté » exprime un fait incertain rapporté, souvent appelé « conditionnel journalistique » ou « conditionnel d''information non confirmée ». Le journaliste rapporte une information sans la garantir. Ce n''est pas une hypothèse irréelle (il n''y a pas de « si… »).',
  'Confondre le conditionnel journalistique (fait non vérifié) avec le conditionnel d''hypothèse irréelle (système « si + imparfait/plus-que-parfait »).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — Indicatif et réalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ?',
  'L''indicatif est le seul mode qui peut situer l''action dans le passé, le présent et le futur.',
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vrai. L''indicatif est le mode le plus riche en temps : il dispose de formes pour le passé (imparfait, passé simple, passé composé, plus-que-parfait…), le présent et le futur. Le subjonctif ne possède que deux temps en usage courant (présent et passé), le conditionnel deux (présent et passé), et l''impératif deux (présent et passé, ce dernier rarissime).',
  'Oublier que le conditionnel, bien qu''il comporte un « futur du passé », n''est pas considéré comme un mode disposant d''un futur à part entière dans la terminologie Éduscol.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Identifier le mode
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'reponse_courte',
  'À quel mode le verbe en gras est-il conjugué dans cette phrase ?',
  'Bien qu''il *fasse* froid, les enfants jouent dehors.',
  NULL,
  '{"mode":"text","acceptableAnswers":["subjonctif","subjonctif présent","subjonctif present","mode subjonctif"]}'::jsonb,
  '« Fasse » est au subjonctif présent. La locution conjonctive « bien que » exprime la concession et appelle systématiquement le subjonctif. Le subjonctif est ici obligatoire : on ne peut pas dire *« bien qu''il fait froid ».',
  'Confondre avec l''indicatif : « il fait froid » (indicatif) vs « qu''il fasse froid » (subjonctif). La forme « fasse » est spécifique au subjonctif.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Identifier le mode (impératif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4060000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'modes_verbaux_valeurs',
  'Valeurs des modes verbaux',
  'Intermediaire',
  'reponse_courte',
  'À quel mode le verbe « Écoutez » est-il conjugué dans cette phrase ?',
  'Écoutez attentivement la consigne avant de commencer.',
  NULL,
  '{"mode":"text","acceptableAnswers":["impératif","imperatif","impératif présent","imperatif present","mode impératif","mode imperatif"]}'::jsonb,
  '« Écoutez » est à l''impératif présent (2e personne du pluriel). On reconnaît l''impératif à l''absence de pronom sujet : on dit « Écoutez » et non « *Vous écoutez » (qui serait l''indicatif). L''impératif ne se conjugue qu''à trois personnes : 2e du singulier, 1re et 2e du pluriel.',
  'Confondre impératif et indicatif présent. À la 2e personne du pluriel, les formes sont identiques (« vous écoutez » / « écoutez »), mais l''impératif se caractérise par l''absence du pronom sujet.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 7 : Surlignage — GN sujet et GV
-- Topic : surlignage_gn_gv
-- UUID prefix : b4070000
-- 10× surlignage_propositions
-- Progressif : phrases courtes → phrases longues avec inversions
-- ============================================================

-- Q1 — Facile — Phrase simple SVO
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Facile',
  'surlignage_propositions',
  'Identifiez le groupe nominal sujet (GN sujet) et le groupe verbal (GV) dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Le chat"},{"id":"s2","label":"mange"},{"id":"s3","label":"sa pâtée"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"}],"mapping":{"s1":"gns","s2":"gv","s3":"gv"}}'::jsonb,
  'Le GN sujet est « Le chat » : c''est le groupe nominal qui commande l''accord du verbe. Le GV est « mange sa pâtée » : il comprend le verbe conjugué et son complément d''objet direct (COD). En analyse syntaxique, le COD fait partie intégrante du groupe verbal.',
  'Exclure le COD du groupe verbal. Le GV comprend le verbe ET tous ses compléments essentiels (COD, COI, attribut du sujet).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — GN sujet étendu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Facile',
  'surlignage_propositions',
  'Identifiez le groupe nominal sujet (GN sujet) et le groupe verbal (GV) dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"La petite fille"},{"id":"s2","label":"dessine"},{"id":"s3","label":"un soleil"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"}],"mapping":{"s1":"gns","s2":"gv","s3":"gv"}}'::jsonb,
  'Le GN sujet est « La petite fille » : il comprend le déterminant « la », l''adjectif épithète « petite » et le nom noyau « fille ». Le GV « dessine un soleil » comprend le verbe et son COD.',
  'Réduire le GN sujet au seul nom noyau « fille ». Le GN sujet inclut le déterminant et les éventuelles expansions du nom (adjectifs épithètes, compléments du nom).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Avec complément circonstanciel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Facile',
  'surlignage_propositions',
  'Identifiez le GN sujet, le GV et le complément circonstanciel dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Les oiseaux"},{"id":"s2","label":"chantent"},{"id":"s3","label":"dans le jardin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc","label":"Complément circonstanciel","color":"green"}],"mapping":{"s1":"gns","s2":"gv","s3":"cc"}}'::jsonb,
  'Le GN sujet est « Les oiseaux ». Le GV est « chantent » (verbe intransitif, sans complément essentiel). « Dans le jardin » est un complément circonstanciel de lieu : il est déplaçable (« Dans le jardin, les oiseaux chantent ») et supprimable (« Les oiseaux chantent »).',
  'Intégrer le complément circonstanciel au GV. Le CC est un complément de phrase, pas un complément du verbe : il est déplaçable et supprimable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — GN sujet avec complément du nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet, le GV et le complément circonstanciel.',
  NULL,
  '[{"id":"s1","label":"Le directeur de l''école"},{"id":"s2","label":"accueille"},{"id":"s3","label":"les parents"},{"id":"s4","label":"chaque matin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc","label":"Complément circonstanciel","color":"green"}],"mapping":{"s1":"gns","s2":"gv","s3":"gv","s4":"cc"}}'::jsonb,
  'Le GN sujet est « Le directeur de l''école » : le complément du nom « de l''école » fait partie du GN sujet car il précise le nom noyau « directeur ». Le GV « accueille les parents » comprend le verbe et son COD. « Chaque matin » est un CC de temps (déplaçable et supprimable).',
  'Réduire le GN sujet à « Le directeur » en excluant le complément du nom « de l''école ». Le complément du nom est une expansion du GN sujet.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — CC en tête de phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet, le GV et le complément circonstanciel. Attention : le CC est déplacé en tête de phrase.',
  NULL,
  '[{"id":"s1","label":"Depuis trois jours"},{"id":"s2","label":"la pluie"},{"id":"s3","label":"tombe"},{"id":"s4","label":"sans interruption"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc","label":"Complément circonstanciel","color":"green"}],"mapping":{"s1":"cc","s2":"gns","s3":"gv","s4":"cc"}}'::jsonb,
  'Ici, deux CC encadrent le noyau de la phrase. « Depuis trois jours » (CC de temps) est déplacé en tête. Le GN sujet est « la pluie ». Le GV est « tombe » (verbe intransitif). « Sans interruption » est un CC de manière. Les deux CC sont déplaçables et supprimables.',
  'Prendre « Depuis trois jours » pour le GN sujet parce qu''il est en tête de phrase. Le GN sujet se repère par l''accord avec le verbe, pas par sa position.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Sujet inversé (interrogation)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet et le GV dans cette phrase interrogative avec inversion du sujet.',
  NULL,
  '[{"id":"s1","label":"Viendra"},{"id":"s2","label":"-t-il"},{"id":"s3","label":"à la fête"},{"id":"s4","label":"demain"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc","label":"Complément circonstanciel","color":"green"}],"mapping":{"s1":"gv","s2":"gns","s3":"cc","s4":"cc"}}'::jsonb,
  'Dans cette phrase interrogative à inversion, le sujet « -t-il » (pronom personnel) est placé après le verbe « Viendra ». Le GV se réduit ici au verbe intransitif. « À la fête » (CC de lieu) et « demain » (CC de temps) sont des compléments circonstanciels.',
  'Ne pas repérer le sujet inversé « -t-il ». Dans l''interrogation par inversion, le sujet est postposé au verbe mais reste le GN sujet.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Verbe avec attribut du sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet et le GV. Attention : l''attribut du sujet fait partie du GV.',
  NULL,
  '[{"id":"s1","label":"Cette nouvelle"},{"id":"s2","label":"semble"},{"id":"s3","label":"incroyable"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"}],"mapping":{"s1":"gns","s2":"gv","s3":"gv"}}'::jsonb,
  'Le GN sujet est « Cette nouvelle ». Le GV est « semble incroyable » : il comprend le verbe attributif « semble » et l''attribut du sujet « incroyable ». L''attribut du sujet est un complément essentiel du verbe, il fait donc partie du GV — on ne peut pas le supprimer (*« Cette nouvelle semble » est incomplet).',
  'Sortir l''attribut du sujet du GV. L''attribut est un complément essentiel : il fait partie du GV au même titre qu''un COD.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermédiaire — Sujet éloigné du verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet, le GV et le complément circonstanciel. Le sujet est éloigné du verbe.',
  NULL,
  '[{"id":"s1","label":"Les élèves de la classe de CM2"},{"id":"s2","label":"participent"},{"id":"s3","label":"au concours d''orthographe"},{"id":"s4","label":"chaque année"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc","label":"Complément circonstanciel","color":"green"}],"mapping":{"s1":"gns","s2":"gv","s3":"gv","s4":"cc"}}'::jsonb,
  'Le GN sujet est « Les élèves de la classe de CM2 » — un GN étendu avec deux compléments du nom. Le GV est « participent au concours d''orthographe » : le verbe « participer à » et son complément essentiel indirect. « Chaque année » est un CC de temps.',
  'Identifier « CM2 » ou « la classe » comme sujet en raison de la proximité avec le verbe. Le sujet est bien « Les élèves » (noyau du GN), étendu par les compléments du nom.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermédiaire — Phrase avec COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet et le GV. Le COI fait partie du groupe verbal.',
  NULL,
  '[{"id":"s1","label":"Ma grande sœur"},{"id":"s2","label":"parle"},{"id":"s3","label":"souvent"},{"id":"s4","label":"de ses voyages"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"}],"mapping":{"s1":"gns","s2":"gv","s3":"gv","s4":"gv"}}'::jsonb,
  'Le GN sujet est « Ma grande sœur ». Le GV est « parle souvent de ses voyages » : il comprend le verbe « parle », l''adverbe « souvent » (qui modifie le verbe) et le COI « de ses voyages » (complément essentiel du verbe « parler de »). Tous ces éléments dépendent du verbe et forment le GV.',
  'Exclure « souvent » ou « de ses voyages » du GV. L''adverbe modifiant le verbe et le COI sont des constituants du groupe verbal.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermédiaire — Phrase complexe : deux CC et GN sujet long
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4070000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'surlignage_gn_gv',
  'Surlignage : GN sujet et GV',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet, le GV et les compléments circonstanciels dans cette phrase longue.',
  NULL,
  '[{"id":"s1","label":"Tous les matins"},{"id":"s2","label":"le vieux boulanger du quartier"},{"id":"s3","label":"prépare"},{"id":"s4","label":"ses croissants"},{"id":"s5","label":"avec passion"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gns","label":"Groupe nominal sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc","label":"Complément circonstanciel","color":"green"}],"mapping":{"s1":"cc","s2":"gns","s3":"gv","s4":"gv","s5":"cc"}}'::jsonb,
  'CC de temps : « Tous les matins » (déplaçable, supprimable). GN sujet : « le vieux boulanger du quartier » (déterminant + adjectif + nom noyau + complément du nom). GV : « prépare ses croissants » (verbe + COD). CC de manière : « avec passion » (déplaçable, supprimable). La phrase canonique serait : « Le vieux boulanger du quartier prépare ses croissants ».',
  'Inclure « avec passion » dans le GV. Bien que placé après le verbe, c''est un CC de manière (supprimable et déplaçable), pas un complément essentiel.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 8 : L'oral à l'école (didactique du français)
-- Topic : didactique_oral_ecole
-- UUID prefix : b4080000
-- 6× qcm + 4× vrai_faux
-- Niveaux : Intermediaire / Difficile — access_tier : premium
-- ============================================================

-- Q1 — QCM — Oral objet d'apprentissage vs oral intégré
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Intermediaire',
  'qcm',
  'Un enseignant de CE2 organise une séance où les élèves doivent préparer puis présenter un exposé sur un animal. Quel type d''oral est mis en œuvre ?',
  NULL,
  '[{"id":"a","label":"L''oral intégré (au service d''un autre apprentissage)"},{"id":"b","label":"L''oral objet d''apprentissage (travailler des compétences orales spécifiques)"},{"id":"c","label":"L''oral spontané (échange libre)"},{"id":"d","label":"L''oral évaluatif (contrôle de connaissances)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''exposé oral est un genre oral scolaire où l''oral est objet d''apprentissage : les élèves travaillent explicitement des compétences d''expression orale (structurer un propos, adapter son registre, gérer le débit et l''intonation). Selon les programmes Éduscol, l''oral doit être enseigné comme une compétence à part entière, pas seulement comme outil au service d''autres disciplines.',
  'Confondre avec l''oral intégré : si l''objectif principal était d''apprendre des connaissances sur les animaux (sciences), ce serait de l''oral intégré. Ici, l''objectif est de développer les compétences d''expression orale.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — Étayage de l'enseignant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Intermediaire',
  'qcm',
  'Lors d''un débat en CM1, un élève dit : « C''est nul, moi je suis pas d''accord. » L''enseignant répond : « Tu n''es pas d''accord. Peux-tu expliquer pourquoi en donnant un argument ? » Quel geste professionnel l''enseignant met-il en œuvre ?',
  NULL,
  '[{"id":"a","label":"La reformulation avec étayage linguistique et relance argumentative"},{"id":"b","label":"La correction phonétique"},{"id":"c","label":"L''évaluation sommative de l''oral"},{"id":"d","label":"La sanction du langage familier"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''enseignant reformule (« Tu n''es pas d''accord ») en corrigeant implicitement la syntaxe, puis relance par une question ouverte qui pousse l''élève à argumenter. C''est un double étayage : linguistique (modèle de langue correcte) et cognitif (invitation à structurer sa pensée). Bruner définit l''étayage comme l''ensemble des interactions par lesquelles l''adulte aide l''enfant à réaliser ce qu''il ne peut faire seul.',
  'Croire que l''enseignant « corrige » ou « sanctionne ». La reformulation est un étayage bienveillant, pas une correction punitive.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Genres oraux scolaires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Difficile',
  'qcm',
  'Parmi les genres oraux suivants, lequel développe le plus spécifiquement les compétences argumentatives chez les élèves de cycle 3 ?',
  NULL,
  '[{"id":"a","label":"La récitation de poésie"},{"id":"b","label":"Le compte rendu de lecture"},{"id":"c","label":"Le débat réglé (ou débat interprétatif)"},{"id":"d","label":"La description d''image"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le débat réglé (ou débat interprétatif en littérature) est le genre oral scolaire qui mobilise le plus les compétences argumentatives : l''élève doit formuler une thèse, avancer des arguments, écouter les contre-arguments et répondre. Les programmes de cycle 3 insistent sur « participer à des échanges dans des situations diversifiées » et sur la capacité à « justifier un point de vue ».',
  'Confondre le compte rendu de lecture (qui relève plutôt du récit/de l''explication) avec le débat (qui exige la confrontation d''opinions).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Différences oral/écrit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Difficile',
  'qcm',
  'Quelle caractéristique distingue fondamentalement le langage oral du langage écrit ?',
  NULL,
  '[{"id":"a","label":"L''oral utilise uniquement des phrases simples"},{"id":"b","label":"L''oral s''appuie sur la prosodie, les gestes et le contexte partagé pour construire le sens"},{"id":"c","label":"L''écrit est toujours plus riche que l''oral en vocabulaire"},{"id":"d","label":"L''oral ne respecte jamais les règles de grammaire"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''oral est multicanal : il mobilise la prosodie (intonation, pauses, débit), la gestuelle, les mimiques et le contexte situationnel partagé par les interlocuteurs. L''écrit, lui, doit compenser l''absence de ces canaux par une explicitation plus grande (ponctuation, connecteurs, précisions lexicales). Cette différence fondamentale est au cœur de la didactique de l''oral.',
  'Penser que l''oral est une version « dégradée » de l''écrit. L''oral a ses propres normes et ses propres complexités (gestion du tour de parole, improvisation, adaptation à l''auditoire).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Évaluation de l'oral
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Difficile',
  'qcm',
  'Quel outil est le plus adapté pour évaluer les progrès des élèves à l''oral de manière formative ?',
  NULL,
  '[{"id":"a","label":"Une dictée orale notée sur 20"},{"id":"b","label":"Une grille d''observation critériée (posture, volume, clarté, argumentation)"},{"id":"c","label":"Un questionnaire écrit sur les règles de prise de parole"},{"id":"d","label":"Une note de participation globale en fin de trimestre"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La grille d''observation critériée permet une évaluation formative de l''oral : elle liste des critères observables (volume de la voix, regard, structure du propos, qualité de l''argumentation) et permet à l''élève de visualiser ses progrès. Les programmes Éduscol recommandent explicitement ce type d''outil pour évaluer l''oral, qui ne peut se réduire à une note globale.',
  'Évaluer l''oral uniquement par l''écrit (QCM sur les règles) ou par une note impressionniste. L''oral s''évalue en situation, avec des critères explicites et partagés avec les élèves.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Oral au cycle 2
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Intermediaire',
  'qcm',
  'Au cycle 2, quelle activité permet le mieux de travailler la compréhension orale selon les attendus des programmes ?',
  NULL,
  '[{"id":"a","label":"La copie d''un texte lu à voix haute par l''enseignant"},{"id":"b","label":"L''écoute d''un récit suivi de questions de compréhension et de reformulation"},{"id":"c","label":"La lecture silencieuse d''un album"},{"id":"d","label":"La dictée de mots isolés"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''écoute d''un récit suivie de questions et de reformulation travaille la compréhension orale : l''élève doit écouter activement, mémoriser, comprendre l''implicite et restituer avec ses propres mots. Au cycle 2, les programmes insistent sur « écouter pour comprendre des messages oraux » comme compétence fondamentale du domaine « Langage oral ».',
  'Confondre compréhension orale et compréhension écrite. La copie et la lecture silencieuse relèvent de l''écrit, pas de l''oral.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — L'oral s'enseigne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ?',
  'Selon les programmes de l''Éducation nationale, l''oral est une compétence qui s''enseigne et s''apprend, au même titre que la lecture ou l''écriture.',
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vrai. Les programmes de 2020 (cycles 2 et 3) font du « langage oral » un domaine d''enseignement à part entière avec des attendus de fin de cycle explicites. L''oral n''est pas un « don naturel » : il s''enseigne progressivement, avec des situations d''apprentissage structurées (exposé, débat, jeu de rôle, récitation).',
  'Penser que l''oral « s''apprend tout seul » par la simple pratique quotidienne. Sans enseignement explicite, les inégalités langagières entre élèves se creusent.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — Récitation et oral
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ?',
  'La récitation de poésie est la seule activité d''oral préconisée par les programmes au cycle 2.',
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Faux. Les programmes au cycle 2 préconisent de nombreuses activités orales : raconter, décrire, expliquer, prendre part à des échanges, réciter, mais aussi écouter pour comprendre des messages oraux. La récitation n''est qu''une activité parmi d''autres. Le programme insiste particulièrement sur les interactions orales en situation de classe.',
  'Réduire l''enseignement de l''oral à la récitation. Les programmes visent un oral diversifié : narratif, explicatif, argumentatif, pas seulement la mémorisation et la restitution.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Langage d'évocation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ?',
  'Le « langage d''évocation » désigne la capacité de l''élève à parler d''événements passés ou à venir, en dehors du contexte immédiat.',
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vrai. Le langage d''évocation (ou « langage décontextualisé ») s''oppose au langage en situation (ici et maintenant). L''élève qui raconte un souvenir de vacances ou anticipe une sortie scolaire utilise le langage d''évocation : il doit construire des repères temporels et spatiaux explicites pour être compris. Cette compétence, travaillée dès la maternelle, est un prédicteur fort de la réussite en lecture-écriture.',
  'Confondre langage d''évocation et langage soutenu. Le registre de langue n''a rien à voir : le langage d''évocation peut être simple, l''essentiel est qu''il permette de parler de ce qui n''est pas présent.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — L'oral pour apprendre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4080000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'didactique_oral_ecole',
  'L''oral à l''école',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ?',
  'L''« oral pour apprendre » et l''« oral à apprendre » désignent la même réalité didactique.',
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Faux. Ces deux expressions désignent des réalités distinctes. L''« oral pour apprendre » (ou oral intégré) utilise l''oral comme outil au service d''un autre apprentissage (verbaliser pour comprendre un problème de mathématiques). L''« oral à apprendre » (ou oral objet d''apprentissage) fait de l''oral lui-même l''objet d''enseignement (apprendre à structurer un exposé, à argumenter dans un débat). Cette distinction est fondamentale en didactique du français.',
  'Confondre les deux dimensions de l''oral scolaire. Au CRPE, il faut savoir distinguer quand l''oral est un moyen et quand il est une fin.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 9 : Accords dans le groupe nominal (orthographe)
-- Topic : accord_groupe_nominal
-- UUID prefix : b4090000
-- 4× qcm + 3× correction_orthographique + 3× vrai_faux
-- Niveaux : Facile / Intermediaire — access_tier : free
-- ============================================================

-- Q1 — QCM — Accord déterminant-nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Facile',
  'qcm',
  'Quelle forme du déterminant complète correctement la phrase ?',
  '… élèves ont terminé … exercice en avance.',
  '[{"id":"a","label":"Ces / leur"},{"id":"b","label":"Ses / leurs"},{"id":"c","label":"Ces / leurs"},{"id":"d","label":"Ses / leur"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On écrit « Ces élèves » (déterminant démonstratif pluriel) et « leur exercice » (déterminant possessif singulier, car chaque élève a un seul exercice). « Leur » devant un nom singulier ne prend pas de -s. Piège fréquent : « leurs » serait correct devant un nom pluriel (« leurs exercices »).',
  'Mettre un -s à « leur » devant un nom singulier. « Leur » est ici un déterminant possessif au singulier, pas un pronom.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — Adjectif de couleur composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Intermediaire',
  'qcm',
  'Quelle est l''orthographe correcte de l''adjectif de couleur dans cette phrase ?',
  'Elle portait des chaussures … .',
  '[{"id":"a","label":"bleu foncées"},{"id":"b","label":"bleu foncé"},{"id":"c","label":"bleues foncées"},{"id":"d","label":"bleues foncé"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Règle : les adjectifs de couleur composés sont invariables. « Bleu foncé » est un adjectif de couleur composé (bleu + foncé) → il reste invariable quel que soit le genre ou le nombre du nom. De même : « des robes rouge vif », « des murs vert pomme ». Cette règle s''applique dès qu''un adjectif de couleur est complété par un autre adjectif ou un nom.',
  'Accorder les deux éléments d''un adjectif de couleur composé. La règle est simple : composé = invariable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Accord avec « tout »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Intermediaire',
  'qcm',
  'Quelle forme de « tout » est correcte dans cette phrase ?',
  'Elles étaient … contentes de leur résultat.',
  '[{"id":"a","label":"tout"},{"id":"b","label":"toute"},{"id":"c","label":"toutes"},{"id":"d","label":"tous"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '« Tout » devant un adjectif féminin commençant par une consonne ou un h aspiré s''accorde en genre et en nombre. Ici, « contentes » est féminin pluriel et commence par une consonne (c), donc on écrit « toutes contentes ». Exception : devant un adjectif féminin commençant par une voyelle ou un h muet, « tout » reste invariable (« elles sont tout émues »).',
  'Laisser « tout » invariable devant un adjectif féminin commençant par une consonne. La règle d''invariabilité ne s''applique que devant une voyelle ou un h muet (« tout étonnées »). Devant une consonne, l''accord est obligatoire (« toutes contentes »).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Accord de « même »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Intermediaire',
  'qcm',
  'Quelle est la bonne orthographe dans cette phrase ?',
  'Les enfants eux-… ont préparé le spectacle.',
  '[{"id":"a","label":"même"},{"id":"b","label":"mêmes"},{"id":"c","label":"mème"},{"id":"d","label":"mêmes (avec trait d''union après « eux »)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  '« Même » après un pronom personnel renforcé (eux-mêmes, elles-mêmes) s''accorde en nombre avec le pronom. « Eux » est pluriel → « mêmes » prend un -s. Quand « même » est adverbe (= aussi, y compris), il est invariable : « Même les enfants ont participé ». La nature grammaticale de « même » (adjectif vs adverbe) détermine son accord.',
  'Laisser « même » invariable en pensant qu''il est adverbe. Après un pronom personnel avec trait d''union, « même » est adjectif et s''accorde.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Correction orthographique — Accord adjectif-nom (genre)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Facile',
  'correction_orthographique',
  'Corrigez l''erreur d''accord dans le groupe nominal en gras (entre astérisques).',
  'Les *petit garçons* jouent dans la cour de récréation.',
  NULL,
  '{"mode":"text","acceptableAnswers":["petits garçons"]}'::jsonb,
  'L''adjectif épithète « petit » doit s''accorder en genre et en nombre avec le nom « garçons » (masculin pluriel). On écrit donc « petits garçons ». Dans le GN, l''adjectif épithète prend les mêmes marques de genre et de nombre que le nom noyau.',
  'Oublier l''accord en nombre de l''adjectif épithète quand il est antéposé (avant le nom). L''adjectif s''accorde toujours, qu''il soit avant ou après le nom.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Correction orthographique — Accord avec nom féminin pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Facile',
  'correction_orthographique',
  'Corrigez l''erreur d''accord dans le groupe nominal en gras (entre astérisques).',
  'J''ai cueilli de *magnifique roses rouge* dans le jardin.',
  NULL,
  '{"mode":"text","acceptableAnswers":["magnifiques roses rouges"]}'::jsonb,
  'Le nom noyau est « roses » (féminin pluriel). Les adjectifs « magnifique » et « rouge » doivent s''accorder au féminin pluriel : « magnifiques roses rouges ». Attention : « rouge » est un adjectif de couleur simple (un seul mot), donc il s''accorde normalement — contrairement aux adjectifs de couleur composés (« rouge vif » = invariable).',
  'Ne pas accorder « rouge » en pensant que les adjectifs de couleur sont toujours invariables. Seuls les adjectifs de couleur composés et ceux dérivés de noms (« orange », « marron ») sont invariables.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Correction orthographique — Accord adjectif composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Intermediaire',
  'correction_orthographique',
  'Corrigez l''erreur d''accord dans le groupe nominal en gras (entre astérisques).',
  'Nous avons acheté des rideaux *bleu-clairs* pour le salon.',
  NULL,
  '{"mode":"text","acceptableAnswers":["bleu clair"]}'::jsonb,
  'On écrit « des rideaux bleu clair » : l''adjectif de couleur composé (bleu + clair) est invariable. Il ne prend ni marque de pluriel ni trait d''union. Règle : dès qu''un adjectif de couleur est composé de deux mots (bleu foncé, vert pomme, rouge vif), l''ensemble reste invariable quel que soit le genre ou le nombre du nom.',
  'Accorder un adjectif de couleur composé et/ou y ajouter un trait d''union. Composé = invariable, sans trait d''union entre les deux éléments.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — « Chaque » toujours singulier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ?',
  'Le déterminant « chaque » impose toujours le singulier au nom et à l''adjectif qui suivent.',
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vrai. « Chaque » est un déterminant indéfini qui renvoie à chaque élément pris individuellement. Il est toujours suivi d''un nom au singulier : « chaque élève », « chaque jour ». On ne dit jamais *« chaque élèves ». C''est un indice précieux pour l''accord dans le GN.',
  'Écrire « chaque élèves » par analogie avec « tous les élèves ». « Chaque » individualise, donc singulier obligatoire.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Adjectifs de couleur dérivés de noms
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ?',
  'On écrit « des chaussettes oranges » car l''adjectif de couleur s''accorde avec le nom.',
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Faux. « Orange » est un adjectif de couleur dérivé d''un nom de fruit : il est invariable. On écrit « des chaussettes orange » (sans -s). Même règle pour « marron » (fruit), « crème », « cerise », « turquoise », « émeraude ». Exceptions célèbres qui s''accordent malgré leur origine : « rose », « mauve », « écarlate », « fauve », « pourpre ».',
  'Accorder « orange » comme un adjectif ordinaire. La règle veut que les adjectifs de couleur tirés de noms (fruits, fleurs, pierres) soient invariables, sauf exceptions consacrées par l''usage.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Accord de l'adjectif avec plusieurs noms
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4090000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'accord_groupe_nominal',
  'Accords dans le groupe nominal',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ?',
  'Dans « une veste et un pantalon noirs », l''adjectif « noirs » est correctement accordé au masculin pluriel.',
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vrai. Quand un adjectif qualifie deux noms coordonnés de genres différents (« veste » féminin + « pantalon » masculin), il se met au masculin pluriel. Le masculin l''emporte sur le féminin dans l''accord en genre, et le pluriel s''impose car il y a plusieurs référents. Règle : masculin + féminin = masculin pluriel.',
  'Accorder avec le nom le plus proche (« pantalon noir ») en oubliant que l''adjectif qualifie aussi « veste ». L''adjectif postposé s''accorde avec l''ensemble des noms coordonnés.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 10 : Tri — Types et genres de textes
-- Topic : tri_types_textes
-- UUID prefix : b4100000
-- 10× tri_categories
-- Niveau : Intermediaire — access_tier : premium
-- ============================================================

-- Q1 — Narratif / Descriptif / Argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Classez chaque extrait selon son type de texte : narratif, descriptif ou argumentatif.',
  NULL,
  '[{"id":"w1","label":"Il était une fois un roi qui vivait dans un château au sommet d''une colline."},{"id":"w2","label":"La pièce, vaste et lumineuse, était ornée de tapisseries aux couleurs chatoyantes."},{"id":"w3","label":"Il est essentiel de protéger les forêts car elles produisent l''oxygène que nous respirons."},{"id":"w4","label":"Soudain, la porte s''ouvrit et un inconnu entra dans la salle."},{"id":"w5","label":"Ses yeux bleus, profonds comme un lac de montagne, inspiraient une confiance immédiate."},{"id":"w6","label":"Pour ces raisons, je considère que le recyclage devrait être obligatoire pour tous."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"}],"mapping":{"w1":"nar","w2":"desc","w3":"arg","w4":"nar","w5":"desc","w6":"arg"}}'::jsonb,
  'Le texte narratif raconte des événements, des actions (« il était une fois », « soudain, la porte s''ouvrit »). Le texte descriptif dépeint un lieu, un personnage, un objet (« vaste et lumineuse », « ses yeux bleus »). Le texte argumentatif cherche à convaincre en avançant des arguments (« il est essentiel de », « pour ces raisons »).',
  'Confondre description et narration : la description « met en pause » le récit pour peindre un tableau, tandis que la narration fait avancer l''action.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Explicatif / Injonctif / Narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Classez chaque extrait : texte explicatif, injonctif ou narratif.',
  NULL,
  '[{"id":"w1","label":"Préchauffez le four à 180 °C. Beurrez un moule et versez la pâte."},{"id":"w2","label":"Les marées sont provoquées par l''attraction gravitationnelle de la Lune sur les océans."},{"id":"w3","label":"Le lendemain, Marie partit à l''aube sans prévenir personne."},{"id":"w4","label":"Mélangez les œufs et le sucre. Ajoutez la farine tamisée."},{"id":"w5","label":"Le cycle de l''eau comprend trois étapes : l''évaporation, la condensation et les précipitations."},{"id":"w6","label":"Pendant des années, il avait attendu ce moment sans jamais perdre espoir."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"inj","label":"Texte injonctif"},{"id":"exp","label":"Texte explicatif"},{"id":"nar","label":"Texte narratif"}],"mapping":{"w1":"inj","w2":"exp","w3":"nar","w4":"inj","w5":"exp","w6":"nar"}}'::jsonb,
  'Le texte injonctif donne des consignes, des ordres ou des conseils (recette de cuisine, notice). Le texte explicatif transmet des connaissances en expliquant un phénomène (marées, cycle de l''eau). Le texte narratif raconte une succession d''événements avec des personnages.',
  'Confondre explicatif et injonctif : l''explicatif explique POURQUOI/COMMENT quelque chose fonctionne, l''injonctif dit CE QU''IL FAUT FAIRE.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Cinq types de textes mélangés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Identifiez le type de chaque extrait parmi les cinq types fondamentaux.',
  NULL,
  '[{"id":"w1","label":"Ne pas dépasser la dose prescrite. Consultez votre médecin en cas de doute."},{"id":"w2","label":"La reine, furieuse, ordonna que l''on retrouve la princesse avant le lever du soleil."},{"id":"w3","label":"Le réchauffement climatique résulte de l''augmentation des gaz à effet de serre."},{"id":"w4","label":"Le village, niché au creux de la vallée, offrait un spectacle de toits rouges et de ruelles fleuries."},{"id":"w5","label":"On ne saurait nier que l''éducation est le meilleur investissement pour l''avenir d''un pays."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"inj","w2":"nar","w3":"exp","w4":"desc","w5":"arg"}}'::jsonb,
  'Injonctif : consignes d''une notice médicale. Narratif : récit d''actions (la reine ordonna…). Explicatif : explication d''un phénomène scientifique. Descriptif : peinture d''un lieu. Argumentatif : prise de position avec argument (« on ne saurait nier que »). Les cinq types correspondent aux cinq intentions du locuteur : raconter, décrire, argumenter, expliquer, prescrire.',
  'Confondre texte argumentatif et texte explicatif : l''argumentatif défend une opinion (subjectif), l''explicatif transmet un savoir (objectif).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Genres littéraires à classer
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Associez chaque genre de texte à son type dominant.',
  NULL,
  '[{"id":"w1","label":"Le conte merveilleux"},{"id":"w2","label":"L''éditorial de journal"},{"id":"w3","label":"La notice de montage"},{"id":"w4","label":"Le roman policier"},{"id":"w5","label":"L''article encyclopédique"},{"id":"w6","label":"Le portrait littéraire"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"nar","w2":"arg","w3":"inj","w4":"nar","w5":"exp","w6":"desc"}}'::jsonb,
  'Le conte et le roman sont des genres à dominante narrative. L''éditorial est argumentatif (le journaliste défend un point de vue). La notice de montage est injonctive (elle prescrit des actions). L''article encyclopédique est explicatif. Le portrait littéraire est à dominante descriptive. Attention : un même texte peut mêler plusieurs types, mais on identifie le type dominant.',
  'Classer le roman policier comme « explicatif » parce qu''on y explique un crime. Le type dominant reste narratif : on raconte une intrigue.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Textes du quotidien
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Classez ces textes du quotidien selon leur type dominant.',
  NULL,
  '[{"id":"w1","label":"Recette de cuisine : gâteau au chocolat"},{"id":"w2","label":"Fait divers dans un journal local"},{"id":"w3","label":"Mode d''emploi d''un appareil électroménager"},{"id":"w4","label":"Lettre de motivation"},{"id":"w5","label":"Article scientifique sur les volcans"},{"id":"w6","label":"Description d''un bien immobilier à vendre"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"inj","w2":"nar","w3":"inj","w4":"arg","w5":"exp","w6":"desc"}}'::jsonb,
  'Recette et mode d''emploi : injonctifs (consignes à suivre). Fait divers : narratif (on raconte des événements). Lettre de motivation : argumentative (on cherche à convaincre). Article scientifique : explicatif (on transmet un savoir). Description immobilière : descriptive (on dépeint un bien). La lettre de motivation surprend souvent, mais elle relève bien de l''argumentation.',
  'Classer la recette comme « explicatif » : la recette ne dit pas POURQUOI faire, elle dit COMMENT faire (consignes = injonctif).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Repérer les indices textuels
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Classez chaque indice linguistique selon le type de texte qu''il caractérise.',
  NULL,
  '[{"id":"w1","label":"Emploi de l''impératif et de l''infinitif"},{"id":"w2","label":"Connecteurs temporels (d''abord, ensuite, enfin)"},{"id":"w3","label":"Adjectifs qualificatifs et compléments du nom abondants"},{"id":"w4","label":"Connecteurs logiques (car, donc, en effet, cependant)"},{"id":"w5","label":"Présent de vérité générale et tournures impersonnelles"},{"id":"w6","label":"Passé simple et imparfait alternés"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"inj","w2":"nar","w3":"desc","w4":"arg","w5":"exp","w6":"nar"}}'::jsonb,
  'Chaque type de texte se reconnaît à ses indices linguistiques : l''injonctif utilise l''impératif/infinitif, le narratif les temps du récit et les connecteurs temporels, le descriptif les expansions du nom, l''argumentatif les connecteurs logiques, l''explicatif le présent de vérité générale. Ces indices sont essentiels pour l''analyse au CRPE.',
  'Associer les connecteurs temporels au texte explicatif. Les connecteurs temporels (« d''abord, ensuite ») marquent la succession d''événements (narration), tandis que l''explicatif utilise des connecteurs logiques de cause-conséquence.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Extraits de textes scolaires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Classez ces extraits rencontrés en contexte scolaire.',
  NULL,
  '[{"id":"w1","label":"Souligne les verbes conjugués et entoure leur sujet."},{"id":"w2","label":"Le loup souffla si fort que la maison de paille s''envola."},{"id":"w3","label":"La photosynthèse est le processus par lequel les plantes transforment la lumière en énergie."},{"id":"w4","label":"Le paysage s''étendait à perte de vue : des champs dorés, un ciel immense, une rivière scintillante."},{"id":"w5","label":"À mon avis, la lecture est plus enrichissante que la télévision car elle développe l''imagination."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"inj","w2":"nar","w3":"exp","w4":"desc","w5":"arg"}}'::jsonb,
  'La consigne scolaire est un texte injonctif (« souligne », « entoure » = impératif). Le conte du loup est narratif. La définition de la photosynthèse est explicative. La description du paysage est descriptive. Le texte d''opinion sur la lecture est argumentatif. Les élèves rencontrent ces cinq types quotidiennement à l''école.',
  'Ne pas voir que la consigne scolaire est un texte injonctif. On l''oublie souvent car elle fait partie du quotidien de la classe.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Publicités et articles de presse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Classez chaque extrait selon son type de texte dominant.',
  NULL,
  '[{"id":"w1","label":"Offrez-vous le meilleur : notre crème visage, testée et approuvée par 95 % des utilisatrices."},{"id":"w2","label":"Un incendie s''est déclaré hier soir dans un entrepôt de la zone industrielle."},{"id":"w3","label":"Ce petit village provençal aux volets bleus dégage un charme d''un autre temps."},{"id":"w4","label":"La fonte des glaciers s''explique par la hausse moyenne des températures."},{"id":"w5","label":"Pour activer votre compte, cliquez sur le lien reçu par e-mail puis renseignez votre mot de passe."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"arg","w2":"nar","w3":"desc","w4":"exp","w5":"inj"}}'::jsonb,
  'La publicité est argumentative : elle cherche à convaincre d''acheter (« offrez-vous le meilleur », chiffre à l''appui). Le fait divers est narratif (événement raconté). La description du village est descriptive. L''explication sur les glaciers est explicative. La procédure en ligne est injonctive (consignes étape par étape).',
  'Classer la publicité comme « injonctive » à cause de l''impératif « offrez-vous ». L''intention dominante est argumentative (persuader), même si la forme est impérative.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Textes littéraires variés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Identifiez le type dominant de chaque extrait littéraire.',
  NULL,
  '[{"id":"w1","label":"Le vieillard, voûté par les années, portait un manteau élimé et un chapeau à larges bords."},{"id":"w2","label":"Après des jours de marche, ils atteignirent enfin la frontière au crépuscule."},{"id":"w3","label":"Je soutiens que Molière reste le plus grand dramaturge français, et voici pourquoi."},{"id":"w4","label":"Le fonctionnement d''une écluse repose sur le principe des vases communicants."},{"id":"w5","label":"Lavez les légumes, épluchez-les, puis faites-les revenir dans un filet d''huile d''olive."},{"id":"w6","label":"Le crabe, armé de ses pinces redoutables, avançait de travers sur le sable brûlant."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"desc","w2":"nar","w3":"arg","w4":"exp","w5":"inj","w6":"desc"}}'::jsonb,
  'Le portrait du vieillard et la scène du crabe sont descriptifs (accumulation d''adjectifs, pas d''action principale). L''arrivée à la frontière est narrative (action, progression). La thèse sur Molière est argumentative. L''écluse est explicative. La recette est injonctive. Notez que le dernier extrait (le crabe) pourrait sembler narratif, mais l''intention dominante est la description en mouvement.',
  'Confondre description en mouvement et narration. Une description peut montrer un mouvement (le crabe qui avance) sans que ce soit un événement de récit structurant.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Discours et communication
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4100000-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'tri_types_textes',
  'Tri : types et genres de textes',
  'Intermediaire',
  'tri_categories',
  'Classez ces types de discours ou documents selon leur type textuel dominant.',
  NULL,
  '[{"id":"w1","label":"Discours politique d''un candidat aux élections"},{"id":"w2","label":"Règlement intérieur d''une école"},{"id":"w3","label":"Guide touristique décrivant les monuments d''une ville"},{"id":"w4","label":"Manuel de sciences expliquant la digestion"},{"id":"w5","label":"Journal intime racontant sa journée"},{"id":"w6","label":"Tract associatif appelant à manifester"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nar","label":"Texte narratif"},{"id":"desc","label":"Texte descriptif"},{"id":"arg","label":"Texte argumentatif"},{"id":"exp","label":"Texte explicatif"},{"id":"inj","label":"Texte injonctif"}],"mapping":{"w1":"arg","w2":"inj","w3":"desc","w4":"exp","w5":"nar","w6":"arg"}}'::jsonb,
  'Le discours politique et le tract sont argumentatifs (convaincre, persuader). Le règlement intérieur est injonctif (prescrire des règles). Le guide touristique est descriptif (décrire des lieux). Le manuel de sciences est explicatif (transmettre un savoir). Le journal intime est narratif (raconter des événements vécus). Au CRPE, il est essentiel de distinguer l''intention communicative dominante.',
  'Classer le règlement intérieur comme « argumentatif » parce qu''il justifie parfois ses règles. Son intention dominante reste injonctive : il prescrit des comportements à adopter.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

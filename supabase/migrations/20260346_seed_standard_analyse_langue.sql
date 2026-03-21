-- ============================================================
-- Migration : 3 séries Standard pour analyse_langue (30 questions)
-- Séries : Propositions subordonnées, Anaphores et substituts,
--          Manipulations syntaxiques
-- Modes : Standard, Chrono
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Les propositions subordonnées
-- Topic : analyse_propositions_sub
-- UUID prefix : d1010000
-- 3 Facile, 4 Intermediaire, 3 Avance
-- Mix : 8 qcm + 2 identification_grammaticale
-- ============================================================

-- Q1 — Facile — QCM — Identifier une subordonnée relative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Facile',
  'qcm',
  'Dans la phrase suivante, quelle est la nature de la proposition soulignée ?',
  'Le livre [que j''ai lu] était passionnant.',
  '[{"id":"a","label":"Proposition subordonnée relative"},{"id":"b","label":"Proposition subordonnée conjonctive complétive"},{"id":"c","label":"Proposition subordonnée circonstancielle"},{"id":"d","label":"Proposition indépendante"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Que j''ai lu » est une proposition subordonnée relative introduite par le pronom relatif « que ». Elle complète l''antécédent « le livre » et a pour fonction complément de l''antécédent. On la reconnaît car elle est introduite par un pronom relatif (qui, que, dont, où, lequel…) et non par une conjonction de subordination.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Reconnaître une complétive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Facile',
  'qcm',
  'Quelle proposition subordonnée est contenue dans cette phrase ?',
  'Je pense que tu as raison.',
  '[{"id":"a","label":"Subordonnée relative"},{"id":"b","label":"Subordonnée conjonctive complétive"},{"id":"c","label":"Subordonnée circonstancielle de cause"},{"id":"d","label":"Subordonnée interrogative indirecte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Que tu as raison » est une proposition subordonnée conjonctive complétive introduite par la conjonction de subordination « que ». Elle complète le verbe « pense » et occupe la fonction de COD. On la distingue de la relative car « que » n''a pas d''antécédent nominal ici : il ne remplace aucun nom.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Identifier une circonstancielle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Facile',
  'qcm',
  'Quel type de subordonnée circonstancielle est présent dans cette phrase ?',
  'Nous resterons à l''intérieur parce qu''il pleut.',
  '[{"id":"a","label":"Circonstancielle de temps"},{"id":"b","label":"Circonstancielle de conséquence"},{"id":"c","label":"Circonstancielle de cause"},{"id":"d","label":"Circonstancielle de but"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Parce qu''il pleut » est une proposition subordonnée circonstancielle de cause. Elle est introduite par la locution conjonctive « parce que » et exprime la raison pour laquelle on reste à l''intérieur. Elle répond à la question « pourquoi ? ».',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Le pronom relatif « dont »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Intermediaire',
  'qcm',
  'Quelle est la fonction du pronom relatif « dont » dans cette phrase ?',
  'Voici le film dont je t''ai parlé.',
  '[{"id":"a","label":"COD du verbe « parlé »"},{"id":"b","label":"COI du verbe « parlé »"},{"id":"c","label":"Complément du nom"},{"id":"d","label":"Sujet du verbe « parlé »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Dont » est un pronom relatif qui remplace « de ce film ». Il est COI du verbe « parler » (on parle DE quelque chose). « Dont » remplace toujours un complément introduit par la préposition « de ». Ici : j''ai parlé de ce film → dont je t''ai parlé.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Distinguer « que » conjonction et « que » pronom relatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Intermediaire',
  'qcm',
  'Dans quelle phrase « que » est-il un pronom relatif et non une conjonction de subordination ?',
  NULL,
  '[{"id":"a","label":"Je souhaite que tu viennes."},{"id":"b","label":"La robe que tu portes est jolie."},{"id":"c","label":"Il est si grand que je ne le vois pas."},{"id":"d","label":"Je sais que Paul est parti."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « La robe que tu portes est jolie », « que » est un pronom relatif : il a un antécédent (« la robe ») et remplace ce nom dans la subordonnée (tu portes la robe). Dans les autres phrases, « que » est une conjonction de subordination car il n''a pas d''antécédent nominal et ne remplace rien.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — identification_grammaticale — Identifier le type de subordonnée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Intermediaire',
  'identification_grammaticale',
  'Identifiez la nature de la proposition subordonnée en gras dans cette phrase.',
  'L''enfant [qui jouait dans le jardin] est rentré en courant.',
  '[{"id":"a","label":"Subordonnée conjonctive complétive"},{"id":"b","label":"Subordonnée relative déterminative"},{"id":"c","label":"Subordonnée circonstancielle de temps"},{"id":"d","label":"Subordonnée relative explicative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Qui jouait dans le jardin » est une subordonnée relative déterminative introduite par le pronom relatif « qui ». Elle restreint le sens de l''antécédent « l''enfant » (elle précise duquel on parle). Elle est déterminative car elle ne peut pas être supprimée sans changer le sens de la phrase, contrairement à la relative explicative (appositive), qui apporte une information accessoire entre virgules.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Fonction d'une subordonnée relative avec « où »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Intermediaire',
  'qcm',
  'Quelle est la fonction du pronom relatif « où » dans cette phrase ?',
  'La ville où je suis né est très belle.',
  '[{"id":"a","label":"Sujet"},{"id":"b","label":"COD"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Où » est un pronom relatif qui a pour antécédent « la ville ». Dans la subordonnée, il occupe la fonction de complément circonstanciel de lieu du verbe « suis né » : je suis né dans cette ville → où je suis né. « Où » peut aussi avoir une valeur temporelle (« le jour où… »).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avance — QCM — Subordonnée avec « lequel »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Avance',
  'qcm',
  'Analysez la proposition subordonnée dans cette phrase. Quelle est la fonction de « auquel » ?',
  'Le projet auquel je participe sera présenté demain.',
  '[{"id":"a","label":"COD du verbe « participe »"},{"id":"b","label":"COI du verbe « participe »"},{"id":"c","label":"Complément circonstanciel de moyen"},{"id":"d","label":"Sujet du verbe « participe »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Auquel » est la forme contractée de « à lequel ». Il est COI du verbe « participer » (on participe À quelque chose). La subordonnée « auquel je participe » est une relative complément de l''antécédent « le projet ». Les formes composées de « lequel » (auquel, duquel, pour lequel…) conservent la préposition qui indique la fonction du pronom relatif.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — identification_grammaticale — Analyse fine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Avance',
  'identification_grammaticale',
  'Quelle analyse est correcte pour la proposition subordonnée soulignée ?',
  'Il est certain [que cette décision sera contestée].',
  '[{"id":"a","label":"Subordonnée relative — complément de l''antécédent « décision »"},{"id":"b","label":"Subordonnée complétive — sujet réel du verbe impersonnel"},{"id":"c","label":"Subordonnée circonstancielle de conséquence"},{"id":"d","label":"Subordonnée complétive — COD du verbe « être »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Que cette décision sera contestée » est une subordonnée conjonctive complétive. Dans la construction impersonnelle « il est certain que… », le « il » est un pronom impersonnel et la subordonnée est le sujet réel de la phrase. On peut la remettre en position sujet : « Que cette décision sera contestée est certain. » C''est un point classique du CRPE : dans les tournures impersonnelles, la complétive en « que » est souvent sujet réel.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — QCM — Subordonnée circonstancielle d'opposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1010000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'analyse_propositions_sub',
  'Les propositions subordonnées',
  'Avance',
  'qcm',
  'Quel type de rapport logique exprime la proposition subordonnée dans cette phrase ?',
  'Bien qu''il fût fatigué, il continua à travailler.',
  '[{"id":"a","label":"Cause"},{"id":"b","label":"Conséquence"},{"id":"c","label":"Concession (opposition)"},{"id":"d","label":"Condition"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Bien qu''il fût fatigué » est une subordonnée circonstancielle de concession (ou d''opposition). La locution conjonctive « bien que » (suivie du subjonctif) introduit un fait qui aurait pu empêcher l''action principale mais ne l''a pas fait. Autres locutions conjonctives de concession : « quoique », « même si », « alors que ». Au CRPE, on parle aussi de rapport d''opposition.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : Anaphores et substituts
-- Topic : analyse_anaphores_substituts
-- UUID prefix : d1020000
-- 3 Facile, 4 Intermediaire, 3 Avance
-- Mix : 7 qcm + 3 reponse_courte
-- ============================================================

-- Q1 — Facile — QCM — Repérer le référent d'un pronom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Facile',
  'qcm',
  'À quel mot ou groupe de mots le pronom « il » renvoie-t-il dans la seconde phrase ?',
  'Le chien courait dans le jardin. Il aboyait joyeusement.',
  '[{"id":"a","label":"Le jardin"},{"id":"b","label":"Le chien"},{"id":"c","label":"Le voisin (implicite)"},{"id":"d","label":"On ne peut pas savoir"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Il » est une anaphore pronominale qui reprend « le chien » de la phrase précédente. C''est le sujet masculin singulier le plus proche et le plus cohérent sémantiquement (un chien aboie). La reprise pronominale est le procédé anaphorique le plus fréquent en français.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Substitution lexicale simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Facile',
  'qcm',
  'Dans ce texte, quel groupe nominal reprend « le chat » ?',
  'Le chat se prélassait au soleil. Le félin ronronnait doucement.',
  '[{"id":"a","label":"au soleil"},{"id":"b","label":"doucement"},{"id":"c","label":"Le félin"},{"id":"d","label":"se prélassait"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Le félin » est un substitut lexical (anaphore nominale) de « le chat ». C''est un hyperonyme : « félin » désigne la catégorie à laquelle appartient le chat. Ce procédé évite la répétition tout en maintenant la cohérence textuelle. On parle aussi d''anaphore infidèle car le nom change.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Identifier le référent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Facile',
  'reponse_courte',
  'À quel nom le pronom « les » renvoie-t-il dans la seconde phrase ? Répondez par le groupe nominal.',
  'Marie a rangé ses affaires. Elle les a mises dans le placard.',
  NULL,
  '{"mode":"text","acceptableAnswers":["ses affaires","les affaires","affaires"]}'::jsonb,
  '« Les » est un pronom personnel COD qui reprend « ses affaires » de la première phrase. Il s''agit d''une anaphore pronominale. On note l''accord du participe passé « mises » au féminin pluriel, qui confirme que « les » renvoie bien à « ses affaires » (féminin pluriel).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Anaphore par périphrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Intermediaire',
  'qcm',
  'Quel procédé anaphorique est utilisé pour reprendre « Paris » dans la seconde phrase ?',
  'Nous avons visité Paris. La Ville lumière nous a enchantés.',
  '[{"id":"a","label":"Anaphore pronominale"},{"id":"b","label":"Anaphore par synonyme"},{"id":"c","label":"Anaphore par périphrase (antonomase)"},{"id":"d","label":"Anaphore par hyperonyme"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« La Ville lumière » est une périphrase désignant Paris. On parle aussi d''antonomase (nom propre remplacé par une expression descriptive). Ce procédé est fréquent dans les textes littéraires et journalistiques. Il apporte une information supplémentaire tout en évitant la répétition.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Chaîne anaphorique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Intermediaire',
  'qcm',
  'Combien de reprises anaphoriques du mot « loup » compte ce texte ?',
  'Un loup rôdait dans la forêt. L''animal affamé cherchait une proie. Il se rapprochait du village. La bête grise finit par s''enfuir.',
  '[{"id":"a","label":"1"},{"id":"b","label":"2"},{"id":"c","label":"3"},{"id":"d","label":"4"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le mot « loup » (première mention = référent initial) est repris 3 fois : « L''animal affamé » (anaphore nominale par hyperonyme + adjectif), « Il » (anaphore pronominale), « La bête grise » (anaphore nominale par synonyme + adjectif). L''ensemble forme une chaîne anaphorique qui assure la cohésion du texte.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — reponse_courte — Identifier un substitut lexical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Intermediaire',
  'reponse_courte',
  'Quel groupe nominal est un substitut lexical de « Victor Hugo » dans ce texte ?',
  'Victor Hugo publia Les Misérables en 1862. L''auteur des Contemplations y décrivait la misère du peuple.',
  NULL,
  '{"mode":"text","acceptableAnswers":["L''auteur des Contemplations","l''auteur des Contemplations","auteur des Contemplations"]}'::jsonb,
  '« L''auteur des Contemplations » est un substitut lexical de « Victor Hugo ». C''est une périphrase qui désigne la même personne par une de ses œuvres. Ce procédé apporte une information complémentaire (Hugo a aussi écrit Les Contemplations) tout en assurant la cohésion textuelle.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Pronom démonstratif anaphorique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Intermediaire',
  'qcm',
  'À quoi renvoie le pronom « ceux-ci » dans la seconde phrase ?',
  'Les élèves ont présenté leurs exposés. Ceux-ci étaient très bien préparés.',
  '[{"id":"a","label":"Les élèves"},{"id":"b","label":"Les exposés"},{"id":"c","label":"Les professeurs (implicite)"},{"id":"d","label":"Les résultats (implicite)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Ceux-ci » est un pronom démonstratif qui reprend le dernier antécédent masculin pluriel mentionné, à savoir « leurs exposés ». En français, le pronom démonstratif avec « -ci » renvoie généralement à l''élément le plus proche, tandis que « -là » renvoie au plus éloigné. La cohérence sémantique confirme : ce sont les exposés qui sont « bien préparés ».',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avance — QCM — Anaphore résomptive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Avance',
  'qcm',
  'Quel type d''anaphore le groupe nominal souligné représente-t-il ?',
  'La tempête a arraché des toitures, déraciné des arbres et inondé les caves. [Ce désastre] a mobilisé tous les secours.',
  '[{"id":"a","label":"Anaphore fidèle (répétition)"},{"id":"b","label":"Anaphore résomptive (conceptuelle)"},{"id":"c","label":"Anaphore pronominale"},{"id":"d","label":"Anaphore par hyperonyme"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Ce désastre » est une anaphore résomptive (ou conceptuelle). Elle ne reprend pas un seul mot mais résume l''ensemble des faits décrits dans la phrase précédente (toitures arrachées, arbres déracinés, caves inondées). Ce type d''anaphore est essentiel en compréhension de texte car il condense une information complexe en un seul groupe nominal.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — reponse_courte — Ambiguïté référentielle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Avance',
  'reponse_courte',
  'Dans cette phrase, le pronom « il » crée une ambiguïté référentielle. Citez les deux référents possibles.',
  'Pierre a dit à Paul qu''il avait tort.',
  NULL,
  '{"mode":"text","acceptableAnswers":["Pierre et Paul","Paul et Pierre","Pierre ou Paul","Paul ou Pierre"]}'::jsonb,
  'Le pronom « il » peut renvoyer à « Pierre » (sujet de la principale) ou à « Paul » (COI). C''est un cas d''ambiguïté référentielle : le lecteur ne peut pas déterminer avec certitude à qui « il » fait référence. En didactique, ce type d''exemple montre pourquoi la maîtrise des anaphores est cruciale pour la compréhension en lecture. Pour lever l''ambiguïté, on pourrait reformuler : « Pierre a dit à Paul que celui-ci avait tort » (Paul) ou « Pierre a dit à Paul que lui-même avait tort » (Pierre).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — QCM — Cataphore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1020000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'analyse_anaphores_substituts',
  'Anaphores et substituts',
  'Avance',
  'qcm',
  'Quel procédé de reprise est utilisé dans cette phrase ?',
  'Quand il est arrivé, le directeur a pris la parole.',
  '[{"id":"a","label":"Anaphore pronominale (le pronom reprend un mot déjà mentionné)"},{"id":"b","label":"Cataphore (le pronom annonce un mot qui vient après)"},{"id":"c","label":"Déixis (le pronom désigne un élément de la situation)"},{"id":"d","label":"Anaphore résomptive"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Il » apparaît avant son référent « le directeur » : c''est une cataphore. Contrairement à l''anaphore qui reprend un élément déjà mentionné, la cataphore annonce un élément qui sera nommé plus loin dans la phrase. Ce procédé crée un effet d''attente et est fréquent en début de phrase complexe. Au CRPE, il faut bien distinguer anaphore (rétrospective) et cataphore (prospective).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 3 : Manipulations syntaxiques
-- Topic : analyse_manipulations_syntaxiques
-- UUID prefix : d1030000
-- 3 Facile, 4 Intermediaire, 3 Avance
-- Mix : 10 qcm
-- ============================================================

-- Q1 — Facile — QCM — Reconnaître un déplacement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Facile',
  'qcm',
  'Quelle manipulation syntaxique a été appliquée entre ces deux phrases ?',
  'Phrase 1 : « Le soir, les enfants lisent. » → Phrase 2 : « Les enfants lisent le soir. »',
  '[{"id":"a","label":"Suppression"},{"id":"b","label":"Déplacement"},{"id":"c","label":"Remplacement"},{"id":"d","label":"Expansion"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le groupe « le soir » a été déplacé du début à la fin de la phrase : c''est un déplacement. Cette manipulation montre que « le soir » est un complément circonstanciel (il est mobile dans la phrase). Les compléments essentiels (COD, COI) ne sont généralement pas déplaçables.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Reconnaître une suppression
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Facile',
  'qcm',
  'Quelle manipulation a été effectuée ?',
  'Phrase 1 : « Les élèves travaillent silencieusement dans la classe. » → Phrase 2 : « Les élèves travaillent. »',
  '[{"id":"a","label":"Déplacement"},{"id":"b","label":"Expansion"},{"id":"c","label":"Suppression"},{"id":"d","label":"Remplacement"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les groupes « silencieusement » et « dans la classe » ont été supprimés. La phrase reste grammaticalement correcte, ce qui prouve que ces compléments sont facultatifs (compléments circonstanciels). La suppression est la manipulation qui permet de distinguer les compléments essentiels des compléments circonstanciels.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Manipulation et identification du sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Facile',
  'qcm',
  'Quelle manipulation permet d''identifier le sujet de la phrase « Dans le jardin joue un enfant » ?',
  NULL,
  '[{"id":"a","label":"La suppression du groupe « dans le jardin »"},{"id":"b","label":"L''encadrement par « c''est… qui » : C''est un enfant qui joue dans le jardin"},{"id":"c","label":"Le remplacement de « joue » par « court »"},{"id":"d","label":"Le déplacement de « un enfant » en fin de phrase"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''encadrement par « c''est… qui » est la manipulation de référence pour identifier le sujet. « C''est un enfant qui joue dans le jardin » → le sujet est « un enfant ». Cette phrase avec sujet inversé peut induire en erreur si l''on ne recourt pas à cette manipulation. Les programmes insistent sur l''utilisation des manipulations syntaxiques pour l''analyse grammaticale.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Remplacement (commutation)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Intermediaire',
  'qcm',
  'On remplace « les belles fleurs rouges » par « elles » dans « J''ai cueilli les belles fleurs rouges. » Que prouve cette commutation ?',
  NULL,
  '[{"id":"a","label":"Que « les belles fleurs rouges » est un complément circonstanciel"},{"id":"b","label":"Que « les belles fleurs rouges » est un groupe nominal COD"},{"id":"c","label":"Que « les belles fleurs rouges » est un attribut du sujet"},{"id":"d","label":"Que « les belles fleurs rouges » est un sujet inversé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le remplacement (ou commutation) par le pronom « elles » (→ « Je les ai cueillies ») montre que « les belles fleurs rouges » est un groupe nominal qui fonctionne comme COD du verbe « cueillir ». La pronominalisation par un pronom personnel complément est un test fiable pour identifier le COD. Un CC ne se pronominaliserait pas de la même manière.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Expansion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Intermediaire',
  'qcm',
  'Quelle manipulation syntaxique est illustrée ici ?',
  'Phrase 1 : « L''enfant joue. » → Phrase 2 : « Le petit enfant blond joue joyeusement dans le parc. »',
  '[{"id":"a","label":"Déplacement"},{"id":"b","label":"Suppression"},{"id":"c","label":"Remplacement"},{"id":"d","label":"Expansion"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Des éléments ont été ajoutés sans modifier la structure de base : « petit » et « blond » (adjectifs épithètes), « joyeusement » (adverbe), « dans le parc » (CC de lieu). C''est une expansion. Cette manipulation enrichit la phrase minimale (sujet + verbe) en y ajoutant des modificateurs et des compléments. Elle permet de montrer aux élèves les groupes facultatifs.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — QCM — Suppression pour prouver une fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Intermediaire',
  'qcm',
  'Dans « Pierre mange une pomme tous les jours », quel groupe peut être supprimé sans rendre la phrase agrammaticale ?',
  NULL,
  '[{"id":"a","label":"Pierre"},{"id":"b","label":"une pomme"},{"id":"c","label":"mange"},{"id":"d","label":"tous les jours"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Tous les jours » est un complément circonstanciel de temps : il peut être supprimé (→ « Pierre mange une pomme »). Le sujet « Pierre », le verbe « mange » et le COD « une pomme » sont des constituants essentiels de la phrase et ne peuvent pas être supprimés. La suppression est le test principal pour distinguer les compléments de phrase (circonstanciels) des compléments du verbe.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Combinaison de manipulations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Intermediaire',
  'qcm',
  'Pour prouver que « dans la cour » est un complément circonstanciel dans « Les enfants jouent dans la cour », quelles manipulations sont pertinentes ?',
  NULL,
  '[{"id":"a","label":"Déplacement et encadrement par « c''est… qui »"},{"id":"b","label":"Suppression et déplacement"},{"id":"c","label":"Remplacement par un pronom et expansion"},{"id":"d","label":"Expansion et suppression du verbe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un complément circonstanciel se caractérise par sa double mobilité : il peut être supprimé (→ « Les enfants jouent ») et déplacé (→ « Dans la cour, les enfants jouent »). Ces deux manipulations combinées sont le test de référence pour identifier un CC. L''encadrement par « c''est… qui » sert à identifier le sujet, pas le CC.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avance — QCM — Manipulation et ambiguïté syntaxique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Avance',
  'qcm',
  'Dans « Elle observe l''homme au télescope », la suppression de « au télescope » laisse la phrase correcte. Que prouve le déplacement « Au télescope, elle observe l''homme » ?',
  NULL,
  '[{"id":"a","label":"Que « au télescope » est COI du verbe « observer »"},{"id":"b","label":"Que « au télescope » est un complément circonstanciel de moyen rattaché au verbe"},{"id":"c","label":"Que « au télescope » est complément du nom « homme »"},{"id":"d","label":"Que « au télescope » est un attribut du COD"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le déplacement en tête de phrase (« Au télescope, elle observe l''homme ») montre que « au télescope » est un CC de moyen qui modifie le verbe « observer » (elle observe au moyen d''un télescope). Cependant, cette phrase est syntaxiquement ambiguë : sans déplacement, « au télescope » pourrait aussi être un complément du nom « homme » (= l''homme qui a un télescope). Les manipulations syntaxiques permettent de lever ce type d''ambiguïté structurelle.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — QCM — Limites des manipulations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Avance',
  'qcm',
  'Dans « Il habite à Paris », le groupe « à Paris » ne peut être ni supprimé (*Il habite) ni déplacé (*À Paris, il habite). Quelle conclusion en tirer ?',
  NULL,
  '[{"id":"a","label":"C''est un complément circonstanciel de lieu obligatoire"},{"id":"b","label":"C''est un complément essentiel de lieu (complément du verbe)"},{"id":"c","label":"C''est un attribut du sujet"},{"id":"d","label":"C''est un COD indirect"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« À Paris » est un complément essentiel de lieu du verbe « habiter ». Les tests de suppression et de déplacement échouent, ce qui montre que ce n''est pas un complément circonstanciel malgré son sens spatial. C''est un point crucial au CRPE : certains compléments de lieu sont des compléments essentiels (construits par le verbe) et non des CC. Autres verbes similaires : aller, venir, se rendre, provenir…',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — QCM — Manipulation et passivation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd1030000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'analyse_manipulations_syntaxiques',
  'Manipulations syntaxiques',
  'Avance',
  'qcm',
  'La transformation passive « La souris est mangée par le chat » permet de prouver que, dans « Le chat mange la souris », « la souris » est :',
  NULL,
  '[{"id":"a","label":"Sujet du verbe"},{"id":"b","label":"COI du verbe"},{"id":"c","label":"COD du verbe"},{"id":"d","label":"Complément d''agent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La transformation passive est une manipulation syntaxique qui permet d''identifier le COD : le COD de la phrase active devient sujet de la phrase passive. « La souris » (COD actif) → « La souris » (sujet passif). Inversement, le sujet actif « le chat » devient complément d''agent « par le chat ». Cette manipulation est un test fiable car seul un COD peut devenir sujet d''une phrase passive.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

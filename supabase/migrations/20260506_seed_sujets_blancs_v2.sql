-- ============================================================
-- Migration : Sujets blancs CRPE v2 — refonte complète
-- Chaque sujet est basé sur un texte littéraire (modèle annales CRPE)
-- Structure : Étude de la langue / Compréhension / Didactique
-- ============================================================

-- Suppression des anciens sujets blancs
DELETE FROM public.exercises WHERE topic_key IN ('sujet_blanc_crpe_1', 'sujet_blanc_crpe_2', 'sujet_blanc_crpe_3');

-- ============================================================
-- SUJET BLANC N°1 — Alain-Fournier, Le Grand Meaulnes (1913)
-- ============================================================

-- Q1 — grammaire — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur », quelle est la nature grammaticale de la proposition « que j''appelais M. Seurel » ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Proposition subordonnée conjonctive complétive"},{"id":"b","label":"Proposition subordonnée relative explicative"},{"id":"c","label":"Proposition subordonnée circonstancielle de comparaison"},{"id":"d","label":"Proposition indépendante juxtaposée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Que j''appelais M. Seurel » est une proposition subordonnée relative introduite par le pronom relatif « que ». Elle est dite explicative (ou appositive) car elle apporte une information supplémentaire sur l''antécédent « Mon père » sans le restreindre : on pourrait la supprimer sans altérer l''identification du référent. Le pronom « que » a pour antécédent « Mon père » et occupe la fonction de COD du verbe « appelais » dans la subordonnée. La distinction entre relative déterminative et relative explicative est un savoir grammatical attendu au CRPE.',
  'Confondre la relative avec une complétive. Le mot « que » est ici un pronom relatif (il a un antécédent : « Mon père »), pas une conjonction de subordination.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q2 — grammaire — Intermediaire — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'reponse_courte',
  'Dans le texte, quelle est la fonction grammaticale du pronom « y » dans « y dirigeait à la fois le Cours Supérieur » ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  NULL,
  '{"mode":"text","acceptableAnswers":["complément circonstanciel de lieu","CCL","CC de lieu","complement circonstanciel de lieu"]}'::jsonb,
  'Le pronom adverbial « y » est un complément circonstanciel de lieu. Il reprend le groupe « les bâtiments du Cours Supérieur de Sainte-Agathe » mentionné dans la phrase précédente. « Y » remplace un complément de lieu introduit par la préposition « dans » (il dirigeait dans ces bâtiments). C''est un pronom adverbial de lieu, invariable, qui évite la répétition. Les programmes d''Éduscol préconisent l''étude des reprises pronominales et de leur rôle dans la cohésion textuelle dès le cycle 3.',
  'Confondre la fonction de « y » avec un COI. Ici, « y » ne remplace pas un complément introduit par « à » (sens abstrait) mais un lieu concret.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q3 — orthographe — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'qcm',
  'Dans « Nous avons quitté le pays depuis bientôt quinze ans », pourquoi le participe passé « quitté » ne porte-t-il pas de marque d''accord ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Parce que le sujet « nous » est indéfini"},{"id":"b","label":"Parce que le verbe est conjugué avec « avoir » et le COD « le pays » est placé après le participe"},{"id":"c","label":"Parce que « quitter » est un verbe intransitif"},{"id":"d","label":"Parce que le participe passé des verbes du 1er groupe est invariable"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Avec l''auxiliaire « avoir », le participe passé ne s''accorde avec le COD que si celui-ci est placé AVANT le participe. Ici, le COD « le pays » est placé APRÈS « quitté », donc le participe reste invariable. Si la phrase avait été « le pays que nous avons quitté », le COD « que » (reprenant « le pays », masculin singulier) aurait été antéposé, mais l''accord serait identique. En revanche, dans « les villes que nous avons quittées », l''accord au féminin pluriel serait obligatoire. La maîtrise de la règle d''accord du participe passé avec « avoir » est un attendu central du CRPE.',
  'Penser que le participe passé avec « avoir » est toujours invariable. Il s''accorde avec le COD antéposé.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q4 — conjugaison — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'qcm',
  'Le texte alterne plusieurs temps verbaux. Quelle est la valeur de l''imparfait dans « Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe » ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Imparfait de narration"},{"id":"b","label":"Imparfait d''habitude (itératif)"},{"id":"c","label":"Imparfait de description (arrière-plan)"},{"id":"d","label":"Imparfait d''atténuation"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''imparfait « habitions » exprime ici un état durable dans le passé, servant à planter le décor et l''arrière-plan du récit. C''est l''imparfait descriptif (ou d''arrière-plan), qui s''oppose au passé simple des événements ponctuels (« Il arriva », « s''écoulèrent »). Dans un récit au passé, l''imparfait assure la description du cadre (lieux, personnages, habitudes) tandis que le passé simple fait progresser l''action. Cette alternance imparfait/passé simple est un point d''analyse textuelle fondamental au CRPE et un savoir enseigné au cycle 3.',
  'Confondre l''imparfait descriptif avec l''imparfait d''habitude. L''habitude implique la répétition d''une action, tandis que la description présente un état stable.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q5 — lexique — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Difficile',
  'qcm',
  'Dans « tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie », le mot « demeure » appartient à un registre de langue :',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Familier"},{"id":"b","label":"Courant"},{"id":"c","label":"Soutenu"},{"id":"d","label":"Argotique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le mot « demeure » appartient au registre soutenu. C''est un synonyme de « maison » ou « habitation » qui connote un lieu de vie plus vaste, plus noble. Son emploi ici confère une dimension affective et solennelle au lieu décrit, cohérente avec la tonalité nostalgique du passage. En didactique du lexique, les programmes d''Éduscol préconisent de travailler les registres de langue avec les élèves de cycle 3, en leur faisant comparer des synonymes appartenant à des registres différents (habitation / maison / demeure / masure).',
  'Classer « demeure » en registre courant. Si « maison » est courant, « demeure » est soutenu, comme « résidence ».',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q6 — comprehension_texte — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'qcm',
  'Quel type de narrateur est utilisé dans ce texte ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Narrateur omniscient externe"},{"id":"b","label":"Narrateur-personnage (récit homodiégétique)"},{"id":"c","label":"Narrateur externe objectif"},{"id":"d","label":"Narrateur au discours indirect libre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le texte est écrit à la première personne (« Je continue », « chez nous », « ma vie ») par un narrateur qui est aussi un personnage de l''histoire (le fils de M. Seurel). C''est un récit homodiégétique (ou autodiégétique puisqu''il est le personnage principal). Le narrateur raconte rétrospectivement : il parle au présent (« Je continue à dire ») d''événements passés, avec un recul de quinze ans. Cette double temporalité (temps de la narration / temps de l''histoire) est caractéristique du récit autobiographique ou mémoriel.',
  'Confondre narrateur-personnage et narrateur omniscient. La première personne et le point de vue limité confirment qu''il s''agit d''un narrateur-personnage.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q7 — comprehension_texte — Intermediaire — vrai_faux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le narrateur décrit les lieux tels qu''il les voit au moment où il écrit.',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Le narrateur décrit les lieux tels qu''il s''en souvient, avec la distance de quinze années. La phrase « Je continue à dire "chez nous", bien que la maison ne nous appartienne plus » et « Nous avons quitté le pays depuis bientôt quinze ans » montrent clairement que la description est rétrospective, fondée sur le souvenir. Le temps dominant de la description est l''imparfait (« habitions », « dirigeait », « faisait »), confirmant que le cadre est révolu. Cette distinction entre le moment de la narration et le moment des faits narrés est un concept narratologique fondamental.',
  'Croire que la description au présent d''énonciation (« Je continue ») signifie que le narrateur est physiquement sur les lieux. Ce présent est celui de l''écriture, pas celui de l''action décrite.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q8 — analyse_langue — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Difficile',
  'qcm',
  'Dans la longue phrase commençant par « Une longue maison rouge… », quel procédé syntaxique dominant structure la description ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"L''hypotaxe (subordination)"},{"id":"b","label":"La parataxe par juxtaposition de groupes nominaux"},{"id":"c","label":"L''anaphore rhétorique"},{"id":"d","label":"Le parallélisme syntaxique strict"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase est construite sur une juxtaposition de groupes nominaux séparés par des points-virgules : « Une longue maison rouge… ; une cour immense… ; sur le côté nord, la route… ; au sud et par derrière, des champs… ». C''est de la parataxe : les éléments sont coordonnés sans lien de subordination, mimant le regard qui balaie le lieu. Ce procédé crée un effet de tableau, d''inventaire visuel. Le mot « tel » en fin de phrase récapitule l''ensemble. L''analyse des procédés syntaxiques au service de la description est un attendu de l''épreuve du CRPE.',
  'Parler d''hypotaxe (subordination). Bien qu''il y ait quelques relatives (« qui ouvrait », « qui menait »), la structure dominante est la juxtaposition de GN, soit de la parataxe.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q9 — comprehension_texte — Difficile — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Difficile',
  'reponse_courte',
  'Quelle est la tonalité dominante de cet extrait ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  NULL,
  '{"mode":"text","acceptableAnswers":["nostalgique","la nostalgie","nostalgie","élégiaque"]}'::jsonb,
  'La tonalité dominante est nostalgique (ou élégiaque). Le narrateur évoque un lieu qu''il a quitté et où il ne reviendra « certainement jamais ». L''expression « les jours les plus tourmentés et les plus chers de ma vie » associe douleur et attachement, caractéristique de la nostalgie. D''autres indices : le décalage temporel (« depuis bientôt quinze ans »), l''usage de l''imparfait descriptif qui enveloppe le souvenir, et la formule affective « chez nous » maintenue malgré la perte.',
  'Confondre nostalgie et tristesse. La nostalgie implique un attachement au passé, pas seulement de la douleur. Le superlatif « les plus chers » montre l''attachement positif au souvenir.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q10 — analyse_langue — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Difficile',
  'qcm',
  'Dans « bien que la maison ne nous appartienne plus », quel est le mode du verbe « appartienne » et pourquoi ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Indicatif présent, car la proposition est assertive"},{"id":"b","label":"Subjonctif présent, imposé par la locution conjonctive de concession « bien que »"},{"id":"c","label":"Conditionnel présent, car le fait est hypothétique"},{"id":"d","label":"Subjonctif imparfait, pour la concordance des temps avec le passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « appartienne » est au subjonctif présent. La locution conjonctive de concession « bien que » impose le subjonctif dans la subordonnée qu''elle introduit, conformément à la norme du français standard. Cette règle grammaticale est régulière : les conjonctions de concession (bien que, quoique, encore que) appellent systématiquement le subjonctif. L''erreur fréquente à l''oral (« bien que… + indicatif ») n''est pas acceptée dans la langue écrite normée. La maîtrise des conjonctions et du mode qu''elles imposent est un point d''évaluation récurrent au CRPE.',
  'Confondre avec l''indicatif. « Appartienne » (subjonctif) se distingue de « appartient » (indicatif) par la terminaison en -e. « Bien que » exige toujours le subjonctif.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q11 — didactique_francais — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000b',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'qcm',
  'Un enseignant de CM2 souhaite utiliser cet extrait du Grand Meaulnes pour une séance de lecture littéraire. Quel objectif d''apprentissage est le plus pertinent ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Mémoriser par cœur le texte pour améliorer la fluence"},{"id":"b","label":"Identifier le narrateur, le point de vue et la temporalité du récit"},{"id":"c","label":"Apprendre les règles de ponctuation par la copie du texte"},{"id":"d","label":"Étudier exclusivement le vocabulaire inconnu par recherche dans le dictionnaire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''objectif le plus pertinent est d''identifier le narrateur, le point de vue et la temporalité du récit. Cet extrait permet de travailler les compétences de lecture littéraire du cycle 3 : repérer qui raconte (narrateur-personnage), distinguer le moment de la narration du moment de l''histoire, et comprendre comment le point de vue influence la description. Les programmes d''Éduscol 2021 insistent sur l''enseignement explicite de ces notions narratologiques au cycle 3.',
  'Réduire l''exploitation d''un texte littéraire à l''étude du vocabulaire ou à la copie. La lecture littéraire au cycle 3 vise la compréhension fine et l''interprétation.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q12 — didactique_francais — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000c',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Intermediaire',
  'qcm',
  'Pour une séance d''étude de la langue en CM2 à partir de ce texte, quelle activité est la plus conforme à la démarche recommandée par Éduscol ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Faire surligner tous les mots de plus de trois syllabes"},{"id":"b","label":"Faire repérer les compléments circonstanciels de lieu dans le texte, puis les faire produire dans un texte descriptif personnel"},{"id":"c","label":"Faire conjuguer tous les verbes du texte au présent"},{"id":"d","label":"Faire recopier le texte sans erreur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La démarche recommandée par les programmes d''Éduscol consiste à partir de l''observation d''un fait de langue en contexte (repérer les CCL dans le texte), puis à le conceptualiser (leçon sur les CCL), avant de le réinvestir en production (écrire un texte descriptif avec des CCL variés). Ce texte, riche en indications spatiales (« à l''extrémité du bourg », « en avant sur le village », « sur le côté nord »), est idéal pour cette compétence. Cette démarche « observer → structurer → réinvestir » est au cœur de l''enseignement explicite de la grammaire au cycle 3.',
  'Proposer des activités mécaniques (copie, conjugaison hors contexte). L''étude de la langue au cycle 3 doit être reliée à la lecture et à l''écriture.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q13 — didactique_francais — Difficile — vrai_faux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000d',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Selon les programmes d''Éduscol, il est recommandé d''enseigner la distinction entre imparfait et passé simple dans le récit dès le cycle 2.',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. La distinction fonctionnelle entre imparfait (arrière-plan, description) et passé simple (premier plan, événements) dans le récit est un apprentissage du cycle 3, pas du cycle 2. Au cycle 2, les élèves apprennent à reconnaître et conjuguer les temps simples courants (présent, imparfait, futur, passé composé) sans approfondir les valeurs aspectuelles dans le récit. C''est au cycle 3 que les programmes prévoient l''étude de l''alternance imparfait/passé simple comme système temporel du récit au passé.',
  'Anticiper des apprentissages du cycle 3 au cycle 2. Les valeurs des temps dans le récit nécessitent une maturité linguistique que les élèves de cycle 2 n''ont pas encore.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q14 — grammaire — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000e',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Difficile',
  'qcm',
  'Dans « la route où donnait une petite grille et qui menait vers La Gare », quelle est la fonction du pronom relatif « qui » ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Complément d''objet direct du verbe « menait »"},{"id":"b","label":"Sujet du verbe « menait »"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pronom relatif « qui » est sujet du verbe « menait » dans la proposition subordonnée relative « qui menait vers La Gare ». Son antécédent est « la route ». Le pronom relatif « qui » est toujours sujet du verbe de la relative (tandis que « que » est COD). La proposition relative « qui menait vers La Gare » est coordonnée par « et » à la première relative « où donnait une petite grille ». L''identification de la fonction des pronoms relatifs est un attendu grammatical du CRPE.',
  'Confondre la fonction du pronom relatif avec celle de son antécédent. « La route » est CCL dans la phrase matrice, mais « qui » est sujet dans la subordonnée.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q15 — didactique_francais — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000f',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_1',
  'Sujet blanc n°1 — Le Grand Meaulnes',
  'Difficile',
  'qcm',
  'Un enseignant propose cet extrait à des élèves de CM1 en difficulté de compréhension. Quelle adaptation pédagogique est la plus conforme aux recommandations d''Éduscol ?',
  'Il arriva chez nous un dimanche de novembre 189… Je continue à dire « chez nous », bien que la maison ne nous appartienne plus. Nous avons quitté le pays depuis bientôt quinze ans et nous n''y reviendrons certainement jamais. Nous habitions les bâtiments du Cours Supérieur de Sainte-Agathe. Mon père, que j''appelais M. Seurel, comme les autres élèves, y dirigeait à la fois le Cours Supérieur, où l''on préparait le brevet simple, et le Cours Moyen. Ma mère faisait la petite classe. Une longue maison rouge, avec cinq portes vitrées, sous des vignes vierges, à l''extrémité du bourg ; une cour immense avec préaux et buanderie, qui ouvrait en avant sur le village par un grand portail ; sur le côté nord, la route où donnait une petite grille et qui menait vers La Gare, à trois kilomètres ; au sud et par derrière, des champs, des jardins et des prés qui rejoignaient les faubourgs… tel est le plan sommaire de cette demeure où s''écoulèrent les jours les plus tourmentés et les plus chers de ma vie. — Alain-Fournier, Le Grand Meaulnes (1913), chapitre I',
  '[{"id":"a","label":"Simplifier le texte en réécrivant les phrases longues"},{"id":"b","label":"Proposer un questionnaire écrit individuel immédiat"},{"id":"c","label":"Lire le texte à voix haute et guider la compréhension par un échange oral collectif avec questionnement explicite"},{"id":"d","label":"Remplacer le texte par un texte plus court et plus simple"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les recommandations d''Éduscol pour les élèves en difficulté de compréhension préconisent un étayage fort de l''enseignant : lecture magistrale (pour lever l''obstacle du déchiffrage), reformulation, questionnement guidé et échanges oraux collectifs. L''enseignement explicite de stratégies de compréhension passe par la verbalisation orale avant le travail écrit. Simplifier ou remplacer le texte priverait les élèves de l''accès à la langue littéraire, ce qui creuse les inégalités.',
  'Proposer de simplifier ou remplacer le texte pour les élèves faibles. Les programmes insistent sur l''accès de TOUS les élèves à des textes riches, avec un étayage différencié.',
  'valide',
  'CRPE Français — Sujet blanc n°1 — Le Grand Meaulnes',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- ============================================================
-- SUJET BLANC N°2 — Colette, Sido (1930)
-- ============================================================

-- Q1 — grammaire — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'qcm',
  'Dans « Elle avait coutume de distribuer à travers le jardin ses matinées de printemps », quelle est la fonction du groupe « à travers le jardin » ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Complément du nom « matinées »"},{"id":"b","label":"Complément d''objet indirect du verbe « distribuer »"},{"id":"c","label":"Complément circonstanciel de lieu du verbe « distribuer »"},{"id":"d","label":"Épithète liée du nom « jardin »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le groupe « à travers le jardin » est un complément circonstanciel de lieu. Introduit par la locution prépositive « à travers », il indique le lieu où se déploie l''action de « distribuer ». Il est mobile (on pourrait le déplacer : « À travers le jardin, elle avait coutume de distribuer ses matinées ») et supprimable, deux propriétés caractéristiques du complément circonstanciel. Les programmes d''Éduscol prévoient l''identification des compléments circonstanciels (lieu, temps, manière) comme compétence de cycle 3.',
  'Confondre le CCL avec un COI. « À travers le jardin » indique un lieu, pas un destinataire. Le COD de « distribuer » est « ses matinées de printemps ».',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q2 — orthographe — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'qcm',
  'Dans « pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas », justifiez l''accord du verbe « logeaient ».',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Le verbe s''accorde avec « la bête noire » (singulier), donc l''accord est incorrect"},{"id":"b","label":"Le verbe s''accorde avec le sujet composé « la bête noire, le puceron vert, le scarabée mordoré » (pluriel)"},{"id":"c","label":"Le verbe est à l''infinitif et ne s''accorde pas"},{"id":"d","label":"Le verbe s''accorde avec « pétale » qui est le sujet réel"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « logeaient » est au pluriel car son sujet est composé de trois groupes nominaux coordonnés par juxtaposition (virgule) : « la bête noire, le puceron vert, le scarabée mordoré ». Lorsque plusieurs sujets sont coordonnés (par « et », « ou » ou juxtaposition), le verbe se met au pluriel. C''est la règle de l''accord avec le sujet composé. L''analyse de la chaîne d''accord sujet-verbe, notamment avec des sujets multiples, est un savoir essentiel au CRPE.',
  'Croire que le verbe devrait être au singulier car le dernier élément de l''énumération (« le scarabée mordoré ») est singulier. C''est l''ensemble du sujet composé qui commande l''accord.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q3 — conjugaison — Intermediaire — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'reponse_courte',
  'Dans « C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon », à quel mode et temps est le verbe « vois » ? Quelle est sa valeur dans le contexte du récit ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  NULL,
  '{"mode":"text","acceptableAnswers":["indicatif présent","présent de l''indicatif","présent"]}'::jsonb,
  'Le verbe « vois » est au présent de l''indicatif (1re personne du singulier). Il a ici une valeur de présent d''évocation (ou de mémoire) : le narrateur revit mentalement une scène passée et la rend actuelle par l''emploi du présent. Ce présent crée un effet de proximité et d''immédiateté avec le souvenir. Il contraste avec les temps du passé utilisés dans le reste du texte (« avait coutume », « soulevait »), ce qui met en relief l''intensité du souvenir.',
  'Confondre avec le présent d''habitude ou le présent de vérité générale. Ici, le présent actualise un souvenir, pas une vérité universelle ni une habitude.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q4 — lexique — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Difficile',
  'qcm',
  'Dans « une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte », quelle figure de style est utilisée dans « l''écharpe de nuages » ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Une comparaison"},{"id":"b","label":"Une métaphore"},{"id":"c","label":"Une personnification"},{"id":"d","label":"Une hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« L''écharpe de nuages » est une métaphore : les nuages sont désignés par le mot « écharpe » sans outil de comparaison (comme, tel, semblable à). L''image rapproche les nuages enroulés autour de la montagne à une écharpe textile. La métaphore se distingue de la comparaison par l''absence de mot-outil comparatif. Ce n''est pas une personnification car l''écharpe ne confère pas de trait humain à la montagne. L''identification des figures de style est un attendu de l''analyse littéraire au cycle 3 et au CRPE.',
  'Confondre métaphore et comparaison. La comparaison utilise un outil (comme, tel que), la métaphore non. « L''écharpe de nuages » est une identification directe, donc une métaphore.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q5 — grammaire — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Difficile',
  'qcm',
  'Dans « elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes », quelle est la nature de la proposition « parce qu''elle remplissait les citernes » ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Proposition subordonnée relative"},{"id":"b","label":"Proposition subordonnée conjonctive complétive"},{"id":"c","label":"Proposition subordonnée circonstancielle de cause"},{"id":"d","label":"Proposition subordonnée circonstancielle de conséquence"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Parce qu''elle remplissait les citernes » est une proposition subordonnée circonstancielle de cause, introduite par la locution conjonctive « parce que ». Elle exprime la raison pour laquelle Sido aimait la pluie. La circonstancielle de cause se distingue de la conséquence : la cause précède logiquement le fait, la conséquence en découle. Distinguer les différents types de subordonnées circonstancielles est une compétence grammaticale fondamentale au CRPE.',
  'Confondre cause et conséquence. La pluie ne remplissait pas les citernes PARCE QU''elle l''aimait — c''est l''inverse. La cause de l''amour pour la pluie est le remplissage des citernes.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q6 — comprehension_texte — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'qcm',
  'Quel est le registre littéraire dominant de ce texte ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Tragique"},{"id":"b","label":"Comique"},{"id":"c","label":"Lyrique"},{"id":"d","label":"Épique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le registre lyrique domine ce texte. Il se caractérise par l''expression des sentiments personnels (l''attachement du narrateur à sa mère), l''utilisation de la première personne (« je vois »), la dimension contemplative et poétique des descriptions (la nature, les fleurs, le ciel). L''émotion est contenue mais perceptible dans l''expression « C''est elle encore que je vois », qui traduit la persistance du souvenir. Le lyrisme de Colette mêle observation précise de la nature et affectivité.',
  'Confondre registre lyrique et registre pathétique. Le pathétique cherche à émouvoir par la pitié, tandis que le lyrique exprime les sentiments intimes, souvent liés à la beauté ou au temps qui passe.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q7 — comprehension_texte — Intermediaire — vrai_faux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Sido observe la nature uniquement par intérêt pratique (pour ses cultures).',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Si Sido a un intérêt pratique (vérifier les pucerons, anticiper la pluie pour les citernes), son rapport à la nature est aussi esthétique et sensoriel. Elle « interroge l''horizon », lit « exactement les signes » du ciel — ce qui dépasse la simple utilité. La dernière phrase révèle une tension entre deux plaisirs : elle aime « le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes ». Cette dualité montre un rapport sensible et attentif à la nature, pas seulement utilitaire.',
  'Se limiter à l''information explicite (les fleurs, les pucerons, les citernes) sans percevoir la dimension contemplative et poétique du rapport de Sido à la nature.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q8 — analyse_langue — Difficile — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Difficile',
  'reponse_courte',
  'Dans « Venue de la buanderie, elle regardait si la glycine avait épaissi son feuillage », quelle est la forme verbale de « Venue » et quelle est sa fonction dans la phrase ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  NULL,
  '{"mode":"text","acceptableAnswers":["participe passé en apposition","participe passé apposé","apposition","participe passé apposé au sujet"]}'::jsonb,
  '« Venue » est un participe passé employé en apposition (ou en position détachée) au sujet « elle ». Il fonctionne comme un complément circonstanciel de temps : Sido regardait la glycine APRÈS ÊTRE venue de la buanderie. Le participe passé en apposition, séparé du reste de la phrase par une virgule, exprime une action antérieure à celle du verbe principal. Il s''accorde en genre et en nombre avec le nom ou pronom auquel il se rapporte (ici « elle », féminin singulier → « venue »). L''analyse des formes participiales est un savoir linguistique avancé du CRPE.',
  'Analyser « venue » comme un adjectif qualificatif. Bien que le participe passé puisse fonctionner comme un adjectif, ici il conserve sa valeur verbale (il exprime une action : venir de la buanderie).',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q9 — comprehension_texte — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Difficile',
  'qcm',
  'Dans la construction « elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes », quel procédé stylistique relie les deux propositions ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Une antithèse"},{"id":"b","label":"Un oxymore"},{"id":"c","label":"Une gradation"},{"id":"d","label":"Une anaphore"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''antithèse oppose deux réalités contraires dans une construction parallèle : « le beau temps » / « la pluie ». Cette opposition est renforcée par la coordination « et » et la structure symétrique (elle aimait X pour Y, et Z parce que W). L''antithèse révèle le caractère de Sido, qui ne choisit pas entre les contraires mais les embrasse tous deux. Ce n''est pas un oxymore (qui unit deux termes contradictoires dans le même groupe) ni une gradation (qui organise une progression).',
  'Confondre antithèse et oxymore. L''antithèse oppose des éléments dans deux propositions distinctes ; l''oxymore unit deux termes contradictoires dans un même groupe syntaxique.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q10 — grammaire — Difficile — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Difficile',
  'reponse_courte',
  'Dans « la montagne dont elle seule savait lire exactement les signes », quelle est la fonction du pronom relatif « dont » ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  NULL,
  '{"mode":"text","acceptableAnswers":["complément du nom","complément du nom signes","CDN","complement du nom"]}'::jsonb,
  'Le pronom relatif « dont » est complément du nom « signes ». Il reprend l''antécédent « la montagne » : elle savait lire les signes DE la montagne → dont elle savait lire les signes. « Dont » remplace un complément introduit par la préposition « de ». L''analyse de la fonction du pronom relatif « dont » est un point grammatical fréquemment évalué au CRPE, car il pose des difficultés (CDN, COI, complément de l''adjectif, complément d''agent).',
  'Analyser « dont » comme COI. Ici, « dont » ne complète pas le verbe « savait lire » (on ne dit pas « lire de quelque chose ») mais le nom « signes » (les signes de la montagne).',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q11 — didactique_francais — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000b',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'qcm',
  'Un enseignant de CM1 utilise ce texte de Colette pour une séance de vocabulaire. Quelle démarche est la plus conforme aux programmes d''Éduscol ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Chercher chaque mot inconnu dans le dictionnaire individuellement"},{"id":"b","label":"Constituer un réseau lexical autour du champ lexical de la nature en classe entière"},{"id":"c","label":"Apprendre par cœur une liste de mots difficiles du texte"},{"id":"d","label":"Remplacer les mots difficiles par des synonymes plus simples dans le texte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes d''Éduscol recommandent un enseignement du vocabulaire en réseau, organisé autour de champs lexicaux, familles de mots et relations sémantiques. Ce texte est riche pour constituer le champ lexical de la nature/jardin (glycine, pétale, rose, puceron, scarabée, horizon, brume, nuages, pluie, citernes, fleurs). Le travail en classe entière favorise les échanges et l''explicitation du sens en contexte.',
  'Réduire l''enseignement du vocabulaire à la recherche dans le dictionnaire. Les programmes insistent sur l''organisation du lexique en réseaux sémantiques et la compréhension des mots en contexte.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q12 — didactique_francais — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000c',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Difficile',
  'qcm',
  'Quel obstacle principal à la compréhension ce texte peut-il poser à des élèves de CM2 ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"La longueur excessive du texte"},{"id":"b","label":"La double temporalité (présent de la narration / passé de la scène souvenue) et les références implicites"},{"id":"c","label":"L''absence totale de dialogue"},{"id":"d","label":"L''utilisation exclusive du passé simple"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le principal obstacle est la double temporalité : le narrateur parle au présent (« C''est elle encore que je vois ») d''une scène passée à l''imparfait (« elle avait coutume »). Les élèves doivent comprendre que le « je » adulte se souvient de sa mère, ce qui requiert des inférences. De plus, certaines références sont implicites (« elle seule savait lire les signes » — de quoi ? de la météo). Le texte n''est pas trop long, il contient un dialogue (« Je crois bien qu''il va pleuvoir »), et il n''utilise pas exclusivement le passé simple.',
  'Surestimer la difficulté de la longueur ou de l''absence de dialogue. Les véritables obstacles sont cognitifs (inférences, temporalité narrative), pas matériels.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q13 — didactique_francais — Intermediaire — vrai_faux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000d',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Selon les programmes d''Éduscol, la production d''écrit au cycle 3 doit être systématiquement précédée d''une phase de lecture d''un texte modèle.',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux en tant que règle absolue. Les programmes préconisent de varier les situations d''écriture : parfois à partir d''un texte lu (écriture en résonance), parfois à partir d''une consigne d''invention, d''une image, d''une contrainte formelle ou d''un projet de communication. La lecture de textes modèles est UN des dispositifs possibles, pas le seul. Les programmes insistent sur la diversité des situations d''écriture et sur le processus rédactionnel (planification, mise en texte, révision).',
  'Absolutiser une démarche pédagogique en règle systématique. Les programmes recommandent la variété des entrées en écriture, pas un protocole unique.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q14 — orthographe — Intermediaire — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000e',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Intermediaire',
  'reponse_courte',
  'Dans « elle soulevait un pétale de rose », quel est le genre du mot « pétale » ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  NULL,
  '{"mode":"text","acceptableAnswers":["masculin","un pétale","le masculin"]}'::jsonb,
  'Le mot « pétale » est masculin : UN pétale. C''est une erreur fréquente de le considérer comme féminin, probablement par analogie avec des mots en -ale. L''article « un » dans le texte de Colette confirme le genre masculin. Parmi les mots souvent source d''erreur de genre : tentacule (masculin), pétale (masculin), intervalle (masculin), alvéole (masculin ou féminin). La maîtrise du genre des noms pièges est un attendu orthographique du CRPE.',
  'Croire que « pétale » est féminin. La terminaison en -ale peut être trompeuse, mais l''article « un » dans le texte lève l''ambiguïté.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q15 — didactique_francais — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000f',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_2',
  'Sujet blanc n°2 — Sido',
  'Difficile',
  'qcm',
  'Pour travailler la compréhension de ce texte avec des élèves de CM1, quelle stratégie d''enseignement explicite est la plus appropriée ?',
  'Elle avait coutume de distribuer à travers le jardin ses matinées de printemps. Venue de la buanderie, elle regardait si la glycine avait, entre deux pluies, épaissi son feuillage. D''un doigt précautionneux, elle soulevait un pétale de rose pour voir si la bête noire, le puceron vert, le scarabée mordoré ne s''y logeaient pas. C''est elle encore que je vois, accoudée à la fenêtre, interrogeant l''horizon du côté de l''est, du côté de la montagne dont elle seule savait lire exactement les signes : un bleu orageux, une brume translucide, l''écharpe de nuages qui s''enroulait à son faîte… — Je crois bien qu''il va pleuvoir, soupirait-elle. Car elle aimait le beau temps pour ses fleurs, et la pluie parce qu''elle remplissait les citernes. — Colette, Sido (1930)',
  '[{"id":"a","label":"Demander aux élèves de résumer le texte à l''écrit sans étayage"},{"id":"b","label":"Modéliser à voix haute la stratégie « se faire un film mental » en décrivant ce que l''on visualise à la lecture"},{"id":"c","label":"Poser uniquement des questions de repérage littéral"},{"id":"d","label":"Faire lire le texte en silence puis passer directement aux questions écrites"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La stratégie « se faire un film mental » (ou visualisation) est particulièrement pertinente pour ce texte descriptif riche en images sensorielles (la glycine, le doigt qui soulève le pétale, l''horizon, les nuages). L''enseignement explicite consiste à modéliser cette stratégie : l''enseignant lit à voix haute et verbalise ce qu''il « voit » mentalement, montrant ainsi le processus aux élèves. Cette démarche de « pensée à voix haute » est recommandée par les recherches en didactique de la compréhension (Cèbe, Goigoux) et les ressources Éduscol.',
  'Réduire la compréhension à des questions de repérage littéral. La compréhension fine exige des stratégies enseignées explicitement : visualiser, inférer, résumer, faire des liens.',
  'valide',
  'CRPE Français — Sujet blanc n°2 — Sido',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- ============================================================
-- SUJET BLANC N°3 — Jules Vallès, L'Enfant (1879)
-- ============================================================

-- Q1 — grammaire — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'qcm',
  'Dans « Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes », quelle est la nature de la proposition « qu''on aime les bêtes » ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"Proposition subordonnée relative"},{"id":"b","label":"Proposition subordonnée conjonctive complétive"},{"id":"c","label":"Proposition subordonnée circonstancielle de cause"},{"id":"d","label":"Proposition principale"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Qu''on aime les bêtes » est une proposition subordonnée conjonctive complétive introduite par la conjonction de subordination « que ». Elle est COD du verbe « montrer » (montrer quoi ? → qu''on aime les bêtes). Il ne faut pas la confondre avec une relative : « que » est ici une conjonction (pas d''antécédent nominal) et non un pronom relatif. Cette subordonnée est enchâssée dans une autre complétive (« que c''est dégoûtant de montrer… »), elle-même COD de « dit ». L''identification de la nature des subordonnées est un attendu fondamental du CRPE.',
  'Confondre conjonction « que » et pronom relatif « que ». Le pronom relatif a un antécédent nominal et une fonction dans la subordonnée ; la conjonction n''a ni l''un ni l''autre.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q2 — grammaire — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'qcm',
  'Dans « ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux », quelle est la fonction des deux propositions relatives ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"Complément d''objet direct du verbe « caresser »"},{"id":"b","label":"Expansions du nom « chien » (épithètes)"},{"id":"c","label":"Appositions au sujet de la phrase"},{"id":"d","label":"Compléments circonstanciels de manière"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les deux propositions relatives « qui sent le chenil » et « qui a des taches fauves au-dessus des yeux » sont des expansions du groupe nominal « ce grand chien noir ». Elles fonctionnent comme des épithètes du nom « chien ». Elles apportent des caractéristiques supplémentaires au référent. Les relatives sont coordonnées par juxtaposition (virgule). L''identification de la fonction des propositions relatives dans le GN est un savoir grammatical attendu au CRPE et au cycle 3.',
  'Confondre la fonction de la relative avec celle du GN complet. C''est le GN « ce grand chien noir… » qui peut être sujet ou COD, mais les relatives sont des expansions du nom au sein de ce GN.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q3 — orthographe — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'qcm',
  'Dans « elle me donne une gifle et me mouche violemment », pourquoi « violemment » prend-il deux « m » ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"C''est une exception orthographique sans règle"},{"id":"b","label":"Les adverbes formés sur un adjectif en -ent prennent le suffixe -emment (avec deux m)"},{"id":"c","label":"C''est une erreur, la forme correcte est « violament »"},{"id":"d","label":"Le doublement du « m » est dû à l''assimilation phonétique du -n-"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''adverbe « violemment » est formé sur l''adjectif « violent » (terminaison en -ent). La règle est : les adjectifs terminés en -ent forment leur adverbe en -emment (avec deux « m ») : violent → violemment, prudent → prudemment, évident → évidemment. De même, les adjectifs en -ant forment leur adverbe en -amment : brillant → brillamment, constant → constamment. Cette règle morphologique de formation des adverbes est un savoir orthographique fondamental au CRPE.',
  'Croire que c''est une exception. C''est une règle régulière : -ent → -emment, -ant → -amment.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q4 — conjugaison — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'qcm',
  'Le texte utilise le présent de l''indicatif tout au long du récit. Quelle est la valeur dominante de ce présent ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"Présent de vérité générale"},{"id":"b","label":"Présent d''habitude (itératif)"},{"id":"c","label":"Présent de narration"},{"id":"d","label":"Présent d''énonciation"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le présent utilisé ici est un présent de narration (ou présent historique). Jules Vallès raconte des scènes d''enfance passées au présent pour créer un effet d''immédiateté et de vivacité. Le lecteur « vit » les scènes au présent avec l''enfant-narrateur. Ce procédé est caractéristique de L''Enfant : Vallès adopte le regard de l''enfant au moment des faits, sans le recul de l''adulte. Le présent de narration se distingue du présent d''habitude et du présent de vérité générale.',
  'Confondre présent de narration et présent d''habitude. Bien que certaines actions puissent se répéter (« Ma mère arrive toujours »), le contexte est narratif : Vallès raconte des scènes ponctuelles.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q5 — lexique — Intermediaire — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'reponse_courte',
  'Dans « ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux », à quel champ lexical appartient le mot « fauves » dans ce contexte ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  NULL,
  '{"mode":"text","acceptableAnswers":["couleur","les couleurs","champ lexical de la couleur","la couleur","couleurs"]}'::jsonb,
  'Dans ce contexte, « fauves » appartient au champ lexical de la couleur. L''adjectif « fauve » désigne une teinte brun-roux, tirant sur le jaune-orangé. Il qualifie ici la couleur des taches du chien. Il ne faut pas le confondre avec le nom « fauve » (animal sauvage), qui appartient au champ lexical des animaux. C''est un cas de polysémie : le même mot peut avoir des sens différents selon le contexte. L''analyse des mots polysémiques en contexte est une compétence lexicale centrale du cycle 3 et du CRPE.',
  'Confondre l''adjectif « fauve » (couleur) avec le nom « fauve » (animal). Le contexte syntaxique (« taches fauves ») montre qu''il s''agit d''un adjectif de couleur.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q6 — comprehension_texte — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'qcm',
  'Quel rapport entre l''enfant et sa mère ce texte met-il en scène ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"Un rapport de complicité et de tendresse partagée"},{"id":"b","label":"Un rapport conflictuel où l''enfant résiste aux interdits maternels"},{"id":"c","label":"Un rapport d''indifférence totale de la mère envers l''enfant"},{"id":"d","label":"Un rapport d''admiration de l''enfant pour sa mère"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le texte met en scène un rapport conflictuel entre l''enfant et sa mère. La mère interdit (« c''est dégoûtant », « malpropre »), punit (gifle, moucher violemment, traîner par le bras) et insulte (« Sale enfant ! »). L''enfant résiste par la désobéissance : « Mais je n''obéis pas », et la dernière phrase (« Mais il revient le lendemain, et moi aussi ») montre sa persévérance. Ce n''est ni de l''indifférence (la mère est très présente) ni de la complicité (les interactions sont violentes).',
  'Interpréter la violence maternelle comme de l''indifférence. Au contraire, la mère est très attentive (elle « arrive toujours au moment où… »). C''est la forme de l''attention qui est problématique.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q7 — comprehension_texte — Difficile — vrai_faux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? La dernière phrase du texte, « Le chien a filé. Mais il revient le lendemain, et moi aussi », exprime la soumission de l''enfant aux interdits de sa mère.',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. La dernière phrase exprime exactement le contraire : la résistance silencieuse de l''enfant. Malgré les gifles et les punitions, l''enfant revient jouer avec le chien « le lendemain ». Le parallélisme « il revient… et moi aussi » unit l''enfant et l''animal dans une même obstination. Le « mais » adversatif marque l''opposition : la mère a chassé le chien et puni l''enfant, MAIS ils reviennent tous les deux. C''est une affirmation de liberté, pas de soumission.',
  'Lire uniquement la surface (l''enfant a été puni, donc il se soumet). L''implicite du texte montre le contraire : la répétition de la scène prouve que l''enfant ne se soumet pas.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q8 — analyse_langue — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Difficile',
  'qcm',
  'Dans « Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles », quel type de discours rapporté est utilisé ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"Discours direct"},{"id":"b","label":"Discours indirect"},{"id":"c","label":"Discours indirect libre"},{"id":"d","label":"Discours narrativisé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est du discours indirect. Les paroles de la mère sont rapportées par le narrateur via le verbe introducteur « dit » suivi de la conjonction « que ». Le discours indirect intègre les paroles dans la syntaxe du récit : « Ma mère dit QUE… ». Il se distingue du discours direct (qui citerait les paroles entre guillemets) et du discours indirect libre (sans verbe introducteur ni conjonction). Plus loin, « Sale enfant ! crie-t-elle » est du discours direct.',
  'Confondre discours indirect et discours indirect libre. Le discours indirect est introduit par un verbe de parole + « que » ; le discours indirect libre supprime ces marques.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q9 — comprehension_texte — Difficile — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Difficile',
  'reponse_courte',
  'Quel est le point de vue narratif adopté par Jules Vallès dans ce texte ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  NULL,
  '{"mode":"text","acceptableAnswers":["focalisation interne","point de vue interne","interne"]}'::jsonb,
  'Vallès adopte une focalisation interne (point de vue interne) : le lecteur perçoit le monde à travers les yeux et les sensations de l''enfant-narrateur. Les descriptions sont subjectives et sensorielles (« qui sent le chenil », « un peu de rose à la babine », « l''air si bon »). Cet effet de proximité avec l''enfant crée une empathie du lecteur. Le narrateur adulte s''efface derrière le regard de l''enfant qu''il était. Ce choix narratif est un procédé littéraire analysable en cycle 3 et au CRPE.',
  'Parler de narrateur omniscient. Le narrateur ne livre que les perceptions de l''enfant, pas les pensées de la mère.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q10 — analyse_langue — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'qcm',
  'Dans « je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées », quel est l''effet produit par l''accumulation de propositions juxtaposées ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"Ralentir le rythme pour créer une atmosphère contemplative"},{"id":"b","label":"Créer un effet d''énumération rapide traduisant l''énergie et la vivacité de l''enfant"},{"id":"c","label":"Marquer une hésitation du narrateur"},{"id":"d","label":"Exprimer l''ennui et la monotonie de la vie de l''enfant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La juxtaposition de trois propositions courtes au présent (« je cours… je m''arrête… j''écrase… ») crée un rythme rapide, haletant, qui traduit l''énergie de l''enfant et la multiplicité de ses activités. Ce procédé de parataxe est caractéristique du style de Vallès, qui mime le regard vif et dispersé de l''enfant. L''analyse du rythme de la phrase et de ses effets est une compétence littéraire attendue au CRPE.',
  'Interpréter la juxtaposition comme signe d''ennui ou de monotonie. Au contraire, la variété des actions (courir, s''arrêter, écraser) et le passage rapide de l''une à l''autre expriment la vitalité.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q11 — didactique_francais — Intermediaire — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000b',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'qcm',
  'Ce texte de Jules Vallès peut être utilisé en CM2 pour travailler prioritairement quel domaine du programme de français ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"Uniquement la copie et la dictée"},{"id":"b","label":"La compréhension et l''interprétation de textes littéraires, notamment la relation entre personnages"},{"id":"c","label":"Exclusivement l''étude de la langue (grammaire)"},{"id":"d","label":"Le code phonologique et le déchiffrage"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ce texte est particulièrement adapté pour travailler la compréhension et l''interprétation de textes littéraires en CM2. Les programmes d''Éduscol prévoient que les élèves de cycle 3 sachent « comprendre un texte littéraire et se l''approprier » : identifier les personnages, leurs relations, leurs motivations. Ici, la relation mère-enfant est complexe (conflit, interdit, résistance) et mobilise des compétences d''inférence.',
  'Réduire l''usage d''un texte littéraire à l''étude de la langue ou à la copie. Les programmes insistent sur la dimension interprétative de la lecture littéraire au cycle 3.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q12 — didactique_francais — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000c',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Difficile',
  'qcm',
  'Un enseignant propose un débat interprétatif en CM2 sur ce texte. Quelle question est la plus propice à un débat interprétatif au sens des programmes ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"« De quelle couleur est le chien ? »"},{"id":"b","label":"« Que fait la mère quand elle voit l''enfant avec le chien ? »"},{"id":"c","label":"« La mère de Jacques est-elle une mauvaise mère ? Justifiez votre point de vue. »"},{"id":"d","label":"« Combien d''animaux sont mentionnés dans le texte ? »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le débat interprétatif, recommandé par les programmes d''Éduscol au cycle 3, porte sur des questions ouvertes qui acceptent plusieurs réponses argumentées. « La mère est-elle une mauvaise mère ? » est une question interprétative par excellence : elle n''a pas de réponse unique dans le texte et exige que les élèves argumentent en s''appuyant sur des indices textuels. Les questions a, b et d sont des questions de repérage littéral. Le débat interprétatif développe la pensée critique et la capacité à justifier son point de vue.',
  'Proposer des questions de repérage littéral pour un débat interprétatif. Le débat doit porter sur les zones d''ombre, les ambiguïtés ou les questions éthiques du texte.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q13 — didactique_francais — Intermediaire — vrai_faux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000d',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Au cycle 3, les programmes d''Éduscol recommandent d''étudier exclusivement des textes contemporains pour faciliter la compréhension des élèves.',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Les programmes de cycle 3 recommandent explicitement de faire lire aux élèves des textes de la littérature patrimoniale (classiques) ET de la littérature contemporaine. Les listes de référence Éduscol incluent des œuvres du XIXe siècle (comme L''Enfant de Vallès, Les Misérables de Hugo) aux côtés d''œuvres contemporaines. L''objectif est de donner une culture littéraire commune et de confronter les élèves à des registres de langue variés.',
  'Croire que les textes anciens sont trop difficiles pour le cycle 3. L''étayage de l''enseignant permet l''accès à des textes patrimoniaux.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q14 — conjugaison — Difficile — reponse_courte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000e',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Difficile',
  'reponse_courte',
  'Dans « Le chien a filé. Mais il revient le lendemain », identifiez le temps de « a filé » et expliquez le changement de temps par rapport à « revient ».',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  NULL,
  '{"mode":"text","acceptableAnswers":["passé composé","le passé composé","passe compose"]}'::jsonb,
  '« A filé » est au passé composé de l''indicatif. Le passé composé exprime ici une action achevée (le chien est parti, c''est fait), tandis que le présent « revient » ramène au plan du récit en cours. Le passé composé crée un effet de rupture : la scène est terminée (le chien a fui), puis le présent de narration reprend pour la suite. Dans un récit au présent de narration, le passé composé joue le rôle d''antériorité que le plus-que-parfait joue dans un récit au passé simple/imparfait.',
  'Confondre passé composé et passé simple. Dans un récit au présent de narration, c''est le passé composé (et non le passé simple) qui exprime l''antériorité ou l''accompli.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- Q15 — orthographe — Difficile — qcm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000f',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_3',
  'Sujet blanc n°3 — L''Enfant',
  'Difficile',
  'qcm',
  'Dans « "Sale enfant !" crie-t-elle, en me traînant par le bras vers la maison », pourquoi « crie-t-elle » comporte-t-il un « t » entre tirets ?',
  'Ma mère dit que c''est dégoûtant de montrer qu''on aime les bêtes, et malpropre de jouer avec elles. Mais je n''obéis pas, je cours après les papillons, je m''arrête devant les nids, j''écrase les mouches pour les araignées. C''est ma joie de caresser le chien du voisin ! ce grand chien noir qui sent le chenil, qui a des taches fauves au-dessus des yeux, le poil hérissé sur le dos, un peu de rose à la babine, et l''air si bon ! Ma mère arrive toujours au moment où j''ai le nez dans le poil de la bête ; elle me donne une gifle et me mouche violemment. « Sale enfant ! » crie-t-elle, en me traînant par le bras vers la maison. Le chien a filé. Mais il revient le lendemain, et moi aussi. — Jules Vallès, L''Enfant (1879), chapitre I',
  '[{"id":"a","label":"C''est le pronom « te » élidé"},{"id":"b","label":"C''est un « t » euphonique inséré pour éviter le hiatus entre deux voyelles"},{"id":"c","label":"C''est une erreur typographique"},{"id":"d","label":"C''est la marque du passé simple"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le « t » entre tirets dans « crie-t-elle » est un « t » euphonique (ou analogique). Il est inséré pour éviter le hiatus (rencontre de deux voyelles) entre « crie » (terminé par -e) et « elle » (commençant par e-). Lors de l''inversion sujet-verbe à la 3e personne, quand le verbe se termine par une voyelle, on intercale un -t- euphonique : « crie-t-elle », « mange-t-il », « va-t-on ». Ce « t » n''a aucune valeur grammaticale ; il est purement phonétique. Il ne faut pas le confondre avec le « t » final des verbes (« dit-elle » sans tiret supplémentaire).',
  'Confondre le « t » euphonique avec le « t » final du verbe. Dans « dit-elle », le « t » fait partie du verbe ; dans « crie-t-elle », il est ajouté pour des raisons phonétiques. La graphie avec tirets (-t-) signale le « t » euphonique.',
  'valide',
  'CRPE Français — Sujet blanc n°3 — L''Enfant',
  'premium',
  true
) ON CONFLICT (id) DO UPDATE SET
  instruction = EXCLUDED.instruction,
  support_text = EXCLUDED.support_text,
  choices = EXCLUDED.choices,
  expected_answer = EXCLUDED.expected_answer,
  detailed_explanation = EXCLUDED.detailed_explanation,
  common_mistake = EXCLUDED.common_mistake,
  topic_label = EXCLUDED.topic_label,
  level = EXCLUDED.level,
  exercise_type = EXCLUDED.exercise_type,
  subdomain = EXCLUDED.subdomain,
  source = EXCLUDED.source;

-- ============================================================
-- Migration : Sujet blanc CRPE n°2 (15 exercices cross-domaines)
-- UUID prefix : d602
-- ============================================================

-- Q1 — grammaire — Intermediaire — qcm — Propositions subordonnées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Je souhaite que tu viennes avant qu''il ne soit trop tard », quelle est la nature de la proposition subordonnée « que tu viennes » ?',
  NULL,
  '[{"id":"A","label":"Proposition subordonnée relative"},{"id":"B","label":"Proposition subordonnée conjonctive complétive"},{"id":"C","label":"Proposition subordonnée conjonctive circonstancielle"},{"id":"D","label":"Proposition subordonnée interrogative indirecte"}]',
  '{"mode":"single_choice","value":"B"}'::jsonb,
  'La proposition « que tu viennes » est une proposition subordonnée conjonctive complétive introduite par la conjonction de subordination « que ». Elle complète le verbe « souhaite » et occupe la fonction de complément d''objet direct. On la distingue de la relative (qui est introduite par un pronom relatif et complète un nom) et de la circonstancielle (qui apporte une circonstance à la phrase). La terminologie Éduscol 2021 privilégie le terme « conjonctive complétive » pour désigner ce type de subordonnée.',
  'L''erreur fréquente est de confondre la conjonction de subordination « que » avec le pronom relatif « que ». Si « que » remplace un nom antécédent, c''est un pronom relatif ; ici, il introduit un contenu propositionnel, donc c''est une conjonction.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — grammaire — Difficile — reponse_courte — Voix passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Difficile',
  'reponse_courte',
  'Transformez la phrase suivante à la voix passive : « Les élèves de CM2 ont rédigé trois contes merveilleux. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Trois contes merveilleux ont été rédigés par les élèves de CM2.","Trois contes merveilleux ont été rédigés par les élèves de CM2"]}'::jsonb,
  'À la voix passive, le complément d''objet direct de la phrase active (« trois contes merveilleux ») devient le sujet. Le sujet de la phrase active (« les élèves de CM2 ») devient le complément d''agent, introduit par « par ». L''auxiliaire « être » se conjugue au même temps que le verbe actif (ici passé composé : « ont été ») suivi du participe passé « rédigés », qui s''accorde en genre et en nombre avec le nouveau sujet (masculin pluriel).',
  'On oublie souvent d''accorder le participe passé avec le nouveau sujet à la voix passive. Ici, « rédigés » prend un -s car « trois contes merveilleux » est au pluriel.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — grammaire — Facile — vrai_faux — Compléments du verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Elle parle à son frère », le groupe « à son frère » est un complément d''objet indirect (COI) du verbe « parle ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le groupe « à son frère » est bien un complément d''objet indirect du verbe « parler ». Il répond à la question « à qui parle-t-elle ? » et est introduit par la préposition « à ». Selon la terminologie Éduscol 2021, on parle de « complément d''objet indirect » pour un complément essentiel du verbe introduit par une préposition. Ce complément ne peut être ni supprimé ni déplacé sans altérer le sens de la phrase, ce qui confirme son caractère essentiel.',
  'Certains confondent le COI avec un complément circonstanciel. Le test de suppression est déterminant : « Elle parle » reste grammatical mais change de sens, tandis qu''un complément circonstanciel est pleinement facultatif.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — orthographe — Difficile — qcm — Accord du participe passé avec avoir (cas complexes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Difficile',
  'qcm',
  'Quelle est l''orthographe correcte de la phrase suivante ? « Les pommes que j''ai … étaient délicieuses. »',
  NULL,
  '[{"id":"A","label":"mangé"},{"id":"B","label":"mangée"},{"id":"C","label":"mangés"},{"id":"D","label":"mangées"}]',
  '{"mode":"single_choice","value":"D"}'::jsonb,
  'Avec l''auxiliaire « avoir », le participe passé s''accorde en genre et en nombre avec le complément d''objet direct (COD) lorsque celui-ci est placé avant le verbe. Ici, le COD est le pronom relatif « que », qui reprend « les pommes » (féminin pluriel). Le participe passé « mangé » s''accorde donc au féminin pluriel : « mangées ». C''est l''un des cas les plus complexes de l''accord du participe passé, fréquemment interrogé au CRPE.',
  'L''erreur la plus courante est d''écrire « mangé » sans accord, en oubliant que le COD « que » (reprenant « les pommes ») est placé avant l''auxiliaire « avoir ». Il faut toujours chercher le COD et vérifier sa position.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — orthographe — Intermediaire — vrai_faux — Trait d'union
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase interrogative « Peut-être viendra-t-il demain ? », le « t » entre « viendra » et « il » est un « t » euphonique qui s''écrit entre deux traits d''union.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le « t » euphonique est une consonne intercalée entre le verbe et le pronom sujet inversé pour éviter un hiatus (rencontre de deux voyelles). Il s''écrit obligatoirement entre deux traits d''union : « viendra-t-il ». Ce « t » n''a aucune valeur grammaticale ; il est purement phonétique. On le retrouve dans des constructions comme « a-t-il », « mange-t-on », « va-t-elle ». Il ne faut pas le confondre avec le « t » final d''un verbe (« prend-il » n''a pas de « t » euphonique car « prend » finit déjà par un « d »).',
  'On confond parfois le « t » euphonique avec la marque de conjugaison. Le « t » euphonique n''apparaît que lorsque le verbe se termine par une voyelle (-a, -e) et que le pronom commence par une voyelle (il, elle, on).',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — conjugaison — Intermediaire — qcm — Subjonctif présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Intermediaire',
  'qcm',
  'Complétez : « Il faut que nous … nos devoirs avant ce soir. » Quelle forme verbale est correcte ?',
  NULL,
  '[{"id":"A","label":"finissons"},{"id":"B","label":"finissions"},{"id":"C","label":"finirons"},{"id":"D","label":"finissions (imparfait)"}]',
  '{"mode":"single_choice","value":"B"}'::jsonb,
  'Après la locution impersonnelle « il faut que », on emploie obligatoirement le subjonctif. Le subjonctif présent du verbe « finir » à la première personne du pluriel est « finissions ». Les terminaisons du subjonctif présent pour les verbes du 2e groupe sont : -isse, -isses, -isse, -issions, -issiez, -issent. Attention, la forme « finissions » est identique à celle de l''imparfait de l''indicatif, mais ici le contexte syntaxique (après « il faut que ») impose le subjonctif.',
  'La confusion entre indicatif présent (« finissons ») et subjonctif présent (« finissions ») est très fréquente. Le piège est que les formes de P1 et P2 du subjonctif présent sont homophones de l''imparfait.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — conjugaison — Difficile — reponse_courte — Valeurs du passé simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Difficile',
  'reponse_courte',
  'Dans le récit « Le loup surgit, attrapa l''agneau et disparut dans la forêt », quelle est la valeur aspectuelle du passé simple ? (Répondez en un ou deux mots.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["action de premier plan","premier plan","action bornée","aspect borné","actions de premier plan","action ponctuelle"]}'::jsonb,
  'Le passé simple exprime ici des actions de premier plan (ou « actions bornées ») dans le récit. Ces actions sont présentées comme des événements ponctuels, successifs et délimités dans le temps, qui font avancer l''intrigue. C''est la valeur aspectuelle fondamentale du passé simple dans la narration, par opposition à l''imparfait qui exprime l''arrière-plan (descriptions, habitudes, états). Selon la terminologie Éduscol, on parle de « premier plan » et « arrière-plan » pour distinguer les valeurs du passé simple et de l''imparfait dans le récit.',
  'On confond souvent la valeur du passé simple avec une simple indication de passé. Sa spécificité dans le récit est d''exprimer le premier plan narratif, c''est-à-dire les événements qui font progresser l''histoire.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — lexique — Facile — qcm — Figures d'opposition (antithèse, oxymore)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Facile',
  'qcm',
  'Quelle figure de style est utilisée dans l''expression « Cette obscure clarté qui tombe des étoiles » (Corneille) ?',
  NULL,
  '[{"id":"A","label":"Antithèse"},{"id":"B","label":"Oxymore"},{"id":"C","label":"Métaphore"},{"id":"D","label":"Hyperbole"}]',
  '{"mode":"single_choice","value":"B"}'::jsonb,
  'L''oxymore est une figure de style qui associe deux termes de sens contradictoires à l''intérieur d''un même groupe syntaxique. Ici, « obscure » (absence de lumière) et « clarté » (présence de lumière) sont juxtaposés dans le même groupe nominal. L''oxymore se distingue de l''antithèse, qui oppose deux termes dans des groupes syntaxiques différents au sein d''une même phrase. Cette expression célèbre de Corneille (Le Cid, IV, 3) est l''un des exemples canoniques d''oxymore en littérature française.',
  'La confusion entre oxymore et antithèse est très fréquente. Le critère distinctif est syntaxique : l''oxymore unit les contraires dans le même syntagme, l''antithèse les oppose dans des segments distincts.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — lexique — Intermediaire — vrai_faux — Néologie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le mot « courriel » est un néologisme formé par mot-valise (à partir de « courrier » et « électronique »).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le mot « courriel » est effectivement un néologisme formé par le procédé du mot-valise, qui consiste à fusionner deux mots en un seul en tronquant une partie de chacun. Ici, « courr(ier) » + « (élect)ronique » = « courriel ». Ce terme a été officiellement recommandé par la Commission générale de terminologie en 2003 pour remplacer l''anglicisme « e-mail ». La néologie par mot-valise est l''un des procédés de formation des mots à enseigner au cycle 3, aux côtés de la dérivation (préfixation, suffixation) et de la composition.',
  'On pourrait croire que « courriel » est un mot composé, mais il ne juxtapose pas deux mots entiers. C''est bien un mot-valise, car il résulte de la troncation et de la fusion de deux mots.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — comprehension_texte — Intermediaire — qcm — Texte argumentatif : thèse/arguments/exemples
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Intermediaire',
  'qcm',
  'Dans un texte argumentatif, comment appelle-t-on l''idée principale que l''auteur cherche à défendre ou à démontrer ?',
  NULL,
  '[{"id":"A","label":"L''argument"},{"id":"B","label":"La thèse"},{"id":"C","label":"L''exemple"},{"id":"D","label":"La conclusion"}]',
  '{"mode":"single_choice","value":"B"}'::jsonb,
  'La thèse est l''idée principale, l''opinion ou la position que l''auteur défend dans un texte argumentatif. Elle constitue le noyau du raisonnement autour duquel s''organisent les arguments (les raisons qui soutiennent la thèse) et les exemples (les faits concrets qui illustrent les arguments). La structure canonique du texte argumentatif est : thèse → arguments → exemples. Au cycle 3, les programmes prévoient l''initiation à la lecture de textes argumentatifs simples et l''identification de la thèse défendue.',
  'On confond souvent la thèse avec l''argument. La thèse est l''idée défendue (« ce que je pense »), tandis que l''argument est la justification (« pourquoi je le pense »).',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q11 — comprehension_texte — Facile — vrai_faux — Identification du type de texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000b',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Un texte qui utilise des connecteurs logiques comme « en effet », « par conséquent », « en revanche » relève plutôt du type argumentatif que du type narratif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les connecteurs logiques (« en effet », « par conséquent », « en revanche », « cependant », « de plus ») sont des marqueurs caractéristiques du texte argumentatif. Ils organisent le raisonnement en reliant les arguments entre eux par des relations de cause, conséquence, opposition ou addition. Le texte narratif, quant à lui, privilégie les connecteurs temporels (« puis », « ensuite », « soudain ») et les indicateurs spatio-temporels. Cette distinction entre types de textes et leurs marqueurs linguistiques fait partie des compétences de lecture attendues au cycle 3.',
  'Attention, la présence ponctuelle d''un connecteur logique dans un récit ne suffit pas à en faire un texte argumentatif. C''est la dominance de ces connecteurs et la visée du texte (convaincre, persuader) qui déterminent le type.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q12 — analyse_langue — Difficile — reponse_courte — Discours rapporté
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000c',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Difficile',
  'reponse_courte',
  'Transposez au discours indirect la phrase suivante : « L''enseignante a déclaré : "Je corrigerai vos copies demain." » (Commencez par « L''enseignante a déclaré que... »)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["L''enseignante a déclaré qu''elle corrigerait leurs copies le lendemain.","L''enseignante a déclaré qu''elle corrigerait leurs copies le lendemain"]}'::jsonb,
  'Le passage du discours direct au discours indirect implique plusieurs transformations simultanées. Le pronom « je » devient « elle » (changement de personne énonciative). Le futur simple « corrigerai » devient le conditionnel présent « corrigerait » (concordance des temps avec un verbe introducteur au passé composé). Le déterminant « vos » devient « leurs » (changement de personne). L''indicateur temporel « demain » devient « le lendemain » (transposition des repères spatio-temporels). Ces quatre types de transformations sont au programme du cycle 3.',
  'L''erreur la plus courante est d''oublier la concordance des temps : le futur simple du discours direct se transforme en conditionnel présent lorsque le verbe introducteur est au passé.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q13 — analyse_langue — Facile — qcm — Valeurs des temps dans le récit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000d',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Facile',
  'qcm',
  'Dans le récit « Le soleil brillait, les oiseaux chantaient. Soudain, un cri retentit. », quel est le rôle de l''imparfait (« brillait », « chantaient ») par rapport au passé simple (« retentit ») ?',
  NULL,
  '[{"id":"A","label":"L''imparfait exprime le premier plan et le passé simple l''arrière-plan"},{"id":"B","label":"L''imparfait exprime l''arrière-plan (description) et le passé simple le premier plan (événement)"},{"id":"C","label":"L''imparfait et le passé simple expriment tous deux des actions successives"},{"id":"D","label":"L''imparfait exprime une action antérieure au passé simple"}]',
  '{"mode":"single_choice","value":"B"}'::jsonb,
  'Dans le système du récit au passé, l''imparfait et le passé simple jouent des rôles complémentaires. L''imparfait exprime l''arrière-plan narratif : descriptions, états, actions duratives ou habituelles qui constituent le cadre du récit (ici, « le soleil brillait, les oiseaux chantaient »). Le passé simple exprime le premier plan : les événements ponctuels, bornés, qui font avancer l''intrigue (ici, « un cri retentit »). Cette distinction premier plan / arrière-plan est un concept clé de l''analyse des textes narratifs au cycle 3.',
  'On croit parfois que l''imparfait exprime simplement une action passée plus longue. En réalité, sa valeur dans le récit est aspectuelle : il présente l''action comme un processus non borné, formant le décor de la narration.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q14 — didactique_francais — Difficile — reponse_courte — Évaluation formative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000e',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Difficile',
  'reponse_courte',
  'En didactique, comment nomme-t-on l''évaluation qui intervient en cours d''apprentissage pour identifier les difficultés des élèves et ajuster l''enseignement, par opposition à l''évaluation sommative ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["évaluation formative","formative","l''évaluation formative","Évaluation formative","Formative"]}'::jsonb,
  'L''évaluation formative est une évaluation qui intervient pendant le processus d''apprentissage, et non à son terme. Son objectif n''est pas de noter ou de classer les élèves, mais de repérer leurs difficultés, leurs erreurs et leurs réussites pour adapter l''enseignement en conséquence. Elle s''oppose à l''évaluation sommative (qui mesure les acquis en fin de séquence) et à l''évaluation diagnostique (qui identifie les prérequis en début de séquence). Les programmes Éduscol insistent sur le rôle central de l''évaluation formative dans la différenciation pédagogique.',
  'On confond souvent évaluation formative et évaluation diagnostique. La diagnostique se situe en amont de l''apprentissage pour identifier les prérequis ; la formative se situe pendant l''apprentissage pour réguler l''enseignement.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q15 — didactique_francais — Intermediaire — vrai_faux — Production d'écrits au cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6020000-0000-0000-0000-00000000000f',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_2',
  'Sujet blanc CRPE n°2',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Selon les programmes du cycle 3, la démarche d''écriture recommandée pour la production d''écrits comprend les étapes suivantes : planification, mise en texte, révision et réécriture.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les programmes du cycle 3 préconisent un enseignement explicite du processus d''écriture décomposé en plusieurs étapes : la planification (organisation des idées, élaboration d''un plan), la mise en texte (rédaction proprement dite), la révision (relecture critique du texte produit) et la réécriture (amélioration du texte). Ce modèle s''inspire des travaux de Hayes et Flower sur les processus rédactionnels. L''objectif est que les élèves intériorisent progressivement ces étapes pour devenir des scripteurs autonomes. Le brouillon est valorisé comme outil de travail et non comme signe d''échec.',
  'On réduit souvent la production d''écrits à la seule mise en texte. Or, les programmes insistent sur l''importance de la planification en amont et de la révision/réécriture en aval, qui doivent faire l''objet d''un enseignement explicite.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

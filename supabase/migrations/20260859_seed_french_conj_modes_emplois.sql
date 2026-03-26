-- Migration: 10 exercices — Emplois des modes verbaux
-- Série : conj_modes_emplois (Français, conjugaison)
-- Indicatif, conditionnel, subjonctif, impératif, infinitif — valeurs et emplois
-- UUID prefix: d1420000

-- Q1 — QCM — Subjonctif après conjonction de concession
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'qcm',
  'Parmi ces conjonctions, laquelle impose le subjonctif dans la proposition subordonnée qu''elle introduit ?',
  NULL,
  '[{"id":"a","label":"bien que"},{"id":"b","label":"parce que"},{"id":"c","label":"quand"},{"id":"d","label":"si"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La conjonction « bien que » est une conjonction de concession : elle exprime que le fait de la principale se réalise malgré un obstacle énoncé dans la subordonnée. Elle appartient aux locutions conjonctives qui imposent le subjonctif, au même titre que « quoique », « encore que » ou « sans que ». À l''inverse, « parce que » (cause) et « si » (condition) sont suivies de l''indicatif, car ces modes expriment des faits présentés comme réels ou certains. « Quand » introduit une subordonnée de temps au futur de l''indicatif ou au présent. La liste des subordonnants déclencheurs du subjonctif est à maîtriser pour le CRPE : finalité (pour que, afin que), concession (bien que, quoique), crainte (de peur que), doute (à moins que).',
  'Confondre « parce que » et « bien que » : les deux expriment un lien logique entre deux faits, mais le premier est une cause (indicatif) et le second une concession (subjonctif). Le test est de se demander si le fait subordonné est présenté comme réel et admis : si oui, c''est l''indicatif ; si la réalité est concédée mais non causale, c''est le subjonctif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Conditionnel présent et hypothèse en si + imparfait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans la structure hypothétique « Si + imparfait, conditionnel présent », le conditionnel exprime une hypothèse dont la réalisation est possible mais non certaine dans le présent ou le futur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La structure « Si + imparfait de l''indicatif → conditionnel présent » exprime une hypothèse irréelle dans le présent ou peu probable dans le futur (ex. : « Si j''avais le temps, je lirais davantage »). Le conditionnel a ici une valeur modale d''éventualité : le procès est présenté comme subordonné à une condition non réalisée. Cette valeur s''oppose à la structure « si + présent → futur de l''indicatif » (hypothèse présentée comme réalisable). Le conditionnel présent dans ce système est dit « conditionnel hypothétique » ou « irréel du présent » dans la terminologie grammaticale scolaire (Éduscol, Grammaire du français, 2020).',
  'La confusion fréquente consiste à placer un conditionnel dans la proposition introduite par « si » : *« Si j''aurais le temps » est agrammatical en français standard. La règle est absolue : jamais de conditionnel après « si » conditionnel.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Identifier le mode impératif dans une phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'qcm',
  'À quel mode est conjugué le verbe en gras dans la phrase : « Viens me voir demain ! » ?',
  NULL,
  '[{"id":"a","label":"Indicatif présent"},{"id":"b","label":"Subjonctif présent"},{"id":"c","label":"Impératif présent"},{"id":"d","label":"Conditionnel présent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « viens » est à l''impératif présent, 2e personne du singulier. L''impératif est le mode de l''injonction : il exprime un ordre, une demande ou un conseil adressé directement à un interlocuteur. Sa marque morphologique la plus distinctive est l''absence de pronom sujet exprimé. « Viens » à l''indicatif présent s''écrit identiquement, mais dans ce contexte (phrase exclamative avec adverbe temporel « demain », sans pronom sujet), le mode impératif est indiscutable. L''impératif présent se conjugue à trois personnes seulement : 2e sg (viens), 1re pl (venons), 2e pl (venez). On ne le confondra pas avec le subjonctif présent, qui requiert un pronom sujet (« Qu''il vienne »).',
  'Identifier « viens » comme indicatif présent à cause de la forme identique (« tu viens »). La différence réside dans l''absence du pronom sujet et le contexte injonctif. En analyse grammaticale, il faut toujours vérifier si la phrase est injonctive et si le pronom est absent avant de conclure.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Valeur du conditionnel journalistique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'reponse_courte',
  'Quelle est la valeur du conditionnel dans la phrase : « D''après les témoins, il aurait agi seul. » ? Nommez cette valeur en un ou deux mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["modalisation","information non vérifiée","style journalistique","conditionnel journalistique","conditionnel de modalisation","valeur de modalisation","non vérifiée","journalistique"]}'::jsonb,
  'Dans cette phrase, le conditionnel passé (« aurait agi ») n''exprime ni une hypothèse conditionnelle, ni une politesse. Il exprime une valeur de modalisation : le locuteur (ou l''auteur) signale qu''il rapporte une information dont il ne garantit pas la véracité. Cette valeur, appelée conditionnel journalistique ou conditionnel de citation, est caractéristique du discours indirect libre et du style journalistique. Elle permet de prendre une distance énonciative par rapport aux propos tenus. La formule introductive « d''après les témoins » confirme que l''information est rapportée, non affirmée. Éduscol et la Grammaire du français (2020) classent cette valeur parmi les emplois modaux du conditionnel.',
  'Analyser ce conditionnel comme un simple conditionnel hypothétique (irréel du présent ou du passé). L''absence de proposition en « si » et la présence du marqueur « d''après » sont des indices décisifs : il s''agit d''une information rapportée non vérifiée, pas d''une hypothèse.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — "après que" et l'indicatif (règle normative)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'qcm',
  'Parmi ces quatre subordonnants, lequel impose l''indicatif (et non le subjonctif) dans la proposition subordonnée, selon la grammaire normative ?',
  NULL,
  '[{"id":"a","label":"avant que"},{"id":"b","label":"pour que"},{"id":"c","label":"après que"},{"id":"d","label":"jusqu''à ce que"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Selon la grammaire normative du français, « après que » est suivi de l''indicatif, car la subordonnée qu''il introduit exprime un fait accompli, réel et antérieur à la principale (ex. : « Après qu''il est parti, nous avons rangé »). À l''inverse, « avant que », « pour que » et « jusqu''à ce que » expriment respectivement l''antériorité hypothétique, le but et le terme d''une action non encore réalisée — tous imposent le subjonctif. L''usage courant tend à employer le subjonctif après « après que » par analogie avec « avant que », mais les programmes Éduscol et les guides de rédaction officiels maintiennent la règle normative : après « après que », l''indicatif est correct. Cette question est classique au CRPE car elle distingue la connaissance de la norme grammaticale de l''usage spontané.',
  'Mettre le subjonctif après « après que » par analogie avec « avant que ». Cette hypercorrection est très répandue, y compris chez les locuteurs cultivés, mais elle contrevient à la règle normative. La mémoire que « avant que = subjonctif » entraîne souvent un transfert erroné à « après que ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — L'infinitif est un mode impersonnel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : l''infinitif est un mode impersonnel parce qu''il ne se conjugue pas en personne grammaticale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La grammaire française distingue les modes personnels (indicatif, conditionnel, subjonctif, impératif), qui se conjuguent selon la personne grammaticale (je, tu, il…), des modes impersonnels (infinitif, participe, gérondif), qui ne comportent pas de marques de personne. L''infinitif (chanter, finir, prendre) est la forme nominale du verbe : il peut fonctionner comme sujet, complément ou attribut, sans être ancré dans une personne. Cette distinction modes personnels / modes impersonnels est fondamentale dans les programmes de cycle 3 et dans les épreuves d''analyse grammaticale du CRPE.',
  'Croire que l''infinitif est un mode personnel parce qu''il peut avoir un sujet implicite (« Je veux partir » — le sujet de « partir » est « je »). L''impersonnalité du mode ne signifie pas l''absence de sujet sémantique, mais l''absence de désinences personnelles dans la forme verbale elle-même.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Mode de l'ordre direct à la 2e personne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'reponse_courte',
  'Quel mode verbal est spécialement dédié à l''expression d''un ordre ou d''une défense adressé directement à la 2e personne (ou à la 1re personne du pluriel) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["l''impératif","impératif","le mode impératif","mode impératif","l''impératif présent","impératif présent"]}'::jsonb,
  'L''impératif est le mode de l''injonction directe. Il permet d''adresser un ordre (« Lisez ce texte »), une interdiction (« Ne touchez pas »), un conseil (« Repose-toi ») ou une invitation (« Entrez ») sans passer par une tournure indirecte. Sa morphologie est singulière : il ne se conjugue qu''à trois personnes (2e sg, 1re pl, 2e pl) et ne comporte pas de pronom sujet. On ne confondra pas l''impératif avec l''infinitif à valeur injonctive (panneaux, recettes : « Tourner à gauche ») ni avec le subjonctif injonctif à la 3e personne (« Qu''il parte ! »). Dans les programmes Éduscol de cycle 3, l''impératif est étudié comme mode de l''énonciation dans le cadre de la modalité de phrase.',
  'Proposer « l''indicatif » ou « le subjonctif » comme mode de l''ordre. L''indicatif est le mode du réel/constaté, non de l''injonction. Le subjonctif peut exprimer un ordre indirect à la 3e personne (« Qu''il parte »), mais c''est l''impératif qui est le mode canonique de l''injonction directe.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Conditionnel de politesse/atténuation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'qcm',
  'Dans la phrase « Je voudrais un café », quelle est la valeur du conditionnel ?',
  NULL,
  '[{"id":"a","label":"Une hypothèse : le café n''existe peut-être pas"},{"id":"b","label":"Une politesse ou atténuation : le locuteur adoucit sa demande"},{"id":"c","label":"Une information non vérifiée : le locuteur rapporte un fait incertain"},{"id":"d","label":"Un futur dans le passé : l''action de vouloir est postérieure à un moment passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le conditionnel présent dans « Je voudrais un café » exprime la politesse ou l''atténuation : le locuteur formule sa demande de manière indirecte pour l''adoucir, en évitant la brutalité du présent de l''indicatif (« Je veux un café »). Cette valeur modale du conditionnel est très courante dans les échanges quotidiens et les formules de demande. Elle appartient aux emplois modaux du conditionnel, au même titre que le conditionnel de modalisation journalistique ou le conditionnel hypothétique. Il n''y a ici aucune proposition conditionnelle en « si », aucune information rapportée ni aucune antériorité temporelle : c''est bien la valeur pragmatique d''atténuation qui s''applique.',
  'Analyser ce conditionnel comme hypothétique, en supposant une proposition en « si » sous-entendue (« si c''était possible »). Bien qu''une telle paraphrase soit envisageable, la valeur première retenue par la grammaire scolaire et les programmes est la politesse/atténuation, car l''énoncé fonctionne sans aucune condition explicite ou implicite nécessaire.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Le subjonctif et ses valeurs (doute, souhait, crainte, obligation)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : le subjonctif peut exprimer non seulement le doute, le souhait ou la crainte, mais aussi l''obligation — par exemple dans « Il faut que tu viennes ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le subjonctif est le mode de la subjectivité et de la virtualité : il s''emploie pour exprimer tout ce qui n''est pas présenté comme une réalité affirmée. Ses valeurs principales sont : le doute ou la négation d''une certitude (« Je ne crois pas qu''il vienne »), le souhait (« Je souhaite qu''il réussisse »), la crainte (« J''ai peur qu''il soit trop tard »), le but (« Pour qu''il comprenne »), la concession (« Bien qu''il soit fatigué ») — et aussi l''obligation (« Il faut qu''il parte »). La construction impersonnelle « il faut que + subjonctif » est l''expression de la nécessité ou de l''obligation. Le subjonctif marque ici que l''action n''est pas encore réalisée, mais requise.',
  'Limiter le subjonctif au seul doute ou souhait et oublier ses autres valeurs (obligation, concession, but, crainte). Les candidats au CRPE doivent maîtriser la liste complète des contextes déclencheurs du subjonctif, qui va bien au-delà du simple « je pense que » négatif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Concordance des temps : discours indirect au passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd1420000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_modes_emplois',
  'Emplois des modes verbaux',
  'Standard',
  'reponse_courte',
  'Transformez la phrase suivante en mettant le verbe principal au passé (concordance des temps) : « Je pense qu''il vient. » → « Je pensais qu''il... » Comment se termine cette phrase ? Écrivez la forme verbale manquante.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["venait","venait.","il venait","venait (imparfait)"]}'::jsonb,
  'Lorsqu''on transpose le verbe introducteur du présent (« Je pense ») vers un temps du passé (« Je pensais »), la subordonnée conjonctive subit la règle de concordance des temps : un présent de l''indicatif dans la subordonnée se transforme en imparfait de l''indicatif. On obtient donc : « Je pensais qu''il venait. » Il est essentiel de souligner qu''il s''agit ici de l''indicatif imparfait (et non du subjonctif imparfait, qui serait littéraire et archaïque : « qu''il vînt »). La concordance des temps en discours indirect est une règle de l''indicatif : présent → imparfait, futur → conditionnel présent, passé composé → plus-que-parfait. Cette transformation relève de la grammaire du discours rapporté, thème central des programmes de cycle 3 et des épreuves de grammaire au CRPE.',
  'Mettre le subjonctif (« qu''il vienne ») par analogie avec d''autres constructions après « penser ». Au présent, « Je pense que + indicatif présent » est correct. Après le verbe pensatif au passé, c''est l''indicatif imparfait qui s''impose dans la concordance des temps standard, non le subjonctif. Le subjonctif n''apparaît qu''après « penser que » négatif ou interrogatif (« Je ne pensais pas qu''il vînt / vienne »).',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

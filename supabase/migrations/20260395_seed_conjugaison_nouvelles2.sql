-- ============================================================
-- Migration : 2 séries Conjugaison (20 exercices)
-- Série 1 — UUID prefix : e3010000 — conj_imperatif_regles (free)
-- Série 2 — UUID prefix : e3020000 — conj_participe_gerondif (premium)
-- ============================================================

-- ============================================================
-- SÉRIE 1 : L'impératif présent : formation et pièges orthographiques
-- topic_key  : conj_imperatif_regles
-- topic_label: L'impératif présent
-- access_tier: free
-- Mix : 5 qcm, 3 vrai_faux, 2 reponse_courte
-- Niveaux : 3 Facile, 4 Intermédiaire, 3 Difficile
-- ============================================================

-- Q1 — Facile — qcm — Conjugaison du 1er groupe à l'impératif (2e pers. sg)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Facile',
  'qcm',
  'Quelle est la forme correcte de l''impératif présent, 2e personne du singulier, du verbe « chanter » ?',
  NULL,
  '[{"id":"a","label":"Chantes"},{"id":"b","label":"Chante"},{"id":"c","label":"Chantes-y"},{"id":"d","label":"Chant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'À l''impératif présent, les verbes du 1er groupe ne prennent pas de -s à la 2e personne du singulier : on écrit « chante » et non « chantes ». Cette règle s''applique également au verbe « aller » (va) et aux verbes du 3e groupe en -ir qui se conjuguent comme « ouvrir » (ouvre). Le programme Éduscol de cycle 3 insiste sur la maîtrise de ces désinences spécifiques à l''impératif.',
  'L''erreur la plus fréquente est d''ajouter un -s par analogie avec le présent de l''indicatif (« tu chantes »), alors que l''impératif 2e personne du singulier des verbes en -er s''écrit sans -s.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Absence du pronom sujet à l'impératif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Facile',
  'vrai_faux',
  'L''impératif est le seul mode personnel qui se conjugue sans pronom sujet exprimé.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''impératif est effectivement le seul mode personnel (par opposition aux modes impersonnels comme l''infinitif ou le participe) qui ne comporte pas de pronom sujet. On dit « Mange ! » et non « Tu mange ! ». Cette caractéristique le distingue de l''indicatif, du subjonctif et du conditionnel. Les programmes Éduscol soulignent l''importance de faire identifier ce trait morphosyntaxique dès le cycle 2.',
  'Certains élèves confondent les modes impersonnels (infinitif, participe, gérondif) — qui n''ont pas de conjugaison en personnes — avec l''impératif qui, lui, possède bien des personnes (2e sg, 1re pl, 2e pl) mais sans pronom sujet.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — qcm — Les trois personnes de l'impératif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Facile',
  'qcm',
  'L''impératif présent ne se conjugue qu''à trois personnes. Lesquelles ?',
  NULL,
  '[{"id":"a","label":"1re, 2e et 3e personnes du singulier"},{"id":"b","label":"2e personne du singulier, 1re et 2e personnes du pluriel"},{"id":"c","label":"1re, 2e et 3e personnes du pluriel"},{"id":"d","label":"2e personne du singulier, 3e personne du singulier, 2e personne du pluriel"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''impératif présent ne possède que trois formes : la 2e personne du singulier (mange), la 1re personne du pluriel (mangeons) et la 2e personne du pluriel (mangez). Il n''existe pas de 1re personne du singulier ni de 3e personne à l''impératif. Cette propriété morphologique est un point d''étude central au cycle 3 selon les repères Éduscol.',
  'Les élèves citent parfois la 3e personne du singulier en confondant avec le subjonctif à valeur d''ordre (« qu''il mange ! »), qui n''est pas de l''impératif mais une tournure injonctive au subjonctif.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Exception « va » / « vas-y »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Intermediaire',
  'qcm',
  'Pourquoi écrit-on « va » sans -s dans « Va chercher du pain ! » mais « vas-y » avec un -s dans « Vas-y, dépêche-toi ! » ?',
  NULL,
  '[{"id":"a","label":"C''est une exception arbitraire sans explication"},{"id":"b","label":"Le -s apparaît devant le pronom « y » pour faciliter la liaison (euphonie)"},{"id":"c","label":"« Vas-y » est conjugué au présent de l''indicatif, pas à l''impératif"},{"id":"d","label":"Le -s est facultatif dans les deux cas"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « aller » à l''impératif 2e personne du singulier s''écrit « va » sans -s. Cependant, devant les pronoms « y » et « en », on ajoute un -s euphonique pour permettre la liaison : « vas-y » [vazi], « manges-en » [mɑ̃ʒzɑ̃]. Ce -s de liaison est une règle d''euphonie que les programmes Éduscol rattachent à l''étude de la chaîne orale/écrite au cycle 3.',
  'L''erreur fréquente est d''écrire systématiquement « vas » avec un -s à l''impératif par analogie avec « tu vas » à l''indicatif, ou inversement d''oublier le -s euphonique devant « y » et « en ».',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Impératif des verbes pronominaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Intermediaire',
  'vrai_faux',
  'À l''impératif affirmatif, le pronom réfléchi se place après le verbe : « Lève-toi ! »',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'À l''impératif affirmatif, le pronom réfléchi (ou complément) se place après le verbe et est relié par un trait d''union : « Lève-toi », « Dépêchons-nous », « Asseyez-vous ». En revanche, à l''impératif négatif, le pronom reprend sa place devant le verbe : « Ne te lève pas ». Cette alternance de position est un point de syntaxe important au CRPE.',
  'Les élèves produisent souvent des formes incorrectes comme « Te lève ! » (placement du pronom à la forme affirmative comme en phrase déclarative) ou oublient le trait d''union entre le verbe et le pronom postposé.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Placement des pronoms compléments
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte pour dire à quelqu''un de donner le livre ?',
  NULL,
  '[{"id":"a","label":"Donne-le-moi !"},{"id":"b","label":"Donne-moi-le !"},{"id":"c","label":"Le donne-moi !"},{"id":"d","label":"Me le donne !"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'À l''impératif affirmatif avec deux pronoms compléments, l''ordre est : verbe + COD + COI. On écrit donc « Donne-le-moi ! » et non « Donne-moi-le ! ». Les pronoms compléments sont reliés au verbe et entre eux par des traits d''union. Cet ordre pronominal, spécifique à l''impératif affirmatif, est un fait de langue évalué au CRPE dans le cadre de l''analyse syntaxique.',
  'L''erreur courante est d''inverser l''ordre des pronoms en plaçant le COI avant le COD (« Donne-moi-le »), par calque sur les constructions non impératives (« Tu me le donnes »).',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Conjuguer « être » à l'impératif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Intermediaire',
  'reponse_courte',
  'Conjuguez le verbe « être » à l''impératif présent, 2e personne du singulier.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["sois","Sois"]}'::jsonb,
  'Le verbe « être » à l''impératif présent donne : sois (2e pers. sg.), soyons (1re pers. pl.), soyez (2e pers. pl.). Ces formes sont irrégulières et proviennent du radical du subjonctif présent. Les programmes Éduscol classent « être » et « avoir » parmi les verbes dont les formes irrégulières doivent être mémorisées dès le cycle 2.',
  'Les élèves écrivent parfois « es » (forme de l''indicatif présent) ou « soit » (forme du subjonctif) au lieu de « sois » à l''impératif.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — qcm — Impératif passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Difficile',
  'qcm',
  'Dans la phrase « Aie terminé tes devoirs avant mon retour ! », à quel temps et mode est conjugué le verbe « terminer » ?',
  NULL,
  '[{"id":"a","label":"Subjonctif passé"},{"id":"b","label":"Impératif passé"},{"id":"c","label":"Indicatif passé composé"},{"id":"d","label":"Impératif présent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''impératif passé se forme avec l''auxiliaire « avoir » ou « être » conjugué à l''impératif présent, suivi du participe passé : « aie terminé », « sois parti », « ayons fini ». Il exprime un ordre dont l''accomplissement est envisagé comme antérieur à un repère futur. L''impératif passé est un temps composé rare mais évalué au CRPE pour vérifier la maîtrise du système verbal complet.',
  'L''erreur fréquente est de confondre l''impératif passé avec le subjonctif passé (« que tu aies terminé »), car les formes de l''auxiliaire sont proches. La distinction repose sur l''absence de « que » et de pronom sujet à l''impératif.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Le -s euphonique devant « en »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Difficile',
  'vrai_faux',
  'La forme « Manges-en un peu ! » est correctement orthographiée.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Bien que les verbes du 1er groupe ne prennent normalement pas de -s à la 2e personne du singulier de l''impératif (« mange »), on ajoute un -s euphonique devant les pronoms « en » et « y » pour assurer la liaison : « Manges-en », « Retournes-y ». Cette règle d''euphonie est systématique et constitue un piège orthographique classique évalué au CRPE.',
  'L''erreur est double : soit on écrit « Mange-en » sans le -s euphonique (liaison impossible à l''oral), soit on généralise le -s et on écrit « Manges ton repas » avec un -s superflu quand il n''y a pas de pronom « en » ou « y » qui suit.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Valeurs de l'impératif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3010000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_imperatif_regles',
  'L''impératif présent',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Prenez un parapluie, il va pleuvoir », quelle est la valeur de l''impératif : ordre, conseil ou souhait ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["conseil","Conseil","un conseil","le conseil"]}'::jsonb,
  'L''impératif peut exprimer plusieurs valeurs pragmatiques : l''ordre (« Tais-toi ! »), le conseil (« Prenez un parapluie »), le souhait (« Passez de bonnes vacances »), la prière (« Pardonnez-nous »), ou encore l''hypothèse (« Ôtez ce mur, tout s''effondre »). Ici, le contexte (« il va pleuvoir ») montre qu''il s''agit d''un conseil bienveillant. L''identification des valeurs modales de l''impératif est un attendu du CRPE.',
  'Les élèves réduisent souvent l''impératif à sa seule valeur d''ordre, ignorant ses autres emplois pragmatiques (conseil, souhait, prière, hypothèse) pourtant essentiels en analyse de discours.',
  'valide',
  'CRPE Français — Conjugaison',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : Participe présent, adjectif verbal et gérondif
-- topic_key  : conj_participe_gerondif
-- topic_label: Participe présent, adjectif verbal et gérondif
-- access_tier: premium
-- Mix : 6 qcm, 2 vrai_faux, 2 reponse_courte
-- Niveaux : 3 Facile, 3 Intermédiaire, 4 Difficile
-- ============================================================

-- Q1 — Facile — qcm — Identifier un participe présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Facile',
  'qcm',
  'Dans la phrase « Les enfants, obéissant à la maîtresse, se sont rangés en silence », quelle est la nature grammaticale de « obéissant » ?',
  NULL,
  '[{"id":"a","label":"Adjectif qualificatif"},{"id":"b","label":"Participe présent (forme verbale)"},{"id":"c","label":"Gérondif"},{"id":"d","label":"Nom commun"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le participe présent est une forme verbale invariable en -ant. Ici, « obéissant » a un complément (« à la maîtresse »), ce qui confirme sa nature verbale : il régit un complément comme le ferait un verbe conjugué. Le participe présent se distingue de l''adjectif verbal par son invariabilité et sa capacité à recevoir des compléments. Les programmes Éduscol du cycle 3 et du CRPE évaluent la capacité à distinguer ces formes homographes.',
  'L''erreur fréquente est de confondre le participe présent (forme verbale invariable) avec l''adjectif verbal (qui s''accorde), car les deux se terminent en -ant.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Invariabilité du participe présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Facile',
  'vrai_faux',
  'Le participe présent est toujours invariable.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le participe présent, en tant que forme verbale, est toujours invariable : on écrit « les filles chantant » et non « les filles chantantes ». C''est l''adjectif verbal, bien qu''homonyme, qui s''accorde en genre et en nombre avec le nom qu''il qualifie (« des voix chantantes »). Cette distinction fondamentale, héritée de la réforme orthographique de 1679, est un classique des épreuves du CRPE.',
  'Les élèves accordent parfois le participe présent comme un adjectif, écrivant « les enfants jouantes » au lieu de « les enfants jouant », par confusion entre les deux catégories.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — qcm — Formation du gérondif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Facile',
  'qcm',
  'Comment se forme le gérondif en français ?',
  NULL,
  '[{"id":"a","label":"Infinitif + -ant"},{"id":"b","label":"en + participe présent"},{"id":"c","label":"Auxiliaire + participe présent"},{"id":"d","label":"Participe présent seul précédé de « de »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le gérondif se forme avec la préposition « en » suivie du participe présent : « en chantant », « en marchant », « en lisant ». Il fonctionne comme un complément circonstanciel et se rapporte toujours au sujet de la phrase. Le gérondif est un mode impersonnel étudié au cycle 3 et fréquemment évalué au CRPE dans les questions d''analyse grammaticale.',
  'L''erreur courante est de confondre le gérondif (« en chantant ») avec le participe présent employé seul (« chantant une chanson, il marchait »), alors que seul le gérondif est introduit par « en ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Orthographe différente : provocant / provoquant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Intermediaire',
  'qcm',
  'Complétez la phrase : « Cette attitude _______ a choqué l''assemblée. » Quelle est l''orthographe correcte de l''adjectif verbal du verbe « provoquer » ?',
  NULL,
  '[{"id":"a","label":"provoquante"},{"id":"b","label":"provocante"},{"id":"c","label":"provoquant"},{"id":"d","label":"provocant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « provoquer » a un participe présent en « provoquant » (invariable, avec -qu-) mais un adjectif verbal en « provocant/provocante » (variable, avec -c-). Cette différence orthographique entre participe présent et adjectif verbal concerne plusieurs verbes : communiquer/communicant, suffoquer/suffocant, vaquer/vacant. C''est un piège orthographique classique du CRPE qui teste la maîtrise de la distinction entre ces deux formes.',
  'L''erreur est d''utiliser l''orthographe du participe présent (« provoquante ») pour l''adjectif verbal, ou inversement d''écrire le participe présent avec un -c- (« provocant le scandale »).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Fatigant vs fatiguant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Intermediaire',
  'qcm',
  'Quelle phrase contient un participe présent correctement orthographié du verbe « fatiguer » ?',
  NULL,
  '[{"id":"a","label":"Ce travail fatigant les ouvriers, ils prirent une pause."},{"id":"b","label":"Ce travail fatiguant les ouvriers, ils prirent une pause."},{"id":"c","label":"Ce travail fatiguants les ouvriers, ils prirent une pause."},{"id":"d","label":"Ce travail fatigué les ouvriers, ils prirent une pause."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le participe présent du verbe « fatiguer » s''écrit « fatiguant » (avec -gu-), car il conserve le radical verbal. L''adjectif verbal s''écrit « fatigant » (sans -u-) : « un voyage fatigant ». Le participe présent a ici un COD (« les ouvriers »), ce qui confirme sa nature verbale. Cette distinction -guant (participe) / -gant (adjectif) s''applique aussi à « naviguer/navigant », « intriguer/intrigant ».',
  'L''erreur la plus courante est d''écrire « fatigant » quand il s''agit du participe présent verbal, par méconnaissance de la différence orthographique avec l''adjectif verbal.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Le gérondif se rapporte au sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Intermediaire',
  'vrai_faux',
  'Le gérondif doit toujours se rapporter au sujet de la proposition principale.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'En français, le gérondif doit obligatoirement avoir le même sujet que le verbe principal : « En traversant la rue, Pierre a vu un accident » (Pierre traverse et Pierre voit). Une phrase comme « En traversant la rue, un accident est arrivé » est fautive car le sujet du gérondif (quelqu''un) diffère du sujet principal (un accident). Cette règle syntaxique est un point d''évaluation récurrent au CRPE, notamment dans les questions d''analyse d''erreurs d''élèves.',
  'L''erreur fréquente est de construire des phrases où le sujet implicite du gérondif ne correspond pas au sujet du verbe principal (anacoluthe), ce qui crée une ambiguïté syntaxique.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — qcm — Négligeant vs négligent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Difficile',
  'qcm',
  'Identifiez la phrase où « négligeant » est un participe présent et non un adjectif verbal.',
  NULL,
  '[{"id":"a","label":"Ces élèves négligents oublient souvent leurs affaires."},{"id":"b","label":"Négligeant ses devoirs, l''élève a eu une mauvaise note."},{"id":"c","label":"Elle est très négligente dans son travail."},{"id":"d","label":"Un geste négligent trahit son ennui."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « Négligeant ses devoirs », le mot « négligeant » est un participe présent : il est invariable, a un COD (« ses devoirs ») et peut être remplacé par une subordonnée (« Comme il négligeait ses devoirs »). L''adjectif verbal s''écrit « négligent » (avec -ent au lieu de -eant) et s''accorde : « des élèves négligents ». Cette paire minimale (négligeant/négligent) est un cas emblématique de la distinction participe/adjectif verbal évalué au CRPE.',
  'L''erreur est de ne pas repérer le changement orthographique entre le participe présent « négligeant » (-eant) et l''adjectif verbal « négligent » (-ent), ce qui empêche de distinguer les deux catégories.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — reponse_courte — Orthographe de l'adjectif verbal de « convaincre »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Difficile',
  'reponse_courte',
  'Donnez l''orthographe de l''adjectif verbal issu du verbe « convaincre » (forme masculine singulier).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["convaincant","Convaincant"]}'::jsonb,
  'Le verbe « convaincre » a pour participe présent « convainquant » (avec -qu-, conservant le radical verbal) et pour adjectif verbal « convaincant » (avec -c-). Comme pour « provoquer/provocant » ou « suffoquer/suffocant », l''adjectif verbal adopte une orthographe différente de celle du participe présent. La maîtrise de ces couples orthographiques est un attendu explicite du CRPE en étude de la langue.',
  'L''erreur classique est d''écrire « convainquant » pour l''adjectif verbal, en conservant l''orthographe du participe présent, ou d''écrire « convainquent » par contamination avec une forme conjuguée.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — qcm — Valeurs circonstancielles du gérondif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Difficile',
  'qcm',
  'Dans la phrase « En relisant attentivement sa copie, Léa a trouvé trois erreurs », quelle valeur circonstancielle exprime le gérondif ?',
  NULL,
  '[{"id":"a","label":"La cause"},{"id":"b","label":"Le temps (simultanéité)"},{"id":"c","label":"La concession"},{"id":"d","label":"La condition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le gérondif « en relisant » exprime ici la simultanéité temporelle : c''est pendant qu''elle relisait sa copie que Léa a trouvé les erreurs. Le gérondif peut exprimer différentes valeurs circonstancielles : le temps (« en marchant »), la cause (« en tombant, il s''est blessé »), la condition (« en travaillant plus, tu réussiras »), la concession (« même en courant, il est arrivé en retard »), ou la manière (« il est parti en claquant la porte »). L''identification de ces valeurs est évaluée au CRPE.',
  'L''erreur fréquente est de confondre la valeur temporelle (simultanéité) avec la valeur causale. Ici, la relecture est le cadre temporel de la découverte, pas nécessairement sa cause directe.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Accord de l'adjectif verbal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3020000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_participe_gerondif',
  'Participe présent, adjectif verbal et gérondif',
  'Difficile',
  'reponse_courte',
  'Complétez : « Ces remarques étaient très _______ . » (adjectif verbal du verbe « provoquer », féminin pluriel)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["provocantes","Provocantes"]}'::jsonb,
  'L''adjectif verbal de « provoquer » s''écrit « provocant » (avec -c- et non -qu-) et s''accorde comme tout adjectif qualificatif. Au féminin pluriel : « provocantes ». Le participe présent, lui, reste invariable et conserve l''orthographe « provoquant ». Cette distinction orthographique et morphologique entre participe présent (-quant, invariable) et adjectif verbal (-cant, variable) est un point de connaissance fondamental évalué au CRPE.',
  'L''erreur la plus fréquente est d''écrire « provoquantes » en conservant l''orthographe du participe présent tout en accordant la forme, ce qui constitue un mélange des deux catégories grammaticales.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Migration: 10 exercices — Anaphores et substituts nominaux
-- Série : anal_anaphores_substituts_nominaux (Français, analyse_langue)
-- Anaphore pronominale, nominale, associative — chaînes de référence — cohésion textuelle
-- UUID prefix: d4e50000

-- Q1 — QCM — Définir l'anaphore : reprise du référent par un élément linguistique qui le précède
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'qcm',
  'Quelle définition correspond à la notion d''anaphore en linguistique textuelle ?',
  NULL,
  '[{"id":"a","label":"Un procédé rhétorique qui consiste à répéter le même mot en début de phrase"},{"id":"b","label":"Un élément linguistique qui reprend un référent déjà mentionné précédemment dans le texte"},{"id":"c","label":"Un connecteur logique qui relie deux propositions de sens opposé"},{"id":"d","label":"Un terme générique qui désigne l''ensemble des pronoms personnels d''un texte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'En linguistique textuelle, l''anaphore désigne tout élément qui reprend un référent (une entité, une idée) déjà introduit dans le texte — son antécédent. L''anaphore assure la cohésion du texte en évitant les répétitions et en tissant des liens entre les phrases. Elle se distingue de la figure de style rhétorique (répétition en tête de vers ou de phrase), même si le terme est partagé : en analyse de la langue, seule la dimension référentielle est visée. Les programmes Éduscol de cycle 3 mentionnent explicitement la maîtrise des substituts et des reprises anaphoriques comme compétence de cohérence textuelle.',
  'Confondre l''anaphore linguistique (reprise d''un référent) avec la figure de style rhétorique (répétition d''un mot en tête de phrase), qui relève de la stylistique et non de la grammaire textuelle.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — vrai_faux — Toute reprise pronominale est une anaphore pronominale (true)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Lorsqu''un pronom reprend un groupe nominal mentionné auparavant dans le texte, on parle d''anaphore pronominale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. L''anaphore pronominale est précisément le cas où un pronom (personnel, démonstratif, possessif, relatif ou indéfini) reprend un antécédent nominal ou pronominal déjà présent dans le texte. Exemple : « La maîtresse entra dans la classe. Elle posa son cartable sur le bureau. » → « Elle » reprend « La maîtresse » : c''est une anaphore pronominale. C''est le type d''anaphore le plus fréquent et le plus étudié à l''école primaire (cycle 3) dans le cadre de la cohésion textuelle.',
  'Croire que seuls les pronoms personnels de la 3e personne (il, elle, ils, elles) constituent des anaphores pronominales, alors que les pronoms démonstratifs (celui-ci, cela), possessifs (le sien) ou indéfinis peuvent aussi fonctionner comme anaphores.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Dans un extrait, identifier quel nom est le référent d'un pronom "il"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'qcm',
  'Lisez cet extrait : « Le jardinier arrosait ses rosiers depuis l''aube. Vers midi, son fils vint le rejoindre au jardin. Il posa ses outils et s''assit à l''ombre du vieux pommier. » Quel est l''antécédent du pronom « Il » en début de la troisième phrase ?',
  NULL,
  '[{"id":"a","label":"ses rosiers"},{"id":"b","label":"le jardinier"},{"id":"c","label":"son fils"},{"id":"d","label":"le vieux pommier"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le pronom « Il » reprend « son fils », le dernier sujet masculin singulier introduit avant la troisième phrase. En linguistique textuelle, lorsque plusieurs antécédents sont possibles, c''est en général l''antécédent le plus récent et le plus saillant (sujet de la proposition immédiatement précédente) qui l''emporte. Ici, « son fils vint le rejoindre » clôt la deuxième phrase : « son fils » est donc l''antécédent naturel de « Il ». La résolution des anaphores est une compétence clé évaluée au CRPE dans l''analyse de la cohérence textuelle.',
  'Attribuer « Il » au jardinier parce qu''il est le personnage principal introduit en premier, sans tenir compte de la proximité syntaxique avec l''antécédent le plus récent (son fils).',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — reponse_courte — Identifier le type d'anaphore : "Le président… Le chef de l'État…"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'reponse_courte',
  'Dans le passage suivant : « Le président a signé le décret ce matin. Le chef de l''État a ensuite pris la parole devant les journalistes. » — Quel type d''anaphore représente le groupe nominal « Le chef de l''État » par rapport à « Le président » ? Répondez en un ou deux mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["anaphore nominale","substitut nominal","anaphore lexicale","reprise nominale"]}'::jsonb,
  '« Le chef de l''État » est un substitut nominal (ou anaphore nominale) de « Le président » : un groupe nominal différent désigne le même référent sans répéter le terme initial. L''anaphore nominale évite la répétition tout en apportant une nuance (titre officiel, point de vue, effet stylistique). On distingue ainsi trois grands types d''anaphores : pronominale (pronom), nominale (groupe nominal synonyme, périphrase ou titre) et associative (relation partie-tout ou tout-partie entre les référents). Les programmes Éduscol de cycle 3 et 4 valorisent l''emploi varié des substituts nominaux pour enrichir l''expression écrite.',
  'Répondre « anaphore pronominale » par confusion avec les pronoms, alors qu''ici la reprise est effectuée par un groupe nominal et non par un pronom.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Distinguer anaphore pronominale, nominale et associative (définitions)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'qcm',
  'Parmi les propositions suivantes, laquelle définit correctement l''anaphore associative ?',
  NULL,
  '[{"id":"a","label":"Un pronom personnel qui reprend un groupe nominal sujet de la phrase précédente"},{"id":"b","label":"Un groupe nominal qui reprend le même référent en utilisant un synonyme ou une périphrase"},{"id":"c","label":"Un groupe nominal qui introduit un référent nouveau lié au référent précédent par une relation logique (partie, propriété, conséquence…)"},{"id":"d","label":"Un connecteur anaphorique qui relie deux événements dans l''ordre chronologique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''anaphore associative (également appelée anaphore indirecte) introduit un référent nouveau qui entretient une relation de type partie-tout, tout-partie, propriété ou conséquence avec un référent déjà mentionné. Exemple classique : « Nous sommes entrés dans le village. L''église était fermée. » → « L''église » n''a pas d''antécédent explicite, mais est inférée à partir de « village » (un village possède généralement une église). Ce type d''anaphore implique un travail d''inférence de la part du lecteur et mobilise ses connaissances encyclopédiques. Elle se distingue de l''anaphore pronominale (option a) et de l''anaphore nominale directe (option b).',
  'Confondre l''anaphore associative avec l''anaphore nominale directe (synonyme ou périphrase du même référent), alors que l''anaphore associative introduit un référent distinct, mais inférable à partir du contexte.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — vrai_faux — La cataphore est l'inverse de l'anaphore : le substitut précède l'antécédent (true)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La cataphore est le phénomène inverse de l''anaphore : l''élément substitut apparaît avant le référent qu''il annonce.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Dans l''anaphore, l''élément substitut (pronom, groupe nominal) suit son antécédent. Dans la cataphore, l''ordre est inversé : le substitut précède et annonce le référent. Exemple de cataphore : « Il était une fois un roi. Cet homme vivait seul dans son château. » → ici « Il » précède « un roi » et l''annonce de manière cataphorique. La cataphore est plus rare que l''anaphore dans les textes courants, mais fréquente en littérature (début de conte, effet de suspense). La distinction anaphore/cataphore est notée dans les programmes de grammaire textuelle du cycle 4 et au lycée.',
  'Croire que cataphore et anaphore sont synonymes, ou confondre cataphore avec prolepse stylistique. La cataphore est une notion de grammaire textuelle précise liée à l''ordre d''apparition de l''antécédent et du substitut.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — reponse_courte — Lister tous les substituts d'un même référent (construire la chaîne de référence)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait : « Marie était institutrice depuis vingt ans. La jeune femme aimait passionnément son métier. Elle consacrait ses soirées à préparer des activités originales pour ses élèves. Cette pédagogue de talent était appréciée de tous. » Combien de substituts différents reprennent le référent « Marie » dans cet extrait (sans compter « Marie » elle-même) ? Répondez par un chiffre.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","trois"]}'::jsonb,
  'La chaîne de référence du référent « Marie » comprend trois substituts : (1) « La jeune femme » — anaphore nominale (périphrase descriptive) ; (2) « Elle » — anaphore pronominale (pronom personnel sujet) ; (3) « Cette pédagogue de talent » — anaphore nominale (périphrase valorisante avec déterminant démonstratif). Construire la chaîne de référence d''un personnage consiste à relever toutes les expressions (pronoms, groupes nominaux, surnoms…) qui renvoient au même référent dans un texte. Cette compétence est au cœur des évaluations de cohérence textuelle au cycle 3 et figure dans les attendus de fin de cycle des programmes Éduscol.',
  'Ne compter que les pronoms (ici « Elle ») en oubliant les anaphores nominales (groupes nominaux substituts), ou inclure « Marie » elle-même dans le décompte des substituts alors qu''elle constitue le référent initial.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Quel pronom reprend un groupe nominal dans un extrait (cohésion textuelle)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'qcm',
  'Lisez cet extrait : « Les enfants avaient fabriqué une cabane au fond du jardin. Ils y passaient leurs après-midi à lire et à jouer. » Quel pronom assure une double fonction anaphorique en reprenant à la fois le lieu et l''action de s''y trouver ?',
  NULL,
  '[{"id":"a","label":"Ils"},{"id":"b","label":"leurs"},{"id":"c","label":"y"},{"id":"d","label":"en"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le pronom adverbial « y » reprend le groupe nominal « au fond du jardin » (ou plus précisément « la cabane au fond du jardin ») et encode à la fois la référence au lieu et l''idée de s''y trouver. « Ils » reprend bien « les enfants » (anaphore pronominale sujet), mais ne reprend pas le lieu. « y » est un pronom adverbial de lieu qui fonctionne comme anaphore pronominale dans la cohésion textuelle : il évite la répétition du complément de lieu et contribue à la fluidité du texte. Les pronoms adverbiaux « y » et « en » sont des substituts souvent négligés dans l''analyse des chaînes de référence.',
  'Choisir « Ils » car c''est le pronom le plus visible de la phrase, sans remarquer que « y » remplit lui aussi une fonction anaphorique en reprenant le référent spatial (la cabane / le fond du jardin).',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — L'anaphore associative établit une relation partie-tout (true)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Nous nous promenions en forêt. Les arbres étaient couverts de mousse. », le groupe nominal « Les arbres » constitue une anaphore associative par rapport à « forêt », car il entretient avec ce référent une relation partie-tout.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Les arbres » n''est pas une reprise directe de « forêt » (pas de synonymie, pas de pronom), mais il entretient avec ce référent une relation méronymique (partie-tout) : les arbres sont des composantes constitutives de la forêt. Le lecteur peut inférer l''existence des arbres à partir du référent « forêt » sans qu''ils aient été explicitement mentionnés. C''est le mécanisme caractéristique de l''anaphore associative (ou indirecte), décrite par Georges Kleiber et largement reprise dans les travaux de grammaire textuelle utilisés en formation CRPE. Cette relation peut aussi être tout-partie, propriété, ou conséquence selon les textes.',
  'Croire que « Les arbres » est une anaphore nominale directe (synonyme de forêt), alors qu''il s''agit d''un référent distinct mais inférable : les arbres ne sont pas un autre nom de la forêt, ils en font partie.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Corriger une ambiguïté référentielle dans un extrait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd4e50000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'anal_anaphores_substituts_nominaux',
  'Anaphores et substituts nominaux',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait ambigu : « Lucas parlait à son frère quand il reçut un message urgent. Il quitta aussitôt la pièce. » Le pronom « Il » en début de la deuxième phrase est ambigu car il peut renvoyer à deux antécédents. Quel procédé linguistique permet de lever cette ambiguïté référentielle ? Répondez en un ou deux mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["substitut nominal","anaphore nominale","reprise nominale","remplacement par un nom","substitution nominale","nom propre"]}'::jsonb,
  'Pour lever l''ambiguïté, il faut remplacer le pronom ambigu « Il » par un substitut nominal précis qui désigne sans équivoque l''un des deux référents possibles. Par exemple : « Lucas quitta aussitôt la pièce. » ou « Son frère quitta aussitôt la pièce. » — selon l''intention de l''auteur. Le substitut nominal (nom propre, groupe nominal défini ou indéfini) lève l''ambiguïté là où le pronom ne le peut pas, car le pronom n''est porteur que du genre et du nombre, pas de l''identité du référent. Cette compétence de réécriture corrective est explicitement visée dans les programmes Éduscol : les élèves de cycle 3 doivent apprendre à « utiliser des substituts variés pour éviter les ambiguïtés référentielles ».',
  'Proposer de « supprimer le pronom » sans le remplacer, ce qui entraîne une ellipse incorrecte, ou de répéter exactement le groupe nominal de départ sans choisir entre les deux antécédents possibles.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

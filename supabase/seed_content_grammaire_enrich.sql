-- CRPE Français — Enrichissement Grammaire (3 séries × 5 questions supplémentaires)
-- Ajoute 5 questions aux séries : grm_subordonnees (série 65), grm_classes_facile, grm_pronoms_intermediaire
-- Préfixes IDs : 87, 88, 89

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- ENRICHISSEMENT — grm_subordonnees (5 questions supplémentaires)
-- Série 87
-- ================================================================

('87000000-0000-0000-0000-000000000001','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la fonction de la proposition en italique dans : « Qu''il soit absent m''étonne » ?',null,
'[{"id":"a","label":"COD du verbe étonne"},{"id":"b","label":"Sujet du verbe étonne"},{"id":"c","label":"Attribut du sujet"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La proposition « qu''il soit absent » est une subordonnée complétive sujet du verbe « étonne ». Vérification : on peut la remplacer par « cela m''étonne » (cela = sujet). Contrairement aux complétives sujet réel des constructions impersonnelles (« il m''étonne qu''il soit absent »), ici la complétive est directement sujet sans sujet apparent. Cette construction plus rare est stylistiquement marquée.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000002','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Je cherche quelqu''un qui sache cuisiner », pourquoi le verbe est-il au subjonctif ?',null,
'[{"id":"a","label":"Par convention stylistique dans les phrases avec une relative"},{"id":"b","label":"Parce que l''antécédent est indéterminé ou hypothétique — on cherche un être dont l''existence n''est pas certaine"},{"id":"c","label":"Parce que « qui » exige toujours le subjonctif"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le subjonctif dans la relative s''emploie quand l''antécédent est hypothétique, inexistant ou recherché (sa réalité n''est pas certaine). « Je cherche quelqu''un qui sache » = cette personne n''existe pas encore pour moi. Si l''antécédent est réel et identifié, on utilise l''indicatif : « J''ai trouvé quelqu''un qui sait cuisiner » (= cette personne existe). Le mode dépend du degré de certitude sur l''existence de l''antécédent.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000003','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Identifiez la nature de la proposition soulignée dans : « Le fait qu''il ait menti est inacceptable. »',null,
'[{"id":"a","label":"Proposition subordonnée relative"},{"id":"b","label":"Proposition subordonnée complétive, complément du nom « fait »"},{"id":"c","label":"Proposition subordonnée circonstancielle de cause"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Qu''il ait menti » est une proposition subordonnée complétive complément du nom « fait ». Certains noms abstraits (fait, idée, espoir, crainte, certitude…) peuvent être complétés par une subordonnée complétive introduite par « que ». Le subjonctif s''emploie ici car « le fait que » appartient à la catégorie des expressions de constat impliqué qui, quand précédé de négation ou dans un contexte non factuel, se construisent avec le subjonctif.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000004','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','vrai_faux',
'Vrai ou faux : « où » peut être un pronom relatif de lieu ou de temps.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « Où » est un pronom relatif qui peut avoir pour antécédent un nom de lieu (« la ville où il habite ») ou un nom de temps (« le jour où il est né », « l''époque où les rois régnaient »). Dans les deux cas, il remplace un groupe prépositionnel circonstanciel (à la ville, dans la ville / en ce jour, à cette époque). Il ne faut pas le confondre avec « où » adverbe interrogatif.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000005','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans « Il croit que la Terre est plate », quel mode est employé et pourquoi ?',null,
'[{"id":"a","label":"Subjonctif — car « croire » exprime un doute"},{"id":"b","label":"Indicatif — car « croire » en phrase affirmative introduit un fait présenté comme réel par le locuteur"},{"id":"c","label":"Conditionnel — car la croyance est hypothétique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'En phrase affirmative, « croire que », « penser que », « dire que », « savoir que » → indicatif : le locuteur présente le contenu de la complétive comme réel (de son point de vue). En phrase négative ou interrogative, ces verbes peuvent admettre le subjonctif (mise en doute) : « Je ne crois pas qu''il soit là. » La bascule affirmatif (indicatif) / négatif ou interrogatif (subjonctif possible) est une règle importante.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

-- ================================================================
-- ENRICHISSEMENT — grm_classes_facile (5 questions supplémentaires)
-- Série 88
-- ================================================================

('88000000-0000-0000-0000-000000000001','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la classe grammaticale du mot « rapidement » dans la phrase « Il court rapidement » ?',null,
'[{"id":"a","label":"Adjectif qualificatif"},{"id":"b","label":"Adverbe de manière"},{"id":"c","label":"Nom commun"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Rapidement » est un adverbe de manière (formé de l''adjectif « rapide » + suffixe -ment). Les adverbes sont invariables et modifient un verbe, un adjectif ou un autre adverbe. Ici, il modifie le verbe « court ». Les adjectifs s''accordent avec un nom (il est rapide). Les noms désignent des êtres ou des choses. La formation en -ment à partir d''un adjectif est le procédé le plus courant pour créer des adverbes de manière.',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000002','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Dans « Ah ! Comme cette journée est belle ! », quelle est la classe grammaticale de « Ah » ?',null,
'[{"id":"a","label":"Adverbe d''exclamation"},{"id":"b","label":"Interjection"},{"id":"c","label":"Conjonction de coordination"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Ah » est une interjection : un mot invariable qui exprime une émotion ou une réaction (surprise, douleur, admiration…). Les interjections ne jouent aucune fonction syntaxique dans la phrase — elles sont détachées. D''autres interjections : oh, eh, hélas, zut, aïe, bravo. Les adverbes modifient un verbe ou un adjectif. Les conjonctions relient des propositions ou des mots de même nature.',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000003','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la classe grammaticale de « dont » dans : « Le livre dont je te parle est excellent. »',null,
'[{"id":"a","label":"Conjonction de subordination"},{"id":"b","label":"Pronom relatif"},{"id":"c","label":"Déterminant possessif"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Dont » est un pronom relatif : il représente son antécédent (le livre) et introduit la proposition subordonnée relative. Il reprend un complément introduit par « de » (parler de). Les pronoms relatifs simples : qui, que, quoi, dont, où. Les conjonctions de subordination (que, si, quand…) n''ont pas d''antécédent nominal. Les déterminants possessifs (mon, ton, son…) précèdent un nom.',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000004','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Dans « Elle aime la danse et le chant », quelle est la classe grammaticale de « et » ?',null,
'[{"id":"a","label":"Conjonction de subordination"},{"id":"b","label":"Conjonction de coordination"},{"id":"c","label":"Préposition"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Et » est une conjonction de coordination : elle relie deux éléments de même nature et de même fonction (ici deux GN COD : « la danse » et « le chant »). Les conjonctions de coordination : mais, ou, et, donc, or, ni, car (moyen mnémotechnique : mais ou et donc or ni car). Les conjonctions de subordination (que, si, quand, parce que…) introduisent une subordonnée. Les prépositions (à, de, dans, pour…) introduisent un groupe prépositionnel.',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000005','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','vrai_faux',
'Vrai ou faux : un même mot peut appartenir à des classes grammaticales différentes selon son emploi dans la phrase.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La même forme peut être de classes différentes selon le contexte : « le manger » (infinitif substantivé = nom) / « je vais manger » (verbe) ; « vite » (adverbe dans « il court vite » / adjectif dans « il est vite »/ nom dans « le vite ») ; « un » (article dans « un livre » / pronom dans « l''un d''eux » / adjectif numéral dans « page un »). C''est pourquoi on parle de la classe d''un mot en contexte.',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

-- ================================================================
-- ENRICHISSEMENT — grm_pronoms_intermediaire (5 questions supplémentaires)
-- Série 89
-- ================================================================

('89000000-0000-0000-0000-000000000001','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Quelle est la différence entre « lui » pronom personnel COI et « lui » pronom disjoint (ou tonique) ?',null,
'[{"id":"a","label":"Ils sont identiques — « lui » a toujours la même fonction"},{"id":"b","label":"« lui » COI remplace un nom introduit par « à » après un verbe (Je lui parle) ; « lui » tonique s''emploie après une préposition ou pour insister (C''est lui / Je pense à lui)"},{"id":"c","label":"« lui » pronom disjoint remplace uniquement des noms féminins"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Lui » COI (atone) : il se place avant le verbe et reprend un COI masculin ou féminin singulier introduit par « à » : « Je lui parle » (= à lui / à elle). « Lui » tonique (disjoint) : il s''emploie après une préposition (« pour lui », « avec lui »), en position de sujet renforcé (« Lui, il sait »), après « c''est » (« C''est lui ») ou comme attribut. Le pronom tonique est toujours masculin singulier.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000002','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Dans « Il y en a peu », quelle est la classe grammaticale de « y » et de « en » ?',null,
'[{"id":"a","label":"y = adverbe de lieu ; en = préposition"},{"id":"b","label":"y = pronom adverbial de lieu (ou remplaçant un complément introduit par « à ») ; en = pronom adverbial de quantité (ou remplaçant un complément introduit par « de »)"},{"id":"c","label":"y et en sont deux conjonctions de coordination"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Y » et « en » sont des pronoms adverbiaux (ou clitiques). « Y » représente un lieu ou un complément introduit par « à » non-animé : « Il y pense » (= à cela). « En » représente une quantité ou un complément introduit par « de » : « Il en a peu » (= de ces choses). Dans « il y en a », les deux se combinent : « y » (dans cet endroit / dans ce contexte), « en » (de ces choses).',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000003','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Quelle est la différence entre un pronom démonstratif simple et un pronom démonstratif composé ?',null,
'[{"id":"a","label":"Les simples sont celui, celle, ceux, celles (exigent une expansion : relative ou complément) ; les composés sont celui-ci / celui-là (peuvent s''employer seuls)"},{"id":"b","label":"Les simples s''accordent, les composés sont invariables"},{"id":"c","label":"Les composés sont uniquement à l''oral"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Les pronoms démonstratifs simples (celui, celle, ceux, celles, ce) ne peuvent pas s''employer seuls : ils exigent une expansion (relative : « celui qui… », complément du nom : « celle de… »). Les composés (celui-ci, celle-là, ceux-ci, celles-là) peuvent s''employer sans expansion : « Je préfère celui-ci. » La particule -ci indique la proximité, -là l''éloignement. Le neutre « ce » (c''est, ce que, ce qui) fait partie des simples.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000004','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Dans « Chacun doit rendre sa copie », quelle est la classe et la fonction de « chacun » ?',null,
'[{"id":"a","label":"Adjectif indéfini — épithète du sujet"},{"id":"b","label":"Pronom indéfini — sujet du verbe « doit »"},{"id":"c","label":"Déterminant indéfini — déterminant du sujet"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Chacun » est un pronom indéfini masculin singulier. Il remplace un nom (= chaque personne) sans l''accompagner — c''est un pronom, pas un déterminant. Sa fonction est sujet du verbe « doit ». « Chacun » distribue individuellement : il renvoie à tous les membres d''un ensemble pris un par un. À distinguer de « chaque » (déterminant : « chaque élève »). L''accord du possessif après « chacun » : « sa copie » (3e pers. sing.).',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000005','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','vrai_faux',
'Vrai ou faux : le pronom personnel « on » peut remplacer « nous » dans la langue courante et entraîne alors un accord au singulier du verbe mais au pluriel de l''attribut.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « On » est grammaticalement un pronom de 3e personne du singulier : le verbe s''accorde au singulier (« on est »). Mais quand « on » remplace « nous » (sens = nous), l''attribut et le participe peuvent s''accorder au pluriel (et en genre) avec les personnes représentées : « On est partis ensemble » (= nous sommes partis), « On est contentes » (= nous les filles). Cette règle d''accord sémantique coexiste avec l''accord grammatical.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true)

;

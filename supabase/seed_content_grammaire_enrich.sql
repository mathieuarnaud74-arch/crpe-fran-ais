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
-- Distribution correcte : Q1=b, Q2=d, Q3=b, Q4=vrai_faux, Q5=a
-- ================================================================

('87000000-0000-0000-0000-000000000001','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la fonction de la proposition en italique dans : « Qu''il soit absent m''étonne » ?',null,
'[{"id":"a","label":"COD du verbe étonne"},{"id":"b","label":"Sujet du verbe étonne"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Complément circonstanciel de cause"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La proposition « qu''il soit absent » est sujet du verbe « étonne » — et c''est une construction stylistiquement marquée ! Test de vérification : remplace-la par « cela » → « Cela m''étonne » ✓ (cela = sujet). Contrairement aux constructions impersonnelles (« il m''étonne qu''il soit absent ») où la complétive est sujet RÉEL d''un sujet apparent, ici elle est directement sujet sans intermédiaire. C''est plus rare, plus littéraire, et ça fait la différence au CRPE.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000002','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Je cherche quelqu''un qui sache cuisiner », pourquoi le verbe est-il au subjonctif ?',null,
'[{"id":"a","label":"Par convention stylistique dans les phrases avec une relative"},{"id":"b","label":"Parce que « qui » exige toujours le subjonctif"},{"id":"c","label":"Parce que l''antécédent est indéterminé ou hypothétique — on cherche un être dont l''existence n''est pas certaine"},{"id":"d","label":"Parce que le verbe « chercher » impose toujours le subjonctif dans la relative"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Voilà un point subtil qui fait toute la beauté de la grammaire française ! Le subjonctif dans la relative dépend du degré de certitude sur l''existence de l''antécédent. Tu cherches quelqu''un → cette personne n''existe pas encore pour toi → subjonctif. Tu as trouvé quelqu''un → elle existe, elle est réelle → indicatif : « J''ai trouvé quelqu''un qui sait cuisiner. » Le mode change en fonction de la réalité ou de l''hypothèse. C''est une règle fine, mais elle est attendue au CRPE niveau difficile.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000003','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Identifiez la nature de la proposition soulignée dans : « Le fait qu''il ait menti est inacceptable. »',null,
'[{"id":"a","label":"Proposition subordonnée relative"},{"id":"b","label":"Proposition subordonnée complétive, complément du nom « fait »"},{"id":"c","label":"Proposition subordonnée circonstancielle de cause"},{"id":"d","label":"Proposition subordonnée complétive sujet réel"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est ça ! Certains noms abstraits acceptent une subordonnée complétive comme expansion — c''est le cas de « fait », mais aussi de « idée », « espoir », « crainte », « certitude »… Ici, « qu''il ait menti » est complément du nom « fait ». Le subjonctif s''explique par le contexte : « le fait que » en contexte d''indignation ou de constat impliqué appelle le subjonctif. Retiens ces noms abstraits qui admettent une complétive — c''est un point souvent négligé en classe mais présent dans les textes du CRPE.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000004','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','vrai_faux',
'Vrai ou faux : « où » peut être un pronom relatif de lieu ou de temps.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — et c''est une des belles flexibilités du pronom « où » ! Il peut avoir pour antécédent un nom de lieu (« la ville où il habite ») ou un nom de temps (« le jour où il est né », « l''époque où les rois régnaient »). Dans les deux cas, il remplace un groupe prépositionnel circonstanciel. Attention à bien le distinguer de « où » adverbe interrogatif (« Où vas-tu ? »). En contexte de relative, pas de doute possible : c''est un pronom relatif.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('87000000-0000-0000-0000-000000000005','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans « Il croit que la Terre est plate », quel mode est employé et pourquoi ?',null,
'[{"id":"a","label":"Indicatif — car « croire » en phrase affirmative introduit un fait présenté comme réel par le locuteur"},{"id":"b","label":"Subjonctif — car « croire » exprime un doute"},{"id":"c","label":"Conditionnel — car la croyance est hypothétique"},{"id":"d","label":"Impératif — car la phrase exprime une conviction ferme"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Retiens cette règle d''or : croire, penser, dire, savoir + phrase AFFIRMATIVE → indicatif ! Le locuteur présente le contenu de la complétive comme réel de son point de vue. Maintenant retourne la phrase : « Je ne crois pas qu''il soit là » (phrase négative) ou « Crois-tu qu''il soit là ? » (interrogative) → subjonctif, car le doute s''installe. La bascule affirmatif/négatif-interrogatif est une règle clé. Ici, phrase affirmative → indicatif, même si la croyance est objectivement fausse !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

-- ================================================================
-- ENRICHISSEMENT — grm_classes_facile (5 questions supplémentaires)
-- Série 88
-- Distribution correcte : Q1=d, Q2=b, Q3=a, Q4=b, Q5=vrai_faux
-- ================================================================

('88000000-0000-0000-0000-000000000001','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la classe grammaticale du mot « rapidement » dans la phrase « Il court rapidement » ?',null,
'[{"id":"a","label":"Adjectif qualificatif"},{"id":"b","label":"Nom commun"},{"id":"c","label":"Verbe d''état"},{"id":"d","label":"Adverbe de manière"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Rapidement » — adverbe de manière, formé sur l''adjectif « rapide » avec le suffixe -ment. Retiens la règle de formation : adjectif au féminin + -ment → adverbe. Les adverbes sont INVARIABLES et modifient un verbe, un adjectif ou un autre adverbe. Ici il modifie le verbe « court ». L''adjectif, lui, s''accorde avec un nom (il est rapide). Et le nom désigne des êtres ou des choses. La terminaison -ment est ton signal le plus fiable pour repérer un adverbe de manière !',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000002','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Dans « Ah ! Comme cette journée est belle ! », quelle est la classe grammaticale de « Ah » ?',null,
'[{"id":"a","label":"Adverbe d''exclamation"},{"id":"b","label":"Interjection"},{"id":"c","label":"Conjonction de coordination"},{"id":"d","label":"Déterminant exclamatif"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Ah » — interjection ! C''est un mot invariable qui exprime une émotion ou une réaction (surprise, douleur, admiration…). La caractéristique des interjections : elles ne jouent AUCUNE fonction syntaxique dans la phrase — elles sont complètement détachées. Autres interjections courantes : oh, eh, hélas, zut, aïe, bravo. Les adverbes modifient un verbe ou un adjectif. Les conjonctions relient des propositions ou des mots de même nature. L''interjection, elle, est une sorte de cri grammatical — libre et expressif !',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000003','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la classe grammaticale de « dont » dans : « Le livre dont je te parle est excellent. »',null,
'[{"id":"a","label":"Pronom relatif"},{"id":"b","label":"Conjonction de subordination"},{"id":"c","label":"Déterminant possessif"},{"id":"d","label":"Pronom interrogatif"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Dont » — pronom relatif ! Il représente son antécédent (le livre) et introduit la proposition subordonnée relative. Et il reprend un complément introduit par « de » (parler de quelque chose → parler de ce livre → dont). Les pronoms relatifs simples à retenir : qui, que, quoi, dont, où. Les conjonctions de subordination (que, si, quand…) n''ont pas d''antécédent nominal. Les déterminants possessifs (mon, ton, son…) précèdent un nom. « Dont » sans nom qui suit = pronom relatif, pas déterminant.',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000004','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Dans « Elle aime la danse et le chant », quelle est la classe grammaticale de « et » ?',null,
'[{"id":"a","label":"Conjonction de subordination"},{"id":"b","label":"Conjonction de coordination"},{"id":"c","label":"Préposition"},{"id":"d","label":"Adverbe de liaison"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Et » — conjonction de coordination ! Elle relie deux éléments de même nature et de même fonction. Ici deux GN COD : « la danse » et « le chant ». Et le moyen mnémotechnique pour les retenir toutes ? « Mais ou et donc or ni car » — une phrase à apprendre par cœur ! Les conjonctions de subordination (que, si, quand, parce que…) introduisent une subordonnée avec une relation hiérarchique. Les prépositions (à, de, dans, pour…) introduisent un groupe prépositionnel. « Et » = même niveau, même nature → coordination.',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

('88000000-0000-0000-0000-000000000005','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','vrai_faux',
'Vrai ou faux : un même mot peut appartenir à des classes grammaticales différentes selon son emploi dans la phrase.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai, et c''est un des points les plus fascinants de la grammaire française ! La même forme peut changer de classe selon le contexte : « le manger » (infinitif substantivé = nom) vs « je vais manger » (verbe) ; « vite » (adverbe dans « il court vite » / adjectif dans « il est vite »). C''est précisément pour ça qu''on dit toujours que la classe d''un mot se détermine EN CONTEXTE, pas dans l''absolu. La même forme, des rôles différents — c''est la richesse et la subtilité du français !',
'valide','CRPE Français — Enrichissement Grammaire','free',true),

-- ================================================================
-- ENRICHISSEMENT — grm_pronoms_intermediaire (5 questions supplémentaires)
-- Série 89
-- Distribution correcte : Q1=b, Q2=d, Q3=a, Q4=b, Q5=vrai_faux, Q6=c, Q7=b, Q8=d, Q9=b, Q10=vrai_faux
-- ================================================================

('89000000-0000-0000-0000-000000000001','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Quelle est la différence entre « lui » pronom personnel COI et « lui » pronom disjoint (ou tonique) ?',null,
'[{"id":"a","label":"Ils sont identiques — « lui » a toujours la même fonction"},{"id":"b","label":"« lui » COI remplace un nom introduit par « à » après un verbe (Je lui parle) ; « lui » tonique s''emploie après une préposition ou pour insister (C''est lui / Je pense à lui)"},{"id":"c","label":"« lui » pronom disjoint remplace uniquement des noms féminins"},{"id":"d","label":"« lui » COI ne peut s''employer qu''à l''oral"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Deux « lui » qui se ressemblent mais qui jouent des rôles très différents ! « Lui » COI (atone) : avant le verbe, remplace un COI masculin ou féminin singulier introduit par « à » → « Je lui parle » (= à lui ou à elle). « Lui » tonique (disjoint) : après une préposition (« pour lui »), en sujet renforcé (« Lui, il sait »), après « c''est » (« C''est lui »). Et attention : le tonique est TOUJOURS masculin singulier — pour le féminin, c''est « elle ». Cette distinction COI atone / tonique est un classique des questions de classe grammaticale.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000002','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Dans « Il y en a peu », quelle est la classe grammaticale de « y » et de « en » ?',null,
'[{"id":"a","label":"y = adverbe de lieu ; en = préposition"},{"id":"b","label":"y et en sont deux conjonctions de coordination"},{"id":"c","label":"y = pronom personnel sujet ; en = pronom personnel COD"},{"id":"d","label":"y = pronom adverbial de lieu (ou remplaçant un complément introduit par « à ») ; en = pronom adverbial de quantité (ou remplaçant un complément introduit par « de »)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Y » et « en » — ce sont des pronoms adverbiaux (ou clitiques), pas des adverbes ordinaires ! « Y » représente un lieu ou un complément introduit par « à » non-animé : « Il y pense » (= à cela). « En » représente une quantité ou un complément introduit par « de » : « Il en a peu » (= de ces choses). Dans « il y en a », les deux se combinent : « y » (dans cet endroit / dans ce contexte) + « en » (de ces choses). Ce type de construction est typique du français oral et peut piéger si on ne sait pas analyser ces petits pronoms.',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000003','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Quelle est la différence entre un pronom démonstratif simple et un pronom démonstratif composé ?',null,
'[{"id":"a","label":"Les simples sont celui, celle, ceux, celles (exigent une expansion : relative ou complément) ; les composés sont celui-ci / celui-là (peuvent s''employer seuls)"},{"id":"b","label":"Les simples s''accordent, les composés sont invariables"},{"id":"c","label":"Les composés sont uniquement à l''oral"},{"id":"d","label":"Les simples sont toujours pronoms sujets, les composés sont toujours pronoms COD"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La règle clé : les simples (celui, celle, ceux, celles) ne peuvent PAS s''employer seuls — ils ont besoin d''une expansion (relative : « celui qui… », complément : « celle de… »). Les composés (celui-ci, celle-là, ceux-ci, celles-là), eux, peuvent s''employer tout seuls : « Je préfère celui-ci. » Et pour la nuance d''emploi des composés : -ci indique la proximité, -là l''éloignement. Le neutre « ce » (c''est, ce que, ce qui) fait partie des simples. Une distinction à connaître parfaitement pour l''analyse grammaticale !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000004','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Dans « Chacun doit rendre sa copie », quelle est la classe et la fonction de « chacun » ?',null,
'[{"id":"a","label":"Adjectif indéfini — épithète du sujet"},{"id":"b","label":"Pronom indéfini — sujet du verbe « doit »"},{"id":"c","label":"Déterminant indéfini — déterminant du sujet"},{"id":"d","label":"Pronom personnel — sujet de la proposition principale"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est ça ! « Chacun » est un pronom indéfini — il remplace un nom (= chaque personne) sans l''accompagner. Sa fonction : sujet du verbe « doit ». Et retiens la distinction fondamentale : « chacun » = pronom (seul), « chaque » = déterminant (devant un nom : « chaque élève »). « Chacun » distribue individuellement : il renvoie à tous les membres d''un ensemble pris un par un. Et une règle d''accord utile : après « chacun », le possessif se met à la 3e pers. sing. → « sa copie » (pas « leur copie »).',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000005','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','vrai_faux',
'Vrai ou faux : le pronom personnel « on » peut remplacer « nous » dans la langue courante et entraîne alors un accord au singulier du verbe mais au pluriel de l''attribut.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — et c''est une règle d''accord à connaître absolument ! « On » est grammaticalement un pronom de 3e personne du singulier : le verbe s''accorde au singulier (« on est »). Mais quand « on » remplace « nous », l''attribut et le participe peuvent s''accorder au pluriel (et en genre) avec les personnes représentées : « On est partis ensemble » (= nous sommes partis), « On est contentes » (= nous les filles). Cette coexistence accord grammatical / accord sémantique est typique du français et souvent testée au CRPE !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000006','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Quelle est la différence entre le déterminant possessif et le pronom possessif ?',null,
'[{"id":"a","label":"Aucune différence — les deux expriment la possession de façon identique"},{"id":"b","label":"Le pronom possessif ne s''emploie qu''à l''écrit soutenu"},{"id":"c","label":"Le déterminant possessif (mon, ta, son…) accompagne un nom ; le pronom possessif (le mien, la tienne, les siens…) remplace un nom"},{"id":"d","label":"Le déterminant possessif est invariable, le pronom possessif varie en genre"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La distinction fondamentale : le déterminant précède un nom, le pronom le remplace. « Mon livre est intéressant » (mon = déterminant, accompagne « livre ») vs « Le mien est plus intéressant » (le mien = pronom, remplace « mon livre »). Les pronoms possessifs s''accordent en genre et en nombre avec le nom remplacé, ET ils portent l''article défini : le mien / la mienne / les miens / les miennes. Tableau à retenir : mon → le mien, ton → le tien, son → le sien, notre → le nôtre, votre → le vôtre, leur → le leur. Attention à l''accent circonflexe sur nôtre/vôtre — deux pièges classiques des concours !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000007','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Dans quelle phrase l''ordre des pronoms atones COD et COI est-il correct ?',null,
'[{"id":"a","label":"« Il lui le donne. »"},{"id":"b","label":"« Il le lui donne. »"},{"id":"c","label":"« Il donne le lui. »"},{"id":"d","label":"« Il lui les donne. »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Règle d''or pour l''ordre des pronoms atones : quand le COI est à la 3e personne (lui, leur), le COD (le, la, les) se place AVANT le COI → « il le lui donne ». Mais quand le COI est à la 1re ou 2e personne (me, te, nous, vous), c''est l''inverse — COI avant COD → « il me le dit ». Moyen de retenir : 1re/2e personne = COI puis COD (me le, te la, nous les) ; 3e personne = COD puis COI (le lui, les leur). Cette règle sur l''ordre des clitiques est régulièrement évaluée dans les exercices d''analyse de langue et de manipulation syntaxique au CRPE !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000008','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Quel pronom relatif complète correctement la phrase : « Le sujet ___ tu dois te préparer est complexe. » ?',null,
'[{"id":"a","label":"que"},{"id":"b","label":"dont"},{"id":"c","label":"qui"},{"id":"d","label":"auquel"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Se préparer À quelque chose » — le verbe est construit avec la préposition « à ». Pour reprendre un antécédent inanimé introduit par « à » dans une relative, on utilise les pronoms relatifs composés : lequel (m. sg.), laquelle (f. sg.), auxquels (m. pl.), auxquelles (f. pl.). Ici, contraction de « à + lequel » → auquel. Si l''antécédent était une personne, on emploierait « à qui » : « la personne à qui tu dois te préparer ». Rappel : « dont » reprend un complément en « de » ; « que » reprend un COD sans préposition. Le choix du pronom relatif dépend toujours de la préposition que le verbe exige — c''est la règle d''or !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000009','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','qcm',
'Dans « Ces deux candidats sont compétents. ___ recruteras-tu ? », quel pronom interrogatif convient ?',null,
'[{"id":"a","label":"Que"},{"id":"b","label":"Lequel"},{"id":"c","label":"Quel"},{"id":"d","label":"Qui"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Lequel » est le pronom interrogatif employé quand on choisit parmi des éléments déjà identifiés — c''est sa valeur distinctive. Il s''accorde en genre et en nombre avec son antécédent : lequel / laquelle / lesquels / lesquelles. Et il se contracte avec les prépositions à et de : auquel, duquel, auxquels, desquels. « Que » interroge sur une chose indéterminée (« Que fais-tu ? »). « Quel » est un déterminant interrogatif — il précède un nom (« Quel candidat ? »), il ne peut pas s''employer seul. Ici, les deux candidats sont déjà identifiés → lequel est le seul pronom possible !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true),

('89000000-0000-0000-0000-000000000010','Francais','grammaire','grm_pronoms_intermediaire','Pronoms','Intermediaire','vrai_faux',
'Vrai ou faux : dans « Elles se sont souvenues de cet épisode », le participe passé « souvenues » s''accorde parce que « se » est COD du verbe.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est un piège classique ! « Se souvenir » est un verbe essentiellement pronominal : le « se » ne correspond ni à un COD ni à un COI réel, il fait partie intégrante du verbe et ne peut pas être supprimé. Pour ces verbes (s''évanouir, s''enfuir, se souvenir, se taire…), le PP s''accorde systématiquement avec le sujet par convention, indépendamment de la position de « se ». À distinguer des verbes pronominaux réfléchis (elle s''est vue = elle s''est vue elle-même → se = COD avant l''auxiliaire → accord). La distinction verbes essentiellement pronominaux / verbes réfléchis est un point clé de l''accord du PP au CRPE !',
'valide','CRPE Français — Enrichissement Grammaire','premium',true)

;

-- CRPE Français — Enrichissement Orthographe (4 séries × 5 questions supplémentaires)
-- Ajoute 5 questions aux séries : ort_pp_avoir, ort_accord_sv, ort_pp_etre, ort_homophones
-- Utilise des IDs distincts avec un suffixe élevé (e01-e05) pour éviter les conflits
-- Les IDs existants vont de ...000000000001 à ...000000000010
-- Ces enrichissements utilisent les préfixes 80, 81, 82, 83

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- ENRICHISSEMENT — ort_pp_avoir (5 questions supplémentaires)
-- Série 80
-- ================================================================

('80000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : « Les photos que nous avons _____ sont magnifiques. »',null,
'[{"id":"a","label":"pris"},{"id":"b","label":"prise"},{"id":"c","label":"prises"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le COD « que » représente « les photos » (féminin pluriel), et il est placé avant le verbe avoir → accord du participe passé : « prises ». Méthode : trouver le COD (les photos), déterminer son genre et son nombre (fém. plur.), vérifier qu''il est placé avant l''auxiliaire avoir → accord. Si le COD est après (« Nous avons pris des photos »), pas d''accord.',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : « Combien de livres as-tu _____ ce mois-ci ? »',null,
'[{"id":"a","label":"lu"},{"id":"b","label":"lus"},{"id":"c","label":"lue"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le COD « combien de livres » (masculin pluriel) est placé avant l''auxiliaire avoir (inversion interrogative) → accord au masculin pluriel : « lus ». L''inversion sujet-verbe ne change pas la règle : le COD reste avant l''auxiliaire. Il faut donc bien identifier « combien de livres » comme COD (répondant à « tu as lu quoi ? »).',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux : dans « Elle les a vus partir », le participe « vus » s''accorde parce que « les » est COD placé avant avoir.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « Les » est le COD du verbe « voir » placé avant l''auxiliaire avoir → accord : « vus » (masculin pluriel si « les » représente des personnes ou objets masculins pluriels). Dans la construction « verbe de perception + infinitif » (voir, entendre, regarder…), l''accord se fait avec le COD si ce COD est le sujet logique de l''infinitif. Ici, « les » (personnes) sont celles qui « partent ».',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : « La décision qu''elle a _____ était difficile à prendre. »',null,
'[{"id":"a","label":"prise"},{"id":"b","label":"pris"},{"id":"c","label":"prises"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le COD « qu'' » représente « la décision » (féminin singulier), placé avant l''auxiliaire avoir → accord au féminin singulier : « prise ». La forme « prises » serait pour un COD féminin pluriel. La forme « pris » serait pour un COD masculin ou l''absence de COD antéposé. La relative introduite par « que » est toujours un COD antéposé → accord systématique.',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Dans « Les efforts qu''elle a fournis ont payé », pourquoi « fournis » prend-il un « s » ?',null,
'[{"id":"a","label":"Parce que le verbe « fournir » est toujours au pluriel"},{"id":"b","label":"Parce que le COD « qu'' » représente « les efforts » (masculin pluriel), placé avant l''auxiliaire avoir"},{"id":"c","label":"Parce que le sujet « elle » commande l''accord"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le pronom relatif « qu'' » représente « les efforts » (masc. plur.) et est COD placé avant l''auxiliaire → accord : fournis (masc. plur.). Le sujet « elle » ne commande jamais l''accord du participe passé avec avoir. La règle : seul le COD antéposé à l''auxiliaire avoir entraîne l''accord.',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

-- ================================================================
-- ENRICHISSEMENT — ort_accord_sv (5 questions supplémentaires)
-- Série 81
-- ================================================================

('81000000-0000-0000-0000-000000000001','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « La plupart des élèves _____ absent(e)s ce jour-là. »',null,
'[{"id":"a","label":"était"},{"id":"b","label":"étaient"},{"id":"c","label":"étais"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec « la plupart de + complément », le verbe s''accorde avec le complément du nom (« des élèves », pluriel) → « étaient ». Règle : « la plupart » suivi d''un complément pluriel → accord au pluriel. Si « la plupart » est seul (sans complément) → accord au pluriel également (sous-entendu « des gens »). C''est une exception à la règle du sujet grammatical.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000002','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « Ni lui ni elle ne _____ venu(s). »',null,
'[{"id":"a","label":"est"},{"id":"b","label":"sont"},{"id":"c","label":"suis"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Quand deux sujets sont reliés par « ni… ni… », le verbe se met en général au pluriel car les deux sujets s''additionnent dans la négation : « Ni lui ni elle ne sont venus ». Il peut être au singulier si les deux sujets forment une alternative exclusive (sens de « l''un ou l''autre mais pas les deux »), mais dans la pratique courante, le pluriel est préféré.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000003','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « C''est vous qui _____ responsable(s). »',null,
'[{"id":"a","label":"êtes"},{"id":"b","label":"est"},{"id":"c","label":"sommes"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le sujet du verbe est le pronom relatif « qui », dont l''antécédent est « vous » (2e pers. plur.). Le verbe de la relative s''accorde avec l''antécédent de « qui » : « vous êtes ». Règle : quand le sujet est « qui », repérer son antécédent et accorder en personne et en nombre. La formule présentative « c''est vous qui » exige la 2e personne du pluriel.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000004','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux : dans « L''un et l''autre hésitent », l''accord au pluriel est correct.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « L''un et l''autre » peut se construire avec le singulier ou le pluriel, selon le sens : le singulier insiste sur chaque individu séparément (« L''un et l''autre hésite ») ; le pluriel traite les deux comme un ensemble (« L''un et l''autre hésitent »). Les deux sont admis mais le pluriel est plus courant. À l''CRPE, les deux formes sont acceptées si justifiées.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000005','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « Vingt pour cent des réponses _____ incorrect(e)s. »',null,
'[{"id":"a","label":"était"},{"id":"b","label":"étaient"},{"id":"c","label":"avait"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec un sujet de type « pourcentage + de + nom », le verbe s''accorde avec le nom complément : « des réponses » (féminin pluriel) → « étaient ». Règle valable pour les fractions, pourcentages et expressions de quantité (la moitié de, un tiers de, 20 % de…) : l''accord se fait avec le nom qui suit « de ».',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

-- ================================================================
-- ENRICHISSEMENT — ort_pp_etre (5 questions supplémentaires)
-- Série 82
-- ================================================================

('82000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Choisissez la forme correcte : « Les filles sont _____ (partir) ce matin. »',null,
'[{"id":"a","label":"parti"},{"id":"b","label":"partie"},{"id":"c","label":"parties"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Avec l''auxiliaire être, le participe passé s''accorde avec le sujet. Le sujet est « les filles » (féminin pluriel) → « parties ». Règle de base : PP avec être = accord en genre et en nombre avec le sujet. À ne pas confondre avec le PP avec avoir (accord avec le COD antéposé).',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Dans « Ils se sont lavé les mains », comment s''accorde le participe passé ?',null,
'[{"id":"a","label":"lavés (accord avec le sujet ils)"},{"id":"b","label":"lavé (pas d''accord car le COD est placé après le verbe)"},{"id":"c","label":"lavées (accord avec « les mains »)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans les verbes pronominaux, il faut trouver le COD du verbe : « Ils se sont lavé quoi ? » → « les mains » (COD placé après le verbe). Comme le COD est postposé, pas d''accord. Si le COD était antéposé (« les mains qu''ils se sont lavées »), il y aurait accord. Le pronom « se » est ici COI (= à eux-mêmes), pas COD. Règle complexe fréquente au CRPE.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','vrai_faux',
'Vrai ou faux : dans « Elle s''est souvenue de lui », le participe « souvenue » s''accorde parce que le verbe « se souvenir » est un pronominal de sens réciproque.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. « Se souvenir » est un verbe essentiellement pronominal (il ne s''emploie qu''à la forme pronominale). Pour ces verbes, le participe passé s''accorde avec le sujet : « elle s''est souvenue ». Ce n''est pas un pronominal réciproque (qui implique une action mutuelle entre plusieurs sujets). Les pronominaux essentiels s''accordent toujours avec le sujet, comme les verbes conjugués avec être.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Choisissez la forme correcte : « Les erreurs que nous nous sommes _____ (permettre). »',null,
'[{"id":"a","label":"permis"},{"id":"b","label":"permises"},{"id":"c","label":"permises"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans « nous nous sommes permis quoi ? → les erreurs » — mais attends, le COD est « les erreurs que » (féminin pluriel) placé avant → accord : « permises ». Analyse : « que » = COD féminin pluriel (représente « les erreurs »), antéposé → le participe s''accorde. Le pronom « nous » (se) est ici COI (= à nous-mêmes). Donc : « les erreurs que nous nous sommes permises ».',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Dans « Elles se sont souri », pourquoi le participe passé est-il invariable ?',null,
'[{"id":"a","label":"Parce que « sourire » est un verbe défectif"},{"id":"b","label":"Parce que le verbe « sourire » se construit avec « à » : le pronom « se » est COI (elles ont souri à elles-mêmes / l''une à l''autre), donc pas de COD antéposé"},{"id":"c","label":"Parce que le sujet est féminin pluriel mais le sourire est neutre"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Sourire à quelqu''un » → le pronom réfléchi « se » représente un COI (et non un COD). Sans COD, le participe passé d''un verbe pronominal réciproque ou réfléchi reste invariable. Même raisonnement pour : « elles se sont parlé » (parler à), « elles se sont téléphoné » (téléphoner à), « elles se sont nui » (nuire à). Ces verbes à COI sont invariables au pronominal.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

-- ================================================================
-- ENRICHISSEMENT — ort_homophones (5 questions supplémentaires)
-- Série 83
-- ================================================================

('83000000-0000-0000-0000-000000000001','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Il _____ rendu son devoir. » (ce / se)',null,
'[{"id":"a","label":"ce"},{"id":"b","label":"se"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Se » est le pronom réfléchi (il se rend compte / il se lève). Ici : « il se rendu » → « se » est le pronom réfléchi du verbe pronominal. « Ce » est un déterminant démonstratif (ce livre, ce soir) ou un pronom démonstratif (c''est, ce que). Méthode : remplacer par « il m''a rendu » — si la phrase fonctionne, c''est un verbe pronominal → « se ».',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000002','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « _____ livre est intéressant. » (ce / se)',null,
'[{"id":"a","label":"Ce"},{"id":"b","label":"Se"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Ce » est un déterminant démonstratif : il introduit le nom « livre » et peut être remplacé par « cet » (devant voyelle) ou « cette » (féminin). « Se » ne peut jamais précéder directement un nom. Méthode de test : si on peut remplacer par « cet » ou « cette » → c''est « ce » déterminant.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000003','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Je viendrai _____ que tu sois là. » (quand / qu''en)',null,
'[{"id":"a","label":"quand"},{"id":"b","label":"qu''en"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Quand » est ici une conjonction de temps équivalente à « lorsque » : il peut être remplacé par « lorsque » (« Je viendrai lorsque tu sois là »). « Qu''en » = « que + en » (pronom) : « Qu''en penses-tu ? » (= que penses-tu de cela ?). Méthode : si on peut remplacer par « lorsque » → quand. Si on peut développer en « que + en » → qu''en.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000004','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Elle part _____ ses parents. » (chez / et)',null,
'[{"id":"a","label":"chez"},{"id":"b","label":"et"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Chez » est une préposition indiquant la demeure ou la présence d''une personne : « chez ses parents » (= au domicile de ses parents). « Et » est une conjonction de coordination reliant deux éléments. Ce cas est simple mais permet de rappeler que certains homophones sont de natures grammaticales très différentes et que leur identification passe par l''analyse de la fonction dans la phrase.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000005','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Il a fait _____ qu''il pouvait. » (ce / se / ceux)',null,
'[{"id":"a","label":"ce"},{"id":"b","label":"se"},{"id":"c","label":"ceux"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Ce qu''il pouvait » : « ce » est un pronom démonstratif neutre (= la chose, tout ce que). On peut développer : « il a fait tout ce qu''il pouvait ». « Se » est un pronom réfléchi. « Ceux » est un pronom démonstratif pluriel masculin (= les personnes/objets). Méthode : remplacer par « cela » → si ça marche (il a fait cela) → « ce » démonstratif.',
'valide','CRPE Français — Enrichissement Orthographe','free',true)

;

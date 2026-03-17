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
-- Distribution correcte : Q1=d, Q2=b, Q3=vrai_faux, Q4=a, Q5=c
-- ================================================================

('80000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : « Les photos que nous avons _____ sont magnifiques. »',null,
'[{"id":"a","label":"pris"},{"id":"b","label":"prise"},{"id":"c","label":"prit"},{"id":"d","label":"prises"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le COD « que » représente « les photos » — féminin pluriel — et il est placé avant l''auxiliaire avoir. Méthode : repère le COD (les photos), détermine son genre et nombre (fém. plur.), vérifie qu''il est avant l''auxiliaire → accord ! Si le COD arrive après (« Nous avons pris des photos »), pas d''accord. Position, position, position — c''est la clé de tout !',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : « Combien de livres as-tu _____ ce mois-ci ? »',null,
'[{"id":"a","label":"lu"},{"id":"b","label":"lus"},{"id":"c","label":"lue"},{"id":"d","label":"lues"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Combien de livres » est le COD — masculin pluriel — placé avant l''auxiliaire par l''inversion interrogative. L''inversion ne change rien à la règle ! Le COD reste bien avant l''auxiliaire → accord au masculin pluriel : « lus ». Identifie « combien de livres » comme COD (tu as lu quoi ?) et l''accord coule de source.',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux : dans « Elle les a vus partir », le participe « vus » s''accorde parce que « les » est COD placé avant avoir.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! « Les » est le COD de « voir », placé avant l''auxiliaire → accord : « vus » (masculin pluriel). Avec les verbes de perception + infinitif (voir, entendre, regarder...), on accorde avec le COD si c''est lui le sujet logique de l''infinitif. Ici, « les » représente les personnes qui partent — elles font l''action → accord !',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : « La décision qu''elle a _____ était difficile à prendre. »',null,
'[{"id":"a","label":"prise"},{"id":"b","label":"pris"},{"id":"c","label":"prises"},{"id":"d","label":"prenant"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le COD « qu'' » représente « la décision » — féminin singulier — avant l''auxiliaire → accord au féminin singulier : « prise ». « Prises » ? Non, ce serait pour un féminin pluriel. « Pris » ? Non, ce serait sans accord. La relative en « que » est toujours un COD antéposé → accord systématique. Retiens ce réflexe !',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

('80000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Dans « Les efforts qu''elle a fournis ont payé », pourquoi « fournis » prend-il un « s » ?',null,
'[{"id":"a","label":"Parce que le verbe « fournir » est toujours au pluriel"},{"id":"b","label":"Parce que le sujet « elle » commande l''accord"},{"id":"c","label":"Parce que le COD « qu'' » représente « les efforts » (masculin pluriel), placé avant l''auxiliaire avoir"},{"id":"d","label":"Parce que « fourni » se termine toujours par -s au masculin"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le pronom relatif « qu'' » représente « les efforts » — masculin pluriel — COD placé avant l''auxiliaire → accord : « fournis ». Attention : le sujet « elle » ne commande jamais l''accord du participe passé avec avoir ! C''est une règle fondamentale. Seul le COD antéposé à l''auxiliaire avoir entraîne l''accord.',
'valide','CRPE Français — Enrichissement Orthographe','premium',true),

-- ================================================================
-- ENRICHISSEMENT — ort_accord_sv (5 questions supplémentaires)
-- Série 81
-- Distribution correcte : Q1=b, Q2=d, Q3=a, Q4=vrai_faux, Q5=b
-- ================================================================

('81000000-0000-0000-0000-000000000001','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « La plupart des élèves _____ absent(e)s ce jour-là. »',null,
'[{"id":"a","label":"était"},{"id":"b","label":"étaient"},{"id":"c","label":"étais"},{"id":"d","label":"serait"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec « la plupart de + complément », le verbe s''accorde avec le complément du nom : « des élèves » est pluriel → « étaient ». « La plupart » tout seul (sans complément) entraîne aussi le pluriel — sous-entendu « des gens ». C''est une exception à la règle du sujet grammatical et elle est bien connue des correcteurs du CRPE !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000002','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « Ni lui ni elle ne _____ venu(s). »',null,
'[{"id":"a","label":"est"},{"id":"b","label":"suis"},{"id":"c","label":"serait"},{"id":"d","label":"sont"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Avec « ni... ni... », les deux sujets s''additionnent dans la négation → le verbe passe au pluriel : « Ni lui ni elle ne sont venus ». Le singulier est possible si les deux forment une alternative exclusive (l''un ou l''autre mais pas les deux), mais en pratique courante, le pluriel est préféré et attendu.',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000003','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « C''est vous qui _____ responsable(s). »',null,
'[{"id":"a","label":"êtes"},{"id":"b","label":"est"},{"id":"c","label":"sommes"},{"id":"d","label":"soyez"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''antécédent de « qui » c''est « vous » — 2e personne du pluriel. Le verbe de la relative s''accorde avec cet antécédent : « vous êtes ». La formule présentative « c''est vous qui » exige la 2e personne du pluriel — c''est ferme. Repère l''antécédent de « qui » et le reste suit !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000004','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux : dans « L''un et l''autre hésitent », l''accord au pluriel est correct.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! « L''un et l''autre » accepte les deux : singulier si on insiste sur chaque individu (« L''un et l''autre hésite »), pluriel si on les traite comme un ensemble (« hésitent »). Les deux sont admis — mais le pluriel est plus courant et naturel. Au CRPE, les deux formes sont acceptées si tu sais les justifier !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('81000000-0000-0000-0000-000000000005','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : « Vingt pour cent des réponses _____ incorrect(e)s. »',null,
'[{"id":"a","label":"était"},{"id":"b","label":"étaient"},{"id":"c","label":"avait"},{"id":"d","label":"aurait été"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec un sujet de type « pourcentage + de + nom », le verbe s''accorde avec le nom complément : « des réponses » est féminin pluriel → « étaient ». Règle valable pour les fractions, pourcentages, expressions de quantité (la moitié de, un tiers de, 20 % de...) : c''est le nom qui suit « de » qui commande l''accord du verbe !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

-- ================================================================
-- ENRICHISSEMENT — ort_pp_etre (5 questions supplémentaires)
-- Série 82
-- Distribution correcte : Q1=c, Q2=b, Q3=vrai_faux, Q4=d, Q5=b
-- ================================================================

('82000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Choisissez la forme correcte : « Les filles sont _____ (partir) ce matin. »',null,
'[{"id":"a","label":"parti"},{"id":"b","label":"partie"},{"id":"c","label":"parties"},{"id":"d","label":"partant"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Avec l''auxiliaire être, le participe passé s''accorde avec le sujet — toujours. Le sujet est « les filles » : féminin pluriel → « parties ». Règle de base, à ne jamais oublier : PP avec être = accord en genre et en nombre avec le sujet. Ne confonds pas avec avoir où c''est le COD antéposé qui commande !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Dans « Ils se sont lavé les mains », comment s''accorde le participe passé ?',null,
'[{"id":"a","label":"lavés (accord avec le sujet ils)"},{"id":"b","label":"lavé (pas d''accord car le COD est placé après le verbe)"},{"id":"c","label":"lavées (accord avec « les mains »)"},{"id":"d","label":"lavé (car les verbes pronominaux sont toujours invariables)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Pose-toi la bonne question : ils se sont lavé quoi ? → « les mains » (COD après le verbe). COD postposé → pas d''accord. Si le COD était avant (« les mains qu''ils se sont lavées »), là oui ! Le pronom « se » est ici COI (à eux-mêmes), pas COD. Règle complexe mais fréquente au CRPE — entraîne-toi bien !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','vrai_faux',
'Vrai ou faux : dans « Elle s''est souvenue de lui », le participe « souvenue » s''accorde parce que le verbe « se souvenir » est un pronominal de sens réciproque.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! « Se souvenir » est un verbe essentiellement pronominal — il ne s''emploie qu''à la forme pronominale. Pour ces verbes, le participe s''accorde avec le sujet, comme si c''était un verbe avec être : « elle s''est souvenue ». Ce n''est pas réciproque. Les pronominaux essentiels s''accordent toujours avec le sujet — retiens cette catégorie !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Choisissez la forme correcte : « Les erreurs que nous nous sommes _____ (permettre). »',null,
'[{"id":"a","label":"permis"},{"id":"b","label":"permises"},{"id":"c","label":"permettu"},{"id":"d","label":"permises"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Analyse : « que » représente « les erreurs » — féminin pluriel — et c''est le COD antéposé. Le pronom « nous » (se) est ici COI (à nous-mêmes). COD féminin pluriel avant → accord : « permises ». La forme correcte : « les erreurs que nous nous sommes permises ». Identifie bien le COD et sa position — c''est tout !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('82000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Dans « Elles se sont souri », pourquoi le participe passé est-il invariable ?',null,
'[{"id":"a","label":"Parce que « sourire » est un verbe défectif"},{"id":"b","label":"Parce que le verbe « sourire » se construit avec « à » : le pronom « se » est COI (elles ont souri à elles-mêmes / l''une à l''autre), donc pas de COD antéposé"},{"id":"c","label":"Parce que le sujet est féminin pluriel mais le sourire est neutre"},{"id":"d","label":"Parce que les verbes réciproques sont toujours invariables, quelle que soit la construction"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Sourire à quelqu''un » — le pronom « se » représente un COI, pas un COD. Sans COD, le participe d''un verbe pronominal réciproque reste invariable. Même raisonnement pour : « elles se sont parlé » (parler à), « elles se sont téléphoné » (téléphoner à), « elles se sont nui » (nuire à). Ces verbes à COI sont toujours invariables au pronominal — mémorise-les !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

-- ================================================================
-- ENRICHISSEMENT — ort_homophones (5 questions supplémentaires)
-- Série 83
-- Distribution correcte : Q1=b, Q2=a, Q3=d, Q4=a, Q5=a
-- ================================================================

('83000000-0000-0000-0000-000000000001','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Il _____ rendu son devoir. » (ce / se)',null,
'[{"id":"a","label":"ce"},{"id":"b","label":"se"},{"id":"c","label":"ceux"},{"id":"d","label":"ces"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Se » est le pronom réfléchi du verbe pronominal : « il se rend compte », « il se lève ». Ici : « il se rendu » → pronom réfléchi → « se ». « Ce » est un déterminant ou pronom démonstratif (ce livre, c''est). Méthode : si on peut développer par un verbe pronominal (se rendre, se lever...) → c''est « se ». Simple !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000002','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « _____ livre est intéressant. » (ce / se)',null,
'[{"id":"a","label":"Ce"},{"id":"b","label":"Se"},{"id":"c","label":"Ceux"},{"id":"d","label":"Ces"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Ce » est le déterminant démonstratif qui introduit le nom « livre ». On peut le remplacer par « cet » (devant voyelle) ou « cette » (féminin). « Se » ne peut jamais précéder directement un nom — il vient toujours devant un verbe. Méthode : si on peut dire « cet » ou « cette » → c''est « ce » déterminant. Test infaillible !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000003','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Je viendrai _____ que tu sois là. » (quand / qu''en)',null,
'[{"id":"a","label":"qu''en"},{"id":"b","label":"quant"},{"id":"c","label":"quand bien même"},{"id":"d","label":"quand"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Quand » est ici une conjonction de temps équivalente à « lorsque » : « Je viendrai lorsque tu sois là » — ça fonctionne ! « Qu''en » = que + en (pronom) : « Qu''en penses-tu ? ». Test express : peut-on remplacer par « lorsque » ? Oui → quand. Peut-on développer en « que + en » ? Non → pas qu''en. Un test suffit !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000004','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Elle part _____ ses parents. » (chez / et)',null,
'[{"id":"a","label":"chez"},{"id":"b","label":"et"},{"id":"c","label":"ses"},{"id":"d","label":"ces"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Chez » est une préposition qui indique la demeure ou la présence d''une personne : « chez ses parents » = au domicile de ses parents. « Et » est une conjonction de coordination qui relie deux éléments. Ici il s''agit d''un lieu, pas d''une liaison entre deux mots — c''est « chez » sans hésitation. L''analyse de la fonction dans la phrase, c''est la clé pour ne plus confondre !',
'valide','CRPE Français — Enrichissement Orthographe','free',true),

('83000000-0000-0000-0000-000000000005','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la bonne orthographe : « Il a fait _____ qu''il pouvait. » (ce / se / ceux)',null,
'[{"id":"a","label":"ce"},{"id":"b","label":"se"},{"id":"c","label":"ceux"},{"id":"d","label":"ces"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Ce qu''il pouvait » : « ce » est un pronom démonstratif neutre — la chose, tout ce que. Teste : peut-on dire « il a fait cela » ? Oui → « ce » démonstratif. « Se » est un pronom réfléchi. « Ceux » est un démonstratif pluriel masculin (les personnes). Méthode de remplacement par « cela » : si ça marche → c''est « ce ». Ça ne rate jamais !',
'valide','CRPE Français — Enrichissement Orthographe','free',true)

;

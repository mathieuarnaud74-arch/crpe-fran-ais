-- CRPE FranÃ§ais â€” Lot 2 : Orthographe (5 sÃ©ries Ã— 10 questions)
-- topic_key unique par sÃ©rie garantit le regroupement en session de 10 questions
-- Appliquer APRÃˆS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÃ‰RIE 11 â€” Accord sujet-verbe â€” Facile â€” free
-- ================================================================
('11000000-0000-0000-0000-000000000001','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correctement accordÃ©e : "Les Ã©lÃ¨ves ___ attentivement."',null,
'[{"id":"a","label":"Ã©coute"},{"id":"b","label":"Ã©coutent"},{"id":"c","label":"Ã©coutez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le sujet "les Ã©lÃ¨ves" est Ã  la 3e personne du pluriel. Le verbe "Ã©couter" se conjugue donc "Ã©coutent" (ils/elles Ã©coutent). La terminaison -ent est la marque de la 3e personne du pluriel au prÃ©sent pour les verbes du 1er groupe.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000002','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "C''est toi qui ___ raison."',null,
'[{"id":"a","label":"a"},{"id":"b","label":"as"},{"id":"c","label":"avez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Quand le pronom relatif "qui" a pour antÃ©cÃ©dent "toi", le verbe se conjugue Ã  la 2e personne du singulier : "tu as". La rÃ¨gle est : "c''est toi qui as" et non "c''est toi qui a".',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000003','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','correction_orthographique',
'Corrigez la phrase si nÃ©cessaire : "Ni le directeur ni les enseignants n''a pris la parole."',null,
null,
'{"mode":"text","acceptableAnswers":["Ni le directeur ni les enseignants n''ont pris la parole."]}'::jsonb,
'Avec "niâ€¦ niâ€¦", quand les deux sujets sont au pluriel ou de personnes diffÃ©rentes, le verbe se met au pluriel. Ici "les enseignants" est pluriel, donc "n''ont pris" est correct.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000004','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux ? Dans "Une foule de touristes envahissait la place", le verbe s''accorde avec "foule" (singulier).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Quand le sujet est un nom collectif suivi d''un complÃ©ment (foule de, groupe de, troupe deâ€¦), le verbe peut s''accorder avec le collectif (singulier) ou avec le complÃ©ment (pluriel). L''accord avec "foule" (singulier) est ici courant et correct.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000005','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Quelle phrase est correctement accordÃ©e ?',null,
'[{"id":"a","label":"La plupart des Ã©lÃ¨ves a rÃ©ussi."},{"id":"b","label":"La plupart des Ã©lÃ¨ves ont rÃ©ussi."},{"id":"c","label":"La plupart des Ã©lÃ¨ves rÃ©ussit."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"La plupart" est suivi d''un complÃ©ment au pluriel ("des Ã©lÃ¨ves"), donc le verbe se met au pluriel : "ont rÃ©ussi". C''est la rÃ¨gle habituelle pour "la plupart de + pluriel".',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000006','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "Chacun des candidats ___ prÃ©parÃ© son dossier."',null,
'[{"id":"a","label":"ont"},{"id":"b","label":"a"},{"id":"c","label":"avez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Chacun" est un pronom indÃ©fini singulier. MÃªme quand il est suivi d''un complÃ©ment au pluriel ("des candidats"), le verbe s''accorde avec "chacun" au singulier : "chacun a prÃ©parÃ©".',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000007','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','correction_orthographique',
'Corrigez la phrase : "Le chat et le chien dort dans le jardin."',null,
null,
'{"mode":"text","acceptableAnswers":["Le chat et le chien dorment dans le jardin."]}'::jsonb,
'Deux sujets coordonnÃ©s par "et" forment un sujet pluriel. Le verbe "dormir" doit donc Ãªtre conjuguÃ© Ã  la 3e personne du pluriel : "dorment". La rÃ¨gle est : sujet A + et + sujet B â†’ verbe au pluriel.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000008','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Quelle est la forme correcte : "Tout le monde ___ satisfait du rÃ©sultat."',null,
'[{"id":"a","label":"sont"},{"id":"b","label":"est"},{"id":"c","label":"sommes"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Tout le monde" est un groupe nominal singulier (bien qu''il dÃ©signe plusieurs personnes). Le verbe s''accorde toujours au singulier : "tout le monde est". C''est une exception Ã  surveiller.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000009','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux ? Dans "C''est nous qui partons les premiers", le verbe "partons" est correctement accordÃ©.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Quand "qui" a pour antÃ©cÃ©dent un pronom personnel (nous, vous, moi, toi), le verbe s''accorde avec ce pronom. "C''est nous qui partons" â†’ 1re personne du pluriel. Idem : "c''est moi qui suis".',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000010','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "Vingt pour cent des Ã©lÃ¨ves ___ absent(s)."',null,
'[{"id":"a","label":"est"},{"id":"b","label":"sont"},{"id":"c","label":"a Ã©tÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec un sujet de type "pourcentage + de + pluriel", le verbe s''accorde gÃ©nÃ©ralement avec le complÃ©ment pluriel. "Vingt pour cent des Ã©lÃ¨ves sont absents" est la forme recommandÃ©e par les grammairiens.',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 12 â€” Participe passÃ© avec Ãªtre â€” IntermÃ©diaire â€” free
-- ================================================================
('12000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Choisissez l''accord correct : "Les actrices sont ___ sur scÃ¨ne."',null,
'[{"id":"a","label":"montÃ©s"},{"id":"b","label":"montÃ©es"},{"id":"c","label":"montÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec l''auxiliaire "Ãªtre", le participe passÃ© s''accorde en genre et en nombre avec le sujet. Le sujet "les actrices" est fÃ©minin pluriel â†’ "montÃ©es" (fÃ©minin pluriel du participe de "monter").',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "Paul et Marie sont partis en vacances."',null,
null,
'{"mode":"text","acceptableAnswers":["Paul et Marie sont partis en vacances."]}'::jsonb,
'La phrase est correcte. Le sujet est "Paul et Marie" (masculin + fÃ©minin = accord au masculin pluriel). "Partis" est bien au masculin pluriel. La rÃ¨gle du genre mixte : le masculin l''emporte.',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Accordez correctement : "La candidate dit : Je suis ___ de ces rÃ©sultats."',null,
'[{"id":"a","label":"fiÃ¨re"},{"id":"b","label":"fier"},{"id":"c","label":"fiers"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le contexte prÃ©cise qu''une candidate parle. L''attribut du sujet avec "Ãªtre" s''accorde donc au fÃ©minin singulier : "je suis fiÃ¨re".',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Elle s''est lavÃ© les mains", le participe passÃ© "lavÃ©" ne s''accorde pas car "les mains" est COD placÃ© aprÃ¨s.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Avec les verbes pronominaux, si le COD est placÃ© aprÃ¨s le verbe, le participe reste invariable. Ici "les mains" est COD placÃ© aprÃ¨s "lavÃ©" â†’ pas d''accord. Si le COD Ã©tait avant : "les mains qu''elle s''est lavÃ©es".',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Quelle phrase est correcte ?',null,
'[{"id":"a","label":"Les feuilles sont tombÃ©es."},{"id":"b","label":"Les feuilles sont tombÃ©s."},{"id":"c","label":"Les feuilles sont tombÃ©."}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Tomber" est un verbe intransitif qui se conjugue avec "Ãªtre". Le sujet "les feuilles" est fÃ©minin pluriel â†’ participe "tombÃ©es" (fÃ©minin pluriel). C''est l''accord standard avec l''auxiliaire Ãªtre.',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Elles se sont regardÃ©s dans le miroir."',null,
null,
'{"mode":"text","acceptableAnswers":["Elles se sont regardÃ©es dans le miroir."]}'::jsonb,
'Le verbe "se regarder" est un verbe pronominal rÃ©flÃ©chi. Le pronom "se" est COD (elles regardent quoi ? â†’ se). Le COD est placÃ© avant l''auxiliaire â†’ accord avec le sujet "elles" (fÃ©minin pluriel) â†’ "regardÃ©es".',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Accordez le participe : "Les lettres qu''il a ___ (Ã©crire)."',null,
'[{"id":"a","label":"Ã©crit"},{"id":"b","label":"Ã©crites"},{"id":"c","label":"Ã©crits"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec l''auxiliaire "avoir", le participe passÃ© s''accorde avec le COD si celui-ci est placÃ© avant le verbe. Ici "que" (= les lettres, fÃ©minin pluriel) est COD antÃ©posÃ© â†’ "Ã©crites" (fÃ©minin pluriel).',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','vrai_faux',
'Vrai ou faux ? "Ils se sont parlÃ© toute la nuit" â€” le participe "parlÃ©" est correctement invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. "Se parler" est un verbe pronominal rÃ©ciproque Ã  sens indirect (on parle Ã  quelqu''un). Le pronom "se" est COI, non COD. Avec un COI, le participe reste invariable : "ils se sont parlÃ©" (ils ont parlÃ© l''un Ã  l''autre).',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Choisissez la forme correcte : "Elles sont ___ (naÃ®tre) le mÃªme jour."',null,
'[{"id":"a","label":"nÃ©s"},{"id":"b","label":"nÃ©es"},{"id":"c","label":"nÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"NaÃ®tre" se conjugue avec "Ãªtre". Le sujet "elles" est fÃ©minin pluriel â†’ le participe "nÃ©" s''accorde au fÃ©minin pluriel : "nÃ©es". L''accord avec Ãªtre : toujours en genre et en nombre avec le sujet.',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "La directrice est venue et a prÃ©sentÃ© son Ã©quipe."',null,
null,
'{"mode":"text","acceptableAnswers":["La directrice est venue et a prÃ©sentÃ© son Ã©quipe."]}'::jsonb,
'La phrase est correcte. "Venue" s''accorde avec "la directrice" (fÃ©minin singulier, avec Ãªtre). "PrÃ©sentÃ©" ne s''accorde pas car COD "son Ã©quipe" est placÃ© aprÃ¨s le verbe (avec avoir). Les deux rÃ¨gles sont bien appliquÃ©es.',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 13 â€” Participe passÃ© avec avoir â€” IntermÃ©diaire â€” premium
-- ================================================================
('13000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : "Les livres que j''ai ___ (lire) m''ont passionnÃ©."',null,
'[{"id":"a","label":"lu"},{"id":"b","label":"lus"},{"id":"c","label":"lues"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec "avoir", le participe s''accorde avec le COD placÃ© avant le verbe. "Que" reprend "les livres" (masculin pluriel) et est COD antÃ©posÃ© â†’ "lus" (masculin pluriel). Si le COD Ã©tait fÃ©minin pluriel : "les histoires que j''ai lues".',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? "Nous avons chantÃ© toute la soirÃ©e" â€” le participe "chantÃ©" est invariable car il n''y a pas de COD.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. "Chanter" est ici employÃ© sans COD (complÃ©ment d''objet direct). Avec "avoir", si le COD n''est pas placÃ© avant le verbe (ou absent), le participe reste invariable. "ChantÃ©" est donc correctement non accordÃ©.',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Quelle phrase est correctement accordÃ©e ?',null,
'[{"id":"a","label":"Combien de pommes as-tu mangÃ©es ?"},{"id":"b","label":"Combien de pommes as-tu mangÃ© ?"},{"id":"c","label":"Combien de pommes as-tu mangÃ©s ?"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Combien de pommes" est le COD placÃ© avant "mangÃ©" (par inversion interrogative). "Pommes" est fÃ©minin pluriel â†’ accord : "mangÃ©es". L''accord se fait bien avec le COD antÃ©posÃ©, quelle que soit la construction interrogative.',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Les films qu''on a vus hier Ã©taient magnifiques."',null,
null,
'{"mode":"text","acceptableAnswers":["Les films qu''on a vus hier Ã©taient magnifiques."]}'::jsonb,
'La phrase est dÃ©jÃ  correcte. "Que" reprend "les films" (masculin pluriel), COD antÃ©posÃ© â†’ "vus" (masculin pluriel). Attention : on confond parfois avec "voir" Ã  l''infinitif, mais ici c''est bien le participe passÃ© de "voir".',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Accordez : "Les erreurs qu''il a ___ (commettre) lui ont coÃ»tÃ© cher."',null,
'[{"id":"a","label":"commis"},{"id":"b","label":"commises"},{"id":"c","label":"commise"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Que" reprend "les erreurs" (fÃ©minin pluriel), COD placÃ© avant "commis". Participe passÃ© de "commettre" : "commis". AccordÃ© au fÃ©minin pluriel : "commises". L''accord s''applique : COD fÃ©minin pluriel antÃ©posÃ©.',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Je les ai laissÃ© partir", "laissÃ©" est invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai (selon la rÃ©forme orthographique de 1990 et la recommandation acadÃ©mique actuelle). Quand "laisser" est suivi d''un infinitif, le participe est invariable : "je les ai laissÃ© partir". Il en va de mÃªme pour "faire + infinitif" : "la robe qu''il a fait coudre".',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Quelle est la forme correcte : "La dÃ©cision qu''ils ont ___ (prendre) est contestable."',null,
'[{"id":"a","label":"pris"},{"id":"b","label":"prise"},{"id":"c","label":"prises"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Que" reprend "la dÃ©cision" (fÃ©minin singulier), COD antÃ©posÃ©. Participe passÃ© de "prendre" : "pris". AccordÃ© au fÃ©minin singulier : "prise". FÃ©minin singulier â†’ on ajoute un -e muet au masculin "pris" â†’ "prise".',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Quelle belle robe tu as achetÃ© !"',null,
null,
'{"mode":"text","acceptableAnswers":["Quelle belle robe tu as achetÃ©e !"]}'::jsonb,
'"Quelle belle robe" est le COD placÃ© avant le verbe (par dislocation en tÃªte de phrase). "Robe" est fÃ©minin singulier â†’ accord du participe passÃ© au fÃ©minin singulier : "achetÃ©e". RÃ¨gle : COD fÃ©minin singulier antÃ©posÃ© â†’ participe + -e.',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Accordez : "Ces enfants, je les ai ___ (voir) jouer dans la cour."',null,
'[{"id":"a","label":"vus"},{"id":"b","label":"vu"},{"id":"c","label":"vues"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Les" reprend "ces enfants" (masculin pluriel), COD antÃ©posÃ©. Avec un verbe de perception (voir, entendreâ€¦) suivi d''un infinitif, on accorde le participe avec le COD si ce COD est bien le sujet de l''infinitif. Ici les enfants jouent â†’ accord : "vus".',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Les cent euros que ce livre m''a coÃ»tÃ©", "coÃ»tÃ©" est invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Les verbes exprimant une mesure (coÃ»ter, valoir, peser, courir, durer, mesurerâ€¦) emploient un complÃ©ment de mesure, non un COD vÃ©ritable. Le participe reste invariable : "les efforts que cela m''a coÃ»tÃ©", "les kilos qu''il a pesÃ©".',
'valide','CRPE FranÃ§ais V2','premium',true),

-- ================================================================
-- SÃ‰RIE 14 â€” Homophones grammaticaux â€” Facile â€” free
-- ================================================================
('14000000-0000-0000-0000-000000000001','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "Il faut que tu ___ prudent."',null,
'[{"id":"a","label":"sois"},{"id":"b","label":"soit"},{"id":"c","label":"soie"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Il faut que" introduit une proposition subordonnÃ©e au subjonctif. "Tu" â†’ subjonctif prÃ©sent de "Ãªtre" : "sois". Ã€ distinguer de "soit" (3e pers. sing. subjonctif ou conjonction) et "soie" (le tissu).',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000002','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','correction_orthographique',
'Corrigez si nÃ©cessaire : "C''est pour sa qu''il est venu."',null,
null,
'{"mode":"text","acceptableAnswers":["C''est pour Ã§a qu''il est venu."]}'::jsonb,
'"Ã‡a" est un pronom dÃ©monstratif (= cela). "Sa" est un dÃ©terminant possessif fÃ©minin (sa voiture, sa maison). Test : peut-on remplacer par "cela" ? Oui â†’ "Ã§a". Peut-on remplacer par "ma/ta" ? Non â†’ ce n''est pas "sa".',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000003','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "___ appris, il a rÃ©ussi."',null,
'[{"id":"a","label":"Bien"},{"id":"b","label":"BientÃ´t"},{"id":"c","label":"Ayant"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La structure "ayant + participe passÃ©" forme un participe composÃ©. Elle exprime ici l''antÃ©rioritÃ© : aprÃ¨s avoir appris, il a rÃ©ussi. "Bien appris" n''est pas grammaticalement Ã©quivalent dans ce contexte.',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000004','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Quelle graphie est correcte dans : "___ enfants jouent dans la cour."',null,
'[{"id":"a","label":"Ses"},{"id":"b","label":"Ces"},{"id":"c","label":"C''est"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Ces" est un dÃ©terminant dÃ©monstratif pluriel (= ces enfants-lÃ ). Test : peut-on remplacer par "cesâ€¦ -lÃ " ? Oui â†’ "ces". "Ses" serait un possessif (ses enfants Ã  lui/elle). "C''est" est une locution verbale (c''est beau).',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000005','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','vrai_faux',
'Vrai ou faux ? Dans "Il a Ã©tait malade", la graphie "Ã©tait" est correcte.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. "A" est l''auxiliaire avoir (prÃ©sent). Il doit Ãªtre suivi du participe passÃ© de "Ãªtre" : "Ã©tÃ©". "Il a Ã©tÃ© malade" est correct. "Ã‰tait" est l''imparfait de "Ãªtre" (= il Ã©tait malade). On ne mÃ©lange pas les deux formes.',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000006','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "Je ne sais pas ___ rÃ©pondre."',null,
'[{"id":"a","label":"quoi"},{"id":"b","label":"quoique"},{"id":"c","label":"comment"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Quoi" est un pronom interrogatif qui peut introduire une complÃ©tive infinitive : "je ne sais pas quoi rÃ©pondre" (= je ne sais pas quoi dire). "Comment" changerait le sens (maniÃ¨re, pas l''objet). "Quoique" est une conjonction de concession.',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000007','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','correction_orthographique',
'Corrigez la phrase : "Il ce lÃ¨ve tÃ´t chaque matin."',null,
null,
'{"mode":"text","acceptableAnswers":["Il se lÃ¨ve tÃ´t chaque matin."]}'::jsonb,
'"Se" est le pronom rÃ©flÃ©chi du verbe pronominal "se lever". "Ce" est un dÃ©terminant dÃ©monstratif (ce livre) ou un pronom dÃ©monstratif (ce que je veux). Test : peut-on remplacer par "le/la" ? Non â†’ c''est "se" (pronom rÃ©flÃ©chi).',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000008','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Quelle graphie est correcte : "Je ne sais pas ___ il court."',null,
'[{"id":"a","label":"oÃ¹"},{"id":"b","label":"ou"},{"id":"c","label":"au"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"OÃ¹" avec accent grave introduit ici un repÃ¨re de lieu. "Ou" sans accent est une conjonction de coordination (= ou bien). On ne peut pas dire "je ne sais pas ou bien il court" : la bonne graphie est donc "oÃ¹".',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000009','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','vrai_faux',
'Vrai ou faux ? "On" peut toujours Ãªtre remplacÃ© par "nous" dans une phrase.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. "On" pronom indÃ©fini peut dÃ©signer n''importe qui (valeur gÃ©nÃ©rale : "on dit queâ€¦"). Il ne peut alors pas Ãªtre remplacÃ© par "nous". Seul le "on" de valeur personnelle (= nous, registre oral) admet cette substitution : "on y va" = "nous y allons".',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000010','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "___ tu arrives, appelle-moi."',null,
'[{"id":"a","label":"Quand"},{"id":"b","label":"Quant"},{"id":"c","label":"Qu''en"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Quand" = conjonction de temps (quand tu arrives = lorsque tu arrives). "Quant Ã " = locution prÃ©positionnelle (quant Ã  moiâ€¦). "Qu''en" = que + en (qu''en penses-tu ?). Test : peut-on remplacer par "lorsque" ? Oui â†’ "quand".',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 15 â€” Pluriel dans le groupe nominal â€” IntermÃ©diaire â€” free
-- ================================================================
('15000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Choisissez la forme correcte au pluriel : "Un bal â†’ des ___."',null,
'[{"id":"a","label":"bals"},{"id":"b","label":"baux"},{"id":"c","label":"balles"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Bal" fait "bals" au pluriel (exception aux noms en -al qui font -aux). D''autres exceptions : carnaval â†’ carnavals, festival â†’ festivals, rÃ©cital â†’ rÃ©citals. La rÃ¨gle gÃ©nÃ©rale -al â†’ -aux ne s''applique pas Ã  tous les mots.',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Mettez au pluriel le groupe nominal : "Un Å“il bleu."',null,
null,
'{"mode":"text","acceptableAnswers":["Des yeux bleus."]}'::jsonb,
'"Å’il" a un pluriel irrÃ©gulier : "yeux". C''est un pluriel issu du latin (oculus â†’ oculi). L''adjectif "bleu" s''accorde en genre et nombre : "yeux bleus" (masculin pluriel). Ne pas confondre avec "des Å“ils-de-bÅ“uf" (fenÃªtre ronde, pluriel rÃ©gulier dans le composÃ©).',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel est le pluriel correct de "un pneu" ?',null,
'[{"id":"a","label":"des pneux"},{"id":"b","label":"des pneus"},{"id":"c","label":"des pneaux"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les noms terminÃ©s en -eu prennent un -x au pluriel (ex. : jeu â†’ jeux, feu â†’ feux, neveu â†’ neveux). Mais "pneu" fait exception et prend un -s : "des pneus". MÃªme rÃ¨gle pour "bleu" â†’ "des bleus".',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','vrai_faux',
'Vrai ou faux ? L''adjectif "nouveau" devient "nouveaux" au masculin pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Les adjectifs terminÃ©s en -eau forment leur pluriel en -eaux : beau â†’ beaux, nouveau â†’ nouveaux, jumeau â†’ jumeaux. Au fÃ©minin : nouvelle â†’ nouvelles. Au fÃ©minin singulier : nouvelle. Les adjectifs en -eau sont Ã  double base (beau/bel, nouveau/nouvel devant voyelle).',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Choisissez le pluriel correct : "Un bijou â†’ des ___."',null,
'[{"id":"a","label":"bijous"},{"id":"b","label":"bijoux"},{"id":"c","label":"bijoues"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les noms en -ou prennent gÃ©nÃ©ralement un -s, mais sept exceptions prennent -x : bijou, caillou, chou, genou, hibou, joujou, pou â†’ bijoux, cailloux, choux, genoux, hiboux, joujoux, poux. Moyen mnÃ©motechnique : "Bijou, caillou, chou, genou, hibou, joujou, pou".',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Mettez au pluriel : "Un grand festival international."',null,
null,
'{"mode":"text","acceptableAnswers":["De grands festivals internationaux."]}'::jsonb,
'"Festival" est une exception Ã  la rÃ¨gle -al â†’ -aux : il fait "festivals". Devant un adjectif pluriel placÃ© avant le nom, l''article indÃ©fini "des" devient "de" : on Ã©crit donc "de grands festivals internationaux".',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel est le pluriel correct de "un poids lourd" ?',null,
'[{"id":"a","label":"des poids lourds"},{"id":"b","label":"des poid lourds"},{"id":"c","label":"des poids loud"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Poids" s''Ã©crit dÃ©jÃ  avec un -s au singulier (Ã©tymologie : latin pensum). Il ne change pas au pluriel. "Lourd" est un adjectif Ã©pithÃ¨te qui s''accorde avec "poids" (masculin pluriel) â†’ "lourds". La graphie du nom reste invariable.',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','vrai_faux',
'Vrai ou faux ? "Des garde-fous" est le pluriel correct de "un garde-fou".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Dans les noms composÃ©s avec un verbe + nom, le nom peut s''accorder (si le sens le permet) ou rester invariable selon les usages. "Garde-fou" (ce qui garde des fous = barriÃ¨re de sÃ©curitÃ©) : "garde" est un verbe (invariable) + "fou" prend le pluriel â†’ garde-fous.',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel accord est correct dans "des noms ___ (propre)" ?',null,
'[{"id":"a","label":"propres"},{"id":"b","label":"propre"},{"id":"c","label":"propres ou propre"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''adjectif qualificatif s''accorde en genre et en nombre avec le nom auquel il se rapporte. "Noms" est masculin pluriel â†’ "propres" (masculin pluriel). L''adjectif "propre" prend un -s au pluriel, qu''il soit masculin ou fÃ©minin.',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "Elle porte des bague en or."',null,
null,
'{"mode":"text","acceptableAnswers":["Elle porte des bagues en or."]}'::jsonb,
'Le dÃ©terminant "des" est le pluriel indÃ©fini. Il impose que le nom soit au pluriel : "des bagues". Le groupe prÃ©positionnel "en or" reste invariable (l''or ne se met pas au pluriel dans ce type d''expression de matiÃ¨re).',
'valide','CRPE FranÃ§ais V2','free',true);



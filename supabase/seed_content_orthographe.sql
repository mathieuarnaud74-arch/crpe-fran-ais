-- CRPE FranÃ§ais â€" Lot 2 : Orthographe (5 sÃ©ries Ã— 10 questions)
-- topic_key unique par sÃ©rie garantit le regroupement en session de 10 questions
-- Appliquer APRÃˆS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÃ‰RIE 11 â€" Accord sujet-verbe â€" Facile â€" free
-- ================================================================
('11000000-0000-0000-0000-000000000001','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correctement accordÃ©e : "Les Ã©lÃ¨ves ___ attentivement."',null,
'[{"id":"a","label":"Ã©coute"},{"id":"b","label":"Ã©coutent"},{"id":"c","label":"Ã©coutez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Regarde bien ton sujet : "les Ã©lÃ¨ves", c''est du pluriel â€" 3e personne ! Le verbe Ã©couter suit donc les Ã©lÃ¨ves, et Ã  la 3e personne du pluriel tu Ã©cris "Ã©coutent". Ce petit -ent final, c''est la marque du pluriel pour tous les verbes du 1er groupe. Retiens-le bien !',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000002','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "C''est toi qui ___ raison."',null,
'[{"id":"a","label":"a"},{"id":"b","label":"as"},{"id":"c","label":"avez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Attention, piÃ¨ge classique ! Quand "qui" a pour antÃ©cÃ©dent "toi", le verbe suit "toi" â€" donc 2e personne du singulier. On dit "c''est toi qui as" et jamais "c''est toi qui a". Le verbe s''accorde avec l''antÃ©cÃ©dent de "qui", pas avec ce qui prÃ©cÃ¨de directement.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000003','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','correction_orthographique',
'Corrigez la phrase si nÃ©cessaire : "Ni le directeur ni les enseignants n''a pris la parole."',null,
null,
'{"mode":"text","acceptableAnswers":["Ni le directeur ni les enseignants n''ont pris la parole."]}'::jsonb,
'Avec "ni... ni...", regarde le deuxiÃ¨me sujet : "les enseignants" est au pluriel ! Du coup le verbe passe au pluriel : "n''ont pris". La rÃ¨gle est simple â€" si l''un des deux sujets rÃ©clame le pluriel, le verbe le suit. C''est ça qui commande ici.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000004','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux ? Dans "Une foule de touristes envahissait la place", le verbe s''accorde avec "foule" (singulier).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est vrai ! Avec un nom collectif comme "foule", "groupe" ou "troupe" suivi d''un complÃ©ment, tu peux accorder avec le collectif (singulier) ou avec le complÃ©ment (pluriel). Ici "envahissait" â€" singulier â€" s''accorde avec "foule" : c''est tout Ã  fait correct et mÃªme courant !',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000005','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Quelle phrase est correctement accordÃ©e ?',null,
'[{"id":"a","label":"La plupart des Ã©lÃ¨ves a rÃ©ussi."},{"id":"b","label":"La plupart des Ã©lÃ¨ves ont rÃ©ussi."},{"id":"c","label":"La plupart des Ã©lÃ¨ves rÃ©ussit."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"La plupart" est suivi de "des Ã©lÃ¨ves" â€" pluriel ! Et "la plupart de + pluriel", Ã§a tire toujours le verbe au pluriel : "ont rÃ©ussi". C''est la rÃ¨gle habituelle, retiens-la bien. Tu ne diras pas "la plupart a" quand il y a un complÃ©ment pluriel derriÃ¨re.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000006','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "Chacun des candidats ___ prÃ©parÃ© son dossier."',null,
'[{"id":"a","label":"ont"},{"id":"b","label":"a"},{"id":"c","label":"avez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Chacun" est un pronom indÃ©fini toujours singulier â€" mÃªme quand des candidats (pluriel) suivent ! Ne te laisse pas piÃ©ger par le complÃ©ment. "Chacun a prÃ©parÃ©" : c''est lui qui commande, c''est lui qui est singulier. Le verbe le suit sans hÃ©siter.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000007','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','correction_orthographique',
'Corrigez la phrase : "Le chat et le chien dort dans le jardin."',null,
null,
'{"mode":"text","acceptableAnswers":["Le chat et le chien dorment dans le jardin."]}'::jsonb,
'Deux sujets reliÃ©s par "et" â€" Ã§a fait un pluriel ! Le chat ET le chien, c''est deux sujets donc le verbe va au pluriel : "dorment". La formule Ã  retenir : sujet A + et + sujet B â†' verbe au pluriel, toujours !',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000008','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Quelle est la forme correcte : "Tout le monde ___ satisfait du rÃ©sultat."',null,
'[{"id":"a","label":"sont"},{"id":"b","label":"est"},{"id":"c","label":"sommes"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Attention, exception Ã  surveiller ! "Tout le monde" dÃ©signe plein de gens mais grammaticalement c''est un groupe singulier. Donc le verbe est toujours au singulier : "tout le monde est". Ne te laisse pas avoir par l''idÃ©e de pluralitÃ© â€" c''est le singulier qui gagne ici.',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000009','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux ? Dans "C''est nous qui partons les premiers", le verbe "partons" est correctement accordÃ©.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! Quand "qui" a pour antÃ©cÃ©dent un pronom personnel comme "nous", le verbe s''accorde avec ce pronom. "C''est nous qui partons" â†' 1re personne du pluriel. MÃªme logique : "c''est moi qui suis", "c''est toi qui es". C''est l''antÃ©cÃ©dent de "qui" qui donne le ton !',
'valide','CRPE FranÃ§ais V2','free',true),

('11000000-0000-0000-0000-000000000010','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "Vingt pour cent des Ã©lÃ¨ves ___ absent(s)."',null,
'[{"id":"a","label":"est"},{"id":"b","label":"sont"},{"id":"c","label":"a Ã©tÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec un sujet du type "pourcentage + de + pluriel", regarde ce qui suit "de" : "des Ã©lÃ¨ves" â€" pluriel ! C''est lui qui commande. Les grammairiens recommandent le pluriel : "vingt pour cent des Ã©lÃ¨ves sont absents". Le complÃ©ment pluriel aprÃ¨s "de" entraÃ®ne le pluriel du verbe.',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 12 â€" Participe passÃ© avec Ãªtre â€" IntermÃ©diaire â€" free
-- ================================================================
('12000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Choisissez l''accord correct : "Les actrices sont ___ sur scÃ¨ne."',null,
'[{"id":"a","label":"montÃ©s"},{"id":"b","label":"montÃ©es"},{"id":"c","label":"montÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec l''auxiliaire "Ãªtre", le participe passÃ© s''accorde avec le sujet â€" genre et nombre. Ton sujet ? "Les actrices" : fÃ©minin pluriel. Donc le participe prend -es : "montÃ©es". C''est la rÃ¨gle d''or avec Ãªtre : le participe suit le sujet comme son ombre !',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "Paul et Marie sont partis en vacances."',null,
null,
'{"mode":"text","acceptableAnswers":["Paul et Marie sont partis en vacances."]}'::jsonb,
'La phrase est dÃ©jÃ  correcte, c''est ça ! Sujet mixte (Paul masculin + Marie fÃ©minin) â†' on accorde au masculin pluriel. "Partis" : masculin pluriel, parfaitement justifiÃ©. La rÃ¨gle du genre mixte â€" le masculin l''emporte â€" est respectÃ©e ici Ã  la lettre.',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Accordez correctement : "La candidate dit : Je suis ___ de ces rÃ©sultats."',null,
'[{"id":"a","label":"fiÃ¨re"},{"id":"b","label":"fier"},{"id":"c","label":"fiers"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le contexte est clair : c''est une candidate qui parle. L''attribut du sujet avec "Ãªtre" s''accorde en genre et en nombre avec ce sujet. La candidate est fÃ©minine â†' "fiÃ¨re" avec un -e. Simple mais Ã  ne pas oublier quand le contexte donne le genre !',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Elle s''est lavÃ© les mains", le participe passÃ© "lavÃ©" ne s''accorde pas car "les mains" est COD placÃ© aprÃ¨s.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! Avec les verbes pronominaux, demande-toi : le COD est-il avant ou aprÃ¨s le verbe ? Ici "les mains" est aprÃ¨s "lavÃ©" â†' pas d''accord. Si le COD avait Ã©tÃ© avant, tu aurais Ã©crit : "les mains qu''elle s''est lavÃ©es". La position du COD est la clÃ© de tout !',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Quelle phrase est correcte ?',null,
'[{"id":"a","label":"Les feuilles sont tombÃ©es."},{"id":"b","label":"Les feuilles sont tombÃ©s."},{"id":"c","label":"Les feuilles sont tombÃ©."}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Tomber" se conjugue avec Ãªtre. Ton sujet : "les feuilles" â€" fÃ©minin pluriel. RÃ¨gle d''or avec Ãªtre : le participe suit le sujet. Donc "tombÃ©es" avec -es pour le fÃ©minin pluriel. Simple et limpide : c''est l''accord classique avec l''auxiliaire Ãªtre !',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Elles se sont regardÃ©s dans le miroir."',null,
null,
'{"mode":"text","acceptableAnswers":["Elles se sont regardÃ©es dans le miroir."]}'::jsonb,
'Demande-toi : elles regardent quoi ? â†' "se" (elles-mÃªmes), c''est le COD ! Et ce COD est placÃ© avant l''auxiliaire â†' accord avec "elles" : fÃ©minin pluriel â†' "regardÃ©es". Le "s" de "regardÃ©s" Ã©tait masculin â€" erreur ! Ici tout est fÃ©minin.',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Accordez le participe : "Les lettres qu''il a ___ (Ã©crire)."',null,
'[{"id":"a","label":"Ã©crit"},{"id":"b","label":"Ã©crites"},{"id":"c","label":"Ã©crits"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec avoir, le participe s''accorde avec le COD placÃ© avant le verbe. Ici "que" reprend "les lettres" â€" fÃ©minin pluriel â€" et il est bien avant l''auxiliaire. Donc "Ã©crites" : fÃ©minin pluriel. MÃ©thode : repÃ¨re le COD, dÃ©termine son genre et son nombre, vÃ©rifie sa position â€" et accorde !',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','vrai_faux',
'Vrai ou faux ? "Ils se sont parlÃ© toute la nuit" â€" le participe "parlÃ©" est correctement invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! "Se parler" â€" on parle À quelqu''un, donc "se" est COI et non COD. Avec un COI, pas d''accord : "parlÃ©" reste invariable. Ils ont parlÃ© l''un Ã  l''autre â€" c''est le sens indirect qui bloque l''accord. Retiens : COI â†' pas d''accord, COD antÃ©posÃ© â†' accord !',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','qcm',
'Choisissez la forme correcte : "Elles sont ___ (naÃ®tre) le mÃªme jour."',null,
'[{"id":"a","label":"nÃ©s"},{"id":"b","label":"nÃ©es"},{"id":"c","label":"nÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"NaÃ®tre" se conjugue avec Ãªtre â€" accord obligatoire avec le sujet. "Elles" : fÃ©minin pluriel â†' le participe "nÃ©" prend -es : "nÃ©es". Avec Ãªtre, souviens-toi : genre et nombre du sujet, toujours. Sans exception !',
'valide','CRPE FranÃ§ais V2','free',true),

('12000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pp_etre','Participe passÃ© avec Ãªtre','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "La directrice est venue et a prÃ©sentÃ© son Ã©quipe."',null,
null,
'{"mode":"text","acceptableAnswers":["La directrice est venue et a prÃ©sentÃ© son Ã©quipe."]}'::jsonb,
'C''est parfait, ne change rien ! "Venue" s''accorde avec "la directrice" (fÃ©minin singulier, avec Ãªtre). "PrÃ©sentÃ©" reste invariable car le COD "son Ã©quipe" est aprÃ¨s le verbe (avec avoir). Les deux rÃ¨gles sont respectÃ©es â€" bravo, c''est la maÃ®trise complÃ¨te !',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 13 â€" Participe passÃ© avec avoir â€" IntermÃ©diaire â€" premium
-- ================================================================
('13000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : "Les livres que j''ai ___ (lire) m''ont passionnÃ©."',null,
'[{"id":"a","label":"lu"},{"id":"b","label":"lus"},{"id":"c","label":"lues"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec avoir, le participe s''accorde avec le COD placÃ© avant. "Que" reprend "les livres" â€" masculin pluriel â€" et il est avant l''auxiliaire. Donc "lus" : masculin pluriel. Tu aurais Ã©crit "lues" si les histoires Ã©taient au fÃ©minin. MÃ©thode : COD, genre/nombre, position â€" et tu ne te trompes plus !',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? "Nous avons chantÃ© toute la soirÃ©e" â€" le participe "chantÃ©" est invariable car il n''y a pas de COD.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! Avec avoir, la rÃ¨gle c''est : pas de COD antÃ©posÃ©, pas d''accord. Ici "chanter" est employÃ© sans COD â€" le participe reste invariable. "ChantÃ©" sans -s ni -e, c''est la forme de base. Simple, non ?',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Quelle phrase est correctement accordÃ©e ?',null,
'[{"id":"a","label":"Combien de pommes as-tu mangÃ©es ?"},{"id":"b","label":"Combien de pommes as-tu mangÃ© ?"},{"id":"c","label":"Combien de pommes as-tu mangÃ©s ?"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Regarde bien : "combien de pommes" c''est le COD, placÃ© avant par l''inversion interrogative. "Pommes" est fÃ©minin pluriel â†' accord : "mangÃ©es". L''inversion ne change rien Ã  la rÃ¨gle â€" le COD reste avant l''auxiliaire, l''accord reste obligatoire !',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Les films qu''on a vus hier Ã©taient magnifiques."',null,
null,
'{"mode":"text","acceptableAnswers":["Les films qu''on a vus hier Ã©taient magnifiques."]}'::jsonb,
'C''est dÃ©jÃ  correct ! "Que" reprend "les films" (masculin pluriel), COD antÃ©posÃ© â†' "vus". Ne confonds pas avec l''infinitif : ici c''est bien le participe passÃ© de "voir". Bien jouÃ© de ne rien changer !',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Accordez : "Les erreurs qu''il a ___ (commettre) lui ont coÃ»tÃ© cher."',null,
'[{"id":"a","label":"commis"},{"id":"b","label":"commises"},{"id":"c","label":"commise"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Que" reprend "les erreurs" â€" fÃ©minin pluriel â€" et ce COD est avant l''auxiliaire. Le participe de "commettre" est "commis". AccordÃ© au fÃ©minin pluriel : "commises". COD fÃ©minin pluriel antÃ©posÃ© â†' on ajoute -es. C''est le mÃ©canisme classique !',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Je les ai laissÃ© partir", "laissÃ©" est invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Oui ! Selon la rÃ©forme orthographique de 1990 et la recommandation acadÃ©mique, "laisser" suivi d''un infinitif donne un participe invariable. "Je les ai laissÃ© partir" â€" pas d''accord. MÃªme logique pour "faire + infinitif" : "la robe qu''il a fait coudre". Les deux se comportent pareil devant un infinitif.',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Quelle est la forme correcte : "La dÃ©cision qu''ils ont ___ (prendre) est contestable."',null,
'[{"id":"a","label":"pris"},{"id":"b","label":"prise"},{"id":"c","label":"prises"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Que" reprend "la dÃ©cision" â€" fÃ©minin singulier â€" avant l''auxiliaire. Le participe de "prendre" c''est "pris" â€" accordÃ© au fÃ©minin singulier, Ã§a donne "prise". On ajoute un petit -e muet au masculin "pris" â†' "prise". FÃ©minin singulier, c''est toujours + -e !',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Quelle belle robe tu as achetÃ© !"',null,
null,
'{"mode":"text","acceptableAnswers":["Quelle belle robe tu as achetÃ©e !"]}'::jsonb,
'"Quelle belle robe" est le COD et il est avant le verbe â€" placÃ© en tÃªte de phrase. "Robe" : fÃ©minin singulier â†' accord du participe au fÃ©minin singulier : "achetÃ©e". RÃ¨gle : COD fÃ©minin singulier antÃ©posÃ© â†' participe + -e. Ne pas oublier ce petit -e !',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','qcm',
'Accordez : "Ces enfants, je les ai ___ (voir) jouer dans la cour."',null,
'[{"id":"a","label":"vus"},{"id":"b","label":"vu"},{"id":"c","label":"vues"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Les" reprend "ces enfants" â€" masculin pluriel â€" COD avant l''auxiliaire. Avec un verbe de perception (voir, entendre...) suivi d''un infinitif, on accorde avec le COD si c''est lui le sujet de l''infinitif. Ici les enfants jouent â†' accord : "vus". Les enfants font l''action â†' accord !',
'valide','CRPE FranÃ§ais V2','premium',true),

('13000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pp_avoir','Participe passÃ© avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Les cent euros que ce livre m''a coÃ»tÃ©", "coÃ»tÃ©" est invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Oui ! CoÃ»ter, valoir, peser, courir, durer, mesurer â€" ces verbes expriment une mesure, pas un COD vÃ©ritable. Le complÃ©ment de mesure ne dÃ©clenche pas l''accord. "Les efforts que cela m''a coÃ»tÃ©" ou "les kilos qu''il a pesÃ©" â€" invariable dans les deux cas. C''est une exception Ã  bien garder en tÃªte !',
'valide','CRPE FranÃ§ais V2','premium',true),

-- ================================================================
-- SÃ‰RIE 14 â€" Homophones grammaticaux â€" Facile â€" free
-- ================================================================
('14000000-0000-0000-0000-000000000001','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "Il faut que tu ___ prudent."',null,
'[{"id":"a","label":"sois"},{"id":"b","label":"soit"},{"id":"c","label":"soie"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Il faut que" rÃ©clame le subjonctif â€" c''est la rÃ¨gle absolue. "Tu" au subjonctif prÃ©sent de "Ãªtre" : "sois". Ã€ bien distinguer de "soit" (3e personne du singulier ou conjonction) et de "soie" (le tissu !). Pour "tu", c''est toujours "sois" au subjonctif.',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000002','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','correction_orthographique',
'Corrigez si nÃ©cessaire : "C''est pour sa qu''il est venu."',null,
null,
'{"mode":"text","acceptableAnswers":["C''est pour Ã§a qu''il est venu."]}'::jsonb,
'"Ã‡a" c''est le pronom dÃ©monstratif â€" Ã§a = cela. "Sa" c''est un possessif fÃ©minin (sa maison, sa voiture). Teste : peut-on dire "c''est pour cela qu''il est venu" ? Oui â†' on Ã©crit "Ã§a" avec la cÃ©dille. Peut-on remplacer par "ma/ta" ? Non â†' ce n''est pas "sa". Test de remplacement : ton meilleur ami !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000003','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "___ appris, il a rÃ©ussi."',null,
'[{"id":"a","label":"Bien"},{"id":"b","label":"BientÃ´t"},{"id":"c","label":"Ayant"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Ayant appris" forme un participe composÃ© qui exprime l''antÃ©rioritÃ© : d''abord il a appris, ensuite il a rÃ©ussi. C''est exactement ce sens-lÃ  que la structure veut. "Bien appris" ne marque pas cette relation temporelle. Le participe composÃ© "ayant + participe passÃ©" â€" Ã  retenir pour exprimer ce qui est arrivÃ© avant !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000004','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Quelle graphie est correcte dans : "___ enfants jouent dans la cour."',null,
'[{"id":"a","label":"Ses"},{"id":"b","label":"Ces"},{"id":"c","label":"C''est"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Ces" c''est le dÃ©terminant dÃ©monstratif pluriel â€" Ã§a dÃ©signe des enfants qu''on montre, ces enfants-lÃ . Test : peut-on dire "ces enfants-lÃ " ? Oui â†' "ces". "Ses" serait un possessif (ses enfants Ã  lui). "C''est" c''est une locution verbale. Le test du "-lÃ " ne ment jamais !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000005','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','vrai_faux',
'Vrai ou faux ? Dans "Il a Ã©tait malade", la graphie "Ã©tait" est correcte.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! AprÃ¨s l''auxiliaire "a", on attend le participe passÃ© de "Ãªtre" â€" et c''est "Ã©tÃ©". "Il a Ã©tÃ© malade" : voilÃ  la forme correcte. "Ã‰tait" c''est l''imparfait : "il Ã©tait malade". On ne mÃ©lange pas l''auxiliaire prÃ©sent avec l''imparfait â€" c''est une erreur Ã  Ã©viter absolument !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000006','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "Je ne sais pas ___ rÃ©pondre."',null,
'[{"id":"a","label":"quoi"},{"id":"b","label":"quoique"},{"id":"c","label":"comment"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Quoi" est le pronom interrogatif qui introduit une complÃ©tive infinitive : "je ne sais pas quoi rÃ©pondre" = je ne sais pas quoi dire. "Comment" changerait le sens â€" il donne la maniÃ¨re, pas l''objet. "Quoique" est une conjonction de concession. C''est "quoi" qui convient pour dÃ©signer ce qu''on ne sait pas faire !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000007','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','correction_orthographique',
'Corrigez la phrase : "Il ce lÃ¨ve tÃ´t chaque matin."',null,
null,
'{"mode":"text","acceptableAnswers":["Il se lÃ¨ve tÃ´t chaque matin."]}'::jsonb,
'"Se" c''est le pronom rÃ©flÃ©chi du verbe "se lever". "Ce" c''est un dÃ©terminant ou un pronom dÃ©monstratif (ce livre, ce que je veux). Teste : peut-on remplacer par "le/la" ? Non â†' c''est "se" (pronom rÃ©flÃ©chi). "Se" vient toujours juste avant le verbe pronominal â€" retiens cette position !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000008','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Quelle graphie est correcte : "Je ne sais pas ___ il court."',null,
'[{"id":"a","label":"oÃ¹"},{"id":"b","label":"ou"},{"id":"c","label":"au"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"OÃ¹" avec accent grave introduit un repÃ¨re de lieu ou de contexte. "Ou" sans accent c''est "ou bien". Test : peut-on dire "je ne sais pas ou bien il court" ? Non â†' c''est "oÃ¹". L''accent grave sur "oÃ¹" ne disparaÃ®t jamais quand il indique le lieu !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000009','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','vrai_faux',
'Vrai ou faux ? "On" peut toujours Ãªtre remplacÃ© par "nous" dans une phrase.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "On" peut dÃ©signer n''importe qui â€" valeur gÃ©nÃ©rale : "on dit que..." â€" et lÃ  on ne peut pas le remplacer par "nous". Seul le "on" de registre oral avec valeur personnelle admet cette substitution : "on y va" = "nous y allons". C''est le contexte qui dÃ©cide !',
'valide','CRPE FranÃ§ais V2','free',true),

('14000000-0000-0000-0000-000000000010','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "___ tu arrives, appelle-moi."',null,
'[{"id":"a","label":"Quand"},{"id":"b","label":"Quant"},{"id":"c","label":"Qu''en"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Quand" = conjonction de temps (quand = lorsque). "Quant Ã " = locution prÃ©positionnelle (quant Ã  moi...). "Qu''en" = que + en (qu''en penses-tu ?). Test imparable : peut-on remplacer par "lorsque" ? Oui â†' "quand". Un seul test et tu ne te trompes plus jamais !',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 15 â€" Pluriel dans le groupe nominal â€" IntermÃ©diaire â€" free
-- ================================================================
('15000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Choisissez la forme correcte au pluriel : "Un bal â†' des ___."',null,
'[{"id":"a","label":"bals"},{"id":"b","label":"baux"},{"id":"c","label":"balles"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Attention, "bal" est une exception ! La rÃ¨gle -al â†' -aux ne s''applique pas Ã  tout le monde : "bal" fait "bals". MÃªme chose pour carnaval â†' carnavals, festival â†' festivals, rÃ©cital â†' rÃ©citals. Ces exceptions, tu dois les avoir dans la tÃªte â€" elles reviennent souvent !',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Mettez au pluriel le groupe nominal : "Un Å"il bleu."',null,
null,
'{"mode":"text","acceptableAnswers":["Des yeux bleus."]}'::jsonb,
'"Å'il" a un pluriel entiÃ¨rement irrÃ©gulier â€" "yeux" â€" hÃ©ritÃ© du latin (oculus â†' oculi). Rien Ã  voir avec la graphie du singulier ! L''adjectif "bleu" s''accorde en genre et nombre : "yeux bleus" (masculin pluriel). Et ne confonds pas avec "des Å"ils-de-bÅ"uf" (la fenÃªtre ronde) â€" lÃ , le pluriel est rÃ©gulier dans le composÃ©.',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel est le pluriel correct de "un pneu" ?',null,
'[{"id":"a","label":"des pneux"},{"id":"b","label":"des pneus"},{"id":"c","label":"des pneaux"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les noms en -eu prennent normalement -x au pluriel (jeu â†' jeux, feu â†' feux). Mais "pneu" est une exception et prend -s : "des pneus". MÃªme rÃ¨gle pour "bleu" â†' "des bleus". Retiens ces deux exceptions en -eu qui prennent -s et non -x !',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','vrai_faux',
'Vrai ou faux ? L''adjectif "nouveau" devient "nouveaux" au masculin pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est vrai ! Les adjectifs en -eau font -eaux au pluriel : beau â†' beaux, nouveau â†' nouveaux, jumeau â†' jumeaux. Au fÃ©minin ce sera "nouvelles". Et devant une voyelle, "nouveau" devient "nouvel" : un nouvel ami. Deux bases, Ã  bien connaÃ®tre !',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Choisissez le pluriel correct : "Un bijou â†' des ___."',null,
'[{"id":"a","label":"bijous"},{"id":"b","label":"bijoux"},{"id":"c","label":"bijoues"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les noms en -ou prennent gÃ©nÃ©ralement -s, mais il y a 7 exceptions qui prennent -x : bijou, caillou, chou, genou, hibou, joujou, pou â†' bijoux, cailloux, choux, genoux, hiboux, joujoux, poux. Moyen mÃ©mo : "Bijou, caillou, chou, genou, hibou, joujou, pou" â€" Ã  rÃ©citer jusqu''Ã  ce que Ã§a coule tout seul !',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Mettez au pluriel : "Un grand festival international."',null,
null,
'{"mode":"text","acceptableAnswers":["De grands festivals internationaux."]}'::jsonb,
'"Festival" est une exception Ã  -al â†' -aux : il fait "festivals" ! Et devant un adjectif au pluriel placÃ© avant le nom, l''article "des" devient "de" : on Ã©crit donc "de grands festivals internationaux". Double piÃ¨ge â€" l''exception de "festival" et le "de" Ã  la place de "des" â€" tu dois Ãªtre au point sur les deux !',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel est le pluriel correct de "un poids lourd" ?',null,
'[{"id":"a","label":"des poids lourds"},{"id":"b","label":"des poid lourds"},{"id":"c","label":"des poids loud"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Poids" s''Ã©crit dÃ©jÃ  avec un -s au singulier â€" c''est l''Ã©tymologie latine (pensum). Donc au pluriel, la graphie ne change pas. "Lourd" est un adjectif Ã©pithÃ¨te qui s''accorde avec "poids" (masculin pluriel) â†' "lourds". Le nom reste Ã  l''identique, seul l''adjectif bouge.',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','vrai_faux',
'Vrai ou faux ? "Des garde-fous" est le pluriel correct de "un garde-fou".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est vrai ! Dans "garde-fou" (verbe + nom), le verbe "garde" est invariable et c''est "fou" qui prend le pluriel : garde-fous. La barriÃ¨re de sÃ©curitÃ© garde des fous â€" sens logique â€" donc "fou" s''accorde. Retiens : dans les composÃ©s verbe + nom, seul le nom (si le sens le permet) prend le pluriel.',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel accord est correct dans "des noms ___ (propre)" ?',null,
'[{"id":"a","label":"propres"},{"id":"b","label":"propre"},{"id":"c","label":"propres ou propre"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''adjectif qualificatif s''accorde toujours en genre et en nombre avec le nom. "Noms" est masculin pluriel â†' "propres" avec -s. L''adjectif "propre" prend un -s au pluriel qu''il soit masculin ou fÃ©minin â€" rÃ¨gle simple et sans exception ici !',
'valide','CRPE FranÃ§ais V2','free',true),

('15000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "Elle porte des bague en or."',null,
null,
'{"mode":"text","acceptableAnswers":["Elle porte des bagues en or."]}'::jsonb,
'"Des" est le pluriel indÃ©fini â€" il rÃ©clame un nom au pluriel ! Donc "des bagues" avec -s. Le groupe "en or" reste invariable â€" l''or est une matiÃ¨re, on ne le met pas au pluriel. Une seule correction Ã  faire : ajouter le -s Ã  "bague".',
'valide','CRPE FranÃ§ais V2','free',true);



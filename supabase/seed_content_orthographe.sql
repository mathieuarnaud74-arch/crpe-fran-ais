-- CRPE Français — Lot 2 : Orthographe (5 séries × 10 questions)
-- topic_key unique par série garantit le regroupement en session de 10 questions
-- Appliquer APRÈS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 11 — Accord sujet-verbe — Facile — free
-- ================================================================
-- QCM: Q1→b, Q2→d, Q5→b, Q6→d, Q8→b, Q10→d
-- (correction_orthographique: Q3, Q7; vrai_faux: Q4, Q9 — skipped)

('11000000-0000-0000-0000-000000000001','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correctement accordée : "Les élèves ___ attentivement."',null,
'[{"id":"a","label":"écoute"},{"id":"b","label":"écoutent"},{"id":"c","label":"écoutez"},{"id":"d","label":"écoutait"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Regarde bien ton sujet : "les élèves", c''est du pluriel — 3e personne ! Le verbe écouter suit donc les élèves, et à la 3e personne du pluriel tu écris "écoutent". Ce petit -ent final, c''est la marque du pluriel pour tous les verbes du 1er groupe. Retiens-le bien !',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000002','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "C''est toi qui ___ raison."',null,
'[{"id":"a","label":"a"},{"id":"b","label":"avez"},{"id":"c","label":"ont"},{"id":"d","label":"as"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Attention, piège classique ! Quand "qui" a pour antécédent "toi", le verbe suit "toi" — donc 2e personne du singulier. On dit "c''est toi qui as" et jamais "c''est toi qui a". Le verbe s''accorde avec l''antécédent de "qui", pas avec ce qui précède directement.',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000003','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','correction_orthographique',
'Corrigez la phrase si nécessaire : "Ni le directeur ni les enseignants n''a pris la parole."',null,
null,
'{"mode":"text","acceptableAnswers":["Ni le directeur ni les enseignants n''ont pris la parole."]}'::jsonb,
'Avec "ni... ni...", regarde le deuxième sujet : "les enseignants" est au pluriel ! Du coup le verbe passe au pluriel : "n''ont pris". La règle est simple — si l''un des deux sujets réclame le pluriel, le verbe le suit. C''est ça qui commande ici.',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000004','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux ? Dans "Une foule de touristes envahissait la place", le verbe s''accorde avec "foule" (singulier).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est vrai ! Avec un nom collectif comme "foule", "groupe" ou "troupe" suivi d''un complément, tu peux accorder avec le collectif (singulier) ou avec le complément (pluriel). Ici "envahissait" — singulier — s''accorde avec "foule" : c''est tout à fait correct et même courant !',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000005','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Quelle phrase est correctement accordée ?',null,
'[{"id":"a","label":"La plupart des élèves a réussi."},{"id":"b","label":"La plupart des élèves ont réussi."},{"id":"c","label":"La plupart des élèves réussit."},{"id":"d","label":"La plupart des élèves réussissions."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"La plupart" est suivi de "des élèves" — pluriel ! Et "la plupart de + pluriel", ça tire toujours le verbe au pluriel : "ont réussi". C''est la règle habituelle, retiens-la bien. Tu ne diras pas "la plupart a" quand il y a un complément pluriel derrière.',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000006','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "Chacun des candidats ___ préparé son dossier."',null,
'[{"id":"a","label":"ont"},{"id":"b","label":"avez"},{"id":"c","label":"avaient"},{"id":"d","label":"a"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Chacun" est un pronom indéfini toujours singulier — même quand des candidats (pluriel) suivent ! Ne te laisse pas piéger par le complément. "Chacun a préparé" : c''est lui qui commande, c''est lui qui est singulier. Le verbe le suit sans hésiter.',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000007','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','correction_orthographique',
'Corrigez la phrase : "Le chat et le chien dort dans le jardin."',null,
null,
'{"mode":"text","acceptableAnswers":["Le chat et le chien dorment dans le jardin."]}'::jsonb,
'Deux sujets reliés par "et" — ça fait un pluriel ! Le chat ET le chien, c''est deux sujets donc le verbe va au pluriel : "dorment". La formule à retenir : sujet A + et + sujet B → verbe au pluriel, toujours !',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000008','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Quelle est la forme correcte : "Tout le monde ___ satisfait du résultat."',null,
'[{"id":"a","label":"sont"},{"id":"b","label":"est"},{"id":"c","label":"sommes"},{"id":"d","label":"étaient"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Attention, exception à surveiller ! "Tout le monde" désigne plein de gens mais grammaticalement c''est un groupe singulier. Donc le verbe est toujours au singulier : "tout le monde est". Ne te laisse pas avoir par l''idée de pluralité — c''est le singulier qui gagne ici.',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000009','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','vrai_faux',
'Vrai ou faux ? Dans "C''est nous qui partons les premiers", le verbe "partons" est correctement accordé.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! Quand "qui" a pour antécédent un pronom personnel comme "nous", le verbe s''accorde avec ce pronom. "C''est nous qui partons" → 1re personne du pluriel. Même logique : "c''est moi qui suis", "c''est toi qui es". C''est l''antécédent de "qui" qui donne le ton !',
'valide','CRPE Français V2','free',true),

('11000000-0000-0000-0000-000000000010','Francais','orthographe','ort_accord_sv','Accord sujet-verbe','Facile','qcm',
'Choisissez la forme correcte : "Vingt pour cent des élèves ___ absent(s)."',null,
'[{"id":"a","label":"est"},{"id":"b","label":"a été"},{"id":"c","label":"était"},{"id":"d","label":"sont"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Avec un sujet du type "pourcentage + de + pluriel", regarde ce qui suit "de" : "des élèves" — pluriel ! C''est lui qui commande. Les grammairiens recommandent le pluriel : "vingt pour cent des élèves sont absents". Le complément pluriel après "de" entraîne le pluriel du verbe.',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 12 — Participe passé avec être — Intermédiaire — free
-- ================================================================
-- QCM: Q1→b, Q3→a, Q5→d, Q7→d, Q9→b
-- (correction_orthographique: Q2, Q6, Q10; vrai_faux: Q4, Q8 — skipped)

('12000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Choisissez l''accord correct : "Les actrices sont ___ sur scène."',null,
'[{"id":"a","label":"montés"},{"id":"b","label":"montées"},{"id":"c","label":"monté"},{"id":"d","label":"montantes"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec l''auxiliaire "être", le participe passé s''accorde avec le sujet — genre et nombre. Ton sujet ? "Les actrices" : féminin pluriel. Donc le participe prend -es : "montées". C''est la règle d''or avec être : le participe suit le sujet comme son ombre !',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','correction_orthographique',
'Corrigez si nécessaire : "Paul et Marie sont partis en vacances."',null,
null,
'{"mode":"text","acceptableAnswers":["Paul et Marie sont partis en vacances."]}'::jsonb,
'La phrase est déjà correcte, c''est ça ! Sujet mixte (Paul masculin + Marie féminin) → on accorde au masculin pluriel. "Partis" : masculin pluriel, parfaitement justifié. La règle du genre mixte — le masculin l''emporte — est respectée ici à la lettre.',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Accordez correctement : "La candidate dit : Je suis ___ de ces résultats."',null,
'[{"id":"a","label":"fière"},{"id":"b","label":"fier"},{"id":"c","label":"fiers"},{"id":"d","label":"fières"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le contexte est clair : c''est une candidate qui parle. L''attribut du sujet avec "être" s''accorde en genre et en nombre avec ce sujet. La candidate est féminine → "fière" avec un -e. Simple mais à ne pas oublier quand le contexte donne le genre !',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Elle s''est lavé les mains", le participe passé "lavé" ne s''accorde pas car "les mains" est COD placé après.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! Avec les verbes pronominaux, demande-toi : le COD est-il avant ou après le verbe ? Ici "les mains" est après "lavé" → pas d''accord. Si le COD avait été avant, tu aurais écrit : "les mains qu''elle s''est lavées". La position du COD est la clé de tout !',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Quelle phrase est correcte ?',null,
'[{"id":"a","label":"Les feuilles sont tombés."},{"id":"b","label":"Les feuilles sont tombé."},{"id":"c","label":"Les feuilles sont tombantes."},{"id":"d","label":"Les feuilles sont tombées."}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Tomber" se conjugue avec être. Ton sujet : "les feuilles" — féminin pluriel. Règle d''or avec être : le participe suit le sujet. Donc "tombées" avec -es pour le féminin pluriel. Simple et limpide : c''est l''accord classique avec l''auxiliaire être !',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Elles se sont regardés dans le miroir."',null,
null,
'{"mode":"text","acceptableAnswers":["Elles se sont regardées dans le miroir."]}'::jsonb,
'Demande-toi : elles regardent quoi ? → "se" (elles-mêmes), c''est le COD ! Et ce COD est placé avant l''auxiliaire → accord avec "elles" : féminin pluriel → "regardées". Le "s" de "regardés" était masculin — erreur ! Ici tout est féminin.',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Accordez le participe : "Les lettres qu''il a ___ (écrire)."',null,
'[{"id":"a","label":"écrit"},{"id":"b","label":"écrits"},{"id":"c","label":"écriture"},{"id":"d","label":"écrites"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Avec avoir, le participe s''accorde avec le COD placé avant le verbe. Ici "que" reprend "les lettres" — féminin pluriel — et il est bien avant l''auxiliaire. Donc "écrites" : féminin pluriel. Méthode : repère le COD, détermine son genre et son nombre, vérifie sa position — et accorde !',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','vrai_faux',
'Vrai ou faux ? "Ils se sont parlé toute la nuit" — le participe "parlé" est correctement invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! "Se parler" — on parle À quelqu''un, donc "se" est COI et non COD. Avec un COI, pas d''accord : "parlé" reste invariable. Ils ont parlé l''un à l''autre — c''est le sens indirect qui bloque l''accord. Retiens : COI → pas d''accord, COD antéposé → accord !',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','qcm',
'Choisissez la forme correcte : "Elles sont ___ (naître) le même jour."',null,
'[{"id":"a","label":"nés"},{"id":"b","label":"nées"},{"id":"c","label":"né"},{"id":"d","label":"naissantes"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Naître" se conjugue avec être — accord obligatoire avec le sujet. "Elles" : féminin pluriel → le participe "né" prend -es : "nées". Avec être, souviens-toi : genre et nombre du sujet, toujours. Sans exception !',
'valide','CRPE Français V2','free',true),

('12000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pp_etre','Participe passé avec être','Intermediaire','correction_orthographique',
'Corrigez si nécessaire : "La directrice est venue et a présenté son équipe."',null,
null,
'{"mode":"text","acceptableAnswers":["La directrice est venue et a présenté son équipe."]}'::jsonb,
'C''est parfait, ne change rien ! "Venue" s''accorde avec "la directrice" (féminin singulier, avec être). "Présenté" reste invariable car le COD "son équipe" est après le verbe (avec avoir). Les deux règles sont respectées — bravo, c''est la maîtrise complète !',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 13 — Participe passé avec avoir — Intermédiaire — premium
-- ================================================================
-- QCM: Q1→b, Q3→a, Q5→d, Q7→b, Q9→d
-- (vrai_faux: Q2, Q6, Q10; correction_orthographique: Q4, Q8 — skipped)

('13000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Choisissez la forme correcte : "Les livres que j''ai ___ (lire) m''ont passionné."',null,
'[{"id":"a","label":"lu"},{"id":"b","label":"lus"},{"id":"c","label":"lues"},{"id":"d","label":"lisais"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Avec avoir, le participe s''accorde avec le COD placé avant. "Que" reprend "les livres" — masculin pluriel — et il est avant l''auxiliaire. Donc "lus" : masculin pluriel. Tu aurais écrit "lues" si les histoires étaient au féminin. Méthode : COD, genre/nombre, position — et tu ne te trompes plus !',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? "Nous avons chanté toute la soirée" — le participe "chanté" est invariable car il n''y a pas de COD.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! Avec avoir, la règle c''est : pas de COD antéposé, pas d''accord. Ici "chanter" est employé sans COD — le participe reste invariable. "Chanté" sans -s ni -e, c''est la forme de base. Simple, non ?',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Quelle phrase est correctement accordée ?',null,
'[{"id":"a","label":"Combien de pommes as-tu mangées ?"},{"id":"b","label":"Combien de pommes as-tu mangés ?"},{"id":"c","label":"Combien de pommes as-tu mangé ?"},{"id":"d","label":"Combien de pommes as-tu mangeons ?"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Regarde bien : "combien de pommes" c''est le COD, placé avant par l''inversion interrogative. "Pommes" est féminin pluriel → accord : "mangées". L''inversion ne change rien à la règle — le COD reste avant l''auxiliaire, l''accord reste obligatoire !',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Les films qu''on a vus hier étaient magnifiques."',null,
null,
'{"mode":"text","acceptableAnswers":["Les films qu''on a vus hier étaient magnifiques."]}'::jsonb,
'C''est déjà correct ! "Que" reprend "les films" (masculin pluriel), COD antéposé → "vus". Ne confonds pas avec l''infinitif : ici c''est bien le participe passé de "voir". Bien joué de ne rien changer !',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Accordez : "Les erreurs qu''il a ___ (commettre) lui ont coûté cher."',null,
'[{"id":"a","label":"commis"},{"id":"b","label":"commise"},{"id":"c","label":"commissions"},{"id":"d","label":"commises"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Que" reprend "les erreurs" — féminin pluriel — et ce COD est avant l''auxiliaire. Le participe de "commettre" est "commis". Accordé au féminin pluriel : "commises". COD féminin pluriel antéposé → on ajoute -es. C''est le mécanisme classique !',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Je les ai laissé partir", "laissé" est invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Oui ! Selon la réforme orthographique de 1990 et la recommandation académique, "laisser" suivi d''un infinitif donne un participe invariable. "Je les ai laissé partir" — pas d''accord. Même logique pour "faire + infinitif" : "la robe qu''il a fait coudre". Les deux se comportent pareil devant un infinitif.',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Quelle est la forme correcte : "La décision qu''ils ont ___ (prendre) est contestable."',null,
'[{"id":"a","label":"pris"},{"id":"b","label":"prise"},{"id":"c","label":"prises"},{"id":"d","label":"prenait"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Que" reprend "la décision" — féminin singulier — avant l''auxiliaire. Le participe de "prendre" c''est "pris" — accordé au féminin singulier, ça donne "prise". On ajoute un petit -e muet au masculin "pris" → "prise". Féminin singulier, c''est toujours + -e !',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Quelle belle robe tu as acheté !"',null,
null,
'{"mode":"text","acceptableAnswers":["Quelle belle robe tu as achetée !"]}'::jsonb,
'"Quelle belle robe" est le COD et il est avant le verbe — placé en tête de phrase. "Robe" : féminin singulier → accord du participe au féminin singulier : "achetée". Règle : COD féminin singulier antéposé → participe + -e. Ne pas oublier ce petit -e !',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','qcm',
'Accordez : "Ces enfants, je les ai ___ (voir) jouer dans la cour."',null,
'[{"id":"a","label":"vu"},{"id":"b","label":"vues"},{"id":"c","label":"voyait"},{"id":"d","label":"vus"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Les" reprend "ces enfants" — masculin pluriel — COD avant l''auxiliaire. Avec un verbe de perception (voir, entendre...) suivi d''un infinitif, on accorde avec le COD si c''est lui le sujet de l''infinitif. Ici les enfants jouent → accord : "vus". Les enfants font l''action → accord !',
'valide','CRPE Français V2','premium',true),

('13000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pp_avoir','Participe passé avec avoir','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Les cent euros que ce livre m''a coûté", "coûté" est invariable.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Oui ! Coûter, valoir, peser, courir, durer, mesurer — ces verbes expriment une mesure, pas un COD véritable. Le complément de mesure ne déclenche pas l''accord. "Les efforts que cela m''a coûté" ou "les kilos qu''il a pesé" — invariable dans les deux cas. C''est une exception à bien garder en tête !',
'valide','CRPE Français V2','premium',true),

-- ================================================================
-- SÉRIE 14 — Homophones grammaticaux — Facile — free
-- ================================================================
-- QCM: Q1→a, Q3→c, Q4→d, Q6→a, Q8→d, Q10→a
-- (correction_orthographique: Q2, Q7; vrai_faux: Q5, Q9 — skipped)

('14000000-0000-0000-0000-000000000001','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "Il faut que tu ___ prudent."',null,
'[{"id":"a","label":"sois"},{"id":"b","label":"soit"},{"id":"c","label":"soie"},{"id":"d","label":"soyez"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Il faut que" réclame le subjonctif — c''est la règle absolue. "Tu" au subjonctif présent de "être" : "sois". À bien distinguer de "soit" (3e personne du singulier ou conjonction) et de "soie" (le tissu !). Pour "tu", c''est toujours "sois" au subjonctif.',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000002','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','correction_orthographique',
'Corrigez si nécessaire : "C''est pour sa qu''il est venu."',null,
null,
'{"mode":"text","acceptableAnswers":["C''est pour ça qu''il est venu."]}'::jsonb,
'"Ça" c''est le pronom démonstratif — ça = cela. "Sa" c''est un possessif féminin (sa maison, sa voiture). Teste : peut-on dire "c''est pour cela qu''il est venu" ? Oui → on écrit "ça" avec la cédille. Peut-on remplacer par "ma/ta" ? Non → ce n''est pas "sa". Test de remplacement : ton meilleur ami !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000003','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "___ appris, il a réussi."',null,
'[{"id":"a","label":"Bien"},{"id":"b","label":"Bientôt"},{"id":"c","label":"Ayant"},{"id":"d","label":"Ainsi"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Ayant appris" forme un participe composé qui exprime l''antériorité : d''abord il a appris, ensuite il a réussi. C''est exactement ce sens-là que la structure veut. "Bien appris" ne marque pas cette relation temporelle. Le participe composé "ayant + participe passé" — à retenir pour exprimer ce qui est arrivé avant !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000004','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Quelle graphie est correcte dans : "___ enfants jouent dans la cour."',null,
'[{"id":"a","label":"Ses"},{"id":"b","label":"C''est"},{"id":"c","label":"Se"},{"id":"d","label":"Ces"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Ces" c''est le déterminant démonstratif pluriel — ça désigne des enfants qu''on montre, ces enfants-là. Test : peut-on dire "ces enfants-là" ? Oui → "ces". "Ses" serait un possessif (ses enfants à lui). "C''est" c''est une locution verbale. Le test du "-là" ne ment jamais !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000005','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','vrai_faux',
'Vrai ou faux ? Dans "Il a était malade", la graphie "était" est correcte.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Après l''auxiliaire "a", on attend le participe passé de "être" — et c''est "été". "Il a été malade" : voilà la forme correcte. "Était" c''est l''imparfait : "il était malade". On ne mélange pas l''auxiliaire présent avec l''imparfait — c''est une erreur à éviter absolument !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000006','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "Je ne sais pas ___ répondre."',null,
'[{"id":"a","label":"quoi"},{"id":"b","label":"quoique"},{"id":"c","label":"comment"},{"id":"d","label":"qui"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Quoi" est le pronom interrogatif qui introduit une complétive infinitive : "je ne sais pas quoi répondre" = je ne sais pas quoi dire. "Comment" changerait le sens — il donne la manière, pas l''objet. "Quoique" est une conjonction de concession. C''est "quoi" qui convient pour désigner ce qu''on ne sait pas faire !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000007','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','correction_orthographique',
'Corrigez la phrase : "Il ce lève tôt chaque matin."',null,
null,
'{"mode":"text","acceptableAnswers":["Il se lève tôt chaque matin."]}'::jsonb,
'"Se" c''est le pronom réfléchi du verbe "se lever". "Ce" c''est un déterminant ou un pronom démonstratif (ce livre, ce que je veux). Teste : peut-on remplacer par "le/la" ? Non → c''est "se" (pronom réfléchi). "Se" vient toujours juste avant le verbe pronominal — retiens cette position !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000008','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Quelle graphie est correcte : "Je ne sais pas ___ il court."',null,
'[{"id":"a","label":"ou"},{"id":"b","label":"au"},{"id":"c","label":"aux"},{"id":"d","label":"où"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Où" avec accent grave introduit un repère de lieu ou de contexte. "Ou" sans accent c''est "ou bien". Test : peut-on dire "je ne sais pas ou bien il court" ? Non → c''est "où". L''accent grave sur "où" ne disparaît jamais quand il indique le lieu !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000009','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','vrai_faux',
'Vrai ou faux ? "On" peut toujours être remplacé par "nous" dans une phrase.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "On" peut désigner n''importe qui — valeur générale : "on dit que..." — et là on ne peut pas le remplacer par "nous". Seul le "on" de registre oral avec valeur personnelle admet cette substitution : "on y va" = "nous y allons". C''est le contexte qui décide !',
'valide','CRPE Français V2','free',true),

('14000000-0000-0000-0000-000000000010','Francais','orthographe','ort_homophones','Homophones grammaticaux','Facile','qcm',
'Choisissez la graphie correcte : "___ tu arrives, appelle-moi."',null,
'[{"id":"a","label":"Quand"},{"id":"b","label":"Quant"},{"id":"c","label":"Qu''en"},{"id":"d","label":"Quon"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Quand" = conjonction de temps (quand = lorsque). "Quant à" = locution prépositionnelle (quant à moi...). "Qu''en" = que + en (qu''en penses-tu ?). Test imparable : peut-on remplacer par "lorsque" ? Oui → "quand". Un seul test et tu ne te trompes plus jamais !',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 15 — Pluriel dans le groupe nominal — Intermédiaire — free
-- ================================================================
-- QCM: Q1→a, Q3→d, Q5→b, Q7→a, Q9→d
-- (correction_orthographique: Q2, Q6, Q10; vrai_faux: Q4, Q8 — skipped)

('15000000-0000-0000-0000-000000000001','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Choisissez la forme correcte au pluriel : "Un bal → des ___."',null,
'[{"id":"a","label":"bals"},{"id":"b","label":"baux"},{"id":"c","label":"balles"},{"id":"d","label":"balois"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Attention, "bal" est une exception ! La règle -al → -aux ne s''applique pas à tout le monde : "bal" fait "bals". Même chose pour carnaval → carnavals, festival → festivals, récital → récitals. Ces exceptions, tu dois les avoir dans la tête — elles reviennent souvent !',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000002','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Mettez au pluriel le groupe nominal : "Un œil bleu."',null,
null,
'{"mode":"text","acceptableAnswers":["Des yeux bleus."]}'::jsonb,
'"Œil" a un pluriel entièrement irrégulier — "yeux" — hérité du latin (oculus → oculi). Rien à voir avec la graphie du singulier ! L''adjectif "bleu" s''accorde en genre et nombre : "yeux bleus" (masculin pluriel). Et ne confonds pas avec "des œils-de-bœuf" (la fenêtre ronde) — là, le pluriel est régulier dans le composé.',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000003','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel est le pluriel correct de "un pneu" ?',null,
'[{"id":"a","label":"des pneux"},{"id":"b","label":"des pneaux"},{"id":"c","label":"des pneaux-ci"},{"id":"d","label":"des pneus"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Les noms en -eu prennent normalement -x au pluriel (jeu → jeux, feu → feux). Mais "pneu" est une exception et prend -s : "des pneus". Même règle pour "bleu" → "des bleus". Retiens ces deux exceptions en -eu qui prennent -s et non -x !',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000004','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','vrai_faux',
'Vrai ou faux ? L''adjectif "nouveau" devient "nouveaux" au masculin pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est vrai ! Les adjectifs en -eau font -eaux au pluriel : beau → beaux, nouveau → nouveaux, jumeau → jumeaux. Au féminin ce sera "nouvelles". Et devant une voyelle, "nouveau" devient "nouvel" : un nouvel ami. Deux bases, à bien connaître !',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000005','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Choisissez le pluriel correct : "Un bijou → des ___."',null,
'[{"id":"a","label":"bijous"},{"id":"b","label":"bijoux"},{"id":"c","label":"bijoues"},{"id":"d","label":"bijouz"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les noms en -ou prennent généralement -s, mais il y a 7 exceptions qui prennent -x : bijou, caillou, chou, genou, hibou, joujou, pou → bijoux, cailloux, choux, genoux, hiboux, joujoux, poux. Moyen mémo : "Bijou, caillou, chou, genou, hibou, joujou, pou" — à réciter jusqu''à ce que ça coule tout seul !',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000006','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Mettez au pluriel : "Un grand festival international."',null,
null,
'{"mode":"text","acceptableAnswers":["De grands festivals internationaux."]}'::jsonb,
'"Festival" est une exception à -al → -aux : il fait "festivals" ! Et devant un adjectif au pluriel placé avant le nom, l''article "des" devient "de" : on écrit donc "de grands festivals internationaux". Double piège — l''exception de "festival" et le "de" à la place de "des" — tu dois être au point sur les deux !',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000007','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel est le pluriel correct de "un poids lourd" ?',null,
'[{"id":"a","label":"des poids lourds"},{"id":"b","label":"des poid lourds"},{"id":"c","label":"des poids loud"},{"id":"d","label":"des poids loudres"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Poids" s''écrit déjà avec un -s au singulier — c''est l''étymologie latine (pensum). Donc au pluriel, la graphie ne change pas. "Lourd" est un adjectif épithète qui s''accorde avec "poids" (masculin pluriel) → "lourds". Le nom reste à l''identique, seul l''adjectif bouge.',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000008','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','vrai_faux',
'Vrai ou faux ? "Des garde-fous" est le pluriel correct de "un garde-fou".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est vrai ! Dans "garde-fou" (verbe + nom), le verbe "garde" est invariable et c''est "fou" qui prend le pluriel : garde-fous. La barrière de sécurité garde des fous — sens logique — donc "fou" s''accorde. Retiens : dans les composés verbe + nom, seul le nom (si le sens le permet) prend le pluriel.',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000009','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','qcm',
'Quel accord est correct dans "des noms ___ (propre)" ?',null,
'[{"id":"a","label":"propre"},{"id":"b","label":"propres ou propre"},{"id":"c","label":"proprement"},{"id":"d","label":"propres"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''adjectif s''accorde toujours en genre et en nombre avec le nom. "Noms" est masculin pluriel → "propres" avec -s. L''adjectif "propre" prend un -s au pluriel qu''il soit masculin ou féminin — règle simple et sans exception ici !',
'valide','CRPE Français V2','free',true),

('15000000-0000-0000-0000-000000000010','Francais','orthographe','ort_pluriel_gn','Pluriel dans le groupe nominal','Intermediaire','correction_orthographique',
'Corrigez si nécessaire : "Elle porte des bague en or."',null,
null,
'{"mode":"text","acceptableAnswers":["Elle porte des bagues en or."]}'::jsonb,
'"Des" est le pluriel indéfini — il réclame un nom au pluriel ! Donc "des bagues" avec -s. Le groupe "en or" reste invariable — l''or est une matière, on ne le met pas au pluriel. Une seule correction à faire : ajouter le -s à "bague".',
'valide','CRPE Français V2','free',true);

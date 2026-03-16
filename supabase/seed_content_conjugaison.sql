-- CRPE FranÃ§ais â€" Lot 3 : Conjugaison (5 sÃ©ries Ã— 10 questions)
-- topic_key unique par sÃ©rie garantit le regroupement en session de 10 questions
-- Appliquer APRÃˆS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÃ‰RIE 16 â€" PrÃ©sent de l'indicatif â€" Facile â€" free
-- ================================================================
('16000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la conjugaison correcte de "aller" Ã  la 1re personne du singulier ?',null,
'[{"id":"a","label":"je alle"},{"id":"b","label":"je vais"},{"id":"c","label":"j''ale"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Aller" est un verbe irrÃ©gulier du 3e groupe dont la conjugaison au prÃ©sent est entiÃ¨rement supplÃ©tive â€" c''est-Ã -dire que les formes viennent de racines diffÃ©rentes : vais, vas, va, allons, allez, vont. La 1re personne du singulier : "je vais". Pas de logique, juste la mÃ©moire â€" Ã  retenir par cÅ"ur !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Conjuguez "finir" Ã  la 2e personne du pluriel au prÃ©sent.',null,
'[{"id":"a","label":"vous finisez"},{"id":"b","label":"vous finissez"},{"id":"c","label":"vous finissiez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Finir" est un verbe du 2e groupe : il insÃ¨re l''infixe -iss- au pluriel. Nous finissons, vous finissez, ils finissent. "Vous finissez" â€" avec deux s â€" c''est la seule forme correcte. "Finissiez" c''est l''imparfait ou le subjonctif â€" pas le prÃ©sent. Le double -ss- est la marque du 2e groupe : ne l''oublie pas !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','correction_orthographique',
'Corrigez la conjugaison : "Il fesait beau hier."',null,
null,
'{"mode":"text","acceptableAnswers":["Il faisait beau hier."]}'::jsonb,
'"Faire" conserve le radical "fais-" Ã  toutes les personnes â€" sauf "vous faites" et "ils font" qui sont irrÃ©guliÃ¨res. L''imparfait : je faisais, tu faisais, il faisait... La graphie "fesait" est une erreur trÃ¨s frÃ©quente liÃ©e Ã  la prononciation. Retiens bien : "faisait" avec un "ai", comme dans toute la conjugaison de "faire" !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la forme correcte de "appeler" Ã  la 3e personne du singulier au prÃ©sent ?',null,
'[{"id":"a","label":"il apelle"},{"id":"b","label":"il appÃ¨le"},{"id":"c","label":"il appelle"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Appeler" double le -l- devant e muet : j''appelle, tu appelles, il appelle, ils appellent. Aux 1re et 2e personnes du pluriel, le -l- reste simple : nous appelons, vous appelez. C''est le modÃ¨le "appeler/jeter" â€" double consonne devant e muet. Si tu prononces la syllabe avec un [Ã¨] ouvert, c''est le signe que la consonne double !'),'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','vrai_faux',
'Vrai ou faux ? "Nous mangons" est la forme correcte du prÃ©sent de "manger" Ã  la 1re pers. du pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Les verbes en -ger conservent le -e- devant -o- pour garder le son [Ê'] : nous mangeons (et non "mangons"). Sans le -e-, la prononciation glisserait vers [g] dur â€" et ce serait incorrect. MÃªme rÃ¨gle pour : nager â†' nous nageons, ranger â†' nous rangeons, plonger â†' nous plongeons. Le -e- intercalaire, c''est le garde-son !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Conjuguez "pouvoir" Ã  la 1re personne du pluriel au prÃ©sent.',null,
'[{"id":"a","label":"nous pouvons"},{"id":"b","label":"nous pouveons"},{"id":"c","label":"nous peuvent"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Pouvoir" est irrÃ©gulier : je peux/puis, tu peux, il peut, nous pouvons, vous pouvez, ils peuvent. "Nous pouvons" est la 1re personne du pluriel â€" Ã  ne pas confondre avec "peuvent" (3e pers. pluriel). Retiens bien la diffÃ©rence : "nous pouvons" vs "ils peuvent". Ce sont les deux formes les plus souvent confondues !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','correction_orthographique',
'Corrigez : "Je veux bien mais je ne peut pas."',null,
null,
'{"mode":"text","acceptableAnswers":["Je veux bien mais je ne peux pas."]}'::jsonb,
'"Pouvoir" Ã  la 1re personne du singulier : "je peux". "Peut" c''est la 3e personne (il peut). L''erreur est frÃ©quente car les deux formes sonnent pareil Ã  l''oral â€" mais Ã  l''Ã©crit, la diffÃ©rence est claire. Avec "je", c''est toujours "peux" â€" retiens-le et ne te laisse plus avoir par l''homophonie !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la forme correcte de "Ãªtre" Ã  la 2e personne du singulier au prÃ©sent ?',null,
'[{"id":"a","label":"tu ait"},{"id":"b","label":"tu est"},{"id":"c","label":"tu es"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"ÃŠtre" au prÃ©sent : je suis, tu es, il est, nous sommes, vous Ãªtes, ils sont. "Tu es" â€" sans t final. "Tu est" est une erreur par confusion avec la 3e personne. "Tu ait" n''existe pas. Retiens bien la conjugaison entiÃ¨re d''Ãªtre par cÅ"ur â€" c''est un des verbes les plus utiles de la langue !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','vrai_faux',
'Vrai ou faux ? "Vous dites" est la conjugaison correcte de "dire" Ã  la 2e pers. du pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! "Dire" est irrÃ©gulier Ã  la 2e personne du pluriel : "vous dites" et non "vous disez". MÃªme irrÃ©gularitÃ© pour "faire" â†' "vous faites" et "Ãªtre" â†' "vous Ãªtes". Ces trois formes sont des exceptions Ã  mÃ©moriser absolument â€" elles apparaissent trÃ¨s frÃ©quemment dans les exercices du CRPE !',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la conjugaison de "prendre" Ã  la 3e personne du pluriel ?',null,
'[{"id":"a","label":"ils prennent"},{"id":"b","label":"ils prenent"},{"id":"c","label":"ils prends"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Prendre" au prÃ©sent : je prends, tu prends, il prend, nous prenons, vous prenez, ils prennent. La 3e pers. du pluriel double le -n- : "prennent". MÃªme modÃ¨le pour apprendre â†' ils apprennent, comprendre â†' ils comprennent. Ce doublement de consonne Ã  la 3e personne du pluriel, c''est la signature de ce groupe de verbes !',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 17 â€" Imparfait et passÃ© composÃ© â€" Facile â€" free
-- ================================================================
('17000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Choisissez le temps adaptÃ© : "Hier, pendant qu''il ___ (dormir), le tÃ©lÃ©phone a sonnÃ©."',null,
'[{"id":"a","label":"dormait"},{"id":"b","label":"a dormi"},{"id":"c","label":"dormira"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'C''est l''opposition fondamentale Ã  maÃ®triser ! L''imparfait exprime l''action en cours, le cadre â€" c''est le dÃ©cor. "Pendant qu''il dormait" = action de fond (imparfait). "A sonnÃ©" = action ponctuelle qui interrompt (passÃ© composÃ©). Imparfait = tapis de fond, passÃ© composÃ© = Ã©vÃ©nement qui surgit. Retiens cette image !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Quel temps utiliser : "Quand j''Ã©tais enfant, je ___ (jouer) souvent dehors."',null,
'[{"id":"a","label":"jouais"},{"id":"b","label":"ai jouÃ©"},{"id":"c","label":"joue"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Quand j''Ã©tais enfant" + "souvent" â€" deux indices qui crient "habitude rÃ©pÃ©tÃ©e dans le passÃ©" ! C''est exactement la valeur de l''imparfait itÃ©ratif : "jouais". Le passÃ© composÃ© aurait Ã©voquÃ© un fait ponctuel et datÃ© â€" ce n''est pas le sens ici. Les adverbes comme "souvent", "toujours", "chaque jour" sont les amis de l''imparfait !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','vrai_faux',
'Vrai ou faux ? L''imparfait de "avoir" Ã  la 1re personne du singulier est "j''avais".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! L''imparfait se forme sur le radical de la 1re personne du pluriel au prÃ©sent + terminaisons -ais, -ais, -ait, -ions, -iez, -aient. "Avoir" : nous avons â†' radical "av-" â†' j''avais, tu avais, il avait... Cette rÃ¨gle de formation vaut pour tous les verbes â€" y compris les irrÃ©guliers. Repars toujours du "nous" au prÃ©sent pour trouver le radical de l''imparfait !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Conjuguez "partir" au passÃ© composÃ© Ã  la 1re personne du singulier.',null,
'[{"id":"a","label":"j''ai parti"},{"id":"b","label":"je suis parti"},{"id":"c","label":"je partais"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Partir" se conjugue avec l''auxiliaire "Ãªtre" au passÃ© composÃ© â€" comme tous les verbes de mouvement intransitifs (aller, venir, partir, sortir, entrer, monter, descendre...). Donc "je suis parti(e)" et jamais "j''ai parti". MÃ©mo : ces verbes de dÃ©placement prennent Ãªtre â€" ils vont et viennent avec leur auxiliaire !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','correction_orthographique',
'Corrigez : "Ce matin, je mangeais une pomme quand le bus est arrivÃ©."',null,
null,
'{"mode":"text","acceptableAnswers":["Ce matin, je mangeais une pomme quand le bus est arrivÃ©."]}'::jsonb,
'La phrase est correcte â€" ne touche Ã  rien ! "Je mangeais" (imparfait) = action en cours, cadre. "Est arrivÃ©" (passÃ© composÃ©) = Ã©vÃ©nement ponctuel qui interrompt. L''opposition imparfait / passÃ© composÃ© est parfaitement respectÃ©e. C''est exactement comme Ã§a qu''on l''enseigne Ã  l''Ã©cole !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Quelle est la conjugaison de "Ãªtre" Ã  l''imparfait, 3e personne du pluriel ?',null,
'[{"id":"a","label":"ils Ã©taient"},{"id":"b","label":"ils seront"},{"id":"c","label":"ils sont"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"ÃŠtre" Ã  l''imparfait : j''Ã©tais, tu Ã©tais, il Ã©tait, nous Ã©tions, vous Ã©tiez, ils Ã©taient. La 3e personne du pluriel : "ils Ã©taient". "Ils sont" â€" c''est le prÃ©sent ; "ils seront" â€" c''est le futur. Trois temps, trois formes diffÃ©rentes â€" Ã  distinguer sans hÃ©siter !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','vrai_faux',
'Vrai ou faux ? "Nous avons Ã©tÃ© heureux pendant ces annÃ©es" est grammaticalement correct.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Avons Ã©tÃ©" (auxiliaire avoir + participe passÃ© "Ã©tÃ©" de "Ãªtre") est parfaitement correct. Le passÃ© composÃ© exprime ici un fait rÃ©volu vu dans sa globalitÃ©. Ã€ distinguer de l''imparfait "Ã©tions" qui exprimerait un Ã©tat continu sans insistance sur la fin de cet Ã©tat. Les deux sont possibles â€" mais ils n''ont pas tout Ã  fait le mÃªme angle !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'ComplÃ©tez : "Il ___ (pleuvoir) depuis trois heures quand nous sommes sortis."',null,
'[{"id":"a","label":"pleuvait"},{"id":"b","label":"a plu"},{"id":"c","label":"pleut"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Depuis" + imparfait = action en cours depuis un moment dans le passÃ©. "Il pleuvait depuis trois heures" : durÃ©e en cours au moment oÃ¹ on est sortis. "Quand nous sommes sortis" : Ã©vÃ©nement ponctuel. Imparfait (durÃ©e en cours) vs passÃ© composÃ© (Ã©vÃ©nement). Cette combinaison "depuis + imparfait" est trÃ¨s courante â€" retiens-la !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','correction_orthographique',
'Corrigez : "Hier soir, je regardais la tÃ©lÃ©vision et soudain, le courant coupait."',null,
null,
'{"mode":"text","acceptableAnswers":["Hier soir, je regardais la tÃ©lÃ©vision et soudain, le courant a Ã©tÃ© coupÃ©."]}'::jsonb,
'"Regardais" (imparfait) : action de fond, correct. "Soudain" annonce un Ã©vÃ©nement ponctuel et soudain â€" c''est l''Ã©vÃ©nement qui surgit. On attend donc un passÃ© composÃ© : "le courant a Ã©tÃ© coupÃ©". "Coupait" Ã  l''imparfait ne rend pas cette soudaineté. "Soudain" = signal d''un passÃ© composÃ© Ã  venir !',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Choisissez le temps correct : "Avant, il ___ (ne pas aimer) les Ã©pinards."',null,
'[{"id":"a","label":"n''a pas aimÃ©"},{"id":"b","label":"n''aimait pas"},{"id":"c","label":"n''aime pas"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Avant" introduit un Ã©tat habituel ou continu dans le passÃ© â€" c''est exactement la valeur de l''imparfait : "n''aimait pas". Le passÃ© composÃ© "n''a pas aimÃ©" exprimerait un refus ponctuel et datÃ© â€" pas une habitude. L''imparfait est le temps des Ã©tats passÃ©s rÃ©volus. "Avant" + imparfait, c''est une combinaison naturelle !',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 18 â€" Futur simple et conditionnel prÃ©sent â€" IntermÃ©diaire â€" free
-- ================================================================
('18000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Conjuguez "venir" au futur simple, 1re personne du singulier.',null,
'[{"id":"a","label":"je viendrais"},{"id":"b","label":"je viendrai"},{"id":"c","label":"je viens"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Venir" au futur simple : je viendrai, tu viendras, il viendra, nous viendrons... Le radical du futur est "viendr-". Ã€ distinguer absolument du conditionnel "je viendrais" â€" mÃªme base, mais terminaisons de l''imparfait (-ais, -ais, -ait...). La diffÃ©rence : futur = -ai Ã  la 1re pers. sing., conditionnel = -ais. Un s de diffÃ©rence â€" mais quelle diffÃ©rence de sens !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Choisissez le temps adaptÃ© : "Si j''avais le temps, je ___ (lire) davantage."',null,
'[{"id":"a","label":"lirai"},{"id":"b","label":"lisais"},{"id":"c","label":"lirais"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'RÃ¨gle d''or Ã  graver dans ta tÃªte : "si + imparfait â†' conditionnel prÃ©sent" pour une hypothÃ¨se irrÃ©elle au prÃ©sent. "Si j''avais le temps" (imparfait) â†' "je lirais" (conditionnel). Compare avec l''hypothÃ¨se rÃ©elle : "Si j''ai le temps, je lirai" = futur. Deux structures, deux sens diffÃ©rents â€" apprends les deux !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? Au futur simple, "Ãªtre" se conjugue "je serai, tu seras, il sera".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "ÃŠtre" a un futur irrÃ©gulier : je serai, tu seras, il sera, nous serons, vous serez, ils seront. Le radical est "ser-". Ã€ distinguer de "avoir" : j''aurai, tu auras, il aura... (radical "aur-"). Ces deux radicaux irrÃ©guliers sont Ã  mÃ©moriser absolument â€" ils reviennent dans tous les exercices de conjugaison !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez : "Demain, il feras beau."',null,
null,
'{"mode":"text","acceptableAnswers":["Demain, il fera beau."]}'::jsonb,
'"Faire" au futur simple : je ferai, tu feras, il fera. La 3e personne du singulier se termine par -a â€" sans -s ! Le -s n''existe qu''aux 1re et 2e personnes du singulier. La 3e pers. sing. est toujours en -a au futur. "Feras" ne vit qu''avec "tu" â€" pas avec "il" !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Quel est le conditionnel prÃ©sent de "avoir" Ã  la 1re personne du singulier ?',null,
'[{"id":"a","label":"j''aurais"},{"id":"b","label":"j''aurai"},{"id":"c","label":"j''avais"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le conditionnel prÃ©sent = radical du futur + terminaisons de l''imparfait. "Avoir" : radical du futur "aur-" + "-ais" â†' "j''aurais". "J''aurai" c''est le futur simple. "J''avais" c''est l''imparfait. La diffÃ©rence futur/conditionnel Ã  la 1re pers. sing. : -ai (futur) vs -ais (conditionnel). Un seul s â€" mais deux modes distincts !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Choisissez la forme correcte : "Selon la mÃ©tÃ©o, il ___ (neiger) demain."',null,
'[{"id":"a","label":"neigerait"},{"id":"b","label":"neigera"},{"id":"c","label":"neige"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Selon la mÃ©tÃ©o" â€" c''est une information rapportÃ©e, pas certifiÃ©e ! C''est le conditionnel journalistique (ou d''incertitude) : "Il neigerait" exprime que l''information est rapportÃ©e sans garantie. "Neigera" serait une affirmation certaine. Retiens : conditionnel = distanciation, doute, information non vÃ©rifiÃ©e. Ce n''est pas que de la grammaire â€" c''est aussi de la posture Ã©nonciative !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? "Aller" au futur simple donne "j''allerai".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "Aller" a un futur irrÃ©gulier dont le radical est "ir-" : j''irai, tu iras, il ira, nous irons, vous irez, ils iront. Ne confonds pas avec le radical "all-" du prÃ©sent (nous allons, vous allez). C''est la mÃªme supplÃ©tion qu''au prÃ©sent â€" le futur vient d''une autre racine. "Allerai" n''existe pas â€" seul "irai" est correct !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Quel est le futur simple de "envoyer" Ã  la 1re personne du singulier ?',null,
'[{"id":"a","label":"j''enverrai"},{"id":"b","label":"j''envoierai"},{"id":"c","label":"j''enverais"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Envoyer" a un futur irrÃ©gulier : le radical devient "enverr-" (avec deux r). Je enverrai, tu enverras, il enverra... Ne pas Ã©crire "envoierai" â€" erreur frÃ©quente par analogie avec le prÃ©sent "j''envoie". MÃªme irrÃ©gularitÃ© pour "renvoyer" â†' je renverrai. Ces futurs en -rr- : envoyer, voir â†' je verrai, courir â†' je courrai. Attention aux doubles r !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez : "Si tu venais, nous pourrions dÃ®ner ensemble."',null,
null,
'{"mode":"text","acceptableAnswers":["Si tu venais, nous pourrions dÃ®ner ensemble."]}'::jsonb,
'La phrase est correcte â€" ne touche Ã  rien ! Structure hypothÃ©tique au prÃ©sent irrÃ©el : "si + imparfait (venais) â†' conditionnel prÃ©sent (pourrions)". L''accord des temps est parfaitement respectÃ©. Et surtout â€" attention piÃ¨ge ! â€" jamais de conditionnel directement aprÃ¨s "si" de condition. "Si tu viendrais" : c''est la faute classique Ã  absolument Ã©viter !',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Distinguez futur et conditionnel : "Je ___ bien t''aider mais je n''ai pas le temps."',null,
'[{"id":"a","label":"voudrai"},{"id":"b","label":"voudrais"},{"id":"c","label":"voulus"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le conditionnel exprime ici un souhait poli ou un regret : "Je voudrais bien t''aider" = je souhaiterais, mais je ne peux pas. "Je voudrai" (futur) exprimerait une volontÃ© future certaine â€" Ã§a ne va pas avec "mais je n''ai pas le temps". Le conditionnel de politesse adoucit la demande â€" c''est une des valeurs les plus belles et les plus utiles de ce mode !',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 19 â€" Subjonctif prÃ©sent â€" IntermÃ©diaire â€" premium
-- ================================================================
('19000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Quel est le subjonctif prÃ©sent de "faire" Ã  la 3e personne du singulier ?',null,
'[{"id":"a","label":"qu''il fasse"},{"id":"b","label":"qu''il fait"},{"id":"c","label":"qu''il fera"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Faire" au subjonctif prÃ©sent est irrÃ©gulier : que je fasse, que tu fasses, qu''il fasse, que nous fassions, que vous fassiez, qu''ils fassent. "Il fasse" â€" Ã  ne pas confondre avec l''indicatif "il fait" ou le futur "il fera". Ces formes irrÃ©guliÃ¨res au subjonctif sont Ã  connaÃ®tre par cÅ"ur â€" elles reviennent inÃ©vitablement au CRPE !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? Le subjonctif est obligatoire aprÃ¨s "bien que".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Bien que" est une conjonction de concession qui impose toujours le subjonctif : "bien qu''il soit fatiguÃ©" (et jamais "bien qu''il est fatiguÃ©"). Autres conjonctions de concession suivies du subjonctif : quoique, encore que, sans que. Retiens-les â€" elles forment une famille logique que le subjonctif accompagne toujours !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Conjuguez "Ãªtre" au subjonctif prÃ©sent, 1re pers. du pluriel.',null,
'[{"id":"a","label":"que nous sommes"},{"id":"b","label":"que nous soyons"},{"id":"c","label":"que nous Ã©tions"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"ÃŠtre" au subjonctif prÃ©sent est trÃ¨s irrÃ©gulier : que je sois, que tu sois, qu''il soit, que nous soyons, que vous soyez, qu''ils soient. La 1re pers. du pluriel : "que nous soyons". "Ã‰tions" c''est l''imparfait de l''indicatif. "Sommes" c''est le prÃ©sent indicatif. "Soyons" â€" retiens cette forme irrÃ©guliÃ¨re, elle est incontournable !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "Il faut que tu finisses ton travail."',null,
null,
'{"mode":"text","acceptableAnswers":["Il faut que tu finisses ton travail."]}'::jsonb,
'La phrase est correcte ! "Il faut que" impose le subjonctif â€" rÃ¨gle absolue. "Finir" (2e groupe) au subjonctif prÃ©sent, 2e pers. sing. : "que tu finisses". Subjonctif de finir : que je finisse, que tu finisses, qu''il finisse, que nous finissions, que vous finissiez, qu''ils finissent. La double terminaison -iss- + -e est la marque du 2e groupe au subjonctif !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Choisissez la forme correcte : "Je veux que tu ___ (venir) ce soir."',null,
'[{"id":"a","label":"viennes"},{"id":"b","label":"viens"},{"id":"c","label":"viendras"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Vouloir que" impose le subjonctif dans la subordonnÃ©e. "Venir" au subjonctif : que je vienne, que tu viennes, qu''il vienne, que nous venions, que vous veniez, qu''ils viennent. La 2e pers. sing. est "viennes" â€" avec -nn- et -e final. Ne confonds pas avec l''indicatif "tu viens" ni le futur "tu viendras" !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? AprÃ¨s "espÃ©rer que", on utilise le subjonctif.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux â€" et c''est un piÃ¨ge classique ! "EspÃ©rer que" (sens positif, affirmation) est suivi de l''indicatif : "j''espÃ¨re qu''il viendra / qu''il vient". En revanche, "douter que", "craindre que", "avoir peur que" imposent le subjonctif. C''est une nuance fondamentale Ã  maÃ®triser pour le CRPE : espoir = indicatif, doute/crainte = subjonctif !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Quel est le subjonctif prÃ©sent de "avoir" Ã  la 3e pers. du pluriel ?',null,
'[{"id":"a","label":"qu''ils ont"},{"id":"b","label":"qu''ils aient"},{"id":"c","label":"qu''ils avaient"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Avoir" au subjonctif est irrÃ©gulier : que j''aie, que tu aies, qu''il ait, que nous ayons, que vous ayez, qu''ils aient. La 3e pers. du pluriel : "qu''ils aient". "Qu''ils ont" â€" c''est l''indicatif. "Qu''ils avaient" â€" c''est l''imparfait de l''indicatif. Ces formes irrÃ©guliÃ¨res d''avoir et d''Ãªtre au subjonctif sont absolument incontournables â€" par cÅ"ur !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Il est important qu''on respecte les rÃ¨gles."',null,
null,
'{"mode":"text","acceptableAnswers":["Il est important qu''on respecte les rÃ¨gles."]}'::jsonb,
'La phrase est correcte ! "Il est important que" impose le subjonctif. "Respecter" (1er groupe) au subjonctif : que je respecte, que tu respectes, qu''il/on respecte... La 3e pers. sing. du subjonctif des verbes en -er est identique Ã  l''indicatif prÃ©sent â€" c''est souvent source de confusion, mais ici la forme est bien correcte dans les deux cas !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Choisissez la construction correcte.',null,
'[{"id":"a","label":"Je doute qu''il a raison."},{"id":"b","label":"Je doute qu''il ait raison."},{"id":"c","label":"Je doute qu''il aurait raison."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Douter que" exprime l''incertitude et impose le subjonctif. "Qu''il ait raison" â€" subjonctif de "avoir" â€" est la forme correcte. "Qu''il a raison" serait un indicatif â€" incorrectement utilisÃ© ici. "Qu''il aurait raison" est un conditionnel â€" inappropriÃ©. Doute = subjonctif, certitude = indicatif. C''est la rÃ¨gle que tu dois avoir rÃ©flexe !',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Bien qu''il soit tard, elle travaille encore", le subjonctif est correctement employÃ©.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Bien que" est une conjonction de concession â€" elle rÃ©git toujours le subjonctif. "Bien qu''il soit tard" : subjonctif de "Ãªtre" â€" parfaitement correct. Malgré l''heure tardive, elle travaille : la concession est bien rendue. Autres conjonctions de la famille : quoique, encore que, sans que â€" toutes suivies du subjonctif !',
'valide','CRPE FranÃ§ais V2','premium',true),

-- ================================================================
-- SÃ‰RIE 20 â€" Valeurs des temps verbaux â€" AvancÃ© â€" premium
-- ================================================================
('20000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur du prÃ©sent dans : "La Terre tourne autour du Soleil."',null,
'[{"id":"a","label":"PrÃ©sent de narration"},{"id":"b","label":"PrÃ©sent d''Ã©nonciation"},{"id":"c","label":"PrÃ©sent de vÃ©ritÃ© gÃ©nÃ©rale"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Ce prÃ©sent exprime un fait universel, permanent, qui ne dÃ©pend d''aucun moment particulier â€" c''est le prÃ©sent de vÃ©ritÃ© gÃ©nÃ©rale (ou gnomique). VÃ©ritÃ©s scientifiques, proverbes, dÃ©finitions : c''est son domaine. DiffÃ©rent du prÃ©sent d''Ã©nonciation (= maintenant, ce qui se passe) et du prÃ©sent de narration (= raconter le passÃ© comme si on y Ã©tait). Trois prÃ©sents, trois valeurs distincts â€" Ã  bien identifier !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du passÃ© composÃ© dans : "Hier, j''ai rencontrÃ© un ami d''enfance."',null,
'[{"id":"a","label":"Fait habituel du passÃ©"},{"id":"b","label":"Fait passÃ©, accompli, ancrÃ© dans un moment prÃ©cis"},{"id":"c","label":"Fait en cours au moment de l''Ã©nonciation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le passÃ© composÃ© exprime un fait accompli, datÃ© (hier) et prÃ©sentÃ© comme achevÃ©. C''est sa valeur principale : Ã©vÃ©nement ponctuel du passÃ©, vu comme terminÃ©. On parle de "plan du discours" â€" par opposition au passÃ© simple (plan du rÃ©cit littÃ©raire). PassÃ© composÃ© = plan oral et courant ; passÃ© simple = plan Ã©crit et littÃ©raire. RÃ©fÃ©rences Ã  connaÃ®tre !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Dans un rÃ©cit littÃ©raire, le passÃ© simple et l''imparfait ont des valeurs complÃ©mentaires.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! Dans le rÃ©cit littÃ©raire, l''imparfait peint le dÃ©cor â€" fonds, descriptions, Ã©tats, actions duratives. Le passÃ© simple Ã©crit les Ã©vÃ©nements â€" actions ponctuelles et successives qui font avancer la narration. Imparfait = arriÃ¨re-plan, passÃ© simple = premier plan. Ensemble, ils rythment le rÃ©cit â€" l''un peint, l''autre raconte !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur du futur dans : "Vous prendrez Ã  gauche, puis continuerez tout droit."',null,
'[{"id":"a","label":"Futur de certitude"},{"id":"b","label":"Futur d''attÃ©nuation ou futur injonctif"},{"id":"c","label":"Futur antÃ©rieur"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Ce futur remplace l''impÃ©ratif pour donner un ordre ou une consigne de faÃ§on attÃ©nuÃ©e, moins directe. C''est le futur injonctif : "vous prendrez" = "prenez". On l''emploie pour les instructions, recettes, consignes, rÃ¨glements. Plus poli et distant que l''impÃ©ratif direct â€" c''est une valeur essentielle Ã  reconnaÃ®tre dans les textes prescriptifs !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du conditionnel dans : "D''aprÃ¨s les tÃ©moins, il aurait quittÃ© les lieux Ã  minuit."',null,
'[{"id":"a","label":"Conditionnel de politesse"},{"id":"b","label":"Conditionnel hypothÃ©tique"},{"id":"c","label":"Conditionnel journalistique (information non vÃ©rifiÃ©e)"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Ce conditionnel passÃ© indique que l''information est rapportÃ©e sans Ãªtre vÃ©rifiÃ©e par le locuteur â€" c''est le conditionnel de distanciation (ou journalistique). Le locuteur se dÃ©charge de la responsabilitÃ© de l''affirmation. C''est systÃ©matiquement employÃ© dans la presse (« Le suspect aurait fui... »). Valeur cruciale pour l''analyse de textes mÃ©diatiques au CRPE !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Le prÃ©sent de narration (ou prÃ©sent historique) permet d''actualiser des faits passÃ©s pour les rendre plus vivants.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! Le prÃ©sent historique remplace le passÃ© simple dans un rÃ©cit pour crÃ©er un effet de vivacitÃ©, d''immÃ©diatetÃ©. "En 1789, le peuple prend la Bastille." On plonge dans l''action comme si on y Ã©tait â€" c''est sa magie. TrÃ¨s utilisÃ© en commentaire littÃ©raire. Cette valeur est Ã  connaÃ®tre pour l''analyse de textes narratifs au CRPE !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur de l''imparfait dans : "DÃ¨s qu''il avait un moment, il lisait."',null,
'[{"id":"a","label":"Imparfait pittoresque"},{"id":"b","label":"Imparfait d''habitude ou itÃ©ratif"},{"id":"c","label":"Imparfait de description"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"DÃ¨s qu''il avait... il lisait" : c''est une action rÃ©pÃ©tÃ©e, habituelle dans le passÃ©. C''est l''imparfait itÃ©ratif (d''habitude) â€" Ã©quivalent de "chaque fois que". Ã€ distinguer de l''imparfait descriptif (Ã©tat, dÃ©cor) et de l''imparfait pittoresque (Ã©vÃ©nement dramatisÃ©). Le marqueur temporel "dÃ¨s que" signale la rÃ©pÃ©tition â€" c''est lui qui te guide vers l''itÃ©ratif !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle valeur a le futur antÃ©rieur dans : "Quand tu auras fini, tu pourras partir."',null,
'[{"id":"a","label":"Action future antÃ©rieure Ã  une autre action future"},{"id":"b","label":"ProbabilitÃ© dans le passÃ©"},{"id":"c","label":"Ordre attÃ©nuÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le futur antÃ©rieur exprime ce qui sera accompli avant une autre action future. "Tu auras fini" (futur antÃ©rieur) â†' d''abord â†' "tu pourras partir" (futur simple). La subordination temporelle avec "quand" impose cette concordance des temps. Retiens : futur antÃ©rieur = l''action arrivÃ©e EN PREMIER dans un futur Ã  deux Ã©tapes !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Dans "Si tu travaillais davantage, tu rÃ©ussirais", le conditionnel exprime un fait possible dans le rÃ©el.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "Si + imparfait â†' conditionnel prÃ©sent" exprime une hypothÃ¨se contraire Ã  la rÃ©alitÃ© prÃ©sente â€" irrÃ©elle. Le locuteur suppose que tu ne travailles pas assez. Si l''hypothÃ¨se Ã©tait rÃ©elle ou possible, on dirait : "si tu travailles davantage, tu rÃ©ussiras" (si + prÃ©sent â†' futur). IrrÃ©el vs rÃ©el â€" une opposition fondamentale que tout futur prof doit maÃ®triser !',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','reponse_courte',
'Dans "Ã€ peine Ã©tait-il entrÃ© qu''il repartit", quel temps est employÃ© dans la principale et quelle en est la valeur ?',null,
null,
'{"mode":"text","acceptableAnswers":["PassÃ© simple, action immÃ©diatement consÃ©cutive."]}'::jsonb,
'Dans la tournure "Ã  peine... que", le passÃ© simple "repartit" exprime une action immÃ©diatement consÃ©cutive Ã  une autre. L''inversion du sujet aprÃ¨s "Ã  peine" est obligatoire Ã  l''Ã©crit soutenu : "Ã  peine Ã©tait-il entrÃ©...". Cette construction est typique du style littÃ©raire â€" Ã©lÃ©gante, soutenue, et incontournable pour l''analyse de textes au CRPE !',
'valide','CRPE FranÃ§ais V2','premium',true);



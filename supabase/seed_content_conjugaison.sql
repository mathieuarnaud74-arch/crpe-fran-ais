-- CRPE Français — Lot 3 : Conjugaison (5 séries × 10 questions)
-- topic_key unique par série garantit le regroupement en session de 10 questions
-- Appliquer APRÈS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 16 — Présent de l'indicatif — Facile — free
-- ================================================================
-- QCM: Q1→b, Q2→d, Q4→c, Q6→a, Q8→d, Q10→a
-- (correction_orthographique: Q3, Q7; vrai_faux: Q5, Q9 — skipped)

('16000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','qcm',
'Quelle est la conjugaison correcte de "aller" à la 1re personne du singulier ?',null,
'[{"id":"a","label":"je alle"},{"id":"b","label":"je vais"},{"id":"c","label":"j''ale"},{"id":"d","label":"je aille"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Aller" est un verbe irrégulier du 3e groupe dont la conjugaison au présent est entièrement supplétive — c''est-à-dire que les formes viennent de racines différentes : vais, vas, va, allons, allez, vont. La 1re personne du singulier : "je vais". Pas de logique, juste la mémoire — à retenir par cœur !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','qcm',
'Conjuguez "finir" à la 2e personne du pluriel au présent.',null,
'[{"id":"a","label":"vous finisez"},{"id":"b","label":"vous finissiez"},{"id":"c","label":"vous finiriez"},{"id":"d","label":"vous finissez"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Finir" est un verbe du 2e groupe : il insère l''infixe -iss- au pluriel. Nous finissons, vous finissez, ils finissent. "Vous finissez" — avec deux s — c''est la seule forme correcte. "Finissiez" c''est l''imparfait ou le subjonctif — pas le présent. Le double -ss- est la marque du 2e groupe : ne l''oublie pas !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','correction_orthographique',
'Corrigez la conjugaison : "Il fesait beau hier."',null,
null,
'{"mode":"text","acceptableAnswers":["Il faisait beau hier."]}'::jsonb,
'"Faire" conserve le radical "fais-" à toutes les personnes — sauf "vous faites" et "ils font" qui sont irrégulières. L''imparfait : je faisais, tu faisais, il faisait... La graphie "fesait" est une erreur très fréquente liée à la prononciation. Retiens bien : "faisait" avec un "ai", comme dans toute la conjugaison de "faire" !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','qcm',
'Quelle est la forme correcte de "appeler" à la 3e personne du singulier au présent ?',null,
'[{"id":"a","label":"il apelle"},{"id":"b","label":"il appèle"},{"id":"c","label":"il appelle"},{"id":"d","label":"il apèle"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Appeler" double le -l- devant e muet : j''appelle, tu appelles, il appelle, ils appellent. Aux 1re et 2e personnes du pluriel, le -l- reste simple : nous appelons, vous appelez. C''est le modèle "appeler/jeter" — double consonne devant e muet. Si tu prononces la syllabe avec un [è] ouvert, c''est le signe que la consonne double !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','vrai_faux',
'Vrai ou faux ? "Nous mangons" est la forme correcte du présent de "manger" à la 1re pers. du pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Les verbes en -ger conservent le -e- devant -o- pour garder le son [ʒ] : nous mangeons (et non "mangons"). Sans le -e-, la prononciation glisserait vers [g] dur — et ce serait incorrect. Même règle pour : nager → nous nageons, ranger → nous rangeons, plonger → nous plongeons. Le -e- intercalaire, c''est le garde-son !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','qcm',
'Conjuguez "pouvoir" à la 1re personne du pluriel au présent.',null,
'[{"id":"a","label":"nous pouvons"},{"id":"b","label":"nous pouveons"},{"id":"c","label":"nous peuvent"},{"id":"d","label":"nous puvons"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Pouvoir" est irrégulier : je peux/puis, tu peux, il peut, nous pouvons, vous pouvez, ils peuvent. "Nous pouvons" est la 1re personne du pluriel — à ne pas confondre avec "peuvent" (3e pers. pluriel). Retiens bien la différence : "nous pouvons" vs "ils peuvent". Ce sont les deux formes les plus souvent confondues !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','correction_orthographique',
'Corrigez : "Je veux bien mais je ne peut pas."',null,
null,
'{"mode":"text","acceptableAnswers":["Je veux bien mais je ne peux pas."]}'::jsonb,
'"Pouvoir" à la 1re personne du singulier : "je peux". "Peut" c''est la 3e personne (il peut). L''erreur est fréquente car les deux formes sonnent pareil à l''oral — mais à l''écrit, la différence est claire. Avec "je", c''est toujours "peux" — retiens-le et ne te laisse plus avoir par l''homophonie !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','qcm',
'Quelle est la forme correcte de "être" à la 2e personne du singulier au présent ?',null,
'[{"id":"a","label":"tu ait"},{"id":"b","label":"tu est"},{"id":"c","label":"tu êtes"},{"id":"d","label":"tu es"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Être" au présent : je suis, tu es, il est, nous sommes, vous êtes, ils sont. "Tu es" — sans t final. "Tu est" est une erreur par confusion avec la 3e personne. "Tu ait" n''existe pas. Retiens bien la conjugaison entière d''être par cœur — c''est un des verbes les plus utiles de la langue !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','vrai_faux',
'Vrai ou faux ? "Vous dites" est la conjugaison correcte de "dire" à la 2e pers. du pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! "Dire" est irrégulier à la 2e personne du pluriel : "vous dites" et non "vous disez". Même irrégularité pour "faire" → "vous faites" et "être" → "vous êtes". Ces trois formes sont des exceptions à mémoriser absolument — elles apparaissent très fréquemment dans les exercices du CRPE !',
'valide','CRPE Français V2','free',true),

('16000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_present','Présent de l''indicatif','Facile','qcm',
'Quelle est la conjugaison de "prendre" à la 3e personne du pluriel ?',null,
'[{"id":"a","label":"ils prennent"},{"id":"b","label":"ils prenent"},{"id":"c","label":"ils prends"},{"id":"d","label":"ils prenaient"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Prendre" au présent : je prends, tu prends, il prend, nous prenons, vous prenez, ils prennent. La 3e pers. du pluriel double le -n- : "prennent". Même modèle pour apprendre → ils apprennent, comprendre → ils comprennent. Ce doublement de consonne à la 3e personne du pluriel, c''est la signature de ce groupe de verbes !',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 17 — Imparfait et passé composé — Facile — free
-- ================================================================
-- QCM: Q1→a, Q2→d, Q4→d, Q6→a, Q8→a, Q10→b
-- (correction_orthographique: Q5, Q9; vrai_faux: Q3, Q7 — skipped)

('17000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','qcm',
'Choisissez le temps adapté : "Hier, pendant qu''il ___ (dormir), le téléphone a sonné."',null,
'[{"id":"a","label":"dormait"},{"id":"b","label":"a dormi"},{"id":"c","label":"dormira"},{"id":"d","label":"dormirait"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'C''est l''opposition fondamentale à maîtriser ! L''imparfait exprime l''action en cours, le cadre — c''est le décor. "Pendant qu''il dormait" = action de fond (imparfait). "A sonné" = action ponctuelle qui interrompt (passé composé). Imparfait = tapis de fond, passé composé = événement qui surgit. Retiens cette image !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','qcm',
'Quel temps utiliser : "Quand j''étais enfant, je ___ (jouer) souvent dehors."',null,
'[{"id":"a","label":"ai joué"},{"id":"b","label":"joue"},{"id":"c","label":"jouerais"},{"id":"d","label":"jouais"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Quand j''étais enfant" + "souvent" — deux indices qui crient "habitude répétée dans le passé" ! C''est exactement la valeur de l''imparfait itératif : "jouais". Le passé composé aurait évoqué un fait ponctuel et daté — ce n''est pas le sens ici. Les adverbes comme "souvent", "toujours", "chaque jour" sont les amis de l''imparfait !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','vrai_faux',
'Vrai ou faux ? L''imparfait de "avoir" à la 1re personne du singulier est "j''avais".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! L''imparfait se forme sur le radical de la 1re personne du pluriel au présent + terminaisons -ais, -ais, -ait, -ions, -iez, -aient. "Avoir" : nous avons → radical "av-" → j''avais, tu avais, il avait... Cette règle de formation vaut pour tous les verbes — y compris les irréguliers. Repars toujours du "nous" au présent pour trouver le radical de l''imparfait !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','qcm',
'Conjuguez "partir" au passé composé à la 1re personne du singulier.',null,
'[{"id":"a","label":"j''ai parti"},{"id":"b","label":"je partais"},{"id":"c","label":"je partirai"},{"id":"d","label":"je suis parti"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Partir" se conjugue avec l''auxiliaire "être" au passé composé — comme tous les verbes de mouvement intransitifs (aller, venir, partir, sortir, entrer, monter, descendre...). Donc "je suis parti(e)" et jamais "j''ai parti". Mémo : ces verbes de déplacement prennent être — ils vont et viennent avec leur auxiliaire !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','correction_orthographique',
'Corrigez : "Ce matin, je mangeais une pomme quand le bus est arrivé."',null,
null,
'{"mode":"text","acceptableAnswers":["Ce matin, je mangeais une pomme quand le bus est arrivé."]}'::jsonb,
'La phrase est correcte — ne touche à rien ! "Je mangeais" (imparfait) = action en cours, cadre. "Est arrivé" (passé composé) = événement ponctuel qui interrompt. L''opposition imparfait / passé composé est parfaitement respectée. C''est exactement comme ça qu''on l''enseigne à l''école !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','qcm',
'Quelle est la conjugaison de "être" à l''imparfait, 3e personne du pluriel ?',null,
'[{"id":"a","label":"ils étaient"},{"id":"b","label":"ils seront"},{"id":"c","label":"ils sont"},{"id":"d","label":"ils soient"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Être" à l''imparfait : j''étais, tu étais, il était, nous étions, vous étiez, ils étaient. La 3e personne du pluriel : "ils étaient". "Ils sont" — c''est le présent ; "ils seront" — c''est le futur. Trois temps, trois formes différentes — à distinguer sans hésiter !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','vrai_faux',
'Vrai ou faux ? "Nous avons été heureux pendant ces années" est grammaticalement correct.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Avons été" (auxiliaire avoir + participe passé "été" de "être") est parfaitement correct. Le passé composé exprime ici un fait révolu vu dans sa globalité. À distinguer de l''imparfait "étions" qui exprimerait un état continu sans insistance sur la fin de cet état. Les deux sont possibles — mais ils n''ont pas tout à fait le même angle !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','qcm',
'Complétez : "Il ___ (pleuvoir) depuis trois heures quand nous sommes sortis."',null,
'[{"id":"a","label":"pleuvait"},{"id":"b","label":"a plu"},{"id":"c","label":"pleut"},{"id":"d","label":"pleuvra"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Depuis" + imparfait = action en cours depuis un moment dans le passé. "Il pleuvait depuis trois heures" : durée en cours au moment où on est sortis. "Quand nous sommes sortis" : événement ponctuel. Imparfait (durée en cours) vs passé composé (événement). Cette combinaison "depuis + imparfait" est très courante — retiens-la !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','correction_orthographique',
'Corrigez : "Hier soir, je regardais la télévision et soudain, le courant coupait."',null,
null,
'{"mode":"text","acceptableAnswers":["Hier soir, je regardais la télévision et soudain, le courant a été coupé."]}'::jsonb,
'"Regardais" (imparfait) : action de fond, correct. "Soudain" annonce un événement ponctuel et soudain — c''est l''événement qui surgit. On attend donc un passé composé : "le courant a été coupé". "Coupait" à l''imparfait ne rend pas cette soudaineté. "Soudain" = signal d''un passé composé à venir !',
'valide','CRPE Français V2','free',true),

('17000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_imp_pc','Imparfait et passé composé','Facile','qcm',
'Choisissez le temps correct : "Avant, il ___ (ne pas aimer) les épinards."',null,
'[{"id":"a","label":"n''a pas aimé"},{"id":"b","label":"n''aimait pas"},{"id":"c","label":"n''aime pas"},{"id":"d","label":"n''aimera pas"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Avant" introduit un état habituel ou continu dans le passé — c''est exactement la valeur de l''imparfait : "n''aimait pas". Le passé composé "n''a pas aimé" exprimerait un refus ponctuel et daté — pas une habitude. L''imparfait est le temps des états passés révolus. "Avant" + imparfait, c''est une combinaison naturelle !',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 18 — Futur simple et conditionnel présent — Intermédiaire — free
-- ================================================================
-- QCM: Q1→b, Q2→c, Q5→d, Q6→a, Q8→a, Q10→d
-- (correction_orthographique: Q4, Q9; vrai_faux: Q3, Q7 — skipped)

('18000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','qcm',
'Conjuguez "venir" au futur simple, 1re personne du singulier.',null,
'[{"id":"a","label":"je viendrais"},{"id":"b","label":"je viendrai"},{"id":"c","label":"je viens"},{"id":"d","label":"je vindrai"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Venir" au futur simple : je viendrai, tu viendras, il viendra, nous viendrons... Le radical du futur est "viendr-". À distinguer absolument du conditionnel "je viendrais" — même base, mais terminaisons de l''imparfait (-ais, -ais, -ait...). La différence : futur = -ai à la 1re pers. sing., conditionnel = -ais. Un s de différence — mais quelle différence de sens !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','qcm',
'Choisissez le temps adapté : "Si j''avais le temps, je ___ (lire) davantage."',null,
'[{"id":"a","label":"lirai"},{"id":"b","label":"lisais"},{"id":"c","label":"lirais"},{"id":"d","label":"lirrais"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Règle d''or à graver dans ta tête : "si + imparfait → conditionnel présent" pour une hypothèse irréelle au présent. "Si j''avais le temps" (imparfait) → "je lirais" (conditionnel). Compare avec l''hypothèse réelle : "Si j''ai le temps, je lirai" = futur. Deux structures, deux sens différents — apprends les deux !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','vrai_faux',
'Vrai ou faux ? Au futur simple, "être" se conjugue "je serai, tu seras, il sera".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Être" a un futur irrégulier : je serai, tu seras, il sera, nous serons, vous serez, ils seront. Le radical est "ser-". À distinguer de "avoir" : j''aurai, tu auras, il aura... (radical "aur-"). Ces deux radicaux irréguliers sont à mémoriser absolument — ils reviennent dans tous les exercices de conjugaison !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','correction_orthographique',
'Corrigez : "Demain, il feras beau."',null,
null,
'{"mode":"text","acceptableAnswers":["Demain, il fera beau."]}'::jsonb,
'"Faire" au futur simple : je ferai, tu feras, il fera. La 3e personne du singulier se termine par -a — sans -s ! Le -s n''existe qu''aux 1re et 2e personnes du singulier. La 3e pers. sing. est toujours en -a au futur. "Feras" ne vit qu''avec "tu" — pas avec "il" !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','qcm',
'Quel est le conditionnel présent de "avoir" à la 1re personne du singulier ?',null,
'[{"id":"a","label":"j''aurai"},{"id":"b","label":"j''avais"},{"id":"c","label":"j''aie"},{"id":"d","label":"j''aurais"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le conditionnel présent = radical du futur + terminaisons de l''imparfait. "Avoir" : radical du futur "aur-" + "-ais" → "j''aurais". "J''aurai" c''est le futur simple. "J''avais" c''est l''imparfait. La différence futur/conditionnel à la 1re pers. sing. : -ai (futur) vs -ais (conditionnel). Un seul s — mais deux modes distincts !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','qcm',
'Choisissez la forme correcte : "Selon la météo, il ___ (neiger) demain."',null,
'[{"id":"a","label":"neigerait"},{"id":"b","label":"neigera"},{"id":"c","label":"neige"},{"id":"d","label":"neigeais"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Selon la météo" — c''est une information rapportée, pas certifiée ! C''est le conditionnel journalistique (ou d''incertitude) : "Il neigerait" exprime que l''information est rapportée sans garantie. "Neigera" serait une affirmation certaine. Retiens : conditionnel = distanciation, doute, information non vérifiée. Ce n''est pas que de la grammaire — c''est aussi de la posture énonciative !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','vrai_faux',
'Vrai ou faux ? "Aller" au futur simple donne "j''allerai".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "Aller" a un futur irrégulier dont le radical est "ir-" : j''irai, tu iras, il ira, nous irons, vous irez, ils iront. Ne confonds pas avec le radical "all-" du présent (nous allons, vous allez). C''est la même supplétion qu''au présent — le futur vient d''une autre racine. "Allerai" n''existe pas — seul "irai" est correct !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','qcm',
'Quel est le futur simple de "envoyer" à la 1re personne du singulier ?',null,
'[{"id":"a","label":"j''enverrai"},{"id":"b","label":"j''envoierai"},{"id":"c","label":"j''enverais"},{"id":"d","label":"j''envoyerai"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Envoyer" a un futur irrégulier : le radical devient "enverr-" (avec deux r). Je enverrai, tu enverras, il enverra... Ne pas écrire "envoierai" — erreur fréquente par analogie avec le présent "j''envoie". Même irrégularité pour "renvoyer" → je renverrai. Ces futurs en -rr- : envoyer, voir → je verrai, courir → je courrai. Attention aux doubles r !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','correction_orthographique',
'Corrigez : "Si tu venais, nous pourrions dîner ensemble."',null,
null,
'{"mode":"text","acceptableAnswers":["Si tu venais, nous pourrions dîner ensemble."]}'::jsonb,
'La phrase est correcte — ne touche à rien ! Structure hypothétique au présent irréel : "si + imparfait (venais) → conditionnel présent (pourrions)". L''accord des temps est parfaitement respecté. Et surtout — attention piège ! — jamais de conditionnel directement après "si" de condition. "Si tu viendrais" : c''est la faute classique à absolument éviter !',
'valide','CRPE Français V2','free',true),

('18000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel présent','Intermediaire','qcm',
'Distinguez futur et conditionnel : "Je ___ bien t''aider mais je n''ai pas le temps."',null,
'[{"id":"a","label":"voudrai"},{"id":"b","label":"voulus"},{"id":"c","label":"voulais"},{"id":"d","label":"voudrais"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le conditionnel exprime ici un souhait poli ou un regret : "Je voudrais bien t''aider" = je souhaiterais, mais je ne peux pas. "Je voudrai" (futur) exprimerait une volonté future certaine — ça ne va pas avec "mais je n''ai pas le temps". Le conditionnel de politesse adoucit la demande — c''est une des valeurs les plus belles et les plus utiles de ce temps ! Selon la terminologie officielle (Éduscol 2021), le conditionnel est un temps de l''indicatif, et non un mode à part entière.',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 19 — Subjonctif présent — Intermédiaire — premium
-- ================================================================
-- QCM: Q1→a, Q3→d, Q5→a, Q7→d, Q9→b
-- (vrai_faux: Q2, Q6, Q10; correction_orthographique: Q4, Q8 — skipped)

('19000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Quel est le subjonctif présent de "faire" à la 3e personne du singulier ?',null,
'[{"id":"a","label":"qu''il fasse"},{"id":"b","label":"qu''il fait"},{"id":"c","label":"qu''il fera"},{"id":"d","label":"qu''il faisait"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Faire" au subjonctif présent est irrégulier : que je fasse, que tu fasses, qu''il fasse, que nous fassions, que vous fassiez, qu''ils fassent. "Il fasse" — à ne pas confondre avec l''indicatif "il fait" ou le futur "il fera". Ces formes irrégulières au subjonctif sont à connaître par cœur — elles reviennent inévitablement au CRPE !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','vrai_faux',
'Vrai ou faux ? Le subjonctif est obligatoire après "bien que".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Bien que" est une conjonction de concession qui impose toujours le subjonctif : "bien qu''il soit fatigué" (et jamais "bien qu''il est fatigué"). Autres conjonctions de concession suivies du subjonctif : quoique, encore que, sans que. Retiens-les — elles forment une famille logique que le subjonctif accompagne toujours !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Conjuguez "être" au subjonctif présent, 1re pers. du pluriel.',null,
'[{"id":"a","label":"que nous sommes"},{"id":"b","label":"que nous étions"},{"id":"c","label":"que nous serions"},{"id":"d","label":"que nous soyons"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Être" au subjonctif présent est très irrégulier : que je sois, que tu sois, qu''il soit, que nous soyons, que vous soyez, qu''ils soient. La 1re pers. du pluriel : "que nous soyons". "Étions" c''est l''imparfait de l''indicatif. "Sommes" c''est le présent indicatif. "Soyons" — retiens cette forme irrégulière, elle est incontournable !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','correction_orthographique',
'Corrigez si nécessaire : "Il faut que tu finisses ton travail."',null,
null,
'{"mode":"text","acceptableAnswers":["Il faut que tu finisses ton travail."]}'::jsonb,
'La phrase est correcte ! "Il faut que" impose le subjonctif — règle absolue. "Finir" (2e groupe) au subjonctif présent, 2e pers. sing. : "que tu finisses". Subjonctif de finir : que je finisse, que tu finisses, qu''il finisse, que nous finissions, que vous finissiez, qu''ils finissent. La double terminaison -iss- + -e est la marque du 2e groupe au subjonctif !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Choisissez la forme correcte : "Je veux que tu ___ (venir) ce soir."',null,
'[{"id":"a","label":"viennes"},{"id":"b","label":"viens"},{"id":"c","label":"viendras"},{"id":"d","label":"venait"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Vouloir que" impose le subjonctif dans la subordonnée. "Venir" au subjonctif : que je vienne, que tu viennes, qu''il vienne, que nous venions, que vous veniez, qu''ils viennent. La 2e pers. sing. est "viennes" — avec -nn- et -e final. Ne confonds pas avec l''indicatif "tu viens" ni le futur "tu viendras" !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','vrai_faux',
'Vrai ou faux ? Après "espérer que", on utilise le subjonctif.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est un piège classique ! "Espérer que" (sens positif, affirmation) est suivi de l''indicatif : "j''espère qu''il viendra / qu''il vient". En revanche, "douter que", "craindre que", "avoir peur que" imposent le subjonctif. C''est une nuance fondamentale à maîtriser pour le CRPE : espoir = indicatif, doute/crainte = subjonctif !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Quel est le subjonctif présent de "avoir" à la 3e pers. du pluriel ?',null,
'[{"id":"a","label":"qu''ils ont"},{"id":"b","label":"qu''ils avaient"},{"id":"c","label":"qu''ils auront"},{"id":"d","label":"qu''ils aient"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Avoir" au subjonctif est irrégulier : que j''aie, que tu aies, qu''il ait, que nous ayons, que vous ayez, qu''ils aient. La 3e pers. du pluriel : "qu''ils aient". "Qu''ils ont" — c''est l''indicatif. "Qu''ils avaient" — c''est l''imparfait de l''indicatif. Ces formes irrégulières d''avoir et d''être au subjonctif sont absolument incontournables — par cœur !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Il est important qu''on respecte les règles."',null,
null,
'{"mode":"text","acceptableAnswers":["Il est important qu''on respecte les règles."]}'::jsonb,
'La phrase est correcte ! "Il est important que" impose le subjonctif. "Respecter" (1er groupe) au subjonctif : que je respecte, que tu respectes, qu''il/on respecte... La 3e pers. sing. du subjonctif des verbes en -er est identique à l''indicatif présent — c''est souvent source de confusion, mais ici la forme est bien correcte dans les deux cas !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Choisissez la construction correcte.',null,
'[{"id":"a","label":"Je doute qu''il a raison."},{"id":"b","label":"Je doute qu''il ait raison."},{"id":"c","label":"Je doute qu''il aurait raison."},{"id":"d","label":"Je doute qu''il eût raison."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Douter que" exprime l''incertitude et impose le subjonctif. "Qu''il ait raison" — subjonctif de "avoir" — est la forme correcte. "Qu''il a raison" serait un indicatif — incorrectement utilisé ici. "Qu''il aurait raison" est un conditionnel — inapproprié. Doute = subjonctif, certitude = indicatif. C''est la règle que tu dois avoir réflexe !',
'valide','CRPE Français V2','premium',true),

('19000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Bien qu''il soit tard, elle travaille encore", le subjonctif est correctement employé.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Bien que" est une conjonction de concession — elle régit toujours le subjonctif. "Bien qu''il soit tard" : subjonctif de "être" — parfaitement correct. Malgré l''heure tardive, elle travaille : la concession est bien rendue. Autres conjonctions de la famille : quoique, encore que, sans que — toutes suivies du subjonctif !',
'valide','CRPE Français V2','premium',true),

-- ================================================================
-- SÉRIE 20 — Valeurs des temps verbaux — Avancé — premium
-- ================================================================
-- QCM: Q1→c, Q2→d, Q4→b, Q5→c, Q7→b, Q8→a
-- (vrai_faux: Q3, Q6, Q9; reponse_courte: Q10 — skipped)

('20000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur du présent dans : "La Terre tourne autour du Soleil."',null,
'[{"id":"a","label":"Présent de narration"},{"id":"b","label":"Présent d''énonciation"},{"id":"c","label":"Présent de vérité générale"},{"id":"d","label":"Présent d''habitude"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Ce présent exprime un fait universel, permanent, qui ne dépend d''aucun moment particulier — c''est le présent de vérité générale (ou gnomique). Vérités scientifiques, proverbes, définitions : c''est son domaine. Différent du présent d''énonciation (= maintenant, ce qui se passe) et du présent de narration (= raconter le passé comme si on y était). Trois présents, trois valeurs distincts — à bien identifier !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du passé composé dans : "Hier, j''ai rencontré un ami d''enfance."',null,
'[{"id":"a","label":"Fait habituel du passé"},{"id":"b","label":"Fait en cours au moment de l''énonciation"},{"id":"c","label":"Fait passé de style littéraire"},{"id":"d","label":"Fait passé, accompli, ancré dans un moment précis"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le passé composé exprime un fait accompli, daté (hier) et présenté comme achevé. C''est sa valeur principale : événement ponctuel du passé, vu comme terminé. On parle de "plan du discours" — par opposition au passé simple (plan du récit littéraire). Passé composé = plan oral et courant ; passé simple = plan écrit et littéraire. Références à connaître !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Dans un récit littéraire, le passé simple et l''imparfait ont des valeurs complémentaires.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! Dans le récit littéraire, l''imparfait peint le décor — fonds, descriptions, états, actions duratives. Le passé simple écrit les événements — actions ponctuelles et successives qui font avancer la narration. Imparfait = arrière-plan, passé simple = premier plan. Ensemble, ils rythment le récit — l''un peint, l''autre raconte !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur du futur dans : "Vous prendrez à gauche, puis continuerez tout droit."',null,
'[{"id":"a","label":"Futur de certitude"},{"id":"b","label":"Futur d''atténuation ou futur injonctif"},{"id":"c","label":"Futur antérieur"},{"id":"d","label":"Futur de promesse solennelle"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Ce futur remplace l''impératif pour donner un ordre ou une consigne de façon atténuée, moins directe. C''est le futur injonctif : "vous prendrez" = "prenez". On l''emploie pour les instructions, recettes, consignes, règlements. Plus poli et distant que l''impératif direct — c''est une valeur essentielle à reconnaître dans les textes prescriptifs !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du conditionnel dans : "D''après les témoins, il aurait quitté les lieux à minuit."',null,
'[{"id":"a","label":"Conditionnel de politesse"},{"id":"b","label":"Conditionnel hypothétique"},{"id":"c","label":"Conditionnel journalistique (information non vérifiée)"},{"id":"d","label":"Conditionnel d''atténuation"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Ce conditionnel passé indique que l''information est rapportée sans être vérifiée par le locuteur — c''est le conditionnel de distanciation (ou journalistique). Le locuteur se décharge de la responsabilité de l''affirmation. C''est systématiquement employé dans la presse (« Le suspect aurait fui... »). Valeur cruciale pour l''analyse de textes médiatiques au CRPE !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Le présent de narration (ou présent historique) permet d''actualiser des faits passés pour les rendre plus vivants.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! Le présent historique remplace le passé simple dans un récit pour créer un effet de vivacité, d''immédiateté. "En 1789, le peuple prend la Bastille." On plonge dans l''action comme si on y était — c''est sa magie. Très utilisé en commentaire littéraire. Cette valeur est à connaître pour l''analyse de textes narratifs au CRPE !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur de l''imparfait dans : "Dès qu''il avait un moment, il lisait."',null,
'[{"id":"a","label":"Imparfait pittoresque"},{"id":"b","label":"Imparfait d''habitude ou itératif"},{"id":"c","label":"Imparfait de description"},{"id":"d","label":"Imparfait de style indirect"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Dès qu''il avait... il lisait" : c''est une action répétée, habituelle dans le passé. C''est l''imparfait itératif (d''habitude) — équivalent de "chaque fois que". À distinguer de l''imparfait descriptif (état, décor) et de l''imparfait pittoresque (événement dramatisé). Le marqueur temporel "dès que" signale la répétition — c''est lui qui te guide vers l''itératif !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle valeur a le futur antérieur dans : "Quand tu auras fini, tu pourras partir."',null,
'[{"id":"a","label":"Action future antérieure à une autre action future"},{"id":"b","label":"Probabilité dans le passé"},{"id":"c","label":"Ordre atténué"},{"id":"d","label":"Futur de politesse"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le futur antérieur exprime ce qui sera accompli avant une autre action future. "Tu auras fini" (futur antérieur) → d''abord → "tu pourras partir" (futur simple). La subordination temporelle avec "quand" impose cette concordance des temps. Retiens : futur antérieur = l''action arrivée EN PREMIER dans un futur à deux étapes !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Dans "Si tu travaillais davantage, tu réussirais", le conditionnel exprime un fait possible dans le réel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "Si + imparfait → conditionnel présent" exprime une hypothèse contraire à la réalité présente — irréelle. Le locuteur suppose que tu ne travailles pas assez. Si l''hypothèse était réelle ou possible, on dirait : "si tu travailles davantage, tu réussiras" (si + présent → futur). Irréel vs réel — une opposition fondamentale que tout futur prof doit maîtriser !',
'valide','CRPE Français V2','premium',true),

('20000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','reponse_courte',
'Dans "À peine était-il entré qu''il repartit", quel temps est employé dans la principale et quelle en est la valeur ?',null,
null,
'{"mode":"text","acceptableAnswers":["Passé simple, action immédiatement consécutive."]}'::jsonb,
'Dans la tournure "à peine... que", le passé simple "repartit" exprime une action immédiatement consécutive à une autre. L''inversion du sujet après "à peine" est obligatoire à l''écrit soutenu : "à peine était-il entré...". Cette construction est typique du style littéraire — élégante, soutenue, et incontournable pour l''analyse de textes au CRPE !',
'valide','CRPE Français V2','premium',true);

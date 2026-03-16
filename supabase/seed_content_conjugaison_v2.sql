-- CRPE Français — Conjugaison V2 (5 séries × 10 questions)
-- Séries 51–55 : passé simple, plus-que-parfait/passé antérieur,
--                conditionnel passé/subjonctif passé, valeurs de l'imparfait,
--                concordance des temps
-- Appliquer APRÈS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 51 — Passé simple — Intermédiaire — free
-- ================================================================
(
  '51000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle est la terminaison du passé simple des verbes du 1er groupe à la 3e personne du singulier ?',
  null,
  '[{"id":"a","label":"-it"},{"id":"b","label":"-a"},{"id":"c","label":"-ut"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Retiens le tableau du 1er groupe au passé simple : -ai, -as, -a, -âmes, -âtes, -èrent. La 3e personne du singulier, c''est le -a : il chanta, elle parla, on dansa. Attention ! Le -it, c''est pour les verbes du 3e groupe comme tenir ou venir. Le -ut, c''est pour les verbes en -u comme savoir → sut ou vouloir → voulut. Trois groupes, trois familles de terminaisons — ne les mélange pas !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Conjuguez le verbe "finir" au passé simple, à la 1re personne du pluriel.',
  null,
  '[{"id":"a","label":"nous finîmes"},{"id":"b","label":"nous finissions"},{"id":"c","label":"nous finimes"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le 2e groupe au passé simple : -is, -is, -it, -îmes, -îtes, -irent. La 1re personne du pluriel donne donc "nous finîmes" — avec le î accent circonflexe obligatoire, c''est lui qui fait toute la différence ! "Nous finissions", c''est l''imparfait — erreur classique, Attention ! Sans accent sur le i, c''est une faute. Au CRPE, ce petit chapeau fait toute la différence, alors ne l''oublie pas.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le passé simple est le temps du récit oral courant en français contemporain.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux, et c''est un point fondamental ! Le passé simple, c''est le temps de l''écrit littéraire et du récit formel. À l''oral courant, tu utilises le passé composé — personne ne dit "hier, je mangeai une pomme" dans la vie de tous les jours ! Retiens l''opposition : passé simple = écrit/littéraire ; passé composé = oral/courant. Les contes et textes de jeunesse, eux, gardent le passé simple — c''est pour ça que tes futurs élèves en auront besoin.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte du passé simple de "être" à la 3e personne du pluriel ?',
  null,
  '[{"id":"a","label":"ils étaient"},{"id":"b","label":"ils furent"},{"id":"c","label":"ils seront"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Attention, "être" est le roi des irréguliers ! Au passé simple, il construit tout sur le radical fu- : je fus, tu fus, il fut, nous fûmes, vous fûtes, ils furent. "Ils étaient" ? C''est l''imparfait. "Ils seront" ? C''est le futur. Retiens bien : être et avoir au passé simple sont à mémoriser par cœur — j''eus, tu eus, il eut… Ils reviennent souvent au CRPE, alors apprends-les comme une comptine !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Au passé simple, les verbes du 3e groupe comme "voir" ou "prendre" peuvent avoir des radicaux irréguliers.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, et c''est exactement ça le défi du 3e groupe ! Chaque verbe a sa petite surprise : voir → je vis, prendre → je pris, venir → je vins, faire → je fis, dire → je dis. Et attention à la famille des -u : lire → je lus, boire → je bus, connaître → je connus. Deux grandes familles dans ce groupe : les terminaisons en -is/-it et celles en -us/-ut. Ne les mélange pas — c''est un enjeu didactique important pour le CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Dans la phrase "Le roi convoqua ses vassaux et leur parla longuement", les verbes en gras sont au :',
  null,
  '[{"id":"a","label":"Passé composé"},{"id":"b","label":"Passé simple"},{"id":"c","label":"Imparfait"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est ça ! "Convoqua" et "parla" sont des passés simples du 1er groupe — convoquer → convoqua, parler → parla. Dans ce récit historique, le passé simple exprime des actions ponctuelles, successives et achevées qui font avancer l''histoire. C''est son rôle de "temps du premier plan" : il raconte, il avance. L''imparfait, lui, aurait décrit le décor ou une action en cours. Bien sentir cette différence, c''est comprendre l''architecture du récit.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte du passé simple de "aller" à la 2e personne du singulier ?',
  null,
  '[{"id":"a","label":"tu allas"},{"id":"b","label":"tu allais"},{"id":"c","label":"tu alla"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Voilà un piège savoureux ! "Aller" est ultra-irrégulier au présent, mais au passé simple il se comporte sagement comme un verbe du 1er groupe : j''allai, tu allas, il alla, nous allâmes, vous allâtes, ils allèrent. La 2e personne du singulier prend donc le -as, identique à tous les verbes du 1er groupe. "Tu allais" ? C''est l''imparfait. Retiens : au passé simple, "aller" rentre dans le rang !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? "Ils chantèrent" et "ils finirent" ont toutes deux la terminaison -èrent au passé simple.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Attention à ce piège classique : "ils chantèrent" (1er groupe) prend bien -èrent, mais "ils finirent" (2e groupe) prend -irent — pas de -è ici ! Mémorise le tableau : 1er groupe → -èrent ; 2e groupe et beaucoup de verbes du 3e groupe → -irent ; verbes en -u du 3e groupe → -urent. Trois familles, trois terminaisons à la 3e personne du pluriel. Confondre ces terminaisons dans les productions d''élèves, c''est la faute que tu devras apprendre à corriger !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle différence d''usage distingue le passé simple du passé composé dans un récit ?',
  null,
  '[{"id":"a","label":"Le passé simple est employé à l''oral, le passé composé à l''écrit"},{"id":"b","label":"Le passé simple marque l''action dans un récit écrit littéraire, le passé composé relie l''action au présent du locuteur"},{"id":"c","label":"Les deux temps sont interchangeables dans tous les registres"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Exactement ! C''est l''opposition centrale à maîtriser : le passé simple vit dans les récits écrits littéraires ou historiques et coupe les actions du présent de l''énonciateur. Le passé composé, lui, ancre l''action dans un lien avec le présent — c''est le temps narratif de l''oral et des écrits courants. Retiens : passé simple = action coupée du présent ; passé composé = action liée au présent. Cette distinction aspectuelle et énonciative est au cœur de la didactique du récit à l''école, et une question quasi-certaine au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Parmi les formes suivantes, laquelle est un passé simple correct ?',
  null,
  '[{"id":"a","label":"il prit"},{"id":"b","label":"il prendit"},{"id":"c","label":"il a pris"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'C''est "il prit" — et retiens sa conjugaison complète : je pris, tu pris, il prit, nous prîmes, vous prîtes, ils prirent. La forme "il prendit" n''existe tout simplement pas en français — c''est une reconstruction analogique fautive ! "Il a pris", c''est le passé composé. Attention au -t de la 3e personne du singulier, sans -s — ça ressemble au présent (il prend avec -d), alors ne les confonds pas !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

-- ================================================================
-- SÉRIE 52 — Plus-que-parfait et passé antérieur — Intermédiaire — free
-- ================================================================
(
  '52000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Comment se forme le plus-que-parfait ?',
  null,
  '[{"id":"a","label":"Auxiliaire au présent + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au futur + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Retiens la formule : plus-que-parfait = auxiliaire être ou avoir à l''imparfait + participe passé. Résultat : j''avais mangé, tu étais parti(e), il avait fini. C''est le temps composé du passé qui exprime une action antérieure à une autre action passée — le "passé du passé" ! L''imparfait de l''auxiliaire te distingue le plus-que-parfait du passé composé (auxiliaire au présent) et du passé antérieur (auxiliaire au passé simple). Trois temps composés, trois auxiliaires différents : différencie-les bien !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase "Elle avait déjà lu ce livre quand il le lui offrit", le plus-que-parfait exprime une action antérieure au passé simple.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, et c''est exactement ça l''usage central du plus-que-parfait ! "Avait lu" s''est produit avant "offrit" — elle avait déjà lu le livre quand il le lui a offert. C''est la valeur d''antériorité dans la concordance des temps : le plus-que-parfait = action accomplie avant un repère passé. Cette relation temporelle, tu devras l''enseigner à tes élèves pour qu''ils comprennent la chronologie dans un récit. Au CRPE, savoir la nommer "antériorité" est indispensable !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Conjuguez "partir" au plus-que-parfait à la 1re personne du singulier.',
  null,
  '[{"id":"a","label":"j''avais parti"},{"id":"b","label":"j''étais parti(e)"},{"id":"c","label":"je fus parti(e)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Attention ! "Partir" est un verbe de mouvement — il se conjugue avec être, jamais avec avoir. Au plus-que-parfait : j''étais parti(e). "J''avais parti" est une erreur grave, une faute d''auxiliaire. "Je fus parti(e)" ? Ça, c''est le passé antérieur — auxiliaire au passé simple. Et n''oublie pas l''accord du participe avec être : elle était partie, ils étaient partis. Chaque détail compte au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Comment se forme le passé antérieur ?',
  null,
  '[{"id":"a","label":"Auxiliaire au passé simple + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au conditionnel présent + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Retiens la formule du passé antérieur : auxiliaire au passé simple + participe passé. Résultat : j''eus mangé, il fut parti, nous eûmes fini. C''est un temps littéraire, rare à l''oral, qui exprime l''antériorité immédiate par rapport à un passé simple dans une subordonnée temporelle. Exemple typique : "Quand il eut mangé, il sortit." La différence avec le plus-que-parfait ? L''auxiliaire : passé simple ici, imparfait là-bas. Un seul détail, mais crucial !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le passé antérieur est un temps fréquemment utilisé dans la langue orale quotidienne.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Le passé antérieur est un fantôme de la langue orale — il n''existe pratiquement plus qu''à l''écrit littéraire. À l''oral, on utilise le plus-que-parfait ou on reformule. Son territoire, c''est les subordonnées temporelles introduites par "quand", "lorsque", "dès que", "aussitôt que" — mais seulement quand le verbe principal est au passé simple. Au CRPE, tu dois savoir le reconnaître dans un texte littéraire même si tu ne l''emploies jamais dans la vie courante !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Dans "Dès qu''il eut terminé son discours, les applaudissements éclatèrent", quel temps est "eut terminé" ?',
  null,
  '[{"id":"a","label":"Plus-que-parfait"},{"id":"b","label":"Passé antérieur"},{"id":"c","label":"Passé composé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est ça ! "Eut terminé" = auxiliaire avoir au passé simple (eut) + participe passé (terminé) → passé antérieur. Deux indices te le confirment : la subordonnée temporelle avec "dès que" et le passé simple de la principale ("éclatèrent"). Retiens ce schéma : dès que / quand / aussitôt que + passé antérieur → passé simple dans la principale. C''est l''emploi le plus typique du passé antérieur — celui qu''on te montrera toujours en exemple dans les grammaires scolaires !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le plus-que-parfait peut s''employer dans une proposition conditionnelle en si pour exprimer une hypothèse non réalisée dans le passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, et c''est une des beautés du plus-que-parfait : il a plusieurs vies ! Dans une proposition conditionnelle, "si + plus-que-parfait" exprime une hypothèse irréelle dans le passé, et la conséquence est au conditionnel passé : "Si tu étais venu, tu aurais vu." Retiens ses deux grands rôles : 1) antériorité dans un récit au passé ; 2) hypothèse irréelle passée avec si. Cette double valeur est importante à enseigner au cycle 3 — et un excellent sujet de question au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Quelle phrase illustre correctement l''emploi du plus-que-parfait pour marquer l''antériorité ?',
  null,
  '[{"id":"a","label":"Il mangeait quand le téléphone sonnait."},{"id":"b","label":"Il avait fini son repas quand le téléphone sonna."},{"id":"c","label":"Il mangea quand le téléphone sonnera."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est la phrase b) — c''est l''exemple canonique ! "Avait fini" (plus-que-parfait) marque l''action terminée AVANT "sonna" (passé simple). Antériorité parfaite ! La phrase a) montre deux imparfaits simultanés — aucune antériorité marquée. La phrase c) mélange passé simple et futur — aberrant dans ce contexte ! Retiens ce modèle : plus-que-parfait + passé simple = antériorité dans le récit. C''est un objectif d''apprentissage du cycle 3, tu devras le faire construire à tes élèves !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Conjuguez "avoir" au passé antérieur à la 3e personne du pluriel.',
  null,
  '[{"id":"a","label":"ils avaient eu"},{"id":"b","label":"ils eurent eu"},{"id":"c","label":"ils ont eu"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Voilà une conjugaison qui fait sourire : le passé antérieur d''avoir, c''est avoir au passé simple (eurent) + participe passé eu → "ils eurent eu". Oui, deux fois "eu" ! "Ils avaient eu" ? C''est le plus-que-parfait d''avoir. "Ils ont eu" ? Le passé composé. Cette conjugaison du passé antérieur d''avoir revient régulièrement dans les épreuves écrites du CRPE — retiens-la bien, elle est piégeuse !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans "Il était sorti avant que je n''arrive", le plus-que-parfait "était sorti" indique que la sortie est antérieure à l''arrivée.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, exactement ! "Était sorti" (plus-que-parfait) = action accomplie AVANT l''arrivée. C''est la valeur d''antériorité dans toute sa splendeur. Petite note de culture : le "ne" explétif après "avant que" ("avant que je n''arrive") est grammaticalement correct — c''est un ne qui ne nie pas, propre au registre soutenu. Il ne faut pas le corriger si un élève l''emploie ! Cette construction est un exemple typique des exercices d''analyse grammaticale au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

-- ================================================================
-- SÉRIE 53 — Conditionnel passé et subjonctif passé — Avancé — premium
-- ================================================================
(
  '53000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Comment se forme le conditionnel passé ?',
  null,
  '[{"id":"a","label":"Auxiliaire au conditionnel présent + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au subjonctif présent + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Retiens la formule : conditionnel passé = auxiliaire être ou avoir au conditionnel présent + participe passé. Exemples : j''aurais mangé, tu serais parti(e), il aurait fini. Ce temps composé a deux grandes missions : exprimer une action hypothétique non réalisée dans le passé (conséquence d''une condition irréelle), ou un fait passé présenté comme probable ou regretté. Son lien avec "si + plus-que-parfait" est indissociable — les deux forment une paire inséparable dans les propositions conditionnelles irréelles passées !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Laquelle de ces phrases illustre correctement la structure hypothétique "si + plus-que-parfait → conditionnel passé" ?',
  null,
  '[{"id":"a","label":"Si tu venais, je serais content."},{"id":"b","label":"Si tu étais venu, j''aurais été content."},{"id":"c","label":"Si tu viens, je serai content."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est la phrase b) — et retiens le tableau des trois structures conditionnelles ! Phrase a) : si + imparfait → conditionnel présent = hypothèse irréelle dans le présent. Phrase b) : si + plus-que-parfait → conditionnel passé = hypothèse irréelle dans le passé. Phrase c) : si + présent → futur = condition réalisable. Trois structures, trois niveaux temporels — les maîtriser toutes les trois, c''est maîtriser les conditionnelles du français. Au CRPE, on te les demandera toutes !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Le conditionnel passé peut s''employer pour exprimer un reproche ou un regret portant sur le passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, et c''est une richesse du conditionnel passé souvent méconnue ! Au-delà des conditionnelles, il exprime aussi le regret : "J''aurais voulu réussir." — ou le reproche : "Tu aurais pu prévenir !" Et dans le discours journalistique, il exprime un fait non vérifié : "Le suspect aurait avoué." Ces valeurs modales du conditionnel passé dépassent la simple mécanique de formation — et leur connaissance est attendue au niveau avancé du CRPE. Retiens : conditionnel passé = hypothèse + regret + reproche + information non confirmée.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Comment se forme le subjonctif passé ?',
  null,
  '[{"id":"a","label":"Auxiliaire au subjonctif présent + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au passé simple + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Retiens la formule : subjonctif passé = auxiliaire être ou avoir au subjonctif présent + participe passé. Résultat : que j''aie mangé, que tu sois parti(e), qu''il ait fini. C''est le temps composé du subjonctif, qui exprime l''antériorité ou l''accompli dans une subordonnée au subjonctif. L''analogie à retenir : subjonctif passé / subjonctif présent = passé composé / présent de l''indicatif. Même logique, mode différent — une fois que tu vois ce parallèle, tout devient plus simple !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Dans "Je suis content que tu aies réussi", quel est le mode et le temps du verbe "aies réussi" ?',
  null,
  '[{"id":"a","label":"Indicatif passé composé"},{"id":"b","label":"Subjonctif passé"},{"id":"c","label":"Conditionnel passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Exactement — "aies réussi" est un subjonctif passé : auxiliaire avoir au subjonctif présent (aies) + participe passé (réussi). Deux raisons à ce temps : d''abord, "suis content" exprime un sentiment, donc le subjonctif est obligatoire dans la subordonnée. Ensuite, l''action de réussir est antérieure ou accomplie — c''est déjà fait ! Le subjonctif passé marque cet aspect accompli. Cette structure très fréquente en français soigné, tu devras l''expliquer à tes élèves du cycle 3.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? On emploie le subjonctif passé après "bien que" pour exprimer une action accomplie présentée comme une concession.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! "Bien que" exige toujours le subjonctif dans la subordonnée — c''est sa signature. Si l''action est accomplie ou antérieure, on utilise le subjonctif passé : "Bien qu''il ait travaillé dur, il n''a pas réussi." Si l''action est simultanée ou future, on emploie le subjonctif présent. La clé, c''est l''aspect : accompli → subjonctif passé ; non accompli → subjonctif présent. Cette nuance aspectuelle dans le subjonctif, c''est du niveau avancé — et le CRPE adores ce genre de question !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Conjuguez "venir" au conditionnel passé, 3e personne du singulier.',
  null,
  '[{"id":"a","label":"il serait venu"},{"id":"b","label":"il viendrait"},{"id":"c","label":"il était venu"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'C''est "il serait venu" — "venir" se conjugue avec être, donc le conditionnel passé utilise être au conditionnel présent. "Il viendrait" ? C''est le conditionnel présent. "Il était venu" ? Le plus-que-parfait. Retiens aussi l''accord du participe passé avec être : elle serait venue, ils seraient venus, elles seraient venues. La forme "il serait venu" est indispensable dans les constructions hypothétiques : "S''il avait pu, il serait venu." — une phrase modèle à avoir en tête !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Quelle phrase contient un subjonctif passé correctement employé ?',
  null,
  '[{"id":"a","label":"Il faut que tu viennes demain."},{"id":"b","label":"Je doute qu''il ait dit la vérité."},{"id":"c","label":"Je veux qu''il finisse ce travail."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est la phrase b) ! "Ait dit" = subjonctif passé (auxiliaire avoir au subjonctif présent + participe passé dit), correctement employé après "douter que" — qui exige le subjonctif — pour une action passée et accomplie. Phrases a) et c) : "viennes" et "finisse" sont des subjonctifs présents, pour des actions futures ou en cours. Retiens la règle d''or : subjonctif passé = aspect accompli dans les subordonnées au subjonctif. C''est la différence entre "qu''il vienne" et "qu''il soit venu" !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans "S''il avait plu, nous serions restés", le verbe "serions restés" est au conditionnel passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! "Serions restés" = auxiliaire être au conditionnel présent (serions) + participe passé (restés) → conditionnel passé. Cette phrase est l''exemple parfait de la structure hypothétique irréelle dans le passé : si + plus-que-parfait (avait plu) → conditionnel passé (serions restés). Note l''accord : "restés" s''accorde avec "nous" (masculin pluriel supposé ici). C''est la structure conditionnelle la plus complexe — et l''une des plus importantes à maîtriser pour le CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Quel est le subjonctif passé de "finir" à la 2e personne du singulier ?',
  null,
  '[{"id":"a","label":"que tu finisses"},{"id":"b","label":"que tu aies fini"},{"id":"c","label":"que tu avais fini"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est "que tu aies fini" — auxiliaire avoir au subjonctif présent (aies) + participe passé (fini). "Que tu finisses" ? C''est le subjonctif présent — aspect non accompli. "Que tu avais fini" ? C''est le plus-que-parfait de l''indicatif — mode et temps incorrects ! Retiens le trio : subjonctif présent = en cours ou futur ; subjonctif passé = accompli ; plus-que-parfait = indicatif seulement. Cette distinction subjonctif présent/passé est enseignée au cycle 3 et testée au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

-- ================================================================
-- SÉRIE 54 — Valeurs de l'imparfait — Intermédiaire — free
-- ================================================================
(
  '54000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Chaque soir, il lisait un chapitre avant de dormir", quelle valeur a l''imparfait ?',
  null,
  '[{"id":"a","label":"Description d''un état"},{"id":"b","label":"Habitude ou répétition dans le passé"},{"id":"c","label":"Action unique et ponctuelle"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est l''imparfait d''habitude — aspect itératif ! Le marqueur "chaque soir" est l''indice clé : il signale la répétition. L''imparfait "lisait" exprime ici une action qui se reproduisait régulièrement dans le passé. L''imparfait de description peindrait plutôt un état ou un décor figé, et l''imparfait d''action unique et ponctuelle n''existe tout simplement pas — c''est le rôle du passé simple ! Retiens : pour identifier la valeur de l''imparfait, cherche toujours les indices contextuels. C''est une compétence centrale du cycle 3 et du CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? L''imparfait peut être utilisé pour décrire le cadre, le décor ou l''état d''un personnage dans un récit au passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, et c''est sa valeur la plus emblématique ! L''imparfait de description peint le décor, l''état des lieux ou l''état intérieur des personnages : "La maison était vieille, les volets pendaient." C''est l''arrière-plan du récit. Pendant ce temps, le passé simple ou le passé composé font avancer l''action — le premier plan. Retiens cette image : l''imparfait peint, le passé simple/composé raconte. Cette opposition arrière-plan / premier plan est un point clé de l''enseignement du récit à l''école !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Si j''avais de l''argent, je voyagerais", quelle est la valeur de l''imparfait "avais" ?',
  null,
  '[{"id":"a","label":"Imparfait de description"},{"id":"b","label":"Imparfait hypothétique dans une proposition conditionnelle"},{"id":"c","label":"Imparfait de politesse"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Attention — ici l''imparfait n''a AUCUNE valeur temporelle passée ! "Avais" exprime une hypothèse irréelle dans le présent : en réalité, je n''ai pas d''argent. C''est l''imparfait hypothétique, dans la structure "si + imparfait → conditionnel présent". C''est une des trois structures conditionnelles fondamentales du français. Retiens : quand tu vois "si + imparfait", pense hypothèse, pas passé ! Cette valeur modale de l''imparfait est essentielle à maîtriser pour le CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Je voulais vous demander un service", quelle valeur particulière a l''imparfait ?',
  null,
  '[{"id":"a","label":"Imparfait pittoresque"},{"id":"b","label":"Imparfait de politesse"},{"id":"c","label":"Imparfait de narration"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est l''imparfait de politesse — aussi appelé imparfait d''atténuation ou de modestie ! "Je voulais vous demander…" signifie en réalité "je veux vous demander" — l''action se passe maintenant. L''imparfait adoucit la demande, la rend moins directe, plus polie. C''est un emploi purement modal : pas de valeur temporelle passée ici ! Fréquent dans les échanges formels et à l''écrit soigné. Retiens : l''imparfait de politesse = présent déguisé en passé par politesse.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? L''imparfait pittoresque (ou de narration) s''emploie pour rendre une action passée plus vivante et soudaine, souvent après une date ou un repère temporel.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! L''imparfait pittoresque, c''est l''imparfait qui joue au passé simple pour donner du relief et de la vivacité : "Le 14 juillet 1789, le peuple de Paris prenait la Bastille." L''effet est théâtral — on donne l''impression que l''action dure encore, qu''on y est presque ! C''est un usage stylistique surtout journalistique ou littéraire, paradoxal car l''imparfait exprime normalement la durée. Il est signalé dans les programmes du cycle 3, alors sache le reconnaître dans un texte !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Quelle est la principale différence d''aspect entre l''imparfait et le passé composé dans un récit ?',
  null,
  '[{"id":"a","label":"L''imparfait exprime l''aspect inaccompli/duratif, le passé composé l''aspect accompli/ponctuel"},{"id":"b","label":"L''imparfait est réservé aux textes littéraires, le passé composé à l''oral uniquement"},{"id":"c","label":"Il n''y a aucune différence d''aspect, seulement de registre"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'C''est l''opposition fondamentale à maîtriser ! L''imparfait exprime l''inaccompli, l''action en cours ou la durée non délimitée — aspect imperfectif. Le passé composé exprime l''accompli, l''action achevée et délimitée — aspect perfectif. Exemple mémorable : "Il lisait (imparfait — en cours) quand le téléphone a sonné (passé composé — événement ponctuel)." Retiens : l''imparfait étire le temps, le passé composé le découpe. C''est l''un des enjeux les plus importants de l''enseignement du français à l''école !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans un récit au passé, l''imparfait et le passé simple (ou passé composé) ont des rôles complémentaires et non interchangeables.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, et c''est une idée essentielle ! Dans un récit au passé, imparfait et passé simple jouent des rôles complémentaires comme un duo de musiciens. L''imparfait peint l''arrière-plan : décor, états, habitudes, actions en cours. Le passé simple ou composé fait avancer l''action en premier plan : événements ponctuels et successifs. L''un peint, l''autre raconte — et on ne peut pas les échanger ! Enseigner cette complémentarité aux élèves, c''est leur donner les clés de la cohérence temporelle du récit. Sujet récurrent au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Autrefois, les enfants jouaient dans la rue sans surveillance", l''imparfait exprime :',
  null,
  '[{"id":"a","label":"Une action unique et datée"},{"id":"b","label":"Une habitude passée révolue"},{"id":"c","label":"Une hypothèse irréelle"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est l''imparfait d''habitude passée révolue — et le mot "autrefois" est l''indice lexical qui te met sur la piste ! Il signale une époque révolue, un temps où les choses se passaient différemment. L''imparfait "jouaient" exprime une pratique régulière du passé qui n''existe plus. Retiens : pour identifier la valeur de l''imparfait, cherche toujours les indices contextuels comme "autrefois", "chaque jour", "jadis"... Reconnaître ces indices dans un texte, c''est une compétence clé au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Combien de valeurs principales reconnaît-on habituellement à l''imparfait dans les grammaires scolaires ?',
  null,
  '[{"id":"a","label":"Une seule : la description"},{"id":"b","label":"Deux : description et habitude"},{"id":"c","label":"Plusieurs : description, habitude, hypothèse, politesse, pittoresque"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Exactement — l''imparfait a plusieurs vies ! Les grammaires distinguent : 1) description ou état (aspect imperfectif) ; 2) habitude/répétition (aspect itératif) ; 3) action en cours interrompue par une autre ; 4) imparfait hypothétique (si + imparfait) ; 5) imparfait de politesse ; 6) imparfait pittoresque. Six valeurs pour un seul temps — c''est ce qui le rend si riche et si complexe à enseigner ! C''est aussi pourquoi l''imparfait est un des sujets récurrents du CRPE. Retiens bien cette liste !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? L''imparfait peut exprimer une action qui se déroule au moment de l''énonciation lorsqu''il est employé comme imparfait de politesse.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — et c''est un des cas les plus déroutants de l''imparfait ! "Je voulais vous poser une question" signifie exactement "je veux vous poser une question maintenant". Le temps grammatical est passé, mais l''action est présente. C''est l''imparfait de politesse ou de modestie : il atténue la demande et la rend plus polie. Retiens : temps grammatical ≠ temps réel de l''action. C''est crucial à signaler aux élèves pour éviter les confusions lors de l''analyse grammaticale — et c''est un excellent exemple au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

-- ================================================================
-- SÉRIE 55 — Concordance des temps — Avancé — premium
-- ================================================================
(
  '55000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Lorsque le verbe de la principale est au présent, quel temps emploie-t-on dans la subordonnée pour exprimer la simultanéité ?',
  null,
  '[{"id":"a","label":"Le présent de l''indicatif"},{"id":"b","label":"L''imparfait"},{"id":"c","label":"Le plus-que-parfait"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Retiens le tableau de concordance quand la principale est au présent : simultanéité → présent ("Il dit qu''il est fatigué") ; antériorité → passé composé/passé simple ("Il dit qu''il a terminé") ; postériorité → futur simple ("Il dit qu''il viendra"). Principale au présent = les temps restent naturels, pas de transformation. C''est seulement quand la principale est au passé que tout se décale ! Ces règles structurent les discours rapportés — maîtrise fondamentale pour le CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Lorsque le verbe de la principale est à un temps du passé, quel temps emploie-t-on pour exprimer la simultanéité dans la subordonnée ?',
  null,
  '[{"id":"a","label":"Le présent de l''indicatif"},{"id":"b","label":"L''imparfait de l''indicatif"},{"id":"c","label":"Le futur simple"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Exactement ! Quand la principale est au passé, la simultanéité dans la subordonnée s''exprime à l''imparfait : "Il disait qu''il était fatigué." L''imparfait devient le "présent du passé" — c''est l''image à retenir ! Le tableau de décalage : présent de la principale → présent dans la subordonnée ; passé de la principale → imparfait dans la subordonnée (pour la simultanéité). Cette notion de concordance est fondamentale pour analyser les textes narratifs — et pour enseigner le discours rapporté à l''école !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans le discours indirect au passé, "Il a dit qu''il viendrait" respecte la concordance des temps en transformant le futur simple en conditionnel présent.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Au passage du discours direct au discours indirect au passé, le futur simple se transforme en conditionnel présent — le conditionnel joue alors le rôle de "futur du passé". C''est magnifique ! Retiens tout le tableau de transformation : présent → imparfait ; passé composé → plus-que-parfait ; futur simple → conditionnel présent. Ces transformations sont au cœur de l''enseignement du discours rapporté à l''école — et une question quasi-systématique au CRPE. Apprends ce tableau par cœur !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Quelle est la transformation correcte pour passer de "Il a dit : ''J''ai fini''" au discours indirect au passé ?',
  null,
  '[{"id":"a","label":"Il a dit qu''il finissait."},{"id":"b","label":"Il a dit qu''il avait fini."},{"id":"c","label":"Il a dit qu''il aura fini."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est la phrase b) ! Au discours indirect au passé, le passé composé ("j''ai fini") se transforme en plus-que-parfait ("il avait fini"). Retiens tout le tableau de transformation : présent → imparfait ; passé composé → plus-que-parfait ; futur simple → conditionnel présent ; futur antérieur → conditionnel passé. "Il finissait" ? Ce serait la transformation du présent. "Il aura fini" ? Un futur antérieur — pas sa place ici. Ce tableau de concordance, c''est un outil de référence à avoir en tête pour le CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans la concordance des temps avec le subjonctif, si la principale est au présent et l''action subordonnée est simultanée, on emploie le subjonctif présent.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! En français moderne, la règle simplifiée est claire : principale au présent ou au futur + action simultanée ou postérieure → subjonctif présent ("Je veux qu''il parte maintenant") ; action antérieure → subjonctif passé ("Je suis content qu''il soit parti"). En français classique, on distinguait aussi le subjonctif imparfait et le subjonctif plus-que-parfait — des formes aujourd''hui réservées au registre très soutenu, presque littéraire. Pour le CRPE, la règle du français moderne suffit !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Quelle structure conditionnelle est correcte pour exprimer une hypothèse réalisable dans le futur ?',
  null,
  '[{"id":"a","label":"Si + imparfait → conditionnel présent"},{"id":"b","label":"Si + présent → futur simple ou présent"},{"id":"c","label":"Si + plus-que-parfait → conditionnel présent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est la structure b) ! "Si + présent → futur simple (ou présent)" exprime une hypothèse réalisable : "S''il fait beau, nous sortirons." Retiens les trois structures comme une petite grammaire des conditionnelles : 1) si + présent → futur/présent = hypothèse réalisable ; 2) si + imparfait → conditionnel présent = hypothèse irréelle dans le présent ; 3) si + plus-que-parfait → conditionnel passé = hypothèse irréelle dans le passé. Et surtout : jamais de conditionnel directement après "si" de condition — c''est LA faute classique des élèves !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? On peut employer le conditionnel présent directement après "si" de condition (ex : "Si il viendrait, je serais content").',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux — et c''est LA règle absolue à connaître : jamais de conditionnel après "si" de condition ! La forme correcte est "S''il venait, je serais content" (si + imparfait → conditionnel présent). "Si il viendrait" est une faute grave, très fréquente chez les élèves influencés par certains dialectes ou par des interférences avec d''autres langues. Cette règle est explicitement au programme du cycle 3 et régulièrement évaluée au CRPE. Retiens cette formule : après "si" conditionnel = INTERDIT !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Transformez en discours indirect : Pierre dit : "Je travaille tous les jours." → Pierre dit que… (principale au présent)',
  null,
  '[{"id":"a","label":"Pierre dit qu''il travaillait tous les jours."},{"id":"b","label":"Pierre dit qu''il travaille tous les jours."},{"id":"c","label":"Pierre dit qu''il a travaillé tous les jours."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Retiens ce principe fondamental : quand la principale est au présent ("dit"), les temps dans la subordonnée ne changent pas pour la simultanéité — le présent reste présent ! Pierre dit qu''il travaille tous les jours. C''est seulement quand la principale est au passé ("disait", "a dit") que les décalages temporels entrent en jeu. La phrase a) serait correcte si la principale était au passé. La phrase c) exprimerait une action accomplie, pas simultanée. Cette distinction est fondamentale dans l''enseignement du discours rapporté !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Dans la phrase "Elle pensait qu''il était parti la veille", quelle est la relation temporelle entre les deux verbes ?',
  null,
  '[{"id":"a","label":"Simultanéité : les deux actions ont lieu en même temps"},{"id":"b","label":"Antériorité : partir est antérieur à penser"},{"id":"c","label":"Postériorité : partir est postérieur à penser"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est l''antériorité ! "Pensait" est à l''imparfait (action principale dans le passé) et "était parti" est au plus-que-parfait (action antérieure à "pensait"). Il est parti AVANT qu''elle pense. Et l''adverbe "la veille" vient confirmer cette antériorité — c''est un indice lexical précieux ! Retiens : plus-que-parfait dans la subordonnée = action antérieure à l''action principale passée. Reconstruire ainsi la chronologie des événements dans un texte est une compétence attendue lors de l''analyse grammaticale au CRPE !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? La concordance des temps est une règle absolue en français moderne : tout écart est une faute.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! La concordance des temps est une tendance forte mais pas une règle absolue. Des écarts sont possibles et stylistiquement motivés : le présent de narration peut s''utiliser dans un contexte passé pour donner du relief, et le présent omnitemporel ne se soumet pas à la concordance ("Il a compris que la Terre tourne autour du Soleil" — "tourne" reste au présent car c''est une vérité générale !). En français moderne, la concordance stricte avec le subjonctif imparfait est souvent abandonnée. Le CRPE évalue les règles générales ET leurs nuances — sois précis(e) !',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
);

-- CRPE Français — Lexique V2 (6 séries × 10 questions)
insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ============================================================
-- SÉRIE 40 — Synonymes, antonymes et paronymes (free)
-- ============================================================

(
  '40000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel mot est le synonyme le plus précis de « frugal » ?',
  null,
  '[{"id":"a","label":"sobre"},{"id":"b","label":"généreux"},{"id":"c","label":"abondant"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Exactement ! « Frugal » et « sobre » partagent tous les deux l''idée de modération et de retenue — ce sont bien des synonymes. Généreux et abondant, eux, vont dans le sens contraire : ce sont des quasi-antonymes de frugal. Retiens : un synonyme partage le sens, un antonyme s''y oppose. Et ici, « sobre » est le seul qui colle parfaitement !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel est l''antonyme de « loquace » ?',
  null,
  '[{"id":"a","label":"bavard"},{"id":"b","label":"taciturne"},{"id":"c","label":"éloquent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Loquace, c''est quelqu''un qui parle beaucoup et volontiers — donc son antonyme, c''est le contraire : taciturne, quelqu''un de peu communicatif et silencieux. Attention aux pièges : bavard est un synonyme de loquace (même sens !), et éloquent désigne la qualité de bien s''exprimer, pas la quantité. Retiens le couple loquace / taciturne comme une paire classique à connaître par cœur !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  '« Éminent » et « imminent » sont des synonymes car ils se prononcent de façon très proche.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, c''est le grand piège des paronymes ! Éminent et imminent se ressemblent à l''oreille — mais leurs sens n''ont rien à voir. Éminent = remarquable, qui se distingue (un éminent professeur). Imminent = qui va arriver très bientôt (un danger imminent). Le truc pour ne plus confondre : im-minent → im-médiat, ça arrive dans l''im-médiat ! Ces deux mots sont parmi les paronymes les plus fréquents au CRPE.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Dans la phrase « Il a évoqué ses souvenirs d''enfance », quel verbe pourrait remplacer « évoquer » sans changer le sens ?',
  null,
  '[{"id":"a","label":"invoquer"},{"id":"b","label":"rappeler"},{"id":"c","label":"provoquer"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Évoquer signifie « faire revenir à l''esprit » — et rappeler, c''est exactement ça ! C''est donc le synonyme parfait ici. Attention à invoquer : c''est un paronyme d''évoquer, pas un synonyme ! Invoquer, c''est faire appel à une autorité ou une puissance (invoquer la loi, invoquer Dieu). Quant à provoquer, ça n''a rien à voir. La confusion évoquer/invoquer est une faute typique — méfie-toi !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  '« Conjecture » et « conjoncture » sont des paronymes aux sens bien distincts.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! Conjecture et conjoncture, ça sonne pareil à l''oreille — mais les sens sont radicalement différents. Conjecture = une supposition, une hypothèse (« Ce n''est que conjecture »). Conjoncture = l''ensemble des circonstances économiques ou politiques du moment (« la conjoncture économique »). Astuce : conjonc-ture contient l''idée de la « jonction » des circonstances d''un moment. Ces deux mots sont des candidats privilégiés aux questions sur les paronymes au CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel est le synonyme le plus nuancé de « peur » pour exprimer une crainte intense et irrationnelle ?',
  null,
  '[{"id":"a","label":"inquiétude"},{"id":"b","label":"phobie"},{"id":"c","label":"méfiance"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Peur, c''est le terme générique. Mais quand la crainte est intense, persistante et irrationnelle — on parle de phobie. C''est la nuance la plus forte parmi les propositions. Inquiétude, c''est plus modéré et souvent rationnel. Méfiance, c''est de la prudence vis-à-vis d''une personne, sans forcément avoir peur. Retiens la gradation : inquiétude < peur < phobie. Choisir le synonyme le plus précis, c''est maîtriser les nuances sémantiques — une compétence clé au CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  'Un mot polysémique possède plusieurs sens différents selon le contexte.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Exactement ! La polysémie, c''est la propriété d''un mot d''avoir plusieurs sens distincts. Prends « vague » : ça peut désigner un mouvement de la mer (sens concret) ou quelque chose d''imprécis (sens figuré). Attention à ne pas confondre polysémie et homonymie ! La polysémie, c''est le même mot avec plusieurs sens. L''homonymie, ce sont deux mots différents qui partagent la même forme (ex. : « ver », « verre », « vert »). Comprendre la polysémie, c''est essentiel pour enseigner la lecture dès le cycle 2 !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel paronyme complète correctement cette phrase : « Sa nomination est _______ ; elle sera annoncée dans les prochains jours » ?',
  null,
  '[{"id":"a","label":"éminente"},{"id":"b","label":"imminente"},{"id":"c","label":"éminencée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase parle d''un événement sur le point de se produire — donc c''est imminente (féminin d''imminent) qui convient. Éminente (féminin d''éminent) qualifierait une personnalité remarquable ou une qualité supérieure, pas un événement proche. Et éminencée ? Ça n''existe pas en français, range ça aux oubliettes ! Retiens une bonne fois pour toutes : im-minent → im-médiat, ça arrive bientôt. Éminent → supérieur, remarquable.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Parmi ces propositions, laquelle constitue une paire de synonymes exacts ?',
  null,
  '[{"id":"a","label":"aride / fertile"},{"id":"b","label":"concis / laconique"},{"id":"c","label":"austère / prodigue"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Concis et laconique désignent tous les deux un style bref qui va à l''essentiel — ce sont bien des synonymes, même si laconique évoque une brièveté encore plus prononcée, parfois sèche. Pour les autres : aride et fertile sont des antonymes (stérile vs productif). Austère et prodigue aussi : l''un, c''est la retenue, l''autre, l''excès de générosité. Reconnaître les paires synonymiques, c''est un classique du CRPE — entraîne-toi !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  'Les synonymes parfaits sont courants en français : deux mots synonymes sont toujours parfaitement interchangeables dans tous les contextes.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, les synonymes parfaitement interchangeables sont extrêmement rares en français ! La plupart des synonymes ont des nuances de sens, de registre ou d''usage qui les différencient. « Maison » et « demeure » sont proches, mais « demeure » est nettement plus soutenu. « Peur » et « terreur » ne se substituent pas dans tous les contextes. La richesse du français repose précisément sur ces nuances — et c''est exactement ce que tu dois savoir expliquer à tes futurs élèves !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 41 — Champs lexicaux et sémantiques (free)
-- ============================================================

(
  '41000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Quel mot n''appartient pas au champ lexical de la « mer » ?',
  null,
  '[{"id":"a","label":"houle"},{"id":"b","label":"berge"},{"id":"c","label":"écume"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Houle et écume, c''est clairement la mer : la houle, ce sont les grandes vagues régulières, et l''écume, c''est la mousse blanche à la surface. Mais berge ? Ça désigne la rive d''un cours d''eau — rivière ou fleuve — pas la mer ! C''est donc l''intrus. Trouver l''intrus dans un champ lexical, c''est un exercice classique à l''école primaire et au CRPE. L''idée clé : tous les mots d''un champ lexical partagent le même univers thématique.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Le champ lexical d''un texte est l''ensemble des mots qui se rapportent à un même thème ou à une même notion.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! Le champ lexical, c''est le regroupement de tous les mots d''un texte qui renvoient à un même thème — quelle que soit leur nature grammaticale (nom, verbe, adjectif...). Dans un texte sur la guerre, « combat », « blessé », « victoire », « tranchée » et « ennemi » forment un champ lexical. L''analyse du champ lexical dominant d''un texte, c''est le premier outil pour dégager le thème principal — essentiel dès le cycle 3 !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Parmi ces mots, lequel appartient au champ lexical de la « tristesse » ?',
  null,
  '[{"id":"a","label":"allégresse"},{"id":"b","label":"mélancolie"},{"id":"c","label":"enthousiasme"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Mélancolie, c''est une tristesse douce et vague, souvent teintée de nostalgie — elle appartient bien au champ lexical de la tristesse. Allégresse, c''est une joie vive et expansive. Enthousiasme, c''est l''ardeur et l''admiration. Ces deux derniers sont dans le champ des émotions positives. Retiens : pour identifier un champ lexical, demande-toi toujours à quel univers émotionnel ou thématique le mot renvoie. Ici, seule la mélancolie « colle » à la tristesse.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Le champ sémantique d''un mot correspond à l''ensemble de ses différents sens possibles.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Exactement ! Le champ sémantique d''un mot, c''est l''ensemble de ses acceptions — tous les sens qu''il peut prendre. Prends « feuille » : feuille d''arbre, feuille de papier, feuille d''or. C''est le champ sémantique de « feuille ». Et attention, c''est différent du champ lexical ! Le champ sémantique = les sens d''un seul mot (lié à la polysémie). Le champ lexical = l''ensemble des mots d''un texte sur un même thème. Ne confonds pas les deux, c''est une erreur fréquente !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Dans un texte sur la forêt, les mots « chêne », « mousse », « sous-bois », « frondaison » et « écorce » constituent :',
  null,
  '[{"id":"a","label":"un champ sémantique"},{"id":"b","label":"une famille de mots"},{"id":"c","label":"un champ lexical"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Ces mots appartiennent tous au thème de la forêt — mais ils n''ont pas de radical commun ! C''est donc un champ lexical, pas une famille de mots. Et ce n''est pas un champ sémantique non plus, qui désignerait les différents sens d''un seul mot. Retiens la distinction clé : champ lexical = ensemble de mots d''un texte liés à un même thème (peu importe leur forme). Famille de mots = mots partageant un radical commun. Famille ≠ champ lexical !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Quel mot appartient au champ lexical du « voyage » ?',
  null,
  '[{"id":"a","label":"itinéraire"},{"id":"b","label":"cadastre"},{"id":"c","label":"verdict"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Itinéraire, c''est le tracé ou le parcours d''un trajet — ça appartient pleinement au champ lexical du voyage. Cadastre ? C''est un registre administratif des propriétés foncières, rien à voir. Verdict ? Un terme juridique (décision d''un jury), toujours sans rapport. Pour repérer le bon mot, demande-toi : « Est-ce que ce mot peut apparaître naturellement dans un texte sur le voyage ? » Itinéraire : oui, évident. Les autres : non !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Un même mot peut appartenir à plusieurs champs lexicaux différents selon le contexte du texte.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Exactement, et c''est là que ça devient fascinant ! Grâce à la polysémie, un même mot peut s''inscrire dans plusieurs champs lexicaux. Prends « lumière » : dans un texte de physique, c''est le rayonnement. Dans un texte religieux, c''est la lumière divine. Dans un texte sur la philosophie, ce sont les Lumières, l''intelligence éclairée. C''est le contexte qui détermine à quel champ il appartient. Voilà pourquoi le contexte est toujours décisif en analyse lexicale !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Le mot « banque » appartient principalement à quel champ lexical dans la phrase « Il a déposé ses économies à la banque » ?',
  null,
  '[{"id":"a","label":"le champ lexical de la finance"},{"id":"b","label":"le champ lexical de la géographie"},{"id":"c","label":"le champ lexical de la nature"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Dans ce contexte, « banque » désigne un établissement financier — donc le champ lexical de la finance, avec « économies », « dépôt », « compte », « intérêt ». Mais attention : le même mot pourrait s''inscrire dans un autre champ lexical dans une autre phrase ! « Un banc de poissons » ou « un banc de sable », c''est de la géologie ou de la biologie marine. C''est ça, la polysémie en action — et c''est exactement ce qu''on attend de toi au CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Quelle est la différence entre champ lexical et champ sémantique ?',
  null,
  '[{"id":"a","label":"Le champ lexical regroupe les mots d''un texte sur un même thème ; le champ sémantique regroupe les sens d''un seul mot"},{"id":"b","label":"Ce sont deux termes identiques désignant la même réalité"},{"id":"c","label":"Le champ sémantique regroupe les mots d''un texte ; le champ lexical regroupe les sens d''un mot"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La distinction est fondamentale — et fréquemment confondue, même par des candidats au CRPE ! Retiens bien : champ lexical = outil d''analyse textuelle (les mots d''un texte qui partagent un thème). Champ sémantique = outil d''analyse d''un seul mot (tous ses sens possibles). Moyen mnémotechnique : lexi-cal → on analyse le texte. séman-tique → on analyse le sens d''un mot. Ne jamais les inverser !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Dans un texte, repérer le champ lexical dominant permet d''identifier le thème principal abordé par l''auteur.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! Repérer le champ lexical le plus représenté dans un texte, c''est la méthode la plus efficace pour identifier le thème central. Si tu lis « combat, soldat, victoire, ennemi, bataille » en masse dans un texte — tu sais que la guerre est au cœur du propos. C''est une stratégie de lecture enseignée dès le cycle 3, et qui s''articule avec l''étude du paratexte et de la structure narrative. Au CRPE, tu dois savoir l''expliquer et l''enseigner !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 42 — Étymologie : préfixes latins et grecs (free)
-- ============================================================

(
  '42000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Le préfixe grec « auto- » signifie :',
  null,
  '[{"id":"a","label":"contre"},{"id":"b","label":"soi-même"},{"id":"c","label":"à distance"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Auto- vient du grec autos : « soi-même ». C''est dans autobiographie (récit de sa propre vie), autonomie (se gouverner soi-même), automobile (qui se meut par elle-même) ou autoportrait. Contre, c''est anti- (grec) ou contra- (latin). À distance, c''est télé-. Retiens la famille : tout ce qui commence par auto- parle de soi ou d''autonomie. Et en bonus, si tu connais les préfixes étymologiques, tu peux déchiffrer des tonnes de mots savants sans jamais les avoir vus avant !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Que signifie le préfixe latin « ante- » dans des mots comme « antérieur » ou « antidater » ?',
  null,
  '[{"id":"a","label":"après"},{"id":"b","label":"avant"},{"id":"c","label":"contre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ante- vient du latin et signifie « avant » dans le temps ou dans l''espace. Antérieur = qui précède, antédiluvien = d''avant le déluge, antichambre = la pièce qui précède la chambre. Après, c''est post- (latin). Contre, c''est contra- ou anti-. Retiens la paire : ante- (avant) / post- (après). C''est utile pour les textes d''histoire au cycle 3 et ça revient souvent dans le vocabulaire savant que tes élèves vont rencontrer !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'vrai_faux',
  'Le préfixe grec « poly- » signifie « plusieurs » ou « nombreux ».',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Exactement ! Poly- vient du grec polus (nombreux). Polygone = plusieurs côtés, polyphonie = plusieurs voix, polymorphe = plusieurs formes, polyglotte = plusieurs langues. Son opposé, c''est mono- (un seul) : monologue, monoculture, monotone. Retiens la paire : poly- / mono-. C''est un outil précieux pour tes élèves — dès qu''ils voient poly-, ils savent qu''il y a « plusieurs » de quelque chose !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Dans le mot « géographie », quel est le sens du préfixe « géo- » ?',
  null,
  '[{"id":"a","label":"vie"},{"id":"b","label":"terre"},{"id":"c","label":"eau"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Géo- vient du grec gê : la Terre. Géographie = description de la Terre, géologie = étude des roches terrestres, géomètre = qui mesure la Terre. Vie, c''est bio- (biologie, biographe). Eau, c''est hydro- (hydrologie, hydraulique). Retiens les trois : géo- (terre), bio- (vie), hydro- (eau). Ces préfixes reviennent constamment dans les textes documentaires du cycle 3 — les maîtriser, c''est donner à tes élèves une clé pour déchiffrer des mots inconnus tout seuls !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'vrai_faux',
  'Le préfixe latin « bi- » indique une idée de dualité ou de répétition deux fois.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! Bi- vient du latin et signifie « deux ». Bicyclette (deux roues), bilingue (deux langues), bimensuel (deux fois par mois), bisannuel (deux fois par an). Son équivalent grec est di- (diptyque, dilemme). Et pour former un réseau lexical cohérent : uni- (1), bi- (2), tri- (3), quadri- (4). Apprendre ces numéraux préfixaux en réseau, c''est beaucoup plus efficace pour mémoriser et transférer la connaissance à de nouveaux mots !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Quel préfixe grec signifie « à distance » et se retrouve dans des mots comme « téléphone » ou « télévision » ?',
  null,
  '[{"id":"a","label":"micro-"},{"id":"b","label":"télé-"},{"id":"c","label":"pseudo-"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Télé- vient du grec tele : « loin, à distance ». Téléphone = voix à distance, télévision = vision à distance, télécommande = commande à distance, télépathie = communication de pensée à distance. Micro- signifie « petit » (microbe, microscope) et pseudo- signifie « faux » (pseudonyme, pseudoscience). Télé- est très utile pour les élèves qui découvrent le vocabulaire des nouvelles technologies — et pour toi au CRPE, c''est un préfixe incontournable !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Dans « anticonstitutionnel », quel est le sens du préfixe « anti- » ?',
  null,
  '[{"id":"a","label":"pour, en faveur de"},{"id":"b","label":"contre, opposé à"},{"id":"c","label":"avant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Anti- vient du grec et signifie « contre, opposé à ». Anticonstitutionnel = contraire à la Constitution. Antibiotique = contre les bactéries. Antipathie = sentiment contraire à la sympathie. Antidote = contre le poison. Pour, c''est pro- (proeuropéen). Avant, c''est ante- ou pré-. Retiens la paire : anti- (contre) / pro- (pour). Anti- est l''un des préfixes les plus productifs en français moderne — et probablement celui que tes élèves utilisent déjà sans le savoir !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'vrai_faux',
  'Le préfixe latin « sub- » signifie « sous » ou « en dessous de ».',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Exactement ! Sub- vient du latin et signifie « sous, en dessous ». Subconscient (sous la conscience), subdivision (division en parties inférieures), subaquatique (sous l''eau), subordonné (placé en dessous dans la hiérarchie). Son opposé ? Super- ou sur- (supérieur, surplomber). Retiens la paire : sub- (sous) / super- (sur). Ces relations hiérarchiques dans le vocabulaire, c''est exactement ce qu''on enseigne pour structurer le lexique chez les élèves du cycle 3 !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Le préfixe grec « chrono- » signifie :',
  null,
  '[{"id":"a","label":"couleur"},{"id":"b","label":"temps"},{"id":"c","label":"espace"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Chrono- vient du grec khronos : le temps. Chronologie = l''étude de la succession des événements dans le temps, chronomètre = instrument qui mesure le temps, chronique = récit d''événements dans l''ordre chronologique, anachronisme = erreur de datation. Couleur, c''est chromato- ou chromo-. Espace, c''est topo- ou géo-. Retiens : chrono- → temps. C''est un préfixe qu''on rencontre constamment dans les textes d''histoire au cycle 3 — et au CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Que signifie le préfixe latin « trans- » dans des mots comme « transformer » ou « transatlantique » ?',
  null,
  '[{"id":"a","label":"à travers, au-delà"},{"id":"b","label":"en dessous"},{"id":"c","label":"à l''intérieur"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Trans- vient du latin et signifie « à travers, au-delà, de l''autre côté ». Transatlantique = qui traverse l''Atlantique, transformer = changer de forme en traversant un état, transparent = qui laisse passer la lumière à travers, transférer = porter d''un lieu à un autre. En dessous, c''est sub-. À l''intérieur, c''est intra-. Retiens la triade : sub- (sous) / trans- (à travers) / intra- (dedans). Maîtriser trans-, c''est déchiffrer tout un pan du vocabulaire géographique et scientifique !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 43 — Étymologie : suffixes et dérivation (premium)
-- ============================================================

(
  '43000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Le suffixe nominal « -ité » sert à former :',
  null,
  '[{"id":"a","label":"des noms désignant une qualité ou un état abstrait"},{"id":"b","label":"des verbes exprimant une action"},{"id":"c","label":"des adjectifs qualificatifs"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le suffixe -ité (du latin -itas) s''ajoute à des adjectifs pour créer des noms abstraits qui désignent une qualité ou un état. Rapide → rapidité, habile → habileté, possible → possibilité, public → publicité. C''est un suffixe extrêmement productif en français, notamment dans les termes scientifiques et abstraits. Et bonus : tous les noms en -ité sont féminins ! Un repère orthographique pratique à donner à tes élèves.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -eur » permet uniquement de former des noms masculins désignant des personnes qui exercent une profession.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, -eur est bien plus polyvalent que ça ! Il ne sert pas uniquement à désigner des professions ni des personnes. -Eur peut former des noms d''agents (vendeur, conducteur), des noms d''appareils (aspirateur, ordinateur, réfrigérateur) et des notions abstraites (valeur, ardeur, bonheur). Et il peut former des noms féminins : frayeur, chaleur, douceur. Ne réduis jamais un suffixe à une seule fonction — c''est justement ce que le CRPE cherche à vérifier !',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Quel suffixe adjectival exprime une possibilité ou une aptitude (« qui peut être… ») ?',
  null,
  '[{"id":"a","label":"-able"},{"id":"b","label":"-ique"},{"id":"c","label":"-al"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le suffixe -able (et sa variante -ible) exprime la possibilité ou l''aptitude passive : mangeable = qui peut être mangé, lisible = qui peut être lu, faisable = qui peut être fait, compréhensible. -Ique forme des adjectifs de relation (historique, logique, phonologique). -Al signifie « relatif à » (national, oral, final). -Able est extrêmement productif en français — et il continue de créer des néologismes contemporains ! C''est le suffixe qui dit « c''est possible ».',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -isme » forme des noms désignant des doctrines, des mouvements ou des comportements caractéristiques.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! -Isme (du grec -ismos) forme des noms de doctrines (marxisme, libéralisme, bouddhisme), de mouvements artistiques (impressionnisme, surréalisme) ou de comportements caractéristiques (élitisme, fanatisme, sectarisme). Tous masculins, tous abstraits. Et ils s''accompagnent souvent d''un dérivé en -iste pour désigner l''adepte : marxisme → marxiste, impressionnisme → impressionniste. Retiens le duo -isme / -iste, ils vont toujours ensemble !',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Quelle classe grammaticale le suffixe verbal « -iser » permet-il de produire ?',
  null,
  '[{"id":"a","label":"des noms"},{"id":"b","label":"des adjectifs"},{"id":"c","label":"des verbes"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '-Iser est un suffixe verbal qui transforme des noms ou des adjectifs en verbes du 1er groupe. National → nationaliser, moderne → moderniser, informatique → informatiser, robotique → robotiser. C''est un suffixe très productif dans le vocabulaire contemporain. Son concurrent, c''est -ifier (simplifier, clarifier, intensifier), qui fonctionne de la même façon. Ces deux suffixes verbaux sont des outils de dérivation essentiels à connaître pour le CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Le suffixe « -tude » dans des mots comme « solitude », « plénitude » ou « rectitude » forme :',
  null,
  '[{"id":"a","label":"des noms abstraits féminins"},{"id":"b","label":"des adjectifs masculins"},{"id":"c","label":"des verbes d''état"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '-Tude (du latin -tudo) forme des noms abstraits féminins à partir d''adjectifs. Seul → solitude, plein → plénitude, exact → exactitude, prompt → promptitude. Ces noms expriment un état ou une qualité abstraite — et ils appartiennent à un registre soutenu, voire littéraire. C''est donc un suffixe qui apparaît souvent dans les textes littéraires que tu vas analyser ou faire analyser. Retiens : -tude → féminin, abstrait, registre soutenu.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -ation » et le suffixe « -ment » peuvent tous les deux former des noms d''action à partir de verbes.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! -Ation et -ment sont deux procédés de nominalisation verbale très productifs. -Ation s''ajoute souvent aux verbes en -er : construire → construction, organiser → organisation, éduquer → éducation. -Ment fonctionne pareil : déplacer → déplacement, entraîner → entraînement, développer → développement. Les deux produisent des noms d''action ou de résultat — mais c''est l''usage qui décide lequel s''applique à quel verbe. Pas de règle absolue, il faut connaître les formes !',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Quel suffixe permet de former des noms désignant une personne originaire d''un lieu ou pratiquant une discipline (ex : « musicien », « Parisien ») ?',
  null,
  '[{"id":"a","label":"-ien"},{"id":"b","label":"-age"},{"id":"c","label":"-if"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '-Ien est un suffixe polyfonctionnel ! Il forme des noms de personnes selon l''origine géographique (Parisien, Brésilien, Algérien), la discipline pratiquée (musicien, mathématicien, historien) ou l''appartenance à un groupe (chrétien, gardien). Il forme aussi des adjectifs de relation : quotidien, aérien, terrien. -Ien est très fréquent dans le vocabulaire des sciences humaines et des nationalités — deux domaines clés de l''enseignement à l''école primaire. Incontournable !',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Le suffixe adjectival « -el » dans des mots comme « naturel », « formel » ou « culturel » indique :',
  null,
  '[{"id":"a","label":"une relation ou une appartenance à un domaine"},{"id":"b","label":"une possibilité ou une aptitude"},{"id":"c","label":"un défaut ou un excès"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le suffixe -el (variante de -al) forme des adjectifs relationnels : ils expriment une relation ou une appartenance à un domaine. Nature → naturel, forme → formel, culture → culturel, profession → professionnel. Attention : ces adjectifs ne fonctionnent pas comme des adjectifs qualificatifs ordinaires — tu ne peux pas dire « très naturel » dans le sens de « relatif à la nature ». Ils ne se degrèrent pas. C''est la morphologie dérivationnelle — un domaine examiné au CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -age » produit uniquement des noms masculins désignant le résultat d''une action.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, -age est bien plus riche que ça ! Il produit des noms masculins (bricolage, jardinage, massage, chauffage), c''est vrai. Mais il ne désigne pas uniquement le résultat d''une action. Il peut désigner le processus lui-même (le chauffage = l''action de chauffer), un ensemble ou une collection (feuillage, plumage) ou un droit (péage, servage). Et exception à retenir : image est féminin ! Ne réduis jamais un suffixe à une seule fonction — le CRPE vérifie justement ces nuances.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

-- ============================================================
-- SÉRIE 44 — Sens propre et sens figuré (free)
-- ============================================================

(
  '44000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans la phrase « Il a un cœur de pierre », le mot « pierre » est employé :',
  null,
  '[{"id":"a","label":"au sens propre"},{"id":"b","label":"au sens figuré"},{"id":"c","label":"dans un sens technique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « un cœur de pierre », la pierre ne désigne pas le matériau minéral — elle sert de métaphore pour évoquer la dureté et l''insensibilité d''une personne. C''est donc un emploi au sens figuré. Le sens propre de « pierre », c''est le matériau minéral dur et compact. Retiens : sens propre = sens concret et littéral. Sens figuré = transfert métaphorique. Distinguer les deux, c''est une compétence fondamentale dès le cycle 2-3 pour comprendre les figures de style !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Le sens propre d''un mot est son sens premier, concret et littéral.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! Le sens propre, c''est le sens premier, direct et concret du mot — celui qu''on trouve généralement en tête dans le dictionnaire. Brûler au sens propre = consumer par le feu. Brûler d''impatience = sens figuré. L''opposition sens propre / sens figuré est fondamentale pour l''enseignement du lexique à l''école primaire et pour les questions de compréhension de textes littéraires. C''est l''une des distinctions les plus importantes à maîtriser !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans quelle phrase le mot « dévorer » est-il utilisé au sens figuré ?',
  null,
  '[{"id":"a","label":"Le lion dévore sa proie."},{"id":"b","label":"Elle dévore les livres avec passion."},{"id":"c","label":"L''incendie a dévoré la forêt."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « elle dévore les livres avec passion », dévorer est au sens figuré : il signifie lire avidement, avec un appétit métaphorique. Dans « le lion dévore sa proie », c''est le sens propre — manger avec voracité. Dans « l''incendie a dévoré la forêt », c''est aussi du sens figuré, mais c''est une métaphore d''action destructrice, pas du registre intellectuel. La phrase b est la plus clairement figurée dans le domaine de la lecture. Toujours regarder le contexte pour trancher !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Dans « il nage dans le bonheur », le verbe « nager » est utilisé au sens propre car le bonheur peut être ressenti comme une immersion.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention ! La ressemblance subjective avec une immersion ne suffit pas à qualifier un emploi de « sens propre ». Le sens propre de nager, c''est se déplacer dans l''eau. Dans « nager dans le bonheur », on ne nage pas dans une piscine — c''est une métaphore qui exprime l''abondance et le débordement de bonheur. Le sens figuré repose toujours sur un transfert du concret vers l''abstrait. Ne laisse pas une sensation personnelle te faire confondre les deux sens !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans la phrase « La discussion a allumé une vive polémique », le verbe « allumer » est :',
  null,
  '[{"id":"a","label":"au sens propre : il s''agit d''un feu réel"},{"id":"b","label":"au sens figuré : il signifie déclencher, provoquer"},{"id":"c","label":"un terme technique du domaine politique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Allumer au sens propre = mettre le feu ou activer une source lumineuse. Dans « allumer une polémique », c''est le sens figuré : déclencher, provoquer, faire naître une querelle. C''est une métaphore du feu très courante en français — embraser un débat, enflammer les passions, allumer une controverse. Ces métaphores du feu pour désigner des conflits sont des métaphores lexicalisées : elles sont tellement usées qu''on ne les « sent » plus comme figurées, mais elles le sont quand même !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Une métaphore est une figure de style qui repose sur l''utilisation d''un mot au sens figuré.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! La métaphore repose sur un transfert de sens : on emploie un mot au sens figuré en établissant une analogie implicite. « Ses paroles étaient des flèches » → « flèches » au sens figuré = propos blessants. La métaphore se distingue de la comparaison : pas de mot comparatif (comme, tel). Retiens : métaphore = comparaison implicite, sans outil de comparaison. Enseigner le sens figuré, c''est préparer tes élèves à identifier et produire des figures de style dès le cycle 3 !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans « il a les pieds sur terre », l''expression signifie :',
  null,
  '[{"id":"a","label":"il marche pieds nus sur le sol"},{"id":"b","label":"il est réaliste et pragmatique"},{"id":"c","label":"il travaille dans les champs"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Avoir les pieds sur terre » est une locution idiomatique au sens figuré : elle désigne quelqu''un de réaliste, ancré dans le concret, qui ne se laisse pas emporter par les illusions. Littéralement (sens propre), l''expression décrirait simplement le fait de se tenir debout. Les locutions idiomatiques sont des expressions dont le sens global ne se déduit pas de la somme des sens des mots — c''est un défi particulier pour l''enseignement du vocabulaire, et un piège classique en compréhension de texte !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Parmi ces phrases, laquelle utilise le mot « lumière » au sens propre ?',
  null,
  '[{"id":"a","label":"Il est la lumière de notre groupe."},{"id":"b","label":"La lumière du soleil entre par la fenêtre."},{"id":"c","label":"Son esprit est une lumière dans les ténèbres."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « la lumière du soleil entre par la fenêtre », lumière désigne le rayonnement lumineux physique et concret — c''est le sens propre. Dans « il est la lumière de notre groupe », lumière signifie métaphoriquement la personne la plus brillante ou inspirante. Dans « son esprit est une lumière dans les ténèbres », c''est aussi une métaphore de l''intelligence. Le sens propre est toujours lié au réel physique et tangible — demande-toi : est-ce qu''on peut le mesurer, le toucher, le voir ?',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Un mot ne peut avoir qu''un seul sens figuré.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, un mot peut avoir plusieurs sens figurés différents selon les contextes ! Prends « lourd » : au sens propre, c''est de grand poids. Au sens figuré, ça peut signifier « pénible à supporter » (une atmosphère lourde), « maladroit » (une plaisanterie lourde) ou encore « grave de conséquences » (une lourde erreur). Cette multiplicité des sens figurés est liée à la polysémie — et c''est la richesse sémantique du français. Chaque nouveau sens figuré enrichit les possibilités d''expression de tes élèves !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans « cette décision a ouvert une nouvelle porte pour l''entreprise », le mot « porte » est employé :',
  null,
  '[{"id":"a","label":"au sens propre"},{"id":"b","label":"au sens figuré"},{"id":"c","label":"dans un sens juridique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, « porte » est au sens figuré : elle désigne une possibilité, une opportunité nouvelle. Pas question d''une porte physique qu''on peut ouvrir ! La métaphore de la porte pour désigner une opportunité ou un accès à quelque chose de nouveau est très courante en français. C''est une métaphore lexicalisée — tellement usée qu''on l''utilise sans y penser. Mais en classe, c''est exactement le type d''expression qu''il faut expliciter pour développer la conscience du sens figuré chez tes élèves.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 45 — Familles de mots et dérivation (free)
-- ============================================================

(
  '45000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Quel mot n''appartient pas à la famille du mot « terre » ?',
  null,
  '[{"id":"a","label":"terrestre"},{"id":"b","label":"territoire"},{"id":"c","label":"terrasse"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Terrestre (relatif à la Terre) et territoire (étendue de terre) partagent le radical latin terra et appartiennent bien à la famille de « terre ». Terrasse, en revanche, a une étymologie plus complexe : elle vient de l''ancien français avec le sens d''amas de terre, mais s''est spécialisée dans le sens de surface plane aménagée, et son lien avec terra est moins transparent. C''est donc l''intrus. Retiens : les familles de mots permettent aux élèves de mémoriser l''orthographe et d''inférer le sens des mots inconnus !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'Une famille de mots est un ensemble de mots partageant un radical (ou racine) commun.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Exactement ! Une famille de mots, c''est tous les mots qui dérivent d''un même radical — la base lexicale commune. La famille de « chant » : chanter, chanteur, chanteuse, chanson, chantonnement, enchanter. Ils partagent le radical chant- mais appartiennent à des classes grammaticales différentes. L''étude des familles de mots, c''est un outil puissant pour développer les compétences orthographiques et la conscience morphologique — un pilier de l''enseignement du lexique à l''école primaire !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Parmi ces mots, lequel appartient à la famille de « lire » ?',
  null,
  '[{"id":"a","label":"lisière"},{"id":"b","label":"relecture"},{"id":"c","label":"litige"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Relecture = re- + lecture, dérivé du verbe lire. Ça appartient bien à la famille de « lire ». Lisière ? Ça désigne le bord d''un tissu ou d''une forêt — c''est d''origine germanique, aucun lien avec lire. Litige ? C''est un différend juridique, du latin litigium (querelle) — aucun lien non plus. Méfie-toi des mots qui commencent par « li- » et qui n''ont rien à voir avec « lire » ! C''est exactement le type de piège que le CRPE adore tendre.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'La préfixation consiste à ajouter un élément avant le radical pour former un nouveau mot.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est ça ! La préfixation = ajouter un préfixe devant le radical. Possible → impossible, faire → refaire, placer → déplacer, charger → surcharger. Important : contrairement à la suffixation, la préfixation ne change généralement pas la classe grammaticale du mot — elle en modifie le sens. Ces deux procédés (préfixation + suffixation), avec la composition, constituent les trois grands mécanismes de formation des mots en français. Tu dois savoir les distinguer clairement au CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Quel est le radical commun aux mots « portail », « porteur », « transport » et « reporter » ?',
  null,
  '[{"id":"a","label":"port-"},{"id":"b","label":"por-"},{"id":"c","label":"port- / -port-"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le radical commun est port- (du latin portare, porter). Dans portail et porteur, il est en début de mot. Dans transport et reporter, il est après un préfixe (trans- et re-). Tous ces mots appartiennent à la famille du verbe porter. La réponse c est la plus complète car elle précise que le radical peut apparaître en position initiale (port-) ou non initiale (-port-). Identifier le radical commun, c''est un exercice fondamental de morphologie lexicale — et un vrai outil pédagogique au cycle 3 !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'Un mot composé est formé uniquement par la combinaison de deux noms.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, c''est faux ! Les mots composés peuvent combiner des catégories grammaticales très variées — pas seulement deux noms. Nom + nom : porte-manteau, chou-fleur. Nom + adjectif : rouge-gorge, belle-mère. Verbe + nom : tire-bouchon, porte-monnaie. Adverbe + nom : avant-goût. Verbe + adverbe : passe-partout. La composition est l''un des procédés les plus variés et productifs du français. Retiens : composition ≠ toujours nom + nom !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Lequel de ces mots est un néologisme (mot créé récemment) ?',
  null,
  '[{"id":"a","label":"courriel"},{"id":"b","label":"château"},{"id":"c","label":"maison"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Courriel est un néologisme francophone créé pour désigner le courrier électronique (email) : officialisé par la Commission générale de terminologie dans les années 1990-2000. Château vient du latin castellum. Maison vient du latin mansio. Ces deux derniers sont des mots très anciens dans la langue. Les néologismes témoignent de la vitalité créatrice de la langue — et étudier leur formation avec tes élèves, c''est leur montrer que le français est vivant et qu''il crée encore de nouveaux mots !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Le processus de formation du mot « inutilisable » fait intervenir :',
  null,
  '[{"id":"a","label":"un seul préfixe"},{"id":"b","label":"une préfixation et une suffixation (parasynthèse)"},{"id":"c","label":"deux radicaux différents (composition)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Inutilisable, c''est un exemple parfait de parasynthèse : ajout simultané ou successif d''un préfixe (in- = non) et d''un suffixe (-able = qui peut être) à la même base. Regarde la chaîne de dérivation : utile → utiliser → utilisable → inutilisable. Chaque étape ajoute un élément. Ce procédé illustre la richesse de la dérivation en français — et la possibilité d''enchaîner plusieurs affixes sur un même radical. C''est du niveau avancé, mais ça montre à quel point la morphologie est fascinante !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'Des mots de la même famille partagent toujours la même orthographe du radical.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, c''est faux ! Le radical peut connaître des variations orthographiques ou phonétiques dans une même famille — c''est ce qu''on appelle l''allomorphie. La famille de « pied » comprend « piéton » et « pédestre » (radical latin ped-). La famille de « œil » comprend « oculaire » (radical latin ocul-). Ces alternances s''expliquent par l''étymologie latine ou grecque des dérivés savants. Connaître l''allomorphie, c''est essentiel pour expliquer les difficultés orthographiques à tes futurs élèves !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Parmi ces mots, lesquels appartiennent à la famille de « grand » ?',
  null,
  '[{"id":"a","label":"grandeur, agrandir, grandiloquent"},{"id":"b","label":"grandeur, gronder, granit"},{"id":"c","label":"agrandir, grange, grandeur"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Grandeur, agrandir et grandiloquent partagent tous le radical grand- : grandeur (qualité de ce qui est grand), agrandir (rendre plus grand), grandiloquent (qui parle avec excès de grandeur — et oui, ce sens est lié à grand !). Dans les autres propositions, les intrus sont clairs : gronder vient d''un radical différent (bruit sourd), granit est un mot d''emprunt (roche), et grange vient du latin granica (lieu pour le grain). Ces faux amis morphologiques sont un classique des questions de famille de mots au CRPE !',
  'valide', 'CRPE Français — Lexique V2', 'free', true
)
;

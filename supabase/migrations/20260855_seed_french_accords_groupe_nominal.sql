-- Migration: 10 exercices — Accords dans le groupe nominal
-- Série : orth_accords_groupe_nominal (Français, orthographe)
-- Déterminant, nom, adjectif épithète — accords en genre et nombre, cas particuliers
-- UUID prefix: f6070000

-- Q1 : Accord de l'adjectif épithète — "des robes bleues" (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'qcm',
  'Choisissez la forme correcte de l''adjectif épithète dans le groupe nominal : « des robes ___ ».',
  NULL,
  '[{"id":"a","label":"bleu"},{"id":"b","label":"bleue"},{"id":"c","label":"bleues"},{"id":"d","label":"bleus"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''adjectif épithète s''accorde en genre et en nombre avec le nom qu''il qualifie : ici « robes » est féminin pluriel, donc l''adjectif prend la marque du féminin (-e) et du pluriel (-s), ce qui donne « bleues ». La règle fondamentale est que tout adjectif épithète reçoit les mêmes marques de genre et de nombre que le nom noyau du groupe nominal. Il faut d''abord identifier le nom (« robes »), déterminer son genre (féminin) et son nombre (pluriel), puis appliquer les terminaisons correspondantes à l''adjectif. Un moyen mnémotechnique : posez la question « de quelle couleur sont les robes ? » — la réponse s''accorde avec le sujet de la question.',
  'L''erreur la plus fréquente est d''écrire « bleu » sans aucune marque d''accord, en traitant l''adjectif de couleur comme s''il était invariable à la manière des adjectifs de couleur dérivés d''un nom commun (orange, marron). Or « bleu » est un adjectif qualificatif ordinaire qui s''accorde normalement.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 : Adjectifs de couleur composés invariables (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Un adjectif de couleur composé est invariable. Exemple : « des yeux bleu clair ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Lorsqu''un adjectif de couleur est composé de deux termes (bleu clair, vert foncé, rouge cerise, gris perle…), l''ensemble est invariable car les deux éléments se qualifient mutuellement pour former une nuance précise : on écrit donc « des yeux bleu clair » et non « des yeux bleus clairs ». Cette règle s''applique aussi aux expressions du type « jaune paille », « bleu nuit » ou « vert bouteille ». La logique est que la nuance composée fonctionne comme un tout indécomposable désignant une teinte unique. À distinguer d''un adjectif de couleur simple (« bleu ») qui, lui, s''accorde normalement.',
  'L''erreur fréquente est d''accorder les deux adjectifs comme si chacun d''eux qualifiait indépendamment le nom, en écrivant par exemple « des yeux bleus clairs ». Il faut mémoriser que dès qu''un adjectif de couleur est accompagné d''un second terme de nuance, l''ensemble devient invariable.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 : Pluriel d'un nom composé (nom + adjectif) — "sourds-muets" (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'qcm',
  'Quel est le pluriel correct du nom composé « un sourd-muet » ?',
  NULL,
  '[{"id":"a","label":"des sourd-muets"},{"id":"b","label":"des sourds-muets"},{"id":"c","label":"des sourd-muet"},{"id":"d","label":"des sourds-muet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans un nom composé formé de deux adjectifs (adjectif + adjectif), chacun des deux éléments s''accorde en genre et en nombre puisqu''ils qualifient tous les deux la réalité désignée : « sourd » et « muet » sont ici deux adjectifs qui caractérisent la même personne, ils prennent donc tous les deux la marque du pluriel, ce qui donne « des sourds-muets ». Cette règle vaut pour tous les noms composés adjectif + adjectif : « des franco-allemands », « des aigres-doux ». Il faut la distinguer des noms composés verbe + nom ou préposition + nom, où le nom seul peut varier.',
  'L''erreur habituelle consiste à n''accorder que le second élément (« des sourd-muets »), par analogie avec des noms composés où le premier terme est un préfixe invariable. Ici, « sourd » est bien un adjectif à part entière et doit recevoir la marque du pluriel.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 : Accord de l'adjectif antéposé — "de jolis petits cadeaux" (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'reponse_courte',
  'Complétez avec la forme correcte de l''adjectif : « de joli___ petits cadeaux ». Écrivez uniquement l''adjectif correctement accordé.',
  NULL,
  NULL,
  '{"mode":"exact_match","acceptableAnswers":["jolis"]}'::jsonb,
  'L''adjectif épithète « joli » qualifie ici « cadeaux », nom masculin pluriel : il prend donc la marque du masculin (forme de base) et du pluriel (-s), ce qui donne « jolis ». Remarquez que l''article partitif « de » (et non « des ») s''emploie devant un groupe nominal pluriel commençant par un adjectif antéposé — c''est une règle orthographique connexe à mémoriser. L''accord de l''adjectif reste néanmoins gouverné par le nom noyau, indépendamment de l''article qui le précède. Ici : masculin pluriel → « jolis ».',
  'L''erreur fréquente est d''écrire « jolie » (accord au féminin) par confusion avec la terminaison en -e, ou d''oublier le -s du pluriel et d''écrire simplement « joli ». Il faut systématiquement identifier le genre et le nombre du nom noyau avant d''accorder l''adjectif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 : Adjectifs de couleur dérivés d'un nom commun — invariables (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'qcm',
  'Comment écrit-on correctement le groupe nominal : « des rubans orange » ?',
  NULL,
  '[{"id":"a","label":"des rubans orange (invariable)"},{"id":"b","label":"des rubans oranges (variable)"},{"id":"c","label":"des rubans orangé"},{"id":"d","label":"des rubans orangés"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Les adjectifs de couleur qui sont à l''origine des noms communs restent invariables en genre et en nombre : orange, marron, crème, lilas, saumon, ivoire, turquoise, kaki, etc. s''écrivent sans accord. La règle se mémorise ainsi : quand on peut imaginer l''objet d''origine (le fruit orange, le marron de l''arbre), l''adjectif ne s''accorde pas. Il existe cependant deux exceptions notables : « rose » et « mauve », qui, par usage consacré, s''accordent (des robes roses, des fleurs mauves). Ici, « orange » dérive du nom du fruit et reste invariable : « des rubans orange ».',
  'L''erreur fréquente est d''écrire « oranges » par analogie avec les adjectifs ordinaires. Il faut distinguer les adjectifs de couleur issus de noms communs (invariables) des adjectifs de couleur ordinaires comme « bleu » ou « rouge » (variables).',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 : "Demi" avant le nom — invariable et trait d'union (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Placé avant le nom, « demi » est invariable et se joint à ce nom par un trait d''union. Exemple : « une demi-heure ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Lorsque « demi » précède le nom, il joue le rôle d''un préfixe : il est invariable (ne prend ni la marque du féminin ni celle du pluriel) et se lie au nom par un trait d''union — on écrit « une demi-heure », « un demi-tour », « des demi-cercles ». En revanche, lorsque « demi » est placé après le nom (en apposition), il s''accorde en genre avec ce nom mais reste invariable en nombre : « deux heures et demie » (féminin car « heure » est féminin), « deux jours et demi » (masculin car « jour » est masculin). Cette distinction antéposition/postposition est un point clé évalué au CRPE.',
  'L''erreur classique est d''écrire « une demie-heure » avec un -e, en accordant « demi » au féminin d''« heure ». Il faut retenir que seul le « demi » postposé s''accorde en genre avec le nom (« deux heures et demie »), jamais celui qui précède le nom.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 : Féminin de "beau" → "belle" (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'reponse_courte',
  'Donnez le féminin singulier de l''adjectif « beau ».',
  NULL,
  NULL,
  '{"mode":"exact_match","acceptableAnswers":["belle"]}'::jsonb,
  'L''adjectif « beau » fait partie des adjectifs à double forme au masculin : « beau » devant une consonne (un beau garçon), « bel » devant une voyelle ou un h muet (un bel homme, un bel arbre). Le féminin singulier est « belle » — on retrouve la même base que la forme « bel » avec un doublement de la consonne finale : bel → belle. Ce phénomène de doublement de la consonne au féminin concerne plusieurs adjectifs courants : vieux/vieille, nouveau/nouvelle, fou/folle, mou/molle. La mémorisation de ces formes irrégulières est indispensable pour le CRPE.',
  'L''erreur fréquente est d''écrire « beaue » ou « beauf » en ajoutant simplement le -e du féminin à la forme de base « beau », sans tenir compte de l''irrégularité. Il faut mémoriser les adjectifs à forme féminine irrégulière (beau → belle, vieux → vieille, nouveau → nouvelle).',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 : Accord de "tout" adjectif indéfini (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'qcm',
  'Quelle est la forme correcte de l''adjectif indéfini « tout » dans la phrase : « ___ les élèves ont réussi » ?',
  NULL,
  '[{"id":"a","label":"Tout les élèves"},{"id":"b","label":"Toute les élèves"},{"id":"c","label":"Tous les élèves"},{"id":"d","label":"Toutes les élèves"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''adjectif indéfini « tout » s''accorde en genre et en nombre avec le nom qu''il détermine. Ici, « élèves » est un nom masculin pluriel (ou mixte, interprété au masculin générique) : la forme correcte est donc « tous » (masculin pluriel). Les quatre formes de « tout » sont : tout (masc. sing.), toute (fém. sing.), tous (masc. plur.), toutes (fém. plur.). Attention à ne pas confondre avec « tout » adverbe, qui peut être invariable dans certains emplois (« elles sont tout étonnées » — cas particulier). Dans un groupe nominal déterminant + nom, « tout » joue le rôle d''adjectif indéfini et s''accorde obligatoirement.',
  'L''erreur fréquente est d''écrire « tout les élèves » sans accord, par analogie avec l''emploi de « tout » comme adverbe ou pronom. Il faut identifier la fonction : ici « tout » est adjectif indéfini devant un nom, il s''accorde donc en genre et en nombre.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 : "Possible" après superlatif — accord avec "nombre" (singulier) (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Le plus grand nombre possible d''élèves a participé », l''adjectif « possible » s''accorde avec « nombre » et reste au singulier.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Après une expression superlative du type « le plus grand nombre », « le plus petit nombre », « le plus grand soin », l''adjectif « possible » se rapporte au nom noyau de cette expression et non au complément qui suit. Ici « possible » qualifie « nombre » (masculin singulier) : on écrit donc « le plus grand nombre possible » sans accord au pluriel. La règle générale est que « possible » employé après un superlatif (le plus…, le moins…, le meilleur…) reste invariable lorsqu''il porte sur toute l''expression superlative — il ne s''accorde pas avec un éventuel nom pluriel qui suit. Exemple complémentaire : « Faites le moins d''erreurs possible » (possible invariable, portant sur « le moins »).',
  'L''erreur fréquente est d''écrire « le plus grand nombre possibles » en accordant « possible » avec le complément pluriel « d''élèves » qui suit. Il faut repérer que « possible » porte sur l''expression superlative entière (« le plus grand nombre ») et non sur le complément du nom.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 : Adjectif qualificatif "neuf" au masculin pluriel → "neufs" (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6070000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_accords_groupe_nominal',
  'Accords dans le groupe nominal',
  'Standard',
  'reponse_courte',
  'Corrigez l''accord de l''adjectif dans le groupe nominal : « des pneus neuf ». Écrivez la forme correctement accordée de l''adjectif.',
  NULL,
  NULL,
  '{"mode":"exact_match","acceptableAnswers":["neufs"]}'::jsonb,
  'L''adjectif « neuf » (qui signifie « tout récent, jamais utilisé ») est un adjectif qualificatif ordinaire qui s''accorde en genre et en nombre avec le nom qu''il qualifie. « Pneus » est masculin pluriel : l''adjectif prend la marque du pluriel (-s) et donne « neufs ». Il ne faut pas confondre cet adjectif avec le déterminant numéral « neuf » (le chiffre 9), qui est invariable. La distinction est importante : « neuf élèves » (numéral, invariable) vs « des chaussures neuves » (adjectif qualificatif, féminin pluriel) ou « des pneus neufs » (adjectif qualificatif, masculin pluriel). Au féminin, la forme est « neuve » (des chaussures neuves).',
  'L''erreur fréquente est de laisser « neuf » invariable, par confusion avec le déterminant numéral homonyme « neuf » (9 élèves) qui, lui, ne s''accorde pas. Il faut identifier la nature du mot : ici « neuf » est adjectif qualificatif (il décrit l''état des pneus) et doit donc s''accorder : masculin pluriel → « neufs ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

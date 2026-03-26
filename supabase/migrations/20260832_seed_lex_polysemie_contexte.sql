-- Migration: 10 exercices — Polysémie : sens des mots selon le contexte
-- Série : lex_polysemie_contexte (Français, lexique)
-- Terminologie Éduscol 2021 stricte
-- UUID prefix: e9320000

-- Q1 — QCM — Sens propre vs sens figuré
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'qcm',
  'Dans « Cette nouvelle m''a glacé le sang », le verbe « glacer » est employé :',
  NULL,
  '[{"id":"a","label":"Au sens propre (transformer en glace)"},{"id":"b","label":"Au sens figuré (provoquer un effroi intense)"},{"id":"c","label":"Au sens technique (refroidir un aliment)"},{"id":"d","label":"Au sens propre (rendre très froid)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « glacer » est employé au sens figuré. L''expression « glacer le sang » est une locution figurée qui signifie « provoquer un effroi intense, terrifier ». Le sang n''est pas réellement transformé en glace — il s''agit d''une métaphore fondée sur la sensation physique de froid provoquée par la peur. La polysémie est la propriété qu''a un mot de posséder plusieurs sens. Le sens propre est le sens premier, concret et littéral ; le sens figuré est un sens dérivé, souvent abstrait, obtenu par un procédé rhétorique (métaphore, métonymie, etc.).',
  'Confondre sens propre et sens figuré. Le sens propre est concret et littéral ; le sens figuré est abstrait et imagé. Ici, il n''y a pas de glace réelle.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — Identifier le sens d'un mot polysémique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'qcm',
  'Dans « Le pied de la montagne était recouvert de neige », quel est le sens du mot « pied » ?',
  NULL,
  '[{"id":"a","label":"Partie du corps humain"},{"id":"b","label":"Base, partie inférieure d''un élément vertical"},{"id":"c","label":"Unité de mesure ancienne"},{"id":"d","label":"Syllabe en versification"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mot « pied » désigne ici la base, la partie inférieure de la montagne. C''est un emploi par analogie de forme : le pied de la montagne est à la montagne ce que le pied est au corps humain (la partie qui touche le sol). Le mot « pied » est un exemple classique de polysémie : il possède de nombreux sens (partie du corps, base d''un meuble, unité de mesure, unité métrique en poésie, plante — « un pied de vigne »). C''est le contexte qui permet de lever l''ambiguïté et de sélectionner le sens pertinent.',
  'Confondre polysémie et homonymie. La polysémie concerne un seul mot avec plusieurs sens liés par l''histoire (un lien étymologique). L''homonymie concerne des mots différents qui se prononcent ou s''écrivent de la même façon, sans lien de sens.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Réponse courte — Polysémie en contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'reponse_courte',
  'Comment appelle-t-on un mot qui possède plusieurs sens liés entre eux par l''étymologie ou par analogie ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["un mot polysémique","polysémique","mot polysémique","polysème"]}'::jsonb,
  'Un mot polysémique est un mot qui possède plusieurs sens liés entre eux. Ces sens sont reliés par l''histoire du mot (évolution sémantique) ou par des procédés comme la métaphore (analogie de forme : le « bras » d''un fauteuil) ou la métonymie (contiguïté : boire un « verre »). La polysémie se distingue de l''homonymie : les homonymes sont des mots différents qui partagent la même forme (« avocat » = fruit / « avocat » = juriste — deux origines distinctes). En pratique, le dictionnaire présente les sens d''un mot polysémique dans un seul article (avec des numéros), et les homonymes dans des articles séparés.',
  'Confondre polysémie et homonymie. La distinction repose sur l''existence ou non d''un lien entre les sens. La polysémie = un mot, plusieurs sens liés. L''homonymie = des mots différents, même forme.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Le mot « opération »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'qcm',
  'Dans « Les élèves réalisent une opération de multiplication », le mot « opération » désigne :',
  NULL,
  '[{"id":"a","label":"Une intervention chirurgicale"},{"id":"b","label":"Un calcul mathématique"},{"id":"c","label":"Une action militaire"},{"id":"d","label":"Une transaction commerciale"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mot « opération » désigne ici un calcul mathématique. Le contexte (« multiplication », « élèves ») oriente vers le domaine scolaire/mathématique. Le mot « opération » est polysémique : il peut désigner un calcul (sens mathématique), une intervention chirurgicale (sens médical), une action militaire (sens militaire), une transaction (sens commercial) ou encore un processus (sens général). Tous ces sens sont liés par l''idée commune d''« action organisée visant un résultat ». C''est le contexte linguistique (les mots environnants) et le contexte situationnel qui permettent de désambiguïser.',
  'Ne pas exploiter le contexte pour identifier le sens. En classe, c''est une compétence fondamentale à enseigner aux élèves : s''appuyer sur le cotexte (environnement linguistique) pour accéder au sens.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Vrai/Faux — Polysémie vs homonymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : les mots « livre » (objet à lire) et « livre » (unité de masse) sont un exemple de polysémie.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! « Livre » (objet à lire, du latin liber) et « livre » (unité de masse, du latin libra) sont des homonymes, pas des polysèmes. Ils ont des origines étymologiques différentes et aucun lien sémantique entre eux. La polysémie suppose un lien entre les différents sens (par métaphore, métonymie ou évolution). L''homonymie résulte d''une convergence formelle : deux mots d''origines distinctes qui, par hasard de l''évolution phonétique, ont fini par se prononcer et/ou s''écrire de la même façon. Dans le dictionnaire, ils figurent dans des articles séparés.',
  'Confondre polysémie et homonymie. Le critère est le lien entre les sens : s''il existe un lien (même origine) → polysémie ; s''il n''y a aucun lien (origines différentes) → homonymie.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Le mot « feuille »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'qcm',
  'Les différents sens du mot « feuille » (feuille d''arbre, feuille de papier, feuille de calcul, feuille d''impôt) sont un exemple de :',
  NULL,
  '[{"id":"a","label":"Polysémie — un mot, plusieurs sens liés par analogie de forme"},{"id":"b","label":"Homonymie — des mots distincts, même prononciation"},{"id":"c","label":"Synonymie — des mots différents, même sens"},{"id":"d","label":"Antonymie — des mots de sens opposé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'C''est un exemple de polysémie. Tous les sens du mot « feuille » sont liés par une analogie de forme : une surface plane et mince. La feuille d''arbre est le sens premier (sens propre). La feuille de papier, la feuille de calcul et la feuille d''impôt sont des sens dérivés par métaphore (analogie de forme : objet plat et mince). Il s''agit bien d''un seul mot avec plusieurs acceptions, pas de mots différents. Le lien sémantique est transparent : tous les sens partagent le sème (trait de sens) de « surface mince et plate ».',
  'Confondre polysémie et homonymie. Ici, tous les sens de « feuille » sont liés par l''idée de surface plane → c''est de la polysémie.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Quel procédé ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'reponse_courte',
  'Dans « boire un verre », le mot « verre » désigne le contenu (la boisson) et non le contenant (le récipient). Par quel procédé le sens s''est-il étendu ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["métonymie","la métonymie","une métonymie"]}'::jsonb,
  'Le procédé est la métonymie : on désigne le contenu par le nom du contenant. La métonymie est une figure de style fondée sur un rapport de contiguïté (proximité logique), à la différence de la métaphore (fondée sur la ressemblance). Autres exemples de métonymie : « boire une bouteille » (contenant pour contenu), « lire un Zola » (auteur pour œuvre), « la Maison-Blanche a déclaré » (lieu pour institution). La métonymie est l''un des mécanismes principaux de la polysémie : elle crée de nouveaux sens à partir de relations de voisinage logique.',
  'Confondre métonymie et métaphore. La métaphore repose sur une ressemblance (le « pied » de la montagne ressemble au pied du corps). La métonymie repose sur une relation de contiguïté (le contenant pour le contenu, la cause pour l''effet, etc.).',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Sens spécialisé en contexte scolaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'qcm',
  'Le mot « accord » a un sens différent en grammaire, en musique et en droit. Dans « L''accord du participe passé avec le sujet », dans quel domaine spécialisé le mot est-il utilisé ?',
  NULL,
  '[{"id":"a","label":"Domaine juridique"},{"id":"b","label":"Domaine musical"},{"id":"c","label":"Domaine grammatical"},{"id":"d","label":"Domaine diplomatique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le mot « accord » est utilisé ici dans le domaine grammatical. En grammaire, l''accord désigne la correspondance morphologique (genre, nombre, personne) entre des mots liés syntaxiquement. La polysémie du mot « accord » illustre un phénomène important : la spécialisation sémantique. Un même mot peut avoir un sens courant (« être d''accord » = être en harmonie) et des sens spécialisés selon les domaines : en musique (combinaison de notes), en droit (convention entre parties), en grammaire (correspondance morphologique). C''est un enjeu didactique majeur : les élèves doivent apprendre à distinguer sens courant et sens spécialisé.',
  'Ne pas percevoir la polysémie. Pour les élèves, le mot « accord » en grammaire peut être opaque s''ils ne font pas le lien avec le sens courant (« harmonie, correspondance »).',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Monosémie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : un mot monosémique est un mot qui n''a qu''un seul sens, comme « stéthoscope » ou « parallélépipède ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Un mot monosémique ne possède qu''un seul sens, par opposition au mot polysémique (plusieurs sens). Les termes scientifiques et techniques sont souvent monosémiques : « stéthoscope » (instrument médical d''auscultation), « parallélépipède » (solide géométrique à 6 faces parallélogrammes). La monosémie est recherchée dans les langages spécialisés pour éviter l''ambiguïté. Les mots les plus courants du lexique (faire, prendre, mettre, tête, cœur…) sont au contraire très polysémiques. Plus un mot est fréquent, plus il a tendance à être polysémique.',
  'Croire que tous les mots sont polysémiques. Les termes techniques et scientifiques sont souvent monosémiques, c''est leur force : un seul sens, pas d''ambiguïté.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Enjeu didactique de la polysémie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9320000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_polysemie_contexte',
  'Polysémie — sens des mots selon le contexte',
  'Standard',
  'qcm',
  'Quel est le principal enjeu didactique de l''enseignement de la polysémie à l''école primaire ?',
  NULL,
  '[{"id":"a","label":"Apprendre aux élèves à utiliser le dictionnaire pour chaque mot inconnu"},{"id":"b","label":"Développer la capacité des élèves à inférer le sens d''un mot à partir du contexte"},{"id":"c","label":"Faire mémoriser tous les sens possibles de chaque mot courant"},{"id":"d","label":"Remplacer les mots polysémiques par des termes monosémiques plus précis"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''enjeu principal est d''apprendre aux élèves à inférer le sens d''un mot à partir de son contexte. La polysémie est omniprésente dans la langue : les mots les plus courants ont de multiples sens. Il est impossible (et inutile) de les mémoriser tous. L''objectif est de développer une compétence stratégique : utiliser le cotexte (mots environnants), le contexte (situation de communication) et les connaissances du monde pour sélectionner le sens pertinent. Les programmes officiels insistent sur cette compétence inférentielle, essentielle pour la compréhension en lecture.',
  'Croire que l''enseignement du vocabulaire se réduit à la mémorisation de définitions. Les programmes Éduscol privilégient la construction active du sens par les élèves, en contexte.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;

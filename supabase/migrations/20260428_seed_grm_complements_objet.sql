-- Migration: série grm_complements_objet (10 questions)
-- COD, COI et COS — compléments d'objet — Grammaire CRPE
-- UUID prefix: t0210000
-- Types : qcm, vrai_faux, reponse_courte, tri_categories
-- Niveaux : 3 Facile + 4 Intermediaire + 3 Difficile
-- Access : 5 free + 5 premium
-- Terminologie Éduscol : COD/COI = fonctions internes au GV, pas au niveau de P

-- ============================================================================
-- Q1 — Facile — QCM — free
-- Compétence : identifier un COD dans une phrase simple
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Facile',
  'qcm',
  'Dans la phrase « Emma dévorait des romans » (Flaubert), quel est le COD du verbe « dévorait » ?',
  NULL,
  '[{"id":"a","label":"Emma"},{"id":"b","label":"des romans"},{"id":"c","label":"dévorait"},{"id":"d","label":"Il n''y a pas de COD"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le COD (complément d''objet direct) est « des romans ». Il fait partie du GV (« dévorait des romans »), il est lié au sens du verbe transitif direct « dévorer » et il est remplaçable par un pronom : « Emma les dévorait ». Selon la terminologie Éduscol, le COD est une fonction interne au GV, pas une fonction au niveau de la phrase P. La structure est : P = GS [Emma] + GV [dévorait des romans]. Le GN « des romans » est bien un COD car il se construit sans préposition.',
  'Confondre le sujet et le COD. Le sujet (GS) commande l''accord du verbe et se trouve au niveau de P ; le COD est interne au GV et répond à la question « dévorer quoi ? ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — Facile — Vrai/Faux — free
-- Compétence : distinguer COD et attribut du sujet
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : dans « Le petit prince était un enfant solitaire » (Saint-Exupéry), « un enfant solitaire » est un COD.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux : « un enfant solitaire » n''est pas un COD mais un attribut du sujet. Le verbe « être » est un verbe attributif (aussi appelé verbe d''état) : il ne construit jamais de COD. L''attribut du sujet exprime une propriété ou une caractéristique du GS « le petit prince ». Le critère décisif est la nature du verbe : les verbes attributifs (être, sembler, paraître, devenir, rester, demeurer) introduisent un attribut, jamais un COD. La pronominalisation confirme : on ne dit pas *« Le petit prince le dévorait » mais « Le petit prince l''était ».',
  'C''est le piège le plus fréquent au CRPE : confondre COD et attribut du sujet. Le COD n''apparaît qu''avec un verbe transitif direct, jamais avec un verbe attributif comme « être ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — Facile — QCM — free
-- Compétence : identifier un COI (GNP dans le GV)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Facile',
  'qcm',
  'Dans « Le renard parle au petit prince » (Saint-Exupéry), quelle est la fonction de « au petit prince » ?',
  NULL,
  '[{"id":"a","label":"COD — complément d''objet direct"},{"id":"b","label":"COI — complément d''objet indirect"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Attribut du sujet"},{"id":"e","label":"Complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le groupe « au petit prince » (= à le petit prince) est un COI. C''est un groupe nominal prépositionnel (GNP) introduit par la préposition « à », interne au GV « parle au petit prince ». Il est lié au sens du verbe « parler à quelqu''un » : on ne peut pas le supprimer sans modifier le sens du verbe. Il est remplaçable par le pronom « lui » : « Le renard lui parle ». Selon la terminologie Éduscol, le COI est un GNP à l''intérieur du GV, lié au sens du verbe.',
  'Confondre COI et complément circonstanciel. Le CC est facultatif et déplaçable (il se situe au niveau de P) ; le COI est lié au verbe, non déplaçable et interne au GV. « Au petit prince » n''indique pas un lieu mais un destinataire exigé par le verbe « parler à ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — Intermediaire — QCM — free
-- Compétence : identifier le COS (second complément d'objet)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Intermediaire',
  'qcm',
  'Dans « Harpagon prête de l''argent à son fils » (Molière), identifiez le COD et le COS.',
  NULL,
  '[{"id":"a","label":"COD = « de l''argent » ; COS = « à son fils »"},{"id":"b","label":"COD = « à son fils » ; COS = « de l''argent »"},{"id":"c","label":"COD = « Harpagon » ; COI = « à son fils »"},{"id":"d","label":"COD = « de l''argent » ; CC de lieu = « à son fils »"},{"id":"e","label":"Il n''y a pas de COS dans cette phrase"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le verbe « prêter » se construit avec deux compléments d''objet : « prêter quelque chose à quelqu''un ». Le COD est « de l''argent » (GN sans préposition, remplaçable par « le » : « Harpagon le prête »). Le COS (complément d''objet second) est « à son fils » : c''est le second complément d''objet, un GNP introduit par « à », remplaçable par « lui » (« Harpagon lui prête de l''argent »). Selon la terminologie Éduscol, quand un verbe a déjà un COD, le second complément d''objet (toujours indirect) est appelé COS. La structure du GV est : V + GN (COD) + GNP (COS).',
  'Confondre le COS avec un complément circonstanciel. « À son fils » n''est pas un CC car il n''est pas déplaçable ni supprimable : *« À son fils, Harpagon prête de l''argent » change le sens. Le COS est exigé par la construction du verbe « prêter à ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — Intermediaire — Vrai/Faux — free
-- Compétence : savoir que COD/COI sont internes au GV (pas au niveau de P)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : selon la terminologie Éduscol, le COD est une fonction qui existe au niveau de la phrase (P), au même titre que le sujet et le complément circonstanciel.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Selon la terminologie Éduscol, seules deux fonctions existent au niveau de la phrase P : la fonction sujet (relation entre GS et GV) et la fonction complément circonstanciel (relation entre [GS + GV] et GC). Le COD, le COI, le COS et l''attribut du sujet sont des fonctions internes au GV. Cette distinction est fondamentale : P = [GS + GV] (+ GC), et les compléments d''objet sont des constituants du GV, pas de P. C''est un point structurant de l''analyse grammaticale au CRPE.',
  'Placer le COD au même niveau que le sujet et le CC dans l''analyse de la phrase. Cette erreur est très courante dans les copies de CRPE : il faut bien distinguer les fonctions au niveau de P (sujet, CC) et les fonctions internes au GV (COD, COI, attribut).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — Intermediaire — Réponse courte — premium
-- Compétence : pronominaliser un COD
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Intermediaire',
  'reponse_courte',
  'Dans « Les enfants construisaient des châteaux de sable », remplacez le COD par un pronom et écrivez la phrase obtenue.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Les enfants les construisaient","Les enfants en construisaient"]}'::jsonb,
  'Le COD « des châteaux de sable » peut être remplacé par le pronom « les » (si l''on considère un ensemble défini) ou par « en » (article partitif « des »). La pronominalisation est le test le plus fiable pour identifier un COD : le pronom se place devant le verbe conjugué. La forme « Les enfants les construisaient » confirme que « des châteaux de sable » est bien un GN en fonction de COD à l''intérieur du GV. Ce test est recommandé par la terminologie Éduscol pour vérifier la fonction COD.',
  'Oublier que « en » peut remplacer un COD introduit par l''article partitif ou indéfini (« des »). La pronominalisation par « en » est aussi valide que par « les » selon le contexte.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Intermediaire — tri_categories — premium
-- Compétence : classer des compléments en COD, COI, CC
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Intermediaire',
  'tri_categories',
  'Classez chaque complément souligné dans la catégorie qui convient : COD (interne au GV), COI (interne au GV) ou CC (au niveau de P).',
  '1. « Il songeait à son pays. » → à son pays\n2. « Elle écrivait une lettre. » → une lettre\n3. « Il marchait dans la nuit. » → dans la nuit\n4. « Le corbeau obéit au renard. » → au renard',
  '[{"id":"cod","label":"COD"},{"id":"coi","label":"COI"},{"id":"cc","label":"CC"}]'::jsonb,
  '{"mode":"categories","value":{"cod":["2"],"coi":["1","4"],"cc":["3"]}}'::jsonb,
  'Phrase 1 : « à son pays » est un COI — le verbe « songer à » exige ce complément prépositionnel (lié au sens du verbe, non supprimable). Phrase 2 : « une lettre » est un COD — GN sans préposition, interne au GV, remplaçable par « la » (« Elle l''écrivait »). Phrase 3 : « dans la nuit » est un CC de temps/lieu — il est facultatif, supprimable et déplaçable (« Dans la nuit, il marchait »). Phrase 4 : « au renard » est un COI — le verbe « obéir à » exige ce GNP, remplaçable par « lui » (« Le corbeau lui obéit »). Le critère clé : le CC est au niveau de P (supprimable, déplaçable), les CO sont internes au GV (liés au verbe).',
  'Confondre COI et CC quand les deux sont introduits par une préposition. Le critère décisif est le lien avec le verbe : le COI est exigé par le verbe (songer à, obéir à), le CC apporte une information circonstancielle facultative.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q8 — Difficile — QCM — premium
-- Compétence : identifier la nature du COD (proposition subordonnée complétive)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Difficile',
  'qcm',
  'Dans « Meursault sentait que le soleil lui faisait du mal » (Camus), quelle est la nature et la fonction du groupe souligné « que le soleil lui faisait du mal » ?',
  NULL,
  '[{"id":"a","label":"Proposition subordonnée complétive — fonction COD"},{"id":"b","label":"Proposition subordonnée relative — fonction complément du nom"},{"id":"c","label":"Proposition subordonnée circonstancielle — fonction CC de cause"},{"id":"d","label":"Proposition subordonnée complétive — fonction sujet"},{"id":"e","label":"Proposition subordonnée conjonctive — fonction attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le groupe « que le soleil lui faisait du mal » est une proposition subordonnée complétive introduite par la conjonction de subordination « que ». Sa fonction est COD du verbe « sentir » : elle complète directement le sens du verbe transitif (sentir quelque chose). La pronominalisation le confirme : « Meursault le sentait ». Selon la terminologie Éduscol, le COD peut avoir différentes natures : GN, pronom, infinitif ou proposition subordonnée complétive. Ici, c''est une complétive (et non une relative, car « que » n''a pas d''antécédent nominal et n''est pas un pronom relatif).',
  'Confondre proposition subordonnée complétive et relative. La complétive est introduite par la conjonction « que » (pas de nom antécédent) ; la relative est introduite par le pronom relatif « que/qui » avec un antécédent nominal. Ici, « que » suit directement le verbe « sentait », sans antécédent : c''est donc une conjonction.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Difficile — Réponse courte — premium
-- Compétence : analyser une phrase à double complémentation (COD + COS)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Difficile',
  'reponse_courte',
  'Dans « La Fontaine enseigne la sagesse aux enfants », quelle est la fonction de « aux enfants » ? Donnez le terme grammatical précis.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["COS","complément d''objet second","complement d''objet second","COI","complément d''objet indirect","complement d''objet indirect"]}'::jsonb,
  'Le groupe « aux enfants » est un COS (complément d''objet second). Le verbe « enseigner » se construit avec deux compléments d''objet : « enseigner quelque chose (COD) à quelqu''un (COS) ». Le COD « la sagesse » est le premier complément (GN sans préposition) ; le COS « aux enfants » est le second complément (GNP introduit par « à »). Selon la terminologie Éduscol, quand un verbe a déjà un COD, le complément d''objet indirect qui l''accompagne est appelé COS. Il est remplaçable par le pronom « leur » : « La Fontaine leur enseigne la sagesse ». La structure du GV est : V + GN (COD) + GNP (COS).',
  'Appeler le COS un « complément d''attribution » — ce terme n''est pas reconnu par la terminologie Éduscol. On parle de COS (complément d''objet second) ou simplement de second COI.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Difficile — QCM — free
-- Compétence : analyse complète d'une phrase avec COD infinitif et piège attribut
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0210000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'grm_complements_objet',
  'COD, COI et COS — compléments d''objet',
  'Difficile',
  'qcm',
  'Analysez les groupes soulignés. Dans quelle(s) phrase(s) le complément est-il un COD ?\n\n1. « Elle souhaitait partir loin. » → partir\n2. « Il demeure un homme honnête. » → un homme honnête\n3. « Nous pensons à nos amis. » → à nos amis\n4. « Hugo aimait contempler la mer. » → contempler la mer',
  NULL,
  '[{"id":"a","label":"Phrases 1 et 4 uniquement"},{"id":"b","label":"Phrases 1, 2 et 4"},{"id":"c","label":"Phrases 1, 3 et 4"},{"id":"d","label":"Phrase 4 uniquement"},{"id":"e","label":"Toutes les phrases"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Seules les phrases 1 et 4 contiennent un COD. Phrase 1 : « partir » est un infinitif en fonction de COD du verbe « souhaiter » (souhaiter quelque chose → elle le souhaitait). Phrase 4 : « contempler la mer » est un groupe infinitif en fonction de COD du verbe « aimer » (aimer quelque chose → il l''aimait). La terminologie Éduscol précise que le COD peut être un infinitif. Phrase 2 : « un homme honnête » est un attribut du sujet car « demeurer » est un verbe attributif — piège classique. Phrase 3 : « à nos amis » est un COI (GNP introduit par « à ») du verbe « penser à », pas un COD car il y a une préposition.',
  'Confondre « demeurer » verbe attributif et « demeurer » verbe de mouvement (habiter). Ici, « demeurer un homme honnête » = rester un homme honnête, c''est un verbe attributif. Le GN qui suit est donc un attribut du sujet, jamais un COD.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

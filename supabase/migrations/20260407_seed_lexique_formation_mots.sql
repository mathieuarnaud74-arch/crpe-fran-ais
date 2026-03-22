-- ============================================================
-- Migration : Série Lexique — Formation des mots (préfixes, suffixes, familles)
-- UUID prefix : d402
-- 10 exercices : qcm (5), reponse_courte (3), vrai_faux (2)
-- ============================================================

-- Q1 — Facile — qcm — Identifier un préfixe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Facile',
  'qcm',
  'Dans le mot « impossible », quel est le préfixe et quel sens apporte-t-il ?',
  NULL,
  '[{"id":"a","label":"im- : il exprime la négation"},{"id":"b","label":"impo- : il exprime la force"},{"id":"c","label":"in- : il exprime le mouvement vers l''intérieur"},{"id":"d","label":"im- : il exprime la répétition"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le préfixe « im- » (variante de « in- » devant b, m, p) exprime la négation : impossible signifie « qui n''est pas possible ». Ce préfixe privatif se retrouve dans imbattable, immobile, impatient. La dérivation par préfixation est un procédé majeur de formation des mots en français. Les programmes d''Éduscol insistent sur la reconnaissance des préfixes pour développer les stratégies de compréhension lexicale au cycle 3.',
  'Confondre le préfixe « im-/in- » privatif avec le préfixe « in- » signifiant « dans » (comme dans « infiltrer » ou « injecter »). Le contexte sémantique permet de les distinguer.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Reconnaître un suffixe et sa valeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Facile',
  'qcm',
  'Quel suffixe permet de former un nom désignant une personne qui exerce une action, comme dans « boulanger », « jardinier », « poissonnier » ?',
  NULL,
  '[{"id":"a","label":"-ment"},{"id":"b","label":"-tion"},{"id":"c","label":"-ier / -er"},{"id":"d","label":"-eux"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le suffixe « -ier » (ou « -er ») sert à former des noms de métiers ou d''agents : boulanger (celui qui fait le pain), jardinier (celui qui s''occupe du jardin), poissonnier (celui qui vend le poisson). Le suffixe « -ment » forme des adverbes ou des noms d''action, « -tion » des noms d''action, et « -eux » des adjectifs. La connaissance des suffixes et de leur valeur sémantique est un outil puissant pour enrichir le vocabulaire au cycle 3.',
  'Confondre les suffixes formant des noms d''agents (-ier, -eur, -iste) avec ceux formant des noms d''action (-tion, -ment, -age).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — vrai_faux — Mot dérivé ou mot composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Facile',
  'vrai_faux',
  'Le mot « porte-monnaie » est un mot dérivé (formé par ajout d''un préfixe ou d''un suffixe à un radical).',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Porte-monnaie » n''est pas un mot dérivé mais un mot composé, formé par l''association de deux mots autonomes : le verbe « porter » et le nom « monnaie ». La dérivation consiste à ajouter un préfixe ou un suffixe à un radical (ex. : re-faire, lent-ement). La composition associe des mots qui ont chacun un sens propre. Cette distinction entre dérivation et composition est fondamentale dans l''étude de la formation des mots au CRPE.',
  'Confondre mot composé et mot dérivé. Un mot composé réunit des mots autonomes (porte-monnaie, arc-en-ciel) ; un mot dérivé modifie un radical par affixation (in-visible, chant-eur).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Famille de mots et radical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Intermediaire',
  'qcm',
  'Quel mot n''appartient PAS à la même famille que « terre » ?',
  NULL,
  '[{"id":"a","label":"terrain"},{"id":"b","label":"terrasse"},{"id":"c","label":"terrible"},{"id":"d","label":"enterrer"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Terrible » ne fait pas partie de la famille du mot « terre ». Il vient du latin terrere (effrayer), alors que terrain, terrasse et enterrer dérivent du latin terra (terre). C''est un cas de faux apparentement morphologique : la ressemblance graphique (terr-) ne suffit pas à établir un lien de famille. Il faut remonter au radical étymologique. Cette vigilance est essentielle dans l''enseignement du lexique au cycle 3.',
  'Croire que « terrible » appartient à la famille de « terre » en raison de la ressemblance graphique du radical. C''est une erreur fréquente qui illustre l''importance de l''étymologie dans l''analyse des familles de mots.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — reponse_courte — Identifier le radical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Intermediaire',
  'reponse_courte',
  'Quel est le radical commun aux mots « fleurir », « fleuriste », « floraison » et « effleurer » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["fleur","flor","flour","fleur/flor"]}'::jsonb,
  'Le radical commun est « fleur » (avec sa variante savante « flor- » issue du latin flos, floris). On le retrouve dans fleurir (verbe), fleuriste (nom d''agent), floraison (nom d''action, avec le radical latin) et effleurer (verbe préfixé). La variation du radical au sein d''une même famille de mots est un phénomène courant en français, lié à la double filiation populaire et savante du lexique.',
  'Ne donner que « fleur » en oubliant la variante « flor- ». Les deux formes sont acceptées car elles relèvent du même étymon latin.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Valeur sémantique des préfixes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Intermediaire',
  'qcm',
  'Quel préfixe exprime l''idée de « faire à nouveau » dans les mots « reconstruire, relire, recommencer » ?',
  NULL,
  '[{"id":"a","label":"pré- (avant)"},{"id":"b","label":"re- (de nouveau)"},{"id":"c","label":"dé- (séparation)"},{"id":"d","label":"sur- (au-dessus)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe « re- » (ou « ré- » devant voyelle) exprime la répétition ou le retour à un état antérieur : reconstruire (construire à nouveau), relire (lire à nouveau), recommencer (commencer à nouveau). C''est l''un des préfixes les plus productifs en français. Les programmes d''Éduscol recommandent de travailler systématiquement les préfixes les plus courants (re-, dé-, in-, pré-) pour développer la conscience morphologique des élèves.',
  'Confondre le préfixe « re- » itératif avec sa valeur intensive (comme dans « rechercher » qui peut signifier « chercher avec soin » et pas seulement « chercher à nouveau »).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Former un mot dérivé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Intermediaire',
  'reponse_courte',
  'Formez un nom d''action à partir du verbe « naviguer » en utilisant le suffixe approprié.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["navigation","la navigation"]}'::jsonb,
  'Le nom d''action formé à partir de « naviguer » est « navigation », obtenu par l''ajout du suffixe « -tion » (plus précisément « -ation ») au radical. Le suffixe « -tion/-ation » est l''un des suffixes les plus productifs pour former des noms d''action à partir de verbes en français. Cette compétence de dérivation est centrale dans l''enseignement du lexique au cycle 3.',
  'Proposer « navigage » ou « navigement » par analogie avec d''autres modèles de dérivation. Le suffixe correct est ici « -ation », conformément à l''usage établi.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — qcm — Dérivation parasynthétique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Avance',
  'qcm',
  'Le mot « embarquer » est formé par dérivation parasynthétique. Cela signifie que :',
  NULL,
  '[{"id":"a","label":"Un préfixe et un suffixe ont été ajoutés simultanément au radical « barque »"},{"id":"b","label":"Le mot a été emprunté tel quel à une langue étrangère"},{"id":"c","label":"Seul un préfixe a été ajouté au mot « barquer »"},{"id":"d","label":"Le mot résulte de la composition de deux mots autonomes"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La dérivation parasynthétique consiste en l''ajout simultané d''un préfixe et d''un suffixe à un radical, sans que les étapes intermédiaires existent comme mots autonomes. Pour « embarquer » : em- (préfixe) + barque (radical) + -er (suffixe verbal). Ni *embarque (nom) ni *barquer (verbe) n''existent seuls. Ce procédé se distingue de la préfixation simple et de la suffixation simple. C''est une notion avancée de morphologie lexicale attendue au CRPE.',
  'Croire que « barquer » existe comme verbe intermédiaire. La parasynthèse se caractérise précisément par l''absence d''étape intermédiaire : le préfixe et le suffixe sont ajoutés en même temps.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — vrai_faux — Familles de mots et allomorphes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Avance',
  'vrai_faux',
  'Les mots « eau », « aquatique » et « hydraulique » appartiennent à la même famille de mots malgré des radicaux apparemment différents.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Ces trois mots partagent le même sens étymologique lié à l''eau, mais avec des radicaux issus de langues différentes : « eau » vient du latin aqua par évolution populaire, « aquatique » reprend directement le radical latin aqua- (voie savante), et « hydraulique » utilise le radical grec hydro-/hydr-. On parle de radicaux allomorphes. En morphologie lexicale, une famille de mots peut réunir des formes d''origines latine et grecque autour d''un même concept.',
  'Penser que des radicaux différents impliquent forcément des familles différentes. La notion de famille étymologique élargie, qui inclut les apports grecs et latins, est un concept avancé mais important pour le CRPE.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — reponse_courte — Analyse morphologique complète
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lexique_formation_mots',
  'Formation des mots : préfixes, suffixes et familles',
  'Avance',
  'reponse_courte',
  'Décomposez le mot « indéchiffrable » en identifiant le préfixe, le radical et le suffixe. Écrivez votre réponse sous la forme : préfixe + radical + suffixe (ex. : re + faire + able).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["in + déchiffr + able","in+déchiffr+able","in- + déchiffr- + -able","in + dechiffr + able","in-dé-chiffr-able","in + déchiffrable","indé + chiffr + able"]}'::jsonb,
  'Le mot « indéchiffrable » se décompose en : « in- » (préfixe privatif, signifiant « qui ne peut pas être ») + « déchiffr- » (radical, issu du verbe « déchiffrer », lui-même formé sur « chiffre ») + « -able » (suffixe adjectival, signifiant « qui peut être »). On peut aussi analyser une double préfixation : in- + dé- + chiffr- + -able. Cette analyse morphologique fine est une compétence attendue au CRPE pour l''enseignement de la formation des mots.',
  'Oublier que « déchiffrable » contient lui-même un préfixe (dé-). Le mot comporte en réalité deux niveaux de préfixation : dé-chiffrer puis in-déchiffrable.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

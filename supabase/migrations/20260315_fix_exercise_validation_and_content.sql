update public.exercises
set expected_answer = jsonb_build_object(
  'mode',
  'text',
  'acceptableAnswers',
  jsonb_build_array(expected_answer->>'value')
)
where expected_answer->>'mode' = 'free_text';

update public.exercises
set choices = '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
    expected_answer = jsonb_build_object(
      'mode',
      'boolean',
      'value',
      case lower(expected_answer->>'value')
        when 'vrai' then true
        when 'true' then true
        else false
      end
    )
where exercise_type = 'vrai_faux'
  and (
    expected_answer->>'mode' = 'single_choice'
    or expected_answer->>'mode' = 'boolean'
    or choices is null
  );

update public.exercises
set instruction = 'Accordez correctement : "La candidate dit : Je suis ___ de ces résultats."',
    detailed_explanation = 'Le contexte précise qu''une candidate parle. L''attribut du sujet avec "être" s''accorde donc au féminin singulier : "je suis fière".'
where id = '12000000-0000-0000-0000-000000000003';

update public.exercises
set choices = '[{"id":"a","label":"commis"},{"id":"b","label":"commises"},{"id":"c","label":"commise"}]'::jsonb
where id = '13000000-0000-0000-0000-000000000005';

update public.exercises
set detailed_explanation = 'La structure "ayant + participe passé" forme un participe composé. Elle exprime ici l''antériorité : après avoir appris, il a réussi. "Bien appris" n''est pas grammaticalement équivalent dans ce contexte.'
where id = '14000000-0000-0000-0000-000000000003';

update public.exercises
set instruction = 'Quelle graphie est correcte : "Je ne sais pas ___ il court."',
    choices = '[{"id":"a","label":"où"},{"id":"b","label":"ou"},{"id":"c","label":"au"}]'::jsonb,
    expected_answer = '{"mode":"single_choice","value":"a"}'::jsonb,
    detailed_explanation = '"Où" avec accent grave introduit ici un repère de lieu. "Ou" sans accent est une conjonction de coordination (= ou bien). On ne peut pas dire "je ne sais pas ou bien il court" : la bonne graphie est donc "où".'
where id = '14000000-0000-0000-0000-000000000008';

update public.exercises
set expected_answer = '{"mode":"text","acceptableAnswers":["De grands festivals internationaux."]}'::jsonb,
    detailed_explanation = '"Festival" est une exception à la règle -al → -aux : il fait "festivals". Devant un adjectif pluriel placé avant le nom, l''article indéfini "des" devient "de" : on écrit donc "de grands festivals internationaux".'
where id = '15000000-0000-0000-0000-000000000006';

update public.exercises
set choices = '[{"id":"a","label":"vous finisez"},{"id":"b","label":"vous finissez"},{"id":"c","label":"vous finissiez"}]'::jsonb,
    expected_answer = '{"mode":"single_choice","value":"b"}'::jsonb,
    detailed_explanation = '"Finir" est un verbe du 2e groupe. Au présent, il se conjugue avec l''infixe -iss- aux formes du pluriel : nous finissons, vous finissez, ils finissent. La bonne forme est donc "vous finissez".'
where id = '16000000-0000-0000-0000-000000000002';

update public.exercises
set instruction = 'Corrigez : "Hier soir, je regardais la télévision et soudain, le courant coupait."',
    expected_answer = '{"mode":"text","acceptableAnswers":["Hier soir, je regardais la télévision et soudain, le courant a été coupé."]}'::jsonb,
    detailed_explanation = '"Regardais" (imparfait) exprime l''action de fond. "Soudain" annonce un événement ponctuel : on attend donc un passé composé. On écrira ici "le courant a été coupé".'
where id = '17000000-0000-0000-0000-000000000009';

update public.exercises
set detailed_explanation = 'Vrai. "Bien que" est une conjonction de concession qui introduit toujours une subordonnée au subjonctif : "bien qu''il soit fatigué" (et non "bien qu''il est fatigué"). Autres conjonctions de concession suivies du subjonctif : quoique, encore que, sans que.'
where id = '19000000-0000-0000-0000-000000000002';

update public.exercises
set detailed_explanation = 'Vrai. "Bien que" est une conjonction de concession qui régit toujours le subjonctif. "Bien qu''il soit tard" est grammaticalement correct. Autres conjonctions de concession suivies du subjonctif : quoique, encore que, sans que.'
where id = '19000000-0000-0000-0000-000000000010';

update public.exercises
set expected_answer = '{"mode":"text","acceptableAnswers":["passé simple, action immédiatement consécutive","passé simple, action soudaine et consécutive","passé simple, valeur d''antériorité immédiate","passé simple, valeur d''action consécutive et soudaine"]}'::jsonb
where id = '20000000-0000-0000-0000-000000000010';

update public.exercises
set expected_answer = '{"mode":"single_choice","value":"c"}'::jsonb,
    detailed_explanation = 'Il y a 5 propositions, car on relève 5 verbes conjugués : "sais", "travailles", "doute", "réussisses" et "révises". On compte donc la principale, une subordonnée complétive, une proposition coordonnée, une seconde complétive et une subordonnée conditionnelle.'
where id = '10000000-0000-0000-0000-000000000009';

-- Migration: fix non-standard expected_answer modes in exercises
-- Normalise 'flexible', 'multiple', 'keywords' → 'text'
-- These modes all have the same structure {mode, acceptableAnswers}
-- but are not recognised by the normalizeExpectedAnswer function.

UPDATE public.exercises
SET expected_answer = jsonb_set(expected_answer, '{mode}', '"text"')
WHERE expected_answer->>'mode' IN ('flexible', 'multiple', 'keywords');

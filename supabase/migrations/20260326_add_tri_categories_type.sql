-- Migration: add tri_categories to the exercise_type enum
-- Must run in a separate transaction from any INSERT using this new value.

ALTER TYPE public.exercise_type ADD VALUE IF NOT EXISTS 'tri_categories';

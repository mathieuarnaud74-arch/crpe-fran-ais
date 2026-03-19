DO $$
DECLARE
  v_page_id uuid;
BEGIN
  SELECT id INTO v_page_id FROM public.pages WHERE slug = 'homepage' LIMIT 1;

  UPDATE public.page_sections
  SET props_json = jsonb_set(
    props_json,
    '{metaItems}',
    '["Conforme au programme 2026"]'::jsonb
  )
  WHERE page_id = v_page_id AND type = 'hero';
END $$;

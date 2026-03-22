-- Migration: Homepage audit rewrite
-- Rewrite hero, hide trust_bar, tighten benefits/features/faq/final_cta
-- Applies to both 'published' and 'draft' stages

-- 1. HERO — titre court, sous-titre court, CTA varié
UPDATE page_sections
SET props_json = jsonb_build_object(
  'badgeText', 'CRPE Français 2026',
  'title', 'Préparez le français du CRPE avec méthode.',
  'description', 'Diagnostic gratuit pour cibler vos lacunes, séries d''exercices par priorité et corrections détaillées avec la règle applicable.',
  'primaryCtaLabel', 'Tester mon niveau gratuitement',
  'primaryCtaHrefGuest', '/diagnostic',
  'primaryCtaHrefAuth', '/diagnostic',
  'secondaryCtaLabel', 'Voir les formules',
  'secondaryCtaHref', '/offre',
  'metaItems', '["Programme officiel 2026","Gratuit, sans carte bancaire","Corrections avec la règle applicable"]'::jsonb
)
WHERE type = 'hero'
  AND page_id IN (SELECT id FROM pages WHERE slug = 'homepage');

-- 2. TRUST BAR — masquée (absorbée dans le hero)
UPDATE page_sections
SET visible = false
WHERE type = 'trust_bar'
  AND page_id IN (SELECT id FROM pages WHERE slug = 'homepage');

-- 3. BENEFITS — 3 étapes ultra-courtes
UPDATE page_sections
SET props_json = jsonb_build_object(
  'eyebrow', 'Comment ça marche',
  'title', 'Trois étapes, pas de superflu.',
  'description', 'Un parcours en trois temps pour progresser vite sur les points qui comptent le jour du concours.',
  'cards', '[
    {
      "eyebrow": "01 — Diagnostic",
      "title": "Identifiez vos lacunes.",
      "description": "40 questions couvrent grammaire, orthographe, conjugaison, lexique et analyse. Vous repartez avec un profil clair."
    },
    {
      "eyebrow": "02 — Séries ciblées",
      "title": "Révisez par priorité.",
      "description": "Les séries remontent selon votre profil : vous travaillez d''abord ce qui rapporte le plus de points."
    },
    {
      "eyebrow": "03 — Corrections",
      "title": "Comprenez chaque erreur.",
      "description": "Chaque correction cite la règle applicable. Vous ne voyez pas juste un verdict, vous retenez le raisonnement."
    }
  ]'::jsonb,
  'steps', '[]'::jsonb
)
WHERE type = 'benefits'
  AND page_id IN (SELECT id FROM pages WHERE slug = 'homepage');

-- 4. FEATURES — recentré sur la démo interactive
UPDATE page_sections
SET props_json = jsonb_build_object(
  'eyebrow', 'Testez par vous-même',
  'title', 'Voyez à quoi ressemble un exercice corrigé.',
  'description', 'Cliquez sur une réponse ci-dessous pour découvrir le niveau de détail des corrections.',
  'bulletItems', '["Chaque exercice est interactif : QCM, analyse, vrai/faux, réponse libre."]'::jsonb
)
WHERE type = 'features'
  AND page_id IN (SELECT id FROM pages WHERE slug = 'homepage');

-- 5. FAQ — raccourcie, question marketing supprimée
UPDATE page_sections
SET props_json = jsonb_build_object(
  'eyebrow', 'FAQ',
  'title', 'Questions fréquentes.',
  'description', 'Les réponses courtes aux hésitations les plus courantes.',
  'noteTitle', 'Une autre question ?',
  'noteDescription', 'Écrivez à contact@crpe-prep.fr',
  'noteLinkHref', 'mailto:contact@crpe-prep.fr',
  'items', '[
    {
      "question": "C''est vraiment gratuit pour commencer ?",
      "answer": "Oui. Diagnostic complet gratuit, sans carte bancaire. Ensuite, 20 exercices corrigés par jour en accès libre."
    },
    {
      "question": "Que reçoit-on après le diagnostic ?",
      "answer": "Un profil détaillé par thème (grammaire, orthographe, conjugaison…) avec vos points forts, vos lacunes et un ordre de révision recommandé."
    },
    {
      "question": "Peut-on arrêter l''abonnement facilement ?",
      "answer": "Oui, résiliation en un clic depuis votre espace. Pas de condition, pas de préavis."
    },
    {
      "question": "Le contenu est-il à jour pour le CRPE 2026 ?",
      "answer": "Oui. Les exercices et corrections sont alignés sur le programme officiel de français du CRPE 2026. Le contenu est enrichi régulièrement."
    }
  ]'::jsonb
)
WHERE type = 'faq'
  AND page_id IN (SELECT id FROM pages WHERE slug = 'homepage');

-- 6. FINAL CTA — angle frais, plus de reformulation du hero
UPDATE page_sections
SET props_json = jsonb_build_object(
  'eyebrow', 'Prêt à commencer ?',
  'title', 'Créez votre compte en 30 secondes et lancez le diagnostic.',
  'description', 'Le CRPE approche. Plus tôt vous identifiez vos lacunes, plus vos révisions seront efficaces.',
  'bulletItems', '["Compte gratuit, sans carte bancaire.","Diagnostic complet offert dès l''inscription.","20 exercices corrigés par jour en accès libre."]'::jsonb,
  'pricingTiers', '[{"label":"Gratuit","price":"0 €","highlight":false},{"label":"Premium","price":"6,99 €/mois","highlight":true}]'::jsonb,
  'primaryCtaLabel', 'Créer mon compte gratuit',
  'primaryCtaHref', '/inscription',
  'secondaryCtaLabelGuest', 'Voir les formules premium',
  'secondaryCtaHrefGuest', '/offre',
  'secondaryCtaLabelAuth', 'Accéder au tableau de bord',
  'secondaryCtaHrefAuth', '/tableau-de-bord'
)
WHERE type = 'final_cta'
  AND page_id IN (SELECT id FROM pages WHERE slug = 'homepage');

import { createClient } from "@supabase/supabase-js";

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY,
);

// Get the homepage page id
const { data: page } = await supabase
  .from("pages")
  .select("id")
  .eq("slug", "homepage")
  .single();

if (!page) {
  console.error("No homepage found in pages table");
  process.exit(1);
}

const pageId = page.id;
console.log(`Homepage page id: ${pageId}`);

// 1. HERO
const heroProps = {
  badgeText: "CRPE Français 2026",
  title: "Préparez le français du CRPE avec méthode.",
  description:
    "Diagnostic gratuit pour cibler vos lacunes, séries d'exercices par priorité et corrections détaillées avec la règle applicable.",
  primaryCtaLabel: "Tester mon niveau gratuitement",
  primaryCtaHrefGuest: "/diagnostic",
  primaryCtaHrefAuth: "/diagnostic",
  secondaryCtaLabel: "Voir les formules",
  secondaryCtaHref: "/offre",
  metaItems: [
    "Programme officiel 2026",
    "Gratuit, sans carte bancaire",
    "Corrections avec la règle applicable",
  ],
};

const { error: heroErr } = await supabase
  .from("page_sections")
  .update({ props_json: heroProps })
  .eq("page_id", pageId)
  .eq("type", "hero");
console.log("Hero:", heroErr ? `ERROR ${heroErr.message}` : "OK");

// 2. TRUST BAR — hide
const { error: trustErr } = await supabase
  .from("page_sections")
  .update({ visible: false })
  .eq("page_id", pageId)
  .eq("type", "trust_bar");
console.log("Trust bar:", trustErr ? `ERROR ${trustErr.message}` : "OK");

// 3. BENEFITS
const benefitsProps = {
  eyebrow: "Comment ça marche",
  title: "Trois étapes, pas de superflu.",
  description:
    "Un parcours en trois temps pour progresser vite sur les points qui comptent le jour du concours.",
  cards: [
    {
      eyebrow: "01 — Diagnostic",
      title: "Identifiez vos lacunes.",
      description:
        "40 questions couvrent grammaire, orthographe, conjugaison, lexique et analyse. Vous repartez avec un profil clair.",
    },
    {
      eyebrow: "02 — Séries ciblées",
      title: "Révisez par priorité.",
      description:
        "Les séries remontent selon votre profil : vous travaillez d'abord ce qui rapporte le plus de points.",
    },
    {
      eyebrow: "03 — Corrections",
      title: "Comprenez chaque erreur.",
      description:
        "Chaque correction cite la règle applicable. Vous ne voyez pas juste un verdict, vous retenez le raisonnement.",
    },
  ],
  steps: [],
};

const { error: benefitsErr } = await supabase
  .from("page_sections")
  .update({ props_json: benefitsProps })
  .eq("page_id", pageId)
  .eq("type", "benefits");
console.log("Benefits:", benefitsErr ? `ERROR ${benefitsErr.message}` : "OK");

// 4. FEATURES
const featuresProps = {
  eyebrow: "Testez par vous-même",
  title: "Voyez à quoi ressemble un exercice corrigé.",
  description:
    "Cliquez sur une réponse ci-dessous pour découvrir le niveau de détail des corrections.",
  bulletItems: [
    "Chaque exercice est interactif : QCM, analyse, vrai/faux, réponse libre.",
  ],
};

const { error: featuresErr } = await supabase
  .from("page_sections")
  .update({ props_json: featuresProps })
  .eq("page_id", pageId)
  .eq("type", "features");
console.log("Features:", featuresErr ? `ERROR ${featuresErr.message}` : "OK");

// 5. FAQ
const faqProps = {
  eyebrow: "FAQ",
  title: "Questions fréquentes.",
  description: "Les réponses courtes aux hésitations les plus courantes.",
  noteTitle: "Une autre question ?",
  noteDescription: "Écrivez à contact@crpe-prep.fr",
  noteLinkHref: "mailto:contact@crpe-prep.fr",
  items: [
    {
      question: "C'est vraiment gratuit pour commencer ?",
      answer:
        "Oui. Diagnostic complet gratuit, sans carte bancaire. Ensuite, 20 exercices corrigés par jour en accès libre.",
    },
    {
      question: "Que reçoit-on après le diagnostic ?",
      answer:
        "Un profil détaillé par thème (grammaire, orthographe, conjugaison…) avec vos points forts, vos lacunes et un ordre de révision recommandé.",
    },
    {
      question: "Peut-on arrêter l'abonnement facilement ?",
      answer:
        "Oui, résiliation en un clic depuis votre espace. Pas de condition, pas de préavis.",
    },
    {
      question: "Le contenu est-il à jour pour le CRPE 2026 ?",
      answer:
        "Oui. Les exercices et corrections sont alignés sur le programme officiel de français du CRPE 2026. Le contenu est enrichi régulièrement.",
    },
  ],
};

const { error: faqErr } = await supabase
  .from("page_sections")
  .update({ props_json: faqProps })
  .eq("page_id", pageId)
  .eq("type", "faq");
console.log("FAQ:", faqErr ? `ERROR ${faqErr.message}` : "OK");

// 6. FINAL CTA
const finalCtaProps = {
  eyebrow: "Prêt à commencer ?",
  title: "Créez votre compte en 30 secondes et lancez le diagnostic.",
  description:
    "Le CRPE approche. Plus tôt vous identifiez vos lacunes, plus vos révisions seront efficaces.",
  bulletItems: [
    "Compte gratuit, sans carte bancaire.",
    "Diagnostic complet offert dès l'inscription.",
    "20 exercices corrigés par jour en accès libre.",
  ],
  pricingTiers: [
    { label: "Gratuit", price: "0 €", highlight: false },
    { label: "Premium", price: "6,99 €/mois", highlight: true },
  ],
  primaryCtaLabel: "Créer mon compte gratuit",
  primaryCtaHref: "/inscription",
  secondaryCtaLabelGuest: "Voir les formules premium",
  secondaryCtaHrefGuest: "/offre",
  secondaryCtaLabelAuth: "Accéder au tableau de bord",
  secondaryCtaHrefAuth: "/tableau-de-bord",
};

const { error: finalCtaErr } = await supabase
  .from("page_sections")
  .update({ props_json: finalCtaProps })
  .eq("page_id", pageId)
  .eq("type", "final_cta");
console.log("Final CTA:", finalCtaErr ? `ERROR ${finalCtaErr.message}` : "OK");

console.log("\nDone! Reload the homepage to see changes.");

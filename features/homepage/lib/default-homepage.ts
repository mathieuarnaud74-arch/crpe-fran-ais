import {
  FRENCH_DIAGNOSTIC_SESSION_SIZE,
} from "@/content/french-diagnostic-questions";
import { SUBDOMAIN_LABELS } from "@/lib/constants";

import {
  type HomepagePageRecord,
  type HomepageSectionPropsMap,
  type HomepageSectionRecord,
  type HomepageSectionStage,
  type HomepageSectionType,
} from "./blocks";

const subdomainCount = Object.keys(SUBDOMAIN_LABELS).length;

type SectionSeed<T extends HomepageSectionType> = {
  type: T;
  visible: boolean;
  props: HomepageSectionPropsMap[T];
};

const defaultSectionSeeds: Array<SectionSeed<HomepageSectionType>> = [
  {
    type: "hero",
    visible: true,
    props: {
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
    },
  },
  {
    type: "trust_bar",
    visible: true,
    props: {
      eyebrow: "Concret dès l'arrivée",
      items: [
        {
          label: "500+ exercices",
          detail: `${subdomainCount} sous-domaines du programme officiel CRPE 2026`,
        },
        {
          label: `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions · ~15 min`,
          detail: `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions niveau CRPE, avec profil par sous-domaine`,
        },
        {
          label: "Gratuit pour commencer",
          detail: "Compte gratuit, diagnostic sauvegardé et 20 questions corrigées par jour",
        },
      ],
    },
  },
  {
    type: "benefits",
    visible: true,
    props: {
      eyebrow: "Comment ça marche",
      title: "Trois étapes, pas de superflu.",
      description:
        "Un parcours en trois temps pour progresser vite sur les points qui comptent le jour du concours.",
      cards: [
        {
          eyebrow: "01 — Diagnostic",
          title: "Identifiez vos lacunes.",
          description:
            `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions couvrent grammaire, orthographe, conjugaison, lexique et analyse. Vous repartez avec un profil clair.`,
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
    },
  },
  {
    type: "features",
    visible: true,
    props: {
      eyebrow: "Testez par vous-même",
      title: "Voyez à quoi ressemble un exercice corrigé.",
      description:
        "Cliquez sur une réponse ci-dessous pour découvrir le niveau de détail des corrections.",
      bulletItems: [
        "Chaque exercice est interactif : QCM, analyse, vrai/faux, réponse libre.",
      ],
    },
  },
  {
    type: "domains",
    visible: true,
    props: {
      eyebrow: "Domaines couverts",
      title: "Trois domaines, sept sous-domaines, un parcours de révision cohérent.",
      description:
        "Le contenu est organisé pour vous aider à réviser avec méthode, sans perdre la vue d'ensemble du programme.",
    },
  },
  {
    type: "faq",
    visible: true,
    props: {
      eyebrow: "FAQ",
      title: "Questions fréquentes.",
      description: "Les réponses courtes aux hésitations les plus courantes.",
      noteTitle: "Une autre question ?",
      noteDescription: "Écrivez à contact@crpe-francais.fr",
      noteLinkHref: "mailto:contact@crpe-francais.fr",
      items: [
        {
          question: "C'est vraiment gratuit pour commencer ?",
          answer:
            "Oui. Diagnostic complet gratuit, sans carte bancaire. Ensuite, 20 exercices corrigés par jour en accès libre.",
        },
        {
          question: "Que reçoit-on après le diagnostic ?",
          answer:
            `Un profil détaillé par thème (grammaire, orthographe, conjugaison…) avec vos points forts, vos lacunes et un ordre de révision recommandé.`,
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
    },
  },
  {
    type: "final_cta",
    visible: true,
    props: {
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
    },
  },
];

const defaultSectionSeedByType = Object.fromEntries(
  defaultSectionSeeds.map((section) => [section.type, section]),
) as Record<HomepageSectionType, SectionSeed<HomepageSectionType>>;

export function createDefaultHomepagePage(): Omit<HomepagePageRecord, "id"> {
  return {
    slug: "homepage",
    title: "Homepage marketing",
    status: "published",
    lastPublishedAt: new Date().toISOString(),
  };
}

export function createDefaultHomepageSections(
  stage: HomepageSectionStage,
  pageId = "seed-homepage",
): Array<Omit<HomepageSectionRecord, "id">> {
  return defaultSectionSeeds.map((section, index) => ({
    pageId,
    stage,
    type: section.type,
    orderIndex: index,
    visible: section.visible,
    props: section.props,
  }));
}

export function getDefaultHomepageSectionProps<T extends HomepageSectionType>(type: T) {
  return defaultSectionSeedByType[type].props as HomepageSectionPropsMap[T];
}

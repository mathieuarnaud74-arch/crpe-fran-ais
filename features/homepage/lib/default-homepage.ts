import {
  FRENCH_DIAGNOSTIC_BANK_SIZE,
  FRENCH_DIAGNOSTIC_SESSION_SIZE,
} from "@/content/french-diagnostic-questions";
import { FRENCH_DOMAIN_ORDER, SUBJECT_LABEL, SUBDOMAIN_LABELS } from "@/lib/constants";

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
      badgeText: "CRPE Français Oral & Écrit 2026-2027",
      title: "Révisez les épreuves de français en vous exerçant.",
      description:
        "Retrouvez de nombreux contenus gratuits pour revoir les notions essentielles du programme 2026, faire le point sur vos besoins et avancer pas à pas avec des exercices ciblés et des corrections claires.",
      primaryCtaLabel: "Découvrir gratuitement",
      primaryCtaHrefGuest: "/inscription",
      primaryCtaHrefAuth: "/diagnostic",
      secondaryCtaLabel: "Voir l'offre complète",
      secondaryCtaHref: "/offre",
      metaItems: ["Aucune carte requise", "Conforme au programme 2026"],
    },
  },
  {
    type: "trust_bar",
    visible: false,
    props: {
      eyebrow: "Repères immédiats",
      items: [
        { label: "~8 minutes", detail: "pour poser un vrai point de départ" },
        {
          label: `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions ciblées`,
          detail: `${subdomainCount} sous-domaines couverts sans surcharge`,
        },
        {
          label: "Gratuit",
          detail: "vous testez la méthode avant d'aller plus loin",
        },
      ],
    },
  },
  {
    type: "benefits",
    visible: true,
    props: {
      eyebrow: "Comment ça marche",
      title: "Trois étapes. Un point de départ clair. Des révisions qui servent.",
      description:
        "Le CRPE teste des règles précises. Les premières questions identifient les lacunes. Les séries les travaillent dans l'ordre.",
      cards: [
        {
          eyebrow: "01 — Point de départ",
          title: "Vous savez ce qui vous manque — en 8 minutes.",
          description:
            `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions sur les ${subdomainCount} sous-domaines identifient vos fragilités. Pas une note globale — un profil avec les priorités en premier.`,
        },
        {
          eyebrow: "02 — Séries ciblées",
          title: "Vous révisez ce qui compte, pas ce que vous savez déjà.",
          description:
            "Les séries prioritaires remontent selon votre profil. Vous progressez sur vos points faibles, pas sur vos acquis.",
        },
        {
          eyebrow: "03 — Corrections",
          title: "Chaque erreur devient une règle que vous ne referez plus.",
          description:
            "Les corrections expliquent le raisonnement derrière la bonne réponse. Vous comprenez avant de passer à la suite.",
        },
      ],
      steps: [
        {
          title: "Point de départ en 8 minutes",
          description:
            "Un bref passage qui identifie les fragilités avant de débloquer les révisions.",
        },
        {
          title: "Séries dans le bon ordre",
          description:
            "Le profil obtenu met en avant les thèmes les plus rentables à reprendre en premier.",
        },
        {
          title: "Corrections qui enseignent",
          description:
            "Chaque réponse laisse une règle, une justification et un repère pour la suite.",
        },
      ],
    },
  },
  {
    type: "features",
    visible: true,
    props: {
      eyebrow: "La qualité des corrections",
      title: "Pas un simple « faux ». Une explication qui vaut une révision.",
      description:
        "Les exercices expliquent la règle et l'appliquent. Vous quittez chaque question avec quelque chose en plus.",
      bulletItems: [
        "QCM et analyses de langue avec feedback immédiat.",
        "Règle nommée et justification réutilisable pour les séances suivantes.",
        "Formulation pensée pour le concours, pas pour l'effet gadget.",
      ],
    },
  },
  {
    type: "domains",
    visible: false,
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
      title: "Ce que les candidats demandent avant de commencer.",
      description: "Réponses directes. Pas d'engagement caché.",
      noteTitle: "Une question non listée ?",
      noteDescription: "Écrivez à contact@crpe-prep.fr",
      items: [
        {
          question: "C'est vraiment gratuit ?",
          answer:
            "Oui — sans paiement ni carte bancaire. Accessible à tous avant tout engagement.",
        },
        {
          question: "Que reçoit-on à la fin de la session de départ ?",
          answer:
            "Un profil détaillé sous-domaine par sous-domaine, avec les priorités à travailler en premier.",
        },
        {
          question: "Les corrections sont-elles vraiment utiles ?",
          answer:
            "C'est le point central du site. Chaque exercice est corrigé avec la règle qui s'applique — pas seulement la bonne réponse.",
        },
        {
          question: "Quels domaines sont couverts ?",
          answer:
            `Grammaire, orthographe, conjugaison, lexique, analyse de la langue, compréhension de texte et didactique — les ${subdomainCount} sous-domaines testés au CRPE.`,
        },
        {
          question: "Peut-on arrêter l'abonnement facilement ?",
          answer:
            "Oui. Résiliation sans condition via Stripe. Les accès journalier et hebdomadaire ne se renouvellent pas automatiquement.",
        },
      ],
    },
  },
  {
    type: "final_cta",
    visible: true,
    props: {
      eyebrow: "Prêt à commencer ?",
      title: "Gratuit pour commencer. 8 minutes. Un profil de révision en sortie.",
      description:
        "Pas de carte bancaire. Pas d'engagement. Juste un point de départ clair.",
      bulletItems: [
        "Accès gratuit pour commencer.",
        "Séries ciblées selon vos résultats.",
        "Résiliable à tout moment.",
      ],
      pricingTiers: [],
      primaryCtaLabel: "Commencer — c'est gratuit",
      primaryCtaHref: "/inscription",
      secondaryCtaLabelGuest: "Voir l'offre complète",
      secondaryCtaHrefGuest: "/offre",
      secondaryCtaLabelAuth: "Voir l'offre complète",
      secondaryCtaHrefAuth: "/offre",
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

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
      badgeText: "Diagnostic gratuit · Conforme programme 2026",
      title:
        "Commencez par un diagnostic. Révisez ensuite ce qui vous fera vraiment gagner des points.",
      description:
        `En ${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions, identifiez vos lacunes sur les ${subdomainCount} sous-domaines du ${SUBJECT_LABEL} CRPE. Vous obtenez un ordre de révision clair, des séries ciblées et des corrections qui expliquent la règle.`,
      primaryCtaLabel: "Faire mon diagnostic gratuit",
      primaryCtaHrefGuest: "/inscription",
      primaryCtaHrefAuth: "/diagnostic",
      secondaryCtaLabel: "Voir l'offre complète",
      secondaryCtaHref: "/offre",
      metaItems: ["Gratuit", "Aucune carte requise", "Paiement sécurisé Stripe"],
      previewBadgeText: "Profil de révision",
      previewTitle: "Votre prochain plan d'action",
      previewDescription:
        "Le diagnostic classe les notions à reprendre, puis vous guide vers les bonnes séries.",
      previewStats: [
        { value: `${subdomainCount}`, label: "sous-domaines suivis" },
        { value: "2", label: "priorités immédiates" },
        { value: "1", label: "prochaine séance conseillée" },
      ],
      previewResults: [
        { label: "Accord du participe passé", level: "Prioritaire" },
        { label: "Analyse grammaticale", level: "Prioritaire" },
        { label: "Homophones grammaticaux", level: "À renforcer" },
        { label: "Fonctions syntaxiques", level: "À renforcer" },
        { label: "Lexique et sens", level: "À renforcer" },
        { label: "Classes de mots", level: "Maîtrisé" },
        { label: "Conjugaison", level: "Maîtrisé" },
      ],
      previewRecommendationEyebrow: "Prochaine étape recommandée",
      previewRecommendationText:
        "Commencer par les accords du participe passé, puis sécuriser l'analyse grammaticale avant d'élargir vers les sous-domaines déjà solides.",
    },
  },
  {
    type: "trust_bar",
    visible: true,
    props: {
      eyebrow: "Repères immédiats",
      items: [
        { label: "~8 minutes", detail: "pour poser un vrai point de départ" },
        {
          label: `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions ciblées`,
          detail: `${subdomainCount} sous-domaines couverts sans surcharge`,
        },
        {
          label: "Gratuit et sans carte",
          detail: "vous testez la méthode avant d'aller plus loin",
        },
      ],
    },
  },
  {
    type: "benefits",
    visible: true,
    props: {
      eyebrow: "Ce que le diagnostic débloque immédiatement",
      title: "Une révision plus nette, plus persuasive, moins dispersée.",
      description:
        "La homepage actuelle avait déjà les bons arguments. L'amélioration consiste à mieux les hiérarchiser, à clarifier la promesse et à rendre les appels à l'action plus lisibles dès les premières secondes.",
      cards: [
        {
          eyebrow: "Priorités nettes",
          title: "Vous savez quoi travailler d'abord, sans deviner.",
          description:
            "Le diagnostic fait ressortir les notions fragiles en premier, pour éviter les révisions dispersées ou répétitives.",
        },
        {
          eyebrow: `${FRENCH_DIAGNOSTIC_BANK_SIZE} questions dans la banque`,
          title: "Une couverture assez large pour refléter le programme.",
          description:
            "Les séries couvrent les domaines clés du français CRPE avec une logique de progression plutôt qu'un simple empilement d'exercices.",
        },
        {
          eyebrow: `${subdomainCount} sous-domaines analysés`,
          title: "Chaque erreur devient une règle réutilisable.",
          description:
            "Les corrections expliquent le pourquoi, pour transformer un résultat ponctuel en apprentissage durable.",
        },
      ],
      steps: [
        {
          title: "Diagnostic rapide",
          description:
            "Une entrée courte et lisible pour cerner votre niveau sans vous épuiser dès la première séance.",
        },
        {
          title: "Révisions dans le bon ordre",
          description:
            "Le profil obtenu met en avant les thèmes les plus rentables à reprendre immédiatement.",
        },
        {
          title: "Corrections qui enseignent",
          description:
            "Chaque réponse vous laisse avec une règle, une justification et un repère pour la suite.",
        },
      ],
    },
  },
  {
    type: "features",
    visible: true,
    props: {
      eyebrow: "Exemples interactifs",
      title: "Chaque erreur devient une règle apprise, pas juste une croix rouge.",
      description:
        "Les corrections ont un vrai rôle pédagogique. Elles servent à expliquer la bonne réponse, à nommer la règle et à orienter la suite des révisions.",
      bulletItems: [
        "QCM et analyses de langue avec feedback immédiat.",
        "Formulation lisible, pensée pour le concours plutôt que pour l'effet gadget.",
        "Règles et justifications réutilisables dans les séances suivantes.",
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
      title: "Les questions qui comptent avant de commencer.",
      description:
        "L'objectif de cette section est de lever les hésitations les plus fréquentes sans allonger inutilement la page.",
      noteTitle: "Toujours le même point d'entrée",
      noteDescription:
        "Le CTA principal reste le diagnostic gratuit pour garder un parcours simple et rassurant sur desktop comme sur mobile.",
      items: [
        {
          question: "Le diagnostic est-il vraiment gratuit ?",
          answer:
            "Oui. Le diagnostic de départ est accessible sans paiement et sans carte bancaire. Il sert à découvrir votre niveau et la logique de la plateforme avant tout engagement.",
        },
        {
          question: "Que reçoit-on à la fin du diagnostic ?",
          answer:
            "Un profil de révision par sous-domaine, avec les priorités à reprendre en premier. L'objectif n'est pas seulement de noter, mais d'ordonner la suite de votre préparation.",
        },
        {
          question: "Les corrections sont-elles détaillées ?",
          answer:
            "Oui. Les exercices sont pensés pour expliquer la règle ou le raisonnement derrière la bonne réponse, afin de rendre chaque erreur exploitable pour les révisions suivantes.",
        },
        {
          question: "La plateforme couvre-t-elle uniquement l'orthographe ?",
          answer:
            `Non. Le parcours couvre ${FRENCH_DOMAIN_ORDER.length} grands domaines et ${subdomainCount} sous-domaines du ${SUBJECT_LABEL} : grammaire, orthographe, analyse de la langue, compréhension et didactique.`,
        },
        {
          question: "L'offre complète est-elle sans engagement ?",
          answer:
            "Oui. Les accès proposés sont simples, avec un paiement sécurisé via Stripe et une résiliation possible à tout moment.",
        },
      ],
    },
  },
  {
    type: "final_cta",
    visible: true,
    props: {
      eyebrow: "Après le diagnostic gratuit",
      title: "Accès complet pour continuer avec une vraie cadence de révision.",
      description:
        "Une fois votre point de départ clarifié, vous pouvez poursuivre avec des séries ciblées, des corrections détaillées et un abonnement simple à activer ou à arrêter selon votre rythme.",
      bulletItems: [
        "Diagnostic gratuit pour commencer.",
        "Révisions ciblées par domaine.",
        "Corrections détaillées et lisibles.",
        "Résiliable à tout moment.",
      ],
      pricingTiers: [
        { label: "Journalier", price: "0,99 €", highlight: false },
        { label: "Semainier", price: "2,99 €", highlight: false },
        { label: "Mensuel", price: "6,99 €/mois", highlight: true },
      ],
      primaryCtaLabel: "Voir l'offre complète",
      primaryCtaHref: "/offre",
      secondaryCtaLabelGuest: "Créer un compte gratuit",
      secondaryCtaHrefGuest: "/inscription",
      secondaryCtaLabelAuth: "Revenir au diagnostic",
      secondaryCtaHrefAuth: "/diagnostic",
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

import { cn } from "@/lib/utils";
import { EarnedBadge } from "@/types/domain";

type BadgeDefinition = {
  id: string;
  label: string;
  description: string;
  icon: string;
  category: EarnedBadge["category"];
};

const ALL_BADGES: BadgeDefinition[] = [
  // ────────────────────────────────────────
  // MILESTONE — Jalons quantitatifs (30)
  // ────────────────────────────────────────
  { id: "first-answer", label: "Premier pas", description: "Répondre à sa première question", icon: "\uD83C\uDF31", category: "milestone" },
  { id: "10-answers", label: "Curieux", description: "10 réponses données", icon: "\uD83D\uDD0D", category: "milestone" },
  { id: "25-answers", label: "Lancé", description: "25 réponses données", icon: "\uD83C\uDFAF", category: "milestone" },
  { id: "50-answers", label: "Persévérant", description: "50 réponses données", icon: "\uD83D\uDCAA", category: "milestone" },
  { id: "100-answers", label: "Centurion", description: "100 réponses données", icon: "\uD83C\uDFC5", category: "milestone" },
  { id: "200-answers", label: "Infatigable", description: "200 réponses données", icon: "\uD83D\uDCA8", category: "milestone" },
  { id: "300-answers", label: "Endurant", description: "300 réponses données", icon: "\uD83C\uDFC3", category: "milestone" },
  { id: "500-answers", label: "Marathonien", description: "500 réponses données", icon: "\uD83C\uDFC6", category: "milestone" },
  { id: "750-answers", label: "Titan", description: "750 réponses données", icon: "\uD83D\uDDFF", category: "milestone" },
  { id: "1000-answers", label: "Millénaire", description: "1 000 réponses données", icon: "\uD83D\uDC51", category: "milestone" },
  { id: "1500-answers", label: "Légende", description: "1 500 réponses données", icon: "\uD83C\uDF1E", category: "milestone" },
  { id: "2000-answers", label: "Immortel", description: "2 000 réponses données", icon: "\u267E\uFE0F", category: "milestone" },
  { id: "first-series", label: "Première série", description: "Terminer sa première série", icon: "\u2705", category: "milestone" },
  { id: "3-series", label: "Triplé", description: "3 séries terminées", icon: "\uD83C\uDFB2", category: "milestone" },
  { id: "5-series", label: "Cinq étoiles", description: "5 séries terminées", icon: "\u2B50", category: "milestone" },
  { id: "10-series", label: "Régulier", description: "10 séries terminées", icon: "\uD83D\uDCDA", category: "milestone" },
  { id: "15-series", label: "Méthodique", description: "15 séries terminées", icon: "\uD83D\uDCCB", category: "milestone" },
  { id: "20-series", label: "Studieux", description: "20 séries terminées", icon: "\uD83C\uDF93", category: "milestone" },
  { id: "25-series", label: "Appliqué", description: "25 séries terminées", icon: "\uD83D\uDCDD", category: "milestone" },
  { id: "30-series", label: "Sérieux", description: "30 séries terminées", icon: "\uD83C\uDFAD", category: "milestone" },
  { id: "40-series", label: "Acharné", description: "40 séries terminées", icon: "\uD83E\uDD81", category: "milestone" },
  { id: "50-series", label: "Vétéran", description: "50 séries terminées", icon: "\uD83C\uDF96\uFE0F", category: "milestone" },
  { id: "10-correct", label: "Dizaine dorée", description: "10 bonnes réponses cumulées", icon: "\uD83D\uDD1F", category: "milestone" },
  { id: "50-correct", label: "Demi-centurion", description: "50 bonnes réponses cumulées", icon: "\uD83D\uDEE1\uFE0F", category: "milestone" },
  { id: "100-correct", label: "Centenaire juste", description: "100 bonnes réponses cumulées", icon: "\uD83D\uDCAF", category: "milestone" },
  { id: "250-correct", label: "Éclaireur", description: "250 bonnes réponses cumulées", icon: "\uD83D\uDD26", category: "milestone" },
  { id: "500-correct", label: "Sage", description: "500 bonnes réponses cumulées", icon: "\uD83E\uDD89", category: "milestone" },
  { id: "1000-correct", label: "Grand Sage", description: "1 000 bonnes réponses cumulées", icon: "\uD83E\uDDD9", category: "milestone" },
  { id: "first-review", label: "Retour aux sources", description: "Refaire une série déjà terminée", icon: "\u267B\uFE0F", category: "milestone" },
  { id: "5-reviews", label: "Réviseur", description: "5 séries refaites", icon: "\uD83D\uDD04", category: "milestone" },

  // ────────────────────────────────────────
  // MASTERY — Qualité et excellence (35)
  // ────────────────────────────────────────
  { id: "first-mastery", label: "Première maîtrise", description: "Maîtriser sa première série", icon: "\u2B50", category: "mastery" },
  { id: "3-mastery", label: "Solide", description: "3 séries maîtrisées", icon: "\uD83E\uDEA8", category: "mastery" },
  { id: "5-mastery", label: "Érudit", description: "5 séries maîtrisées", icon: "\uD83C\uDF1F", category: "mastery" },
  { id: "10-mastery", label: "Expert", description: "10 séries maîtrisées", icon: "\uD83D\uDC8E", category: "mastery" },
  { id: "15-mastery", label: "Savant", description: "15 séries maîtrisées", icon: "\uD83D\uDCD6", category: "mastery" },
  { id: "20-mastery", label: "Éminent", description: "20 séries maîtrisées", icon: "\uD83C\uDFA9", category: "mastery" },
  { id: "25-mastery", label: "Virtuose", description: "25 séries maîtrisées", icon: "\uD83C\uDFBB", category: "mastery" },
  { id: "30-mastery", label: "Maître absolu", description: "30 séries maîtrisées", icon: "\uD83E\uDD4B", category: "mastery" },
  { id: "perfect-score", label: "Sans faute", description: "100 % sur une série complète", icon: "\uD83C\uDFAF", category: "mastery" },
  { id: "3-perfect", label: "Triple parfait", description: "3 séries à 100 %", icon: "\uD83E\uDD47", category: "mastery" },
  { id: "5-perfect", label: "Main d'or", description: "5 séries à 100 %", icon: "\u270B", category: "mastery" },
  { id: "10-perfect", label: "Perfection incarnée", description: "10 séries à 100 %", icon: "\uD83D\uDC8E", category: "mastery" },
  { id: "series-90", label: "Frôler la perfection", description: "≥ 90 % sur une série", icon: "\uD83D\uDCC8", category: "mastery" },
  { id: "5-series-90", label: "Excellence constante", description: "5 séries ≥ 90 %", icon: "\uD83D\uDCCA", category: "mastery" },
  { id: "10-series-90", label: "Modèle de rigueur", description: "10 séries ≥ 90 %", icon: "\uD83C\uDFDB\uFE0F", category: "mastery" },
  { id: "accuracy-70", label: "Encourageant", description: "Score global ≥ 70 %", icon: "\uD83D\uDCC8", category: "mastery" },
  { id: "accuracy-75", label: "Prometteur", description: "Score global ≥ 75 %", icon: "\uD83C\uDF3F", category: "mastery" },
  { id: "high-accuracy", label: "Précision", description: "Score global ≥ 80 %", icon: "\uD83E\uDE90", category: "mastery" },
  { id: "accuracy-85", label: "Excellent", description: "Score global ≥ 85 %", icon: "\uD83D\uDD2C", category: "mastery" },
  { id: "accuracy-90", label: "Brillant", description: "Score global ≥ 90 %", icon: "\uD83D\uDCA1", category: "mastery" },
  { id: "accuracy-95", label: "Quasi parfait", description: "Score global ≥ 95 %", icon: "\uD83E\uDDE0", category: "mastery" },
  { id: "domain-mastery", label: "Domaine conquis", description: "Maîtriser un domaine entier", icon: "\uD83D\uDDFA\uFE0F", category: "mastery" },
  { id: "2-domains", label: "Bidisciplinaire", description: "2 domaines maîtrisés", icon: "\uD83D\uDCD0", category: "mastery" },
  { id: "3-domains", label: "Polyvalent", description: "3 domaines maîtrisés", icon: "\uD83D\uDD31", category: "mastery" },
  { id: "4-domains", label: "Presque complet", description: "4 domaines maîtrisés", icon: "\uD83E\uDDE9", category: "mastery" },
  { id: "5-domains", label: "Programme complet", description: "5 domaines maîtrisés", icon: "\uD83C\uDF08", category: "mastery" },
  { id: "grammaire-expert", label: "Grammairien", description: "Domaine Grammaire maîtrisé", icon: "\uD83D\uDCCF", category: "mastery" },
  { id: "orthographe-expert", label: "Orthographiste", description: "Domaine Orthographe maîtrisé", icon: "\u270D\uFE0F", category: "mastery" },
  { id: "lexique-expert", label: "Lexicographe", description: "Domaine Lexique maîtrisé", icon: "\uD83D\uDCDA", category: "mastery" },
  { id: "analyse-expert", label: "Analyste", description: "Domaine Analyse de la langue maîtrisé", icon: "\uD83D\uDD0E", category: "mastery" },
  { id: "didactique-expert", label: "Pédagogue", description: "Domaine Didactique maîtrisé", icon: "\uD83E\uDDD1\u200D\uD83C\uDFEB", category: "mastery" },
  { id: "half-mastery", label: "Mi-chemin", description: "50 % des séries maîtrisées", icon: "\uD83D\uDEE4\uFE0F", category: "mastery" },
  { id: "full-mastery", label: "Apothéose", description: "Toutes les séries maîtrisées", icon: "\uD83C\uDF1F", category: "mastery" },
  { id: "facile-mastery", label: "Base solide", description: "Maîtriser une série Facile", icon: "\uD83E\uDDF1", category: "mastery" },
  { id: "intermediaire-mastery", label: "Niveau supérieur", description: "Maîtriser une série Intermédiaire", icon: "\uD83D\uDCF6", category: "mastery" },

  // ────────────────────────────────────────
  // STREAK — Régularité et records (27)
  // ────────────────────────────────────────
  { id: "3-active-days", label: "Habitude", description: "Actif sur 3 jours", icon: "\uD83D\uDD25", category: "streak" },
  { id: "5-active-days", label: "Cinq jours", description: "Actif sur 5 jours", icon: "\uD83D\uDCC5", category: "streak" },
  { id: "7-active-days", label: "Semaine complète", description: "Actif sur 7 jours", icon: "\uD83D\uDCC6", category: "streak" },
  { id: "10-active-days", label: "Décade", description: "Actif sur 10 jours", icon: "\uD83D\uDDD3\uFE0F", category: "streak" },
  { id: "14-active-days", label: "Deux semaines", description: "Actif sur 14 jours", icon: "\u26A1", category: "streak" },
  { id: "21-active-days", label: "Trois semaines", description: "Actif sur 21 jours", icon: "\uD83C\uDF19", category: "streak" },
  { id: "45-active-days", label: "Six semaines", description: "Actif sur 45 jours", icon: "\uD83C\uDF1C", category: "streak" },
  { id: "60-active-days", label: "Deux mois", description: "Actif sur 60 jours", icon: "\uD83C\uDF17", category: "streak" },
  { id: "90-active-days", label: "Trimestre", description: "Actif sur 90 jours", icon: "\uD83C\uDF0D", category: "streak" },
  { id: "120-active-days", label: "Quatre mois", description: "Actif sur 120 jours", icon: "\uD83C\uDF0E", category: "streak" },
  { id: "180-active-days", label: "Six mois", description: "Actif sur 180 jours", icon: "\u2600\uFE0F", category: "streak" },
  { id: "365-active-days", label: "Un an !", description: "Actif sur 365 jours", icon: "\uD83C\uDF82", category: "streak" },
  { id: "10-in-a-day", label: "Sprint", description: "10 réponses en un jour", icon: "\uD83C\uDFC3\u200D\u2642\uFE0F", category: "streak" },
  { id: "20-in-a-day", label: "Course de fond", description: "20 réponses en un jour", icon: "\uD83C\uDFC3\u200D\u2640\uFE0F", category: "streak" },
  { id: "30-in-a-day", label: "Ultra", description: "30 réponses en un jour", icon: "\uD83C\uDFC5", category: "streak" },
  { id: "50-in-a-day", label: "Insatiable", description: "50 réponses en un jour", icon: "\uD83E\uDD29", category: "streak" },
  { id: "100-in-a-day", label: "Machine", description: "100 réponses en un jour", icon: "\uD83E\uDD16", category: "streak" },
  { id: "perfect-day", label: "Jour parfait", description: "100 % sur une journée (5+ réponses)", icon: "\u2600\uFE0F", category: "streak" },
  { id: "3-perfect-days", label: "Trinité parfaite", description: "3 jours à 100 %", icon: "\uD83C\uDF1F", category: "streak" },
  { id: "5-perfect-days", label: "Semaine d'or", description: "5 jours parfaits", icon: "\uD83D\uDC51", category: "streak" },
  { id: "10-perfect-days", label: "Mois d'or", description: "10 jours parfaits", icon: "\uD83C\uDFC6", category: "streak" },
  { id: "daily-10-correct", label: "Dix du jour", description: "10 bonnes réponses en un jour", icon: "\uD83C\uDFAF", category: "streak" },
  { id: "daily-20-correct", label: "Vingt du jour", description: "20 bonnes réponses en un jour", icon: "\uD83C\uDFAA", category: "streak" },
  { id: "daily-30-correct", label: "Trente du jour", description: "30 bonnes réponses en un jour", icon: "\uD83C\uDFA1", category: "streak" },
  { id: "high-volume-week", label: "Semaine intense", description: "40+ réponses en 7 jours", icon: "\uD83D\uDCC8", category: "streak" },
  { id: "perfect-week", label: "Semaine parfaite", description: "≥ 90 % sur 7 jours (20+ rép.)", icon: "\uD83C\uDF1F", category: "streak" },
  { id: "longest-streak", label: "Régulier absolu", description: "Actif 7 jours consécutifs", icon: "\uD83D\uDD17", category: "streak" },

  // ────────────────────────────────────────
  // ENGAGEMENT — Comportement et exploration (24)
  // ────────────────────────────────────────
  { id: "30-active-days", label: "Un mois d'effort", description: "Actif sur 30 jours", icon: "\uD83D\uDE80", category: "engagement" },
  { id: "2-domains-started", label: "Touche-à-deux", description: "Travailler dans 2 domaines", icon: "\uD83D\uDC40", category: "engagement" },
  { id: "3-domains-started", label: "Explorateur", description: "Travailler dans 3 domaines", icon: "\uD83E\uDDED", category: "engagement" },
  { id: "4-domains-started", label: "Aventurier", description: "Travailler dans 4 domaines", icon: "\uD83D\uDDFA\uFE0F", category: "engagement" },
  { id: "all-domains-started", label: "Touche-à-tout", description: "Travailler dans les 5 domaines", icon: "\uD83C\uDFA8", category: "engagement" },
  { id: "first-error", label: "Errare humanum est", description: "Première mauvaise réponse", icon: "\u274C", category: "engagement" },
  { id: "10-errors", label: "Résilient", description: "10 erreurs surmontées", icon: "\uD83C\uDF3F", category: "engagement" },
  { id: "50-errors", label: "Persévérant face à l'erreur", description: "50 erreurs — et toujours là", icon: "\uD83C\uDF31", category: "engagement" },
  { id: "100-errors", label: "Indestructible", description: "100 erreurs ne vous arrêtent pas", icon: "\uD83D\uDEE1\uFE0F", category: "engagement" },
  { id: "200-errors", label: "Philosophe de l'échec", description: "200 erreurs transformées en leçons", icon: "\uD83E\uDDD8", category: "engagement" },
  { id: "weekend-warrior", label: "Guerrier du weekend", description: "Réviser un samedi ou dimanche", icon: "\uD83C\uDFD6\uFE0F", category: "engagement" },
  { id: "comeback", label: "Retour en force", description: "Revenir après 3+ jours d'absence", icon: "\uD83D\uDCAB", category: "engagement" },
  { id: "long-session", label: "Longue session", description: "15+ réponses en une journée", icon: "\uD83D\uDCD6", category: "engagement" },
  { id: "5-long-sessions", label: "Lecteur assidu", description: "5 jours avec 15+ réponses", icon: "\uD83D\uDCD5", category: "engagement" },
  { id: "10-series-started", label: "Dix entamées", description: "Commencer 10 séries différentes", icon: "\uD83D\uDE80", category: "engagement" },
  { id: "20-series-started", label: "Vingt entamées", description: "Commencer 20 séries différentes", icon: "\uD83D\uDEF8", category: "engagement" },
  { id: "all-levels-tried", label: "Tous niveaux", description: "Essayer Facile, Intermédiaire et Avancé", icon: "\uD83D\uDCCA", category: "engagement" },
  { id: "half-explored", label: "Demi-catalogue", description: "Commencer 50 % des séries", icon: "\uD83C\uDF10", category: "engagement" },
  { id: "75-explored", label: "Trois quarts", description: "Commencer 75 % des séries", icon: "\uD83D\uDDFA\uFE0F", category: "engagement" },
  { id: "full-explored", label: "Catalogue complet", description: "Commencer toutes les séries", icon: "\uD83C\uDFC1", category: "engagement" },
  { id: "10-reviews", label: "Révisionniste", description: "Refaire 10 séries terminées", icon: "\uD83D\uDD01", category: "engagement" },
  { id: "avance-mastery", label: "Haute voltige", description: "Maîtriser une série Avancé", icon: "\uD83E\uDD85", category: "engagement" },
  { id: "diverse-types", label: "Caméléon", description: "Répondre à 4 types d'exercices", icon: "\uD83C\uDFAD", category: "engagement" },
  { id: "improvement", label: "Progression visible", description: "Améliorer son score sur une série refaite", icon: "\uD83D\uDCC8", category: "engagement" },

  // ────────────────────────────────────────
  // SECRET — Badges cachés & fun (8)
  // ────────────────────────────────────────
  { id: "night-owl", label: "Oiseau de nuit", description: "Réviser après 23 h — le CRPE n'attend pas !", icon: "\uD83E\uDD89", category: "engagement" },
  { id: "early-bird", label: "Lève-tôt", description: "Réviser avant 7 h du matin", icon: "\uD83D\uDC26", category: "engagement" },
  { id: "speed-demon", label: "Éclair", description: "Terminer un sprint en moins de 60 secondes", icon: "\u26A1", category: "streak" },
  { id: "perfectionist", label: "Perfectionniste", description: "3 séries parfaites d'affilée", icon: "\uD83D\uDC8E", category: "mastery" },
  { id: "comeback-king", label: "Phénix", description: "Revenir après 7+ jours et maîtriser une série", icon: "\uD83D\uDD25", category: "engagement" },
  { id: "polyglot-types", label: "Polyglotte", description: "Répondre aux 8 types d'exercices", icon: "\uD83C\uDF0D", category: "engagement" },
  { id: "streak-15", label: "Quinze d'affilée", description: "15 bonnes réponses consécutives en une série", icon: "\uD83C\uDF1F", category: "streak" },
  { id: "sunday-scholar", label: "Dimanche studieux", description: "Terminer 3 séries un dimanche", icon: "\u2615", category: "engagement" },
];

const CATEGORY_LABELS: Record<EarnedBadge["category"], string> = {
  milestone: "Jalons",
  mastery: "Maîtrise",
  streak: "Régularité",
  engagement: "Engagement",
};

const CATEGORY_ORDER: EarnedBadge["category"][] = [
  "milestone",
  "mastery",
  "streak",
  "engagement",
];

type AchievementBadgesProps = {
  earnedBadges: EarnedBadge[];
  compact?: boolean;
};

export function AchievementBadges({
  earnedBadges,
  compact = false,
}: AchievementBadgesProps) {
  const earnedIds = new Set(earnedBadges.map((b) => b.id));

  if (compact) {
    if (earnedBadges.length === 0) return null;

    return (
      <div className="flex flex-wrap gap-2">
        {earnedBadges.map((badge, i) => (
          <div
            key={badge.id}
            className="group relative flex animate-badge-pop items-center gap-1.5 rounded-full border border-border bg-paper px-3 py-1.5 text-sm shadow-subtle transition-shadow hover:shadow-panel"
            style={{ animationDelay: `${i * 50}ms` }}
            title={`${badge.label} — ${badge.description}`}
          >
            <span className="text-base" aria-hidden="true">
              {badge.icon}
            </span>
            <span className="font-medium text-ink">{badge.label}</span>
          </div>
        ))}
      </div>
    );
  }

  return (
    <div className="space-y-4">
      {CATEGORY_ORDER.map((category) => {
        const allInCategory = ALL_BADGES.filter((b) => b.category === category);
        if (allInCategory.length === 0) return null;
        const earnedCount = allInCategory.filter((b) => earnedIds.has(b.id)).length;

        return (
          <div key={category}>
            <p className="mb-2 text-xs font-semibold uppercase tracking-[0.16em] text-muted">
              {CATEGORY_LABELS[category]}{" "}
              <span className="text-ink">{earnedCount}</span>/{allInCategory.length}
            </p>
            <div className="flex flex-wrap gap-1.5">
              {allInCategory.map((badge) => {
                const isEarned = earnedIds.has(badge.id);

                return (
                  <div
                    key={badge.id}
                    className="group relative"
                  >
                    <span
                      className={cn(
                        "flex h-9 w-9 cursor-default items-center justify-center rounded-full text-lg transition-transform duration-150",
                        isEarned
                          ? "bg-successBg/60 hover:scale-125"
                          : "bg-secondary/60 opacity-30 grayscale hover:opacity-50 hover:scale-110",
                      )}
                      aria-label={`${badge.label} — ${badge.description}${isEarned ? "" : " (verrouill\u00e9)"}`}
                    >
                      {badge.icon}
                    </span>
                    <span
                      role="tooltip"
                      className={cn(
                        "pointer-events-none absolute bottom-full left-1/2 z-30 mb-2 hidden -translate-x-1/2 whitespace-nowrap rounded-lg border px-2.5 py-1.5 text-xs shadow-elevated group-hover:block",
                        isEarned
                          ? "border-border bg-ink text-paper"
                          : "border-border bg-ink/80 text-paper/80",
                      )}
                    >
                      <span className="font-semibold">{badge.label}</span>
                      <br />
                      <span className={isEarned ? "text-paper/60" : "text-paper/50"}>
                        {badge.description}
                      </span>
                      {!isEarned && (
                        <>
                          <br />
                          <span className="text-paper/40">🔒 Verrouillé</span>
                        </>
                      )}
                      <span className={cn(
                        "absolute left-1/2 top-full -translate-x-1/2 border-4 border-transparent",
                        isEarned ? "border-t-ink" : "border-t-ink/80",
                      )} />
                    </span>
                  </div>
                );
              })}
            </div>
          </div>
        );
      })}

      <div className="flex items-center gap-2">
        <div className="h-1.5 flex-1 overflow-hidden rounded-full bg-secondary">
          <div
            className="h-full rounded-full bg-gradient-to-r from-[#476257] to-[#6B8F80] transition-all duration-500"
            style={{ width: `${(earnedBadges.length / ALL_BADGES.length) * 100}%` }}
          />
        </div>
        <p className="shrink-0 text-xs font-medium text-muted">
          {earnedBadges.length}/{ALL_BADGES.length}
        </p>
      </div>
    </div>
  );
}

// ─── Mocca Contextual Messages ────────────────────────────
// Mocca est la mascotte de CRPE Prep — un petit personnage chaleureux
// qui accompagne l'utilisateur avec humour et bienveillance.

type MessageContext = {
  level: number;
  streak: number;
  correctRate: number | null;
  questionsToday: number;
  timeOfDay: "morning" | "afternoon" | "evening" | "night";
};

function getTimeOfDay(): MessageContext["timeOfDay"] {
  const hour = new Date().getHours();
  if (hour < 12) return "morning";
  if (hour < 17) return "afternoon";
  if (hour < 21) return "evening";
  return "night";
}

const GREETINGS: Record<MessageContext["timeOfDay"], string[]> = {
  morning: [
    "Bonjour ! Prêt(e) pour une session matinale ?",
    "Le matin, c'est le meilleur moment pour ancrer les connaissances !",
    "Un café et des exercices, la combo parfaite !",
    "Les neurones sont frais — profitons-en !",
    "Bien dormi ? C'est parti pour réviser !",
  ],
  afternoon: [
    "Bel après-midi pour progresser !",
    "On continue sur cette lancée !",
    "Tu avances bien, courage !",
    "L'après-midi, idéal pour consolider les acquis.",
    "Petite pause terminée ? Allez, on s'y remet !",
  ],
  evening: [
    "Session du soir, bonsoir !",
    "Une dernière série avant de se reposer ?",
    "Les révisions du soir ancrent les connaissances dans la mémoire à long terme !",
    "La soirée est calme, parfait pour se concentrer.",
    "Encore un petit effort ce soir, tu le mérites !",
  ],
  night: [
    "Tu révises tard ! N'oublie pas de dormir.",
    "Session nocturne… tu es déterminé(e) !",
    "Le CRPE n'attend pas, mais ton sommeil non plus !",
    "Allez, une dernière question et au lit !",
    "Nocturne studieux — Mocca t'admire (mais va dormir).",
  ],
};

const STREAK_MESSAGES: Record<string, string[]> = {
  low: [
    "Chaque bonne réponse compte !",
    "Tu construis ta série, continue !",
    "C'est bien, garde le rythme !",
    "Un pas après l'autre vers le CRPE.",
  ],
  medium: [
    "Belle série en cours ! 🔥",
    "Tu es en forme, ne lâche rien !",
    "5 d'affilée — tu chauffes !",
    "La mécanique est rodée, impressionnant !",
    "Mocca est fier de toi !",
  ],
  high: [
    "Incroyable série ! Tu es inarrêtable ! ⭐",
    "10+ d'affilée — niveau futur professeur !",
    "Performance exceptionnelle, chapeau !",
    "Tu pourrais enseigner la grammaire toi-même !",
    "Les inspecteurs seraient bluffés !",
  ],
};

const LEVEL_UP_MESSAGES: string[] = [
  "Niveau supérieur ! Tu progresses à grands pas !",
  "Bravo, tu montes de niveau ! Ta persévérance paie !",
  "Level up ! Le CRPE est à portée de main !",
  "Nouveau niveau débloqué ! Continue comme ça !",
  "Mocca fait la danse de la victoire ! (Tu ne la vois pas, mais crois-moi, c'est épique.)",
  "Un nouveau palier franchi — tu te rapproches du Graal !",
];

const ENCOURAGEMENT_AFTER_MISTAKE: string[] = [
  "Pas de souci, on apprend de ses erreurs !",
  "L'important c'est de comprendre pourquoi. Regarde l'explication !",
  "Même les meilleurs se trompent. L'essentiel c'est de progresser !",
  "Cette erreur, c'est une leçon pour le jour J !",
  "Trompe-toi maintenant, brille le jour du concours !",
  "Les erreurs sont les brouillons de la réussite.",
  "C'est en forgeant qu'on devient forgeron — et en conjuguant qu'on devient professeur !",
  "Pas grave ! Lis l'explication et tu ne referas plus cette erreur.",
];

const COMPLETION_MESSAGES: string[] = [
  "Série terminée ! Beau travail !",
  "Tu as fini cette série, bravo !",
  "Encore une série de bouclée ! Tu te rapproches du but !",
  "Mission accomplie ! Que dirais-tu d'enchaîner ?",
  "Série complète — Mocca applaudit (avec ses petites pattes).",
];

const FUN_FACTS: string[] = [
  "Le saviez-vous ? Le mot « grammaire » vient du grec « gramma » (lettre).",
  "Fun fact : le français a environ 130 000 mots, mais on en utilise 3 000 au quotidien.",
  "Le point d'exclamation s'appelait autrefois le « point d'admiration ».",
  "Le mot le plus long du dictionnaire français fait 27 lettres : « intergouvernementalisations ».",
  "L'accent circonflexe remplace souvent un « s » latin : « forêt » → « forest », « hôpital » → « hospital ».",
  "Le subjonctif imparfait est le temps le moins utilisé du français contemporain !",
  "Le CRPE a été créé en 1990 pour unifier le recrutement des professeurs des écoles.",
  "Victor Hugo adorait les jeux de mots grammaticaux dans ses romans.",
  "En français, 90 % de la communication écrite repose sur 600 mots seulement.",
  "Le pluriel de « œil » est « yeux » — l'une des rares irrégularités totales du français !",
];

const PERFECT_SCORE_MESSAGES: string[] = [
  "PARFAIT ! Zéro faute ! Tu es au sommet ! 🏆",
  "Score PARFAIT — tu maîtrises ce sujet à la perfection !",
  "100 % — même Mocca n'y croyait pas (enfin si, un peu) !",
  "Sans faute ! Le jury du CRPE serait impressionné !",
  "Perfection absolue ! Tu peux être fier(e) de toi !",
];

const MASTERY_MESSAGES: string[] = [
  "Série maîtrisée ! Cette notion est acquise !",
  "Bravo, tu as dépassé le seuil de maîtrise !",
  "C'est officiel : tu maîtrises ce sujet ! 🌟",
  "Maîtrise confirmée — passe au niveau supérieur !",
];

function pickRandom(arr: string[]): string {
  return arr[Math.floor(Math.random() * arr.length)];
}

export function getMoccaDashboardMessage(ctx: Partial<MessageContext>): string {
  const tod = ctx.timeOfDay ?? getTimeOfDay();

  // 10% chance of fun fact
  if (Math.random() < 0.1) {
    return pickRandom(FUN_FACTS);
  }

  if (ctx.level && ctx.level >= 10) {
    return "Niveau " + ctx.level + " — tu fais partie de l'élite ! Continue à briller.";
  }
  if (ctx.streak && ctx.streak >= 5) {
    return pickRandom(STREAK_MESSAGES.high);
  }
  if (ctx.questionsToday && ctx.questionsToday > 20) {
    return "Quelle journée productive ! Tu as déjà dépassé ton objectif !";
  }
  return pickRandom(GREETINGS[tod]);
}

export function getMoccaExerciseMessage(ctx: {
  isCorrect: boolean;
  streak: number;
  questionsLeft: number;
}): string {
  if (!ctx.isCorrect) {
    return pickRandom(ENCOURAGEMENT_AFTER_MISTAKE);
  }
  if (ctx.streak >= 10) return pickRandom(STREAK_MESSAGES.high);
  if (ctx.streak >= 5) return pickRandom(STREAK_MESSAGES.medium);
  if (ctx.questionsLeft === 0) return pickRandom(COMPLETION_MESSAGES);
  return pickRandom(STREAK_MESSAGES.low);
}

export function getMoccaLevelUpMessage(): string {
  return pickRandom(LEVEL_UP_MESSAGES);
}

export function getMoccaPerfectScoreMessage(): string {
  return pickRandom(PERFECT_SCORE_MESSAGES);
}

export function getMoccaMasteryMessage(): string {
  return pickRandom(MASTERY_MESSAGES);
}

export function getMoccaFunFact(): string {
  return pickRandom(FUN_FACTS);
}

export function getMoccaCelebrationMessage(milestone: string): string {
  const templates = [
    `🎉 ${milestone} — Tu es formidable !`,
    `🏅 ${milestone} — Mocca est impressionné !`,
    `✨ ${milestone} — Quel accomplissement !`,
    `🌟 ${milestone} — La persévérance paie !`,
  ];
  return pickRandom(templates);
}

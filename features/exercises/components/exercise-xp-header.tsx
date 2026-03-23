import { XpBar } from "@/components/ui/xp-bar";
import { XpPopup } from "@/components/ui/xp-popup";
import { getXpForNextLevel } from "@/lib/xp";

type ExerciseXpHeaderProps = {
  runningXp: number;
  lastXpEarned: number;
  xpTrigger: number;
  sessionXp: number;
};

export function ExerciseXpHeader({ runningXp, lastXpEarned, xpTrigger, sessionXp }: ExerciseXpHeaderProps) {
  const xpInfo = getXpForNextLevel(runningXp);

  return (
    <div className="relative">
      <XpBar
        currentLevel={xpInfo.currentLevel}
        xpInCurrentLevel={xpInfo.xpInCurrentLevel}
        xpNeededForNext={xpInfo.xpNeededForNext}
        progress={xpInfo.progress}
        totalXp={runningXp}
        size="sm"
      />
      <XpPopup xp={lastXpEarned} trigger={xpTrigger} />
      {sessionXp > 0 && (
        <p className="mt-1 text-right text-xs text-muted">
          +{sessionXp} XP cette série
        </p>
      )}
    </div>
  );
}

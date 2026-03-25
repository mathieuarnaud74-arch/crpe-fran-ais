import { SrsReviewCard } from "@/features/srs/components/srs-review-card";
import { getDueExercises, getDueCount } from "@/features/srs/server/queries";

export async function DashboardSrsSection({ userId }: { userId: string }) {
  const [srsDueExercises, srsDueCount] = await Promise.all([
    getDueExercises(userId, 20).catch(() => []),
    getDueCount(userId).catch(() => 0),
  ]);

  return (
    <SrsReviewCard
      dueCount={srsDueCount}
      exercises={srsDueExercises.map((e) => ({
        exerciseId: e.exercise_id,
        subdomain: e.exercise?.subdomain ?? null,
        topicLabel: e.exercise?.topic_label ?? null,
        state: e.state,
        lapses: e.lapses,
      }))}
    />
  );
}

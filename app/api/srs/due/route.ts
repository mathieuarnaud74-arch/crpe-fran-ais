import { NextResponse } from "next/server";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import { getDueExercises, getDueCount } from "@/features/srs/server/queries";

export async function GET() {
  const supabase = await createSupabaseServerClient();
  const user = (await supabase.auth.getUser()).data.user;

  if (!user) {
    return NextResponse.json({ error: "Non authentifié." }, { status: 401 });
  }

  const [dueExercises, dueCount] = await Promise.all([
    getDueExercises(user.id, 20),
    getDueCount(user.id),
  ]);

  return NextResponse.json({
    dueCount,
    exercises: dueExercises.map((item) => ({
      exerciseId: item.exercise_id,
      due: item.due,
      state: item.state,
      reps: item.reps,
      lapses: item.lapses,
      instruction: item.exercise?.instruction ?? null,
      subdomain: item.exercise?.subdomain ?? null,
      exerciseType: item.exercise?.exercise_type ?? null,
      level: item.exercise?.level ?? null,
      topicLabel: item.exercise?.topic_label ?? null,
    })),
  });
}

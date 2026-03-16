import { getOptionalUser } from "@/features/auth/server/guards";
import { HomepageRenderer } from "@/features/homepage/components/renderer";
import { getHomepageForStage } from "@/features/homepage/server/queries";

export default async function HomePage() {
  const [user, homepage] = await Promise.all([
    getOptionalUser(),
    getHomepageForStage("published"),
  ]);

  return (
    <div className="min-h-screen bg-paper text-ink">
      <HomepageRenderer sections={homepage.sections} authenticated={Boolean(user)} />
    </div>
  );
}

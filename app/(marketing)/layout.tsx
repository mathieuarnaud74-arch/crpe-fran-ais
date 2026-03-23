import { ReactNode } from "react";

import { SiteHeader } from "@/components/site-header";
import { SiteFooter } from "@/components/site-footer";
import { getOptionalUser } from "@/features/auth/server/guards";

export default async function MarketingLayout({ children }: { children: ReactNode }) {
  const user = await getOptionalUser();

  return (
    <>
      <SiteHeader authenticated={Boolean(user)} />
      <main id="main-content">{children}</main>
      <SiteFooter />
    </>
  );
}

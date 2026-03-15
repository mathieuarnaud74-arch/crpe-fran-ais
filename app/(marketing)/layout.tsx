import { ReactNode } from "react";

import { SiteFooter } from "@/components/site-footer";

export default function MarketingLayout({ children }: { children: ReactNode }) {
  return (
    <>
      {children}
      <SiteFooter />
    </>
  );
}

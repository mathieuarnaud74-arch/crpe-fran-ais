"use client";

import * as Accordion from "@radix-ui/react-accordion";
import { ChevronDown } from "lucide-react";
import { useState } from "react";

import { Badge } from "@/components/ui/badge";
import { ProgressStatusBadge } from "@/features/dashboard/components/learning-status-badge";
import { cn, formatDate } from "@/lib/utils";
import { DashboardDomainProgress } from "@/types/domain";

type DomainAccordionProps = {
  domains: DashboardDomainProgress[];
};

export function DomainAccordion({ domains }: DomainAccordionProps) {
  return (
    <Accordion.Root type="single" collapsible className="space-y-2">
      {domains.map((domain) => (
        <DomainItem key={domain.domain} domain={domain} />
      ))}
    </Accordion.Root>
  );
}

function DomainItem({ domain }: { domain: DashboardDomainProgress }) {
  return (
    <Accordion.Item
      value={domain.domain}
      className="overflow-hidden rounded-[1.25rem] border border-border bg-card shadow-subtle"
    >
      <Accordion.Trigger className="group flex w-full items-center gap-3 px-4 py-3 text-left transition-colors hover:bg-paper/50 sm:px-5 sm:py-4 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2 rounded-t-[1.25rem]">
        <div className="flex min-w-0 flex-1 flex-wrap items-center gap-x-4 gap-y-2">
          <span className="font-serif text-lg font-semibold text-ink">{domain.label}</span>
          {domain.attempts === 0 ? (
            <Badge>Non commencé</Badge>
          ) : (
            <ProgressStatusBadge status={domain.status} />
          )}
          <div className="hidden items-center gap-4 text-sm text-muted sm:flex">
            {domain.correctRate !== null && (
              <span className="font-semibold text-ink">{domain.correctRate} %</span>
            )}
            <span>{domain.completedSeries}/{domain.totalSeries} séries</span>
            {domain.lastAnsweredAt && (
              <span className="hidden lg:inline">{formatDate(domain.lastAnsweredAt)}</span>
            )}
          </div>
        </div>
        <ChevronDown className="h-4 w-4 shrink-0 text-muted transition-transform duration-200 group-data-[state=open]:rotate-180" />
      </Accordion.Trigger>

      <Accordion.Content className="overflow-hidden data-[state=closed]:animate-accordion-up data-[state=open]:animate-accordion-down">
        <div className="border-t border-border px-4 py-3 sm:px-5 sm:py-4">
          {/* Stats inline on mobile */}
          <div className="mb-4 flex flex-wrap gap-4 text-sm sm:hidden">
            {domain.correctRate !== null && (
              <span><span className="text-muted">Réussite</span> <span className="font-semibold text-ink">{domain.correctRate} %</span></span>
            )}
            <span><span className="text-muted">Séries</span> <span className="font-semibold text-ink">{domain.completedSeries}/{domain.totalSeries}</span></span>
            {domain.lastAnsweredAt && (
              <span><span className="text-muted">Dernière</span> <span className="font-semibold text-ink">{formatDate(domain.lastAnsweredAt)}</span></span>
            )}
          </div>

          {/* Subdomain table */}
          {domain.subdomains.length > 0 && (
            <div className="space-y-1">
              {/* Header row - hidden on mobile */}
              <div className="hidden grid-cols-[1fr_auto_auto_auto] gap-4 px-3 py-1 text-xs font-semibold uppercase tracking-[0.12em] text-muted sm:grid">
                <span>Sous-domaine</span>
                <span className="w-20 text-center">Statut</span>
                <span className="w-16 text-right">Réussite</span>
                <span className="w-20 text-right">Séries</span>
              </div>
              {domain.subdomains.map((sub) => (
                <div
                  key={sub.key}
                  className="flex flex-col gap-1 rounded-xl bg-paper px-3 py-2.5 sm:grid sm:grid-cols-[1fr_auto_auto_auto] sm:items-center sm:gap-4"
                >
                  <span className="text-sm font-medium text-ink">{sub.label}</span>
                  <div className="w-20 sm:text-center">
                    {sub.attempts === 0 ? (
                      <Badge>—</Badge>
                    ) : (
                      <ProgressStatusBadge status={sub.status} />
                    )}
                  </div>
                  <span className="w-16 text-sm text-right text-ink">
                    {sub.correctRate !== null ? `${sub.correctRate} %` : "—"}
                  </span>
                  <span className="w-20 text-sm text-right text-muted">
                    {sub.completedSeries}/{sub.totalSeries}
                  </span>
                </div>
              ))}
            </div>
          )}
        </div>
      </Accordion.Content>
    </Accordion.Item>
  );
}

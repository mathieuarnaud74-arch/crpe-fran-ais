import { Badge } from "@/components/ui/badge";
import { LEARNING_STATUS_LABELS, PROGRESS_STATUS_LABELS } from "@/lib/constants";
import { LearningStatus, ProgressStatus } from "@/types/domain";

export function LearningStatusBadge({ status }: { status: LearningStatus }) {
  if (status === "maitrisee") return <Badge tone="success">{LEARNING_STATUS_LABELS[status]}</Badge>;
  if (status === "a_revoir") return <Badge tone="warning">{LEARNING_STATUS_LABELS[status]}</Badge>;
  return <Badge size="sm">{LEARNING_STATUS_LABELS[status]}</Badge>;
}

export function ProgressStatusBadge({ status }: { status: ProgressStatus }) {
  if (status === "acquis") return <Badge tone="success">{PROGRESS_STATUS_LABELS[status]}</Badge>;
  if (status === "prioritaire") return <Badge tone="warning">{PROGRESS_STATUS_LABELS[status]}</Badge>;
  if (status === "fragile") return <Badge tone="warning" size="sm">{PROGRESS_STATUS_LABELS[status]}</Badge>;
  return <Badge size="sm">{PROGRESS_STATUS_LABELS[status]}</Badge>;
}

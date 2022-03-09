---
layout: page
title: OKRs
weight: 2
---

## What is an OKR

"OKR" is an acronym for "Objectives and Key Results". OKRs are a means for teams to focus on important company-wide priorities, while giving each team a framework to contextualized and measure their contributions towards the stated objectives.

There are three components to OKRs:

1. Objectives - These are the priorities we need to achieve.
2. Key Results - These are metrics or "[KPIs](/data-team/kpis)" which measure our success, relative to the states objectives.
3. Initiatives - These are specific actions we can take which improve our Key Result metrics and, in turn, our help us reach our Objectives.

## OKR IDs

We identify OKRs with the id number "YYYY.XN" where:

- `YYYY` is the year that the OKR was established.
- `X` is the initial of the team: `'M'` for Company-wide objectives, `E` for Engineering, `M` for Marketing, `P` for product, etc.
- `N` is the sequence number of the OKR with respect to the above factors.

In day-to-day speech, we can shorten these to just "M1" for the main/primary company-wide OKR, "E1" for the primary Engineering OKR, etc.

## Tracking Initiatives in Gitlab

Initiatives impacting the OKR are tracked in Gitlab and should be tagged with a label matching the key of the specific OKR, for instance `OKR 2022.M1`.

## Transparency Guidelines for OKRs and KPIs

- All OKR and KPI definitions are **public** in the `handbook` repo.
- Metric calculation logics are **public** in the `squared` repo.
- KPI metric values, metric goals, and metric history are kept **internal** by default, according to the guidelines on the [KPIs](/data-team/kpis) page.

## List of Current OKRs and Links to Metrics

### OKR '2022.M1': "Validate Meltano vision and PMF as the DataOps OS"

Scope: Company-Wide (`'M'`)

**Objective: We will validate our broad Meltano vision as the DataOps OS.**

#### Key Results

These metrics are used to measure Key Results for this objective.

- `2022.M1.01` - Monthly Average Product Types per Project (APP).
  - Note: this metric can also go down due to increased new users. It is also not on its own an actionable metric, since alone it does not provide any hints to root cause. To address this, the additional KPIs below will be used to (1) contextualize relative success and (2) to hone into any specific problem areas.
  - This metric is highly impacted by the size of the time window used when measuring.: e.g. rolling 14 days, 28 days, monthly rollup. _Our standard calculation is based a calendar month aggregate - as are the component metrics below._
- `2022.M1.01.1` - % monthly projects with "Orchestrator" plugins usage.
- `2022.M1.01.2` - % monthly projects with "Transformer" plugins usage.
- `2022.M1.01.2` - % monthly projects with "Utility" plugins usage.

#### `2022.M1` Initiatives

The initiatives impacting this OKR are tracked with the label: `OKR 2022.M1`:

- [Tracked Initiatives (Issues) in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR+2022.M1)

#### `2022.M1` Timeframe for measurement

- 50% of initiatives tracked with this OKR are expected to resolve by end of April 2022.
- 100% or initiatives tracked with this OKR are expected to resolve by end of May 2022.
- Because of the time lag between initiatives (mostly feature releases) and their impact on metrics, we expect the metrics to have moderate gains at end of May and beginning of June, with more significant gains shown throughout July and August.

## OKR '2022.M2': Shorten the Meltano Learning Curve and Address New User Attrition

Scope: Company-Wide (`'M'`)

**Objective: We will address feedback regarding learning curve and begin actively monitoring attrition and retention metrics.**

Key Results:

More detail COMING SOON

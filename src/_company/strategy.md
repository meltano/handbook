---
layout: page
title: Strategic Goals
weight: 2
---

## What is this page

This page highlights Meltano's most important strategic goals, as a means for teams to focus on important company-wide priorities, and giving each team a framework to contextualized and measure their contributions towards our stated objectives.

For each goal, are three components:

1. Objectives - The priorities we need to achieve.
2. KPIs - The quantifiable measurements of success towards the stated goals.
3. Initiatives - Specific actions we can take which improve our KPI metrics and, in turn, our help us reach our Goals.

## Tracking KPIs and KPI-specific Goals

KPI goals may be _optionally_ be tracked in Gitlab issues:

- KPI Name
- A KPI Goal title (e.g. "Improve Metric X")
- Start value
- Target value
- Timeframe for evaluation (e.g. "by July 10")

KPI Goal tracking occurs in GitLab issues, with links to related Objectives and Initiatives when appropriate via linked issues and/or via Gitlab labels. The list of KPIs and (optionally) of the KPI goal is public and listed below under each Goal definition, including links to the Gitlab issues with additional information.

## Goals in Gitlab

We track goals in GitLab as labels, using the format `Goal: Short Description`.

## Tracking related Initiatives in Gitlab

Initiatives impacting the Goal are tracked in Gitlab and should be tagged with a label which associates the issue with the Goal it is targeted to help us achieve.

## Transparency Guidelines for Goals and KPIs

- Goal and KPI definitions are **public** in the `handbook` repo.
- Metric calculation logics are **public** in the `squared` repo.
- KPI metric values, KPI goal targets, and metric history are kept **internal** by default, according to the guidelines on the [KPIs](/data-team/kpis) page.
- If tracking a KPI Goal in GitLab issues, this tracking likewise occurs in **internal** GitLab issues.

## List of Current Goals and KPIs

### `Goal: Achieve Meltano vision and PMF as the DataOps OS`

- Scope: Company-Wide
- Objective: **We will achieve our broad Meltano vision as the DataOps OS.**
- GitLab Label: `Goal: Achieve DataOps OS PMF`
- Related Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=Goal:+Achieve+DataOps+OS+PMF)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=Goal:+Achieve+DataOps+OS+PMF)

#### Related KPIs and KPI Goals

- [KPI Goal: Increase APP](https://gitlab.com/meltano/meta/-/issues/217)
  - [KPI Goal: Increase usage of `orchestrator` plugins](https://gitlab.com/meltano/meta/-/issues/220)
    - orchestrator plugin tracking currently blocked by [this issue](https://gitlab.com/meltano/meta/-/issues/216)
  - [KPI Goal: Increase usage of `transformer` plugins](https://gitlab.com/meltano/meta/-/issues/219)
  - [KPI Goal: Increase usage of `utility` plugins linked to `BI` or `analyze` functions](https://gitlab.com/meltano/meta/-/issues/219)
    - How to measure this is still TBD. Would likely include:
      - Utilities with an 'analyzer' capability or similar. (Not trackable currently.)
      - Utilities in a static list of known analyzer names: 'superset', 'lightdash', etc. (Trackable but must be manually maintained.)
  - [KPI Goal: Increase usage of `utility` plugins (other)](https://gitlab.com/meltano/meta/-/issues/221)

These metrics are used to measure whether we've successfully reached the stated objective.

#### Timeframe for measurement

- 2 of 7 development initiatives tracked with this OKR are planned to resolve by end of March 2022.
- 6 of 7 development initiatives tracked with this OKR are planned to resolve by end of April 2022.
- 7 of 7 development initiatives tracked with this OKR are planned to resolve by end of May 2022.
- Because of the time lag between initiatives (mostly feature releases) and their impact on metrics, we expect the metrics to have moderate gains at end of May and beginning of June, with more significant gains shown throughout July and August.

### `Goal: Shorten the Meltano Learning Curve and Begin Tracking New User Retention`

- Scope: Company-Wide
- Objective: **We will address feedback regarding the Meltano learning curve and begin actively monitoring attrition and retention metrics.**
- GitLab Label: `Goal: Tackle Learning Curve`
- Related Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=Goal:+Tackle+Learning+Curve)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=Goal:+Tackle+Learning+Curve)

#### Related KPIs and Goals

_Currently we do not have metrics in place to track this. See logged Initiative issues below._

#### Timeframe for Measurement

- Setting up the initial tracking metrics are logged in of [this `squared` issue](https://gitlab.com/meltano/squared/-/issues/81).
- Metrics will lag between 14-60 days after completion of each initiative, depending on the age cohorts we find most useful in the above metrics/analysis work.

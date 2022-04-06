---
layout: page
title: Strategic Goals
weight: 2
---

## What is this page

This page highlights Meltano's most important strategic goals, as a means for everyone in the company to align their efforts with important company-wide priorities. This gives teams a framework to contextualize and measure their contributions towards our stated objectives, and to determine the relative priority between different tasks to ensure that limited time is spent in the most impactful way.

For each goal, there are three components:

1. Objectives - The priorities we need to achieve.
2. KPIs - The quantifiable measurements of success towards the stated goals.
3. Initiatives - Specific actions we can take which improve our KPI metrics and, in turn, help us reach our Goals.

## Tracking KPIs and KPI-specific Goals

We aim to have dashboards in Superset for each of the KPIs.
Charts and dashboards for KPIs should be linked back to the handbook and specific Goals where possible.

KPI goals may be _optionally_ be tracked in GitLab issues:

- KPI Name
- A KPI Goal title (e.g. "Improve Metric X")
- Start value
- Target value
- Timeframe for evaluation (e.g. "by July 10")
- Dashboard Link (if available)

KPI Goal tracking occurs in GitLab issues, with links to related Objectives and Initiatives when appropriate via linked issues and/or via GitLab labels. The list of KPIs and (optionally) of the KPI goal is public and listed below under each Goal definition, including links to the GitLab issues with additional information.

## Goals in Gitlab

We track goals in GitLab as labels, using the format `Goal: Short Description`.

## Tracking related Initiatives in Gitlab

Initiatives impacting the Goal are tracked in GitLab and should be tagged with a label which associates the issue with the Goal it is targeted to help us achieve.

## Transparency Guidelines for Goals and KPIs

- Goal and KPI definitions are **public** in the `handbook` repo.
- Metric calculation logics are **public** in the `squared` repo.
- KPI metric values, KPI goal targets, and metric history are kept **internal** by default, according to the guidelines on the [KPIs](/data-team/kpis) page.
- If tracking a KPI Goal in GitLab issues, this tracking likewise occurs in **internal** GitLab issues.

## List of Current Goals and KPIs

### OKR: Be the DataOps OS

- Scope: Company-Wide
- Objective: **We will achieve our broad Meltano vision as the DataOps OS.**
- GitLab Label: `OKR: Be the DataOps OS`
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Be+the+DataOps+OS)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Be+the+DataOps+OS)
- Key Results:
  - [KR: Increase APP](https://gitlab.com/meltano/meta/-/issues/217)
    - [KR: Increase usage of `orchestrator` plugins](https://gitlab.com/meltano/meta/-/issues/220)
      - orchestrator plugin tracking currently blocked by [this issue](https://gitlab.com/meltano/meta/-/issues/216)
    - [KR: Increase usage of `transformer` plugins](https://gitlab.com/meltano/meta/-/issues/219)
    - [KR: Increase usage of `utility` plugins linked to `BI` or `analyze` functions](https://gitlab.com/meltano/meta/-/issues/219)
      - How to measure this is still TBD. Would likely include:
        - Utilities with an 'analyzer' capability or similar. (Not trackable currently.)
        - Utilities in a static list of known analyzer names: 'superset', 'lightdash', etc. (Trackable but must be manually maintained.)
    - [KR: Increase usage of `utility` plugins (other)](https://gitlab.com/meltano/meta/-/issues/221)

### OKR: Improve New User Experience

- Scope: Company-Wide
- Objective: **We will address feedback regarding the Meltano learning curve and begin actively monitoring attrition and retention metrics.**
- GitLab Label: `OKR: Improve New User Experience`
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Improve+New+User+Experience)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Improve+New+User+Experience)
- Key Results:
  - TODO: Currently we do not have metrics in place to track this. See logged Initiative issues linked above.

### OKR: Build the team (Hiring)

- Scope: Company-Wide
- Objective: **Through a increased focus on hiring, we will build the team we need to deliver on our vision.**
- GitLab Label: `OKR: Build the Team (Hiring)`
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Build+the+Team+(Hiring))
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Build+the+Team+(Hiring))
- Key Results:
  - TODO: Currently we do not have metrics in place to track this. See logged Initiative issues linked above.

### OKR: Managed service beta

- Scope: Company-Wide
- Objective: **We will build the managed service and onboard our first private beta users.**
- GitLab Label: `OKR: Managed service beta`
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Managed+Service+Beta)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Managed+Service+Beta)
- Key Results:
  - TODO: Currently we do not have metrics in place to track this. See logged Initiative issues linked above.

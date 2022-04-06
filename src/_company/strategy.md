---
layout: page
title: Strategic Goals
weight: 2
---

This page highlights Meltano's most important strategic objectives, as a means for everyone in the company to align their efforts with important company-wide priorities. This gives teams a framework to contextualize and measure their contributions towards our stated objectives, and to determine the relative priority between different tasks to ensure that limited time is spent in the most impactful way.

## What is an OKR?

Every company defines and tracks OKRs differently. The common ground for any OKR framework is a focus on three core components:

1. **Objectives** - The priorities we need to achieve and the timeframe by which to achieve them.
2. **Key Results (KRs)** - The quantifiable measurements of success towards the stated objectives, tied to a specific timeframe of measurement.
3. **Initiatives** - Specific actions we can take which improve our KPI metrics and, in turn, help us reach our objectives.

## Understanding Key Results and KPIs

We aim to have BI dashboards in Superset for each KPI that is connected to Key Results.
Where possible, we should have a dedicated dashboard page for each KR.
Charts and dashboards for KPIs should be linked back to the handbook and specific Goals where possible.

KRs are tracked in GitLab issues:

- KPI Name
- A KPI Goal title (e.g. "Improve Metric X")
- Start value
- Target value
- Timeframe for evaluation (e.g. "by July 10")
- Dashboard Link (if available)

KPI Goal tracking occurs in GitLab issues, with links to related Objectives and Initiatives via linked issues and/or via GitLab labels. The list of KRs is public and listed below under each OKR definition, including links to the GitLab issues with additional information.

## OKRs in Gitlab

We track OKRs in GitLab as labels, using the format `OKR: Short Description`.

## Tracking related Initiatives in Gitlab

Initiatives impacting the OKR are tracked in GitLab and should be tagged with a label which associates the issue with the OKR it is targeted to help us achieve.

Note:

- OKR labels should be applied carefully, only for those issues which are (1) prioritized to be built within the timeframe of the OKR, and (2) directly influencing a related Key Result.

## Transparency Guidelines for OKRs and KPIs

- OKR and KPI definitions are **public** in the `handbook` repo.
- Metric calculation logics are **public** in the `squared` repo.
- KPI metric values, KPI goal targets, and metric history are kept **internal** by default, according to the guidelines on the [KPIs](/data-team/kpis#why-kpis-are-internal-by-default) page.
- If tracking a KPI Goal in GitLab issues, this tracking likewise occurs in **internal** GitLab issues.

## List of Current Goals and KPIs

### OKR: Be the DataOps OS

- Scope: Company-Wide
- Objective: **We will achieve our broad Meltano vision as the DataOps OS.**
- GitLab Label: `OKR: Be the DataOps OS`
- Timeframe: By 2022-07-31
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Be+the+DataOps+OS)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Be+the+DataOps+OS)
- Key Results:
  - [KR: Increase APP](https://gitlab.com/meltano/meta/-/issues/217)
    - [APP Metric Definition](/data-team/kpis#app---average-plugin-types-per-project)
  - [KR: Increase usage of `orchestrator` plugins](https://gitlab.com/meltano/meta/-/issues/220)
    - orchestrator plugin tracking currently blocked by [this issue](https://gitlab.com/meltano/meta/-/issues/216)
  - [KR: Increase usage of `transformer` plugins](https://gitlab.com/meltano/meta/-/issues/219)
  - [KR: Increase usage of `utility` plugins linked to `BI` or `analyze` functions](https://gitlab.com/meltano/meta/-/issues/218)
  - [KR: Increase usage of `utility` plugins (other)](https://gitlab.com/meltano/meta/-/issues/221)

### OKR: Improve New User Experience

- Scope: Company-Wide
- Objective: **We will address feedback regarding the Meltano learning curve and begin actively monitoring attrition and retention metrics.**
- GitLab Label: `OKR: Improve New User Experience`
- Timeframe: By 2022-07-31
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Improve+New+User+Experience)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Improve+New+User+Experience)
- Key Results:
  - COMING SOON

### OKR: Build the team (Hiring)

- Scope: Company-Wide
- Objective: **Through a increased focus on hiring, we will build the team we need to deliver on our vision.**
- Timeframe: Ongoing (dates tied to individual KRs).
- GitLab Label: `OKR: Build the Team (Hiring)`
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Build+the+Team+(Hiring))
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Build+the+Team+(Hiring))
- Key Results:
  - COMING SOON

### OKR: Managed service beta

- Scope: Company-Wide
- Objective: **We will build the managed service and onboard our first private beta users.**
- Timeframe: By 2023-01-30.
- GitLab Label: `OKR: Managed service beta`
- Initiatives:
  - [Issues List in GitLab](https://gitlab.com/groups/meltano/-/issues?sort=created_date&state=all&label_name[]=OKR:+Managed+Service+Beta)
  - [Filtered Milestone Board](https://gitlab.com/groups/meltano/-/boards/1933232?label_name[]=OKR:+Managed+Service+Beta)
- Key Results:
  - COMING SOON
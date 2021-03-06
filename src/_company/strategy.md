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

## Current OKRs

These are our current OKRs, in order of importance.
We aim to keep this list limited to 3 company-wide goals, and promote [future OKRs](#future-okrs) to current ones once an OKR as completed and a place opens up.

### OKR: Be the DataOps Platform Infrastructure

- Scope: Company-Wide
- Objective: **Go beyond EL(T) and realize our end-to-end vision in product capabilities, perception, and usage**: new users can, know they can, and will let Meltano manage more of their data platform than only Singer.
- GitHub Label: `OKR: Be the DataOps Platform Infrastructure`
- Timeframe: By 2022-07-31
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - [KR: Increase PXP](https://github.com/meltano/internal-general/issues/426)
    - [PXP Metric Definition](/data-team/kpis#projects-x-plugins-score-pxp)
  - [KR: Increase usage of `orchestrator` plugins](https://github.com/meltano/internal-general/issues/220)
  - [KR: Increase usage of `transformer` plugins](https://github.com/meltano/internal-general/issues/219)
  - [KR: Increase usage of `utility` plugins linked to `BI` or `analyze` functions](https://github.com/meltano/internal-general/issues/218)
  - [KR: Increase usage of `utility` plugins (other)](https://github.com/meltano/internal-general/issues/221)

### OKR: Improve New User Experience

- Scope: Company-Wide
- Objective: **Get more people from "I've decided I want to try out Meltano" to "I have a Proof of Concept up and running in my (local) development environment" faster**, by addressing feedback regarding the Meltano learning curve and actively monitoring attrition and retention metrics.
- GitHub Label: `OKR: Improve New User Experience`
- Timeframe: By 2022-07-31
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - Coming soon, discussion [tracked here](https://github.com/meltano/internal-general/issues/232).

### OKR: Improve Ease of Deployment

- Scope: Company-Wide
- Objective: **Get more people from "I have a Proof of Concept up and running in my (local) development environment" to "I have Meltano running in production and am getting lasting value out of it" faster**, by addressing the education, tooling, and documentation gap.
- GitHub Label: `OKR: Improve Ease of Deployment`
- Timeframe: By 2022-07-31
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - Coming soon, discussion [tracked here](https://github.com/meltano/internal-general/issues/249).

## Future OKRs

These OKRs will become a priority once a [current OKR](#current-okrs) is completed and a place opens up.
Note that a small group of people (usually among the leadership team) may start doing preliminary work on these before they become a company-wide priority.

### OKR: Managed Meltano Alpha

- Scope: Company-Wide
- Objective: **Build minimal managed hosting, manually onboard ourselves (Squared) and hand-selected alpha users, and convert first paying customers.**
- Timeframe: By 2022-11-31
- GitHub Label: `OKR: Managed Meltano Alpha`
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - Coming soon, discussion [tracked here](https://github.com/meltano/internal-general/issues/253).

### OKR: Managed Meltano Beta

- Scope: Company-Wide
- Objective: **Build self-serve maintenance and monitoring interfaces, start automating onboarding, and semi-automatically onboard additional paying customers from waiting list.**
- Timeframe: By 2023-02-28
- GitHub Label: `OKR: Managed Meltano Beta`
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - Coming soon, discussion [tracked here](https://github.com/meltano/internal-general/issues/231).

### OKR: Managed Meltano GA

- Scope: Company-Wide
- Objective: **Build self-serve onboarding flow, and officially launch Managed Meltano to relieve self-management burden and broaden addressable market to less technical users and teams that are comfortable with CLIs and Git, but not Terraform and Kubernetes.**
- Timeframe: By 2023-03-31
- GitHub Label: `OKR: Managed Meltano GA`
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - Coming soon, discussion [tracked here](https://github.com/meltano/internal-general/issues/254).

### OKR: Managed Meltano Commercial Tier

- Scope: Company-Wide
- Objective: **Build and launch first Managed tier with functionality that is compelling to larger and more advanced teams that are comfortable self-managing, but difficult to actually realize in a self-managed setup.**
- Timeframe: By 2023-05-31.
- GitHub Label: `OKR: Managed Meltano Commercial Tier`
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - Coming soon, discussion [tracked here](https://github.com/meltano/internal-general/issues/255).

### OKR: Managed Meltano Enterprise Tier

- Scope: Company-Wide
- Objective: **Build and launch Managed tier with capabilities and certifications requiered by larger enterprises.**
- Timeframe: By 2023-08-31
- GitHub Label: `OKR: Managed Meltano Enterprise Tier`
- Initiatives: pending a [new GitHub process to track initiatives](https://github.com/meltano/handbook/issues/277)
- Key Results:
  - Coming soon, discussion [tracked here](https://github.com/meltano/internal-general/issues/256).

## Meltano's OKR Process

### Understanding Key Results and KPIs

We aim to have BI dashboards in Superset for each KPI that is connected to Key Results.
Where possible, we should have a dedicated dashboard page for each KR.
Charts and dashboards for KPIs should be linked back to the handbook and specific Goals where possible.

KRs are tracked in GitHub issues:

- KPI Name
- A KPI Goal title (e.g. "Improve Metric X")
- Start value
- Target value
- Timeframe for evaluation (e.g. "by July 10")
- Dashboard Link (if available)

KPI Goal tracking occurs in GitHub issues, with links to related Objectives and Initiatives via linked issues and/or via GitHub labels. The list of KRs is public and listed below under each OKR definition, including links to the GitHub issues with additional information.

### Tracking OKRs in GitHub

Before moving from [GitLab to GitHub](https://meltano.com/blog/why-meltano-is-moving-to-github/), we tracked OKRs as GitLab labels using the format `OKR: Short Description`. These were transferred to GitHub, but we will likely start [using Projects instead](https://github.com/meltano/handbook/issues/277).

### Tracking related Initiatives in GitHub

(As noted above, we will likely [move away from using GitHub labels to track OKRs, in favor of Projects](https://github.com/meltano/handbook/issues/277).)

Initiatives impacting the OKR are tracked in GitHub and should be tagged with a label which associates the issue with the OKR it is targeted to help us achieve.

Note that OKR labels should be applied selectively, and only for those issues which are (1) prioritized to be built within the timeframe of the OKR, and (2) directly influencing a related Key Result.

### Transparency Guidelines for OKRs, KRs, and KPIs

- OKR definitions are **public** in the `handbook` repo ([above](#current-okrs)).
- Metric calculation logics are **public** in the [`squared`](https:/github.com/meltano/squared) repo and on the Data Team [KPIs](/data-team/kpis) handbook page.
- KR details, such as current metric values, goal targets, and metric history are kept **internal** by default, according to the guidelines on the [KPIs](/data-team/kpis#why-kpis-are-internal-by-default) page.
- If tracking a Key Result's status in GitHub issues, this tracking likewise occurs in **internal** GitHub issues.

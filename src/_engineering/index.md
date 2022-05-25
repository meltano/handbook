---
layout: page
title: Engineering Handbook
weight: 1
permalink: /engineering/
---

## Responsibilities

The Engineering team collectively reviews any incoming community [merge requests](https://gitlab.com/groups/meltano/-/merge_requests) within the Meltano Group on a daily cadence. 
Merge requests are given the `Community-Contributed MR` label and a relevant issue is made if one does not exist. 
Product will take the created issue so it can be fully triaged and prioritized appropriately.

## Significant Product Changes

We aim to engage with the community for feedback whenever significant product changes are being proposed for Meltano,
the SDK, and the Hub. The most common way we do this is via Office Hours and Demo Day. Internal team members as well
as external contributors should plan to present at office hours and/or demo day to collect feedback from the broader
community.

If it is not possible to present at office hours or demo day, it may be possible for a knowledgeable team member or
community member to present on your behalf. Alternatively, you may also post a recorded video demo and walkthrough,
of length between 2 and 10 minutes, to the `#contributing` channel on slack, posting a link also on your MR. You
may use Slack's built-in video message feature, the free tool [Loom](https://loom.com), or another similar tool.

## Priorities

Engineers should consider their work priorities in the following order:

* Issues assigned to you in the current iteration
* Issues assigned to you in the next iteration
* Unassigned issues in the next iteration
* Unassigned issues in the current dated milestone (monthly or quarterly) OR any issues in the Internal WIP milestone

## Research Spikes

Some issues may be large in scope and need further refinement.
This is done in collaboration with Product.
For larger issues, it may be necessary to do a research spike to better understand the technical challenges in the proposed solution.

If something needs a research spike, the `Needs Research Spike` [label](/company/using-gitlab#refinement-labels) will be used.
The spike can either be tracked in the main issue in the comments, or as part of a separate issue created just for the spike.

When you do a spike, be clear on how much time you are spending.
Anything less than a few hours you are ok to prioritize when you're ready.
If the spike is longer than half a day, coordinate with your manager and Product on the best time to prioritize.

## Feature Specs and Implementation Specs

An issue is ready to be worked on once both a _feature spec_ and _implementation spec_ have been added to it.

Feature specs describe the desired end state that should result from resolving the issue.
They are created in close collaboration with Product and must be completed before an issue is assigned.
Issues are typically assigned on Thursday of the week before the iteration in which the issue will be worked on.

Implementation specs describe the code, test, and documentation changes that will be required to satisfy the provided feature spec.
Typically an implementation spec will be written by the issue's assignee but they should be written in such a way that the issue could be assigned to a different engineer and it would be clear what work the assigned engineer would need to perform--even if they are relatively junior or less familiar with the relevant parts of our codebase.

After an upcoming iteration's issues are assigned on Thursday, engineers should spend no more than three hours on that Friday to review their upcoming issues and do the following:

1. Review the implementation spec and ask clarifying questions about any aspects
   of it that are ambiguous or incomplete.
1. Ask for any specific details that are missing to be added to the
   implementation spec.
1. Raise any potentially unhandled edge cases.

After any questions or concerns raised have been resolved in the issue, the assigned engineer should add to the issue an implementation spec which includes:

1. Descriptions of new or altered tests that will be included in the code changes.
1. Descriptions of new or altered documentation sections that will be included alongside the code changes.
1. Descriptions of the code changes that will be made, including any altered or new classes, methods, modules, etc. If further research is required to determine what code changes need to be made, this should be noted in the issue.
1. Comments requesting review of the implementation spec from any colleagues who can provide feedback on the proposed implementation.
   This feedback should be provided no later than the following Monday.

After the implementation spec has been written, the issue's weight should be re-evaluated in light of the proposed implementation.
Any changes to issue weight that result from this should be communicated with a flagged comment to Taylor/AJ with details about the new weight versus the initially planned weight.

If new information comes to light while an issue is being worked on which changes the implementation such that it will no longer match the provided implementation spec, that should be communicated in a timely manner via a comment on the issue.
If this information changes the issue weight or threatens the feasibility of the proposed changes, that should be communicated to Taylor/AJ as quickly as possible.

## Outages & escalation

<https://www.meltano.com> is automatically monitored using Pingdom, with notifications of downtime posted to:

- Zendesk, through our `hello@` email address, and
- Douwe, by email and SMS.

When any instance managed by us is reported to be down, through Pingdom or any other means, resolving this becomes the team's top priority.

## Meetings

Engineering has a regular all-hands meeting to align on overall priorities, discuss areas for improvement, share lightning talks, and socialize.
Product is invited to the meeting but is not expected to always be in attendance.

## GitHub Mirrors

We mirror the three main Meltano repositories (meltano/sdk/hub) from GitLab to GitHub. This is managed via the "Mirroring repositories" section with the Settings of the GitLab repository. The push was created using Taylor's personal GitHub account (tayloramurphy) with a personal access token made just for the use case. This was tracked in [this issue](https://gitlab.com/meltano/meta/-/issues/55).

## Domain names, DNS, and hosting

Domain names are typically registered with [Amazon Web Services](/company/tech-stack/#amazon-web-services).
[NameCheap](/company/tech-stack/#namecheap) can be used if a TLD is not available there.
For legacy reasons, one domain name is still registered with [Gandi](/company/tech-stack/#gandi).

DNS is managed through Route 53 in [AWS](/company/tech-stack/#amazon-web-services).
DNS for `singerhub.io` is managed at [NameCheap](/company/tech-stack/#namecheap).

<https://meltano.com> is hosted on [WPEngine](/company/tech-stack/#wpengine).
<https://hub.meltano.com> is hosted using [GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/) for <https://gitlab.com/meltano/hub>.
<https://sdk.meltano.com> is hosted at [Read the Docs](/company/tech-stack/#read-the-docs).

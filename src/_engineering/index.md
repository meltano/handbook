---
layout: page
title: Engineering Handbook
weight: 1
permalink: /engineering/
---

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

DNS is typically managed at [SiteGround](/company/tech-stack/#siteground).
DNS for `*.meltanodata.com` is managed at [DigitalOcean](/company/tech-stack/#digitalocean).
DNS for `singerhub.io` is managed at [NameCheap](/company/tech-stack/#namecheap).

<https://meltano.com> is hosted at [SiteGround](/company/tech-stack/#siteground).
<https://hub.meltano.com> is hosted using [GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/) for <https://gitlab.com/meltano/hub>.
<https://sdk.meltano.com> is hosted at [Read the Docs](/company/tech-stack/#read-the-docs).

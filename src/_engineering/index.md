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

## Useful issue boards

- [Development Flow](https://gitlab.com/groups/meltano/-/boards/536761), with a column for each `flow::` label. Don't forget to filter by milestone, and/or assignee!
- [Kind](https://gitlab.com/groups/meltano/-/boards/2917606) - useful for understanding the distribution of work across the different flow types (Bug, Feature, etc.)
- [Value Stream](https://gitlab.com/groups/meltano/-/boards/2917637) - useful for understanding the distribution of work acrss the different product areas of Meltano
- [Urgency](https://gitlab.com/groups/meltano/-/boards/2917749) - useful for understanding the overall priority of issues in a milestone.
- [Milestone](https://gitlab.com/groups/meltano/-/boards/1933232) - used to move issues easily between milestones.
- [Office Hours](https://gitlab.com/groups/meltano/-/boards/2923184) - used to tee up issues for community discussion and review, generally directly
before and/or after implementing an important user-facing feature.

## Outages & escalation

<https://www.meltano.com> is automatically monitored using Pingdom, with notifications of downtime posted to:
- Zendesk, through our `hello@` email address, and
- Douwe, by email and SMS.

When any instance managed by us is reported to be down, through Pingdom or any other means, resolving this becomes the team's top priority.

## GitHub Mirrors

We mirror the three main Meltano repositories (meltano/sdk/hub) from GitLab to GitHub. This is managed via the "Mirroring repositories" section with the Settings of the GitLab repository. The push was created using Taylor's personal GitHub account (tayloramurphy) with a personal access token made just for the use case. This was tracked in [this issue](https://gitlab.com/meltano/meta/-/issues/55).

## Domain names, DNS, and hosting

Domain names are typically registered with [Amazon Web Services](/tech-stack/#amazon-web-services).
[NameCheap](/tech-stack/#namecheap) can be used if a TLD is not available there.
For legacy reasons, one domain name is still registered with [Gandi](/tech-stack/#gandi).

DNS is typically managed at [SiteGround](/tech-stack/#siteground).
DNS for `*.meltanodata.com` is managed at [DigitalOcean](/tech-stack/#digitalocean).
DNS for `singerhub.io` is managed at [NameCheap](/tech-stack/#namecheap).

<https://meltano.com> is hosted at [SiteGround](/tech-stack/#siteground).
<https://hub.meltano.com> is hosted using [GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/) for <https://gitlab.com/meltano/hub>.
<https://sdk.meltano.com> is hosted at [Read the Docs](/tech-stack/#read-the-docs).

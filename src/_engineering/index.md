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

- Issues assigned to you in the current iteration
- Issues assigned to you in the next iteration
- Unassigned issues in the next iteration
- Unassigned issues in the current dated milestone (monthly or quarterly) OR any issues in the Internal WIP milestone

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
Any changes to issue weight that result from this should be communicated with a flagged comment to Taylor with details about the new weight versus the initially planned weight.

If new information comes to light while an issue is being worked on which changes the implementation such that it will no longer match the provided implementation spec, that should be communicated in a timely manner via a comment on the issue.
If this information changes the issue weight or threatens the feasibility of the proposed changes, that should be communicated to Taylor as quickly as possible.

## Outages & escalation

The following web properties or critical URL's are currently monitored by Pingdom and trigger alerts in the `#meltano-alerts` slack channel via the Pingdom slack app:

1. [https://docs.meltano.com](https://docs.meltano.com)
1. [http://handbook.meltano.com](http://handbook.meltano.com)
1. [https://hub.meltano.com](https://hub.meltano.com)
1. [https://discovery.meltano.com/discovery.yml](https://discovery.meltano.com/discovery.yml)
1. [https://sdk.meltano.com](https://sdk.meltano.com)
1. [https://www.meltano.com](https://www.meltano.com)
1. [https://meltano.com/slack](https://meltano.com/slack)

## Meetings

Engineering has a regular all-hands meeting to align on overall priorities, discuss areas for improvement, share lightning talks, and socialize.
Product is invited to the meeting but is not expected to always be in attendance.

## Domain names, DNS, and hosting

Domain names are typically registered with [Amazon Web Services](/company/tech-stack/#amazon-web-services).
[NameCheap](/company/tech-stack/#namecheap) can be used if a TLD is not available there.
For legacy reasons, one domain name is still registered with [Gandi](/company/tech-stack/#gandi).

DNS is managed through Route 53 in [AWS](/company/tech-stack/#amazon-web-services).
DNS for `singerhub.io` is managed at [NameCheap](/company/tech-stack/#namecheap).

Engineering managed static web properties are hosted on [netlify](/company/tech-stack/#netlify). This includes:

1. <https://hub.meltano.com> - Configured via [netlify.toml](https://github.com/meltano/hub/blob/main/netlify.toml) in the root of the [hub repo](https://github.com/meltano/hub).
1. <https://docs.meltano.com> - Configured via [netlify.toml](https://github.com/meltano/meltano/blob/main/netlify.toml) in the root the [meltano repo](https://github.com/meltano/meltano).
1. <https://handbook.meltano.com> - Configured via the Netlify [web app](https://app.netlify.com/sites/meltano-handbook/overview).
1. <https://discovery.meltano.com> - Legacy discovery.yml hosting, which is actually just an domain alias for docs.meltano.com.

The following properties are hosted by other providers:

1. <https://meltano.com> is hosted on [WPEngine](/company/tech-stack/#wpengine).
1. <https://sdk.meltano.com> is hosted at [Read the Docs](/company/tech-stack/#read-the-docs).

## Adding new tools

The [tech stack](/company/tech-stack) used by Meltano is rather comprehensive. Occasionally a new paid service or tool is required. In that case, team members should work with the [Head of Operations](https://handbook.meltano.com/company/leadership) or create an issue for [New Vendor On-boarding](https://github.com/meltano/administration/issues/new?assignees=&labels=&template=vendor-onboarding.md&title=) with all of the relevant details and assign it to @therebbie.

## Project Retrospectives

For large projects that require a lot of collaboration, it's often helpful to conduct a project retrospective after project completion to reflect on the project and generate insights that can be used to improve future project outcomes.

Meltano is an async-first company, so our project retrospective process prioritizes asynchronous communication to ensure that everyone's voice is heard.
That said, some team members may feel more comfortable or able to share their thoughts and converse in real time.
To that end, our project retrospectives are conducted in two phases: the first phase is fully asynchronous and is conducted via Miro.
The second phase is an optional short meeting to review contributions made asynchronously and give team members an opportunity to contribute synchronously.
This meeting is recorded and shared out with the team so that any members who do not attend are aware of what was discussed and have an opportunity to follow up asynchronously.

### Objectives

The objectives of project retrospectives are as follows:
- Recognize and celebrate project successes
- Regularly gauge team sentiment about project processes with an eye towards identifying areas for improvement
- Consolidate learnings and establish concrete practices for future projects

### Guidelines

- We're an async-first company. Team members shouldn't have to be present in a synchronous meeting to contribute.
- Not every problem has an obvious solution; but every problem should be identified.
- Every retrospective will have a _leader_ who is responsible for faciliting scheduling, setting up the Miro board for the async portion, encouraging participation, and documenting the follow-up work that needs to be done.
- Ideally, retros should be conducted within a month of the completion of the relevant project so that the project is fresh in everyone's minds.
- This process is meant to help the engineering team consolidate learnings from a project. But participation should not be limited to the engineering team. Any stakeholders who were involved with the project should be made awware of the retro process and given the opportunity to provide feedback

**Note:** Project retrospectives are _not_ meant to completely take the place of private or direct feedback.
Team members who want to raise a concern about the way a project was managed but are not comfortable providing that feedback openly should still share that feedback in private channels such as Lattice or Slack.

### Phase 1 (Async)

A template Miro board for project retrospectives can be found in Miro under the name `(Template) Engineering Project Retrospective`.
The retro leader should duplicate this template, rename it to reflect the project being discussed, and share out with the team at least 3 days ahead of the synchronous retro meeting.

Project contributors and stakeholders should be given no less than 3 days to complete their async feedback.
The retro leader should reach out and remind stakeholders who have not added their feedback a day ahead of the synchronous portion of the retro.

The Miro board contains three sections:

#### Mood

This section is meant to gauge high-level perceptions of the project before getting into specifics.
Project areas are represented by post-its and team members should add an emoji response to indicate how they felt that project area was handled.
When all team members have contributed, this section will provide a visual representation of how the whole team felt the project went.

The high-level project areas are:

##### Communication

How well project scope, current progress on deliverables, deadlines, and any other key information was communicated throughout the course of the project.

##### Collaboration

How well team members were able to receive or provide help on their individual project deliverables; how well any relevant handoffs collective deliverables were handled.

##### Scoping

How well the intended scope for the project matched the final output; how feasible this scope was, and how complete this scope was at the beginning of the project.

##### Weighting

How well timelines and effort estimates for the scoped deliverables matched reality.

##### Overall

How well the project went overall, taking all the above into account as well as any other mitigating factors.

### Specifics

This section is for team members to share and document concrete observations about the project and share learnings that can be brought to bear on future projects.

Observations should be written on a post-it and team members are encouraged to "+1" observations that they agree with.

The specific discussion areas are:

#### What Went Well

The areas or specific parts of the project that went well.

#### What Went Poorly

The areas or specific parts of the project that need to be improved upon.

#### What we can do

Concrete ideas for how to apply learnings from the above sections to future projects.

### Phase 2 (Sync)

After asynchronous feedback has been gathered from the team in Miro, the retro leader should schedule a synchronous meeting for team members.

This meeting should be no longer than an hour, at most. It serves as a chance for team members to review one another's feedback and insights in real time and make any additional contributions that may come to mind after having done so.

The retro leader should review the "Mood" section and use it to drive conversation around the "Specifics" section.
For instance, if many on the team indicate that they collaboration was a pain point during the project, but no specific observations around collaboration have been shared in the "Specifics" section, then more feedback about collaboration should be solicited.

Any concrete deliverables that emerge from the "what we can do" section (e.g. handbook or policy updates, CI/CD improvements, GitHub issue templates) should be noted down in the "Action Items" section and assigned to an owner who is responsible for writing and completing a follow-up GitHub issue for that action item.

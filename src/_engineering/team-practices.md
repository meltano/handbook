---
layout: page
title: Team Practices
weight: 2
---

This page defines recurring practices which help the Engineering team to function effectively and efficiently.

## Weekly and Fortnightly Rituals

### Weekly Iterations

We adhere to a [weekly iteration](https://gitlab.com/groups/meltano/-/iterations) delivery cycle. 
We do not adhere to formal sprints. 
Instead, leadership from Engineering and Product meet each Thursday to discuss the upcoming week's priorities and to add or update the following week's tasks. 
An "iteration" is simply a bucket of issues in Gitlab which are assigned for work over a given week.

We generally work with more of a kanban style.
We do this as it works better with our committment to asynchronous work.
We aim to minimize Work in Progress (WIP) which, for Meltano, means assigned work in a given iteration.

Engineers are expected to deliver at least one feature or bug fix at least every 3 out of 4 weeks.

### Mid-Week Virtual Standup

Every Wednesday, engineers receive an automated prompt from Geekbot in Slack, requesting a summary of work in-flight and expected deliverables through the end of week (EOW). This should be completed by end of day (EOD) Wednesday, as this information will be used on Thursday in planning the deliverables for the following week.

### Weekly Product:Engineering Leadership Sync

On a weekly basis (generally Thursdays), Engineering and Product leadership meet with the following agenda:

- review any takeaways from engineers' virtual standup status
- review progress against published roadmap items, discuss slippage and needed realignment if applicable
- discuss prioritization of large work items - those already in the roadmap and any needing to be added into the roadmap
- prepare Engineering assignments for the upcoming week's milestone
- ping engineers on Slack for any needed follow-up

During the process of creating engineering assignments for the coming week, Product and Engineering leadership will take care that each engineer is assigned at least one small or medium-sized work item (`<=4` weight) _in addition_ to any larger long-running work items. This is to that ensure every engineer has the ability to ship at least one work item in the coming week, per the Engineering team's standard practice - and that at any time if an engineer becomes blocked on a larger work item (waiting for code review feedback, for instance), they can immediately fall back to the smaller item as needed.

### Monthly Demo Day

Once a month on a Thursday, engineers present demoable features in our community Demo Days, alongside demos from the community. Engineers will be prepared to demo all features they've released as of the Demo Day following the merge of the feature. Note that merge dates - not release dates - are used to determine the demo schedule.

The following items _do not_ require a demo:

1. Minor bug fixes.
2. Refactoring efforts.
3. Deprecating features or functionality.
4. Tap and target updates in `discovery.yml`.
5. Minor updates to docs and/or website content.

Whenever in doubt if something should be demoed, you may contact `@aj` or `@amanda` to confirm expectations.

#### Demo Day Prep

On or before the Tuesday of each Demo Day week, our DevRel Manager (`@amanda`) will review the merge history and community members who have offered to demo, with the goal of creating the agenda for the upcoming demo day. Demos from community members generally will have priority over team demos; in cases where we have a large number of community demos, those will take priority and it is feasible that some demoable content from the engineering team will be held over until the next Demo Day.

Following from the Engineering team's demo prep guidelines for engineers, the DevRel Manager should reasonably assume that anything merged since the last Demo Day also been prepared by the engineer to be demoed (including items not yet released). The DevRel Manager can therefor create a demo agenda directly from the merge commit history, combined of course with content from community members.

#### Demo Day Content Escalations

We aim to have 40-60 minutes of content to justify community members joining the session, and we will cancel Demo Days if we have less than 30 minutes of demoable content as of Wednesday EOD (or sooner, per discretion of the DevRel Manager).

In rare cases, the sum of demoable content from community volunteers and the Engineering team will not be sufficient to fill 40 minutes. On any preceding Tuesday, if this appears to be the case, The DevRel Manager will escalate by beginning a thread in the `#engineering-team` Slack channel, informing the team that we are light on demo content - and will include an estimate of approximately how much time is needed to fill the upcoming session (where "40 minutes needed" roughly indicates a fully-blank agenda). The Engineering Manager (`@aj`) will work with the Engineering and Product teams throughout the day Wednesday to ensure prioritization of content creation. As needed, we will brainstorm amongst the teams for other relevant and engaging demoable content. This expanded demo scope then may include unfinished (aka unmerged) features, hobby projects, improvements to our own internal Meltano projects, etc.

### Weekly Office Hours

Every Wednesday, the Meltano team meets with our users and community members. The main objectives of this meeting are:

1. To gain outside perspective on product direction. Feedback can corroborate our direction and intuitions, but it can also show us perspectives which we may not yet have considered.
2. To share internal deliberations with the community. The goal here is to spread awareness while gaining benefit of insight from external perspectives.
3. To hear directly and "face to face" from community members on topics they care about. We invite every Meltano community member to openly share any pressing topics or questions they might have.

#### Office Hours Wrap-Up

The DevRel Manager (`@amanda`) will post office hours wrap-up as needed, for example thanking attendees.

#### Office Hours Planning

During the weekly Thursday sync between Engineering and Product leadership (`@aj` and `@taylor`), Product and Engineering leadership will perform the following maintenance:

1. Move those topics on the Office Hours board in Gitlab into the "Discussed" column, effectively resetting the "Up Next" list for the upcoming week.
2. For any upcoming, in-progress, or recently released features that need discussion or refinement:
   1. Move into `Up Next` on the Office Hours board in Gitlab.
   2. Tag an engineer or another team member on the issue, requesting grooming of the description - or any other needed prep, per the engineer's discretion.

If fewer than 3 topics are selected as candidates for discussion in the upcoming week, and/or if one or more topics require community member attendance, then Engineering or Product leadership will raise these concerns as new threads in the `#office-hours-planning` channel.

The DevRel Manager (`@amanda`) may likewise propose and groom additional topics as per community demand or interest.

#### Office Hours Content Escalations

Our goal is to have 3 medium-sized topics for each office hours, roughly 30-45 minutes of internally-curated content in order to make the most of our attendees' valuable time.

In cases where there is an expected shortage of Office Hours content, the DevRel Manager (`@amanda`) will reach out to community members who have raised topics or opened MRs with us recently. Especially relevant are contributors who have proposed net-new functionality, including new plugins, new capabilities, and other feature improvements which are relevant for team discussion. Community members with long-running or outstanding MRs also make good invitees, in hopes that a face-to-face conversation could unblock or otherwise assist the contributor's MR to progress forward.

At any time on Tuesdays, if the content agenda is still lacking (meaning <3 medium-sized issues, or <35 minutes estimated content), the DevRel Manager (`@amanda`) will escalate again to the `#office-hours-planning` channel and tag the Head of Engineering (`@aj`) and Product (`@taylor`). From that point, the Engineering and Product teams will be responsibility to prepare/groom additional content for discussion - to the extend this is feasible.

We will not cancel Office Hours sessions for lack of content, but the DevRel Manager (`@amanda`) or Engineering Manager (`@aj`) may opt to conclude the session early, any time after 10 minutes elapsed. Sessions will always be held open for 10 minutes minimum, to allow time for community members to join and offer proposed topics or questions.

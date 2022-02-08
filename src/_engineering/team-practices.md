---
layout: page
title: Team Practices
weight: 2
---

This page defines recurring practices which help the Engineering team to function effectively and efficiently.

## Weekly and Fortnightly Rituals

### Weekly Milestones

We adhere to a weekly milestone delivery cycle. We do not adhere to formal sprints. Instead, leadership from Engineering and Product meet each Thursday to discuss the upcoming week's priorities and to add or update the following week's tasks. A "milestone" is simply a bucket of issues in Gitlab which are assigned for work over a given week.

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

### Weekly Release Party (Internal)

Every Monday before our weekly Kickoff meeting, engineers demo released features in our internal Release Party. The Release Party is a chance for engineers to show off to each other what they've delivered in the prior week. We record these sessions but in order to keep a relaxed tone, we do not livestream them.

Engineers should be prepared to demo all features they've released as of the Monday following the merge of the feature.

The following items _do not_ require a demo:

1. Very minor bug fixes.
2. Internal refactoring.
3. Deprecated features or functionality.
4. Tap and target updates in `discovery.yml`.
5. Minor updates to docs and/or website content.

Each week, we go through the release notes from the prior week's launches and each engineer demos their respective features and/or changes.

### Community Demo Days

Community Demo Days are monthly and managed by the Marketing team. More info on the [Community](../_marketing/community.md) Handbook page.

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

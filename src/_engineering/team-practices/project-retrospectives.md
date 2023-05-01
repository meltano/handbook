---
layout: page
title: Project Retrospectives
weight: 3
subcategory: Team Practices
---

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

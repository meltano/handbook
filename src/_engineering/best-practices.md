---
layout: page
title: Issue Tracker Best Practices
weight: 2
---

## Milestones

Every open issue should have a [milestone](https://gitlab.com/groups/meltano/-/milestones).
If something we want to happen eventually is not a priority yet, use `Backlog`.
If there is an issue we want to start prioritizing, there is a `Staging` milestone which can be used to alert the Product Lead that this is something we'd like to move into an upcoming milestone. 
If we don't want it to happen, close the issue.

Once an issue becomes a priority, set a sprint milestone (identified by the Friday of the week in question),
even if it's still weeks away and may end up being moved.

New sprint milestones are created about 6 weeks in advance as part of preparation for the weekly kickoff meeting.

### End of Week Expectations

By the end of day Friday, or the last day of their work week, engineers are expected to:

1. Update the flow label to reflect an accurate status.
2. Close any completed items.
3. Add a progress comment to issues which have the `flow:Doing` label.
4. Issues with the `flow:Review` label will be expected to be closed out once review completes.
   - No need to add a progress comment since action items should be self-documenting.
   - If review is not progressing due to other factors, a `flow:Blocked` label may be appropriate.

This is in preparation for the Product milestone review and [Weekly Kickoff](/product/#weekly-kickoff) on Monday.

## Sizing

The team uses Gitlab's `weight` feature to align on rough estimates of relative size. We bias towards
a system where most increments are double of the prior increment, to avoid debates of "is this a 2 or a 3?"
and to acknowledge these are only low-precision estimates. The used values are: `1`, `2`, `4`, `8`, `12`,
`20`, and `40`.

Sizing should always take into account these three factors:

1. Level of Effort - how much time we think it will _probably_ take.
2. Complexity - how complex is the problem, how many dependencies up and downstream.
3. Risk and Uncertainty - how likely are we to be wrong about the above 2 items.

```txt
 1 - E.g. A simple docs update
 2 - E.g. A simple code fix which may include a docs update, changelog, etc.
 4 - Roughly 1-2 days work
 8 - Roughly 2-4 days work
12 - Likely >=1 week and <=2 weeks
20 - Should be broken to smaller deliverables if possible
40 - Probably an epic, to be planned out in smaller deliverables
```

### Why do we size issues?

It's important to document the _why_ behind sizing:

1. To facilitate prioritization conversations between Engineering and Product leadership.
2. To inform estimates on what we can reasonably commit to in community-facing roadmap items.
3. To provide a lexicon around value creation vs relative time and effort.
4. To provide a means of escalation when items are found to be under-scoped, to minimize the impact on other deliverables when "scope creep" or "unknown unknowns" are identified during development.

### Initial Sizing Estimate

Anyone reviewing or submitting an issue can add a `weight` estimate to a new issue. Engineering team
management otherwise has the responsibility of filling out missing `weight` values prior to each week's
kickoff. When `weight` is not clear, we will ping an individual on the team to ask for second opinion.

### Sizing Estimate Adjustments

As an engineer, whenever you are assigned an issue, you should immediately check the `weight` and
confirm if it is correct. In the case that an item is significantly over- or under-estimated, please
raise a comment and tag head of engineering and product. This may inform prioritization.

Whenever a new milestone starts, we re-estimate the remaining `weight` for anything still in-progress.
Again, this may inform prioritization.
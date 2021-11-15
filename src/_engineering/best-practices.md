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

## Labels

### Flow Labels

Every open issue _with a sprint milestone_ should have a `flow` label:

- `flow::Triage` : We are considering removing this label.
- `flow::To Do`: The issue is refined, assigned, and ready to be worked on
- `flow::Doing`: Currently being worked on
- `flow::Blocked`: Blocked by some other issue
- `flow::Review`: Currently in review

These labels do not indicate urgency and should only be used to indicate the work status.

### Urgency Labels

We have 5 urgency labels:

- `urgency::low`
- `urgency::default`
- `urgency::high`
- `urgency::higher`
- `urgency::highest`

The majority of issues should have the `urgency::default` label, which is a sign that we are accomplishing [the important as well as the urgent](https://www.mindtools.com/pages/article/newHTE_91.htm). 
The `urgency::low` tag can optionally be used to indicate issues that should be the first to be deprioritized.

Issues with the `urgency::default` label, or no urgency label at all, in a milestone have a ~80% chance of being completed within a milestone. 
Issues with the `urgency::low` label have a ~50% chance of being completed within a milestone. 
We aim to close 100% of issues with `urgency::high` or above within the milestone.

The `urgency::highest` should be resolved for urgent user-facing issues such as the website going down - and should be resolved within 24 hours or less.
If an issue of this type is moved to another milestone because it was not completed, the urgency should most likely be increased.

If there is an issue of particular interest, add the `urgency::high` label to it and leave a comment tagging Taylor with a note explaining why you believe it's a high urgency.

### Kind Labels

All issues should have a label indicating its kind:

- `kind::Bug`
- `kind::Feature`
- `kind::Tech Debt`
- `kind::Risk` 

These kinds map onto the [Flow Framework](https://flowframework.org/) items of Feature, Defect, Debt, and Risk. 
These are meant to be mutually exclusive and collectively exhaustive, meaning an issue will have 1 and only 1 of these labels. 
There is a fifth label available for filtering purposes: `kind::Non-Product` which is used for administrative and business-related issues.

| Kind Item      | Delivers                                  | Description                                                           | Example Artifacts                                    |
|----------------|-------------------------------------------|-----------------------------------------------------------------------|------------------------------------------------------|
| Features       | New business value                        | New value added to drive a business result; visible to the customer   | Epic, user story, requirement                        |
| Bugs (Defects) | Quality                                   | Fixes for quality problems that affect customer experience            | Bug, problem, incident, change                       |
| Risks          | Security, governance, compliance          | Work to address security, privacy, and compliance exposures           | Vulnerability, regulatory requirement                |
| Tech Debts     | Removal of impediments to future delivery | Improvement of the software architecture and operational architecture | API addition, refactoring, infrastructure automation |

*This table is sourced from "Project to Product" by Mik Kersten.*

FAQ:

* Q: Where would documentation issues fit? 
  * A: Documentation issues will most likely be considered a Bug if they are not delivered as part of a Feature.

It is the responsibility of the Product team to add this label, but Engineers are welcome to add it as well.

### Value Stream Labels

All issues should have a label indicating its value stream:

- `valuestream::Meltano`
- `valuestream::Hub`
- `valuestream::SDK`
- `valuestream::Academy`
- `valuestream::Ecosystem` - This is a bit of a catchall for general "community" type work that benefits the Meltano and Singer communities but does not neatly fit into another value stream. 

These map to our "product lines" and are used to understand allocation of work across the value streams.
There is an additional label for filtering purposes: `valuestream::BusinessOperation` which is used for administrative and business-related issues.

These value streams are inspired by the [Flow Framework](https://flowframework.org/) and are useful for understanding every bit of work that goes into the products that deliver value for users and, eventually, customers.

It is the responsibility of the Product team to add this label, but Engineers are welcome to add it as well.


### Meltano Area Labels

If appropriate, an issue should have a stage label (one of the letters in "meltano"):
- `Model`
- `Extract`
- `Load`
- `Transform`
- `Analyze`
- `Notebook` (currently unused)
- `Orchestrate`

The value of these labels is under discussion as forcing them to fit the Meltano acronym may not be optimal. 
We want a way to indicate the part of Meltano specifically that the work applies to, such as transformation, integration, etc.

### Community Engagement and Marketing Labels

- `Accepting Merge Requests` for issues that are ready to be picked up by a community contributor
- `Marketing::Blog Feature` for issues which we think may deserve a blog post feature, and/or other promotion on social channels
- `Community-Contributed MRs` for issues which have attached MRs from the community (used in prioritization and monitoring)
- `Awaiting Action::Author` for community-contributed issues and MRs which are pending an action from the original author

### Other Labels

- `Discussion` for issues that require more discussion
- `Exploration`
- `Community Support`
- `CLI` or `UI` for issues specifically concerning the CLI or UI
- `Documentation` for new or updated documentation
- `Integrations` for issues relating to integrations with other open source data tools, typically as plugins
- `Configuration` for issues relating to configuration
- `Plugin Management` for issues relating to plugin management

New labels can be created as appropriate at the Group Level and should be documented them here.

## Epics

When appropriate, house an issue under an existing epic: <https://gitlab.com/groups/meltano/-/epics>

New epics can be created for topics or efforts that will take multiple issues over multiple sprints.
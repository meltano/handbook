---
layout: page
title: Issue Trackers
weight: 2
---

At Meltano, we use GitLab issues to track everything that needs to (one day) be done or discussed.
Find the appropriate tracker for your issue below.

In line with our [Transparency](https://meltano.com/docs/#transparency) value, most of these trackers and the issues they hold are public so that our entire community can participate.
If an issue fits best in a public tracker but should be private anyway, use a [confidential issue](https://docs.gitlab.com/ee/user/project/issues/confidential_issues.html).

## General

- [Meta (`meltano/meta`)](https://gitlab.com/meltano/meta/-/issues): Public issue tracker for **meta-level topics** around the team, company, or community that don't concern a specific [product](#product-specific) and don't fit in any other project. Use confidential issues as needed.
- [Handbook (`meltano/handbook`)](https://gitlab.com/meltano/handbook/-/issues): Public issue tracker for **process and policy proposals** that will be documented in the public [company handbook](https://handbook.meltano.com/). Use confidential issues as needed.

## Subject-specific

- [Administration (`meltano/administration`)](https://gitlab.com/meltano/administration/-/issues): Private issue tracker for **administrative tasks** related to running the business. Used primarily by CEO and Operations Analyst.
- [Hiring (`meltano/hiring`)](https://gitlab.com/meltano/hiring/-/issues): Private issue tracker for **hiring topics**: hiring plans, job openings, and interview processes. Repository contains processes, questions, and exercises.
- [Marketing (`meltano/marketing/marketing-general`)](https://gitlab.com/meltano/marketing/marketing-general/-/issues): Public issue tracker for **all things marketing**. Use confidential issues as needed.


## Product-specific

- [Meltano (`meltano/meltano`)](https://gitlab.com/meltano/meltano/-/issues)
- [Meltano SDK (`meltano/sdk`)](https://gitlab.com/meltano/sdk/-/issues)
- [MeltanoHub (`meltano/hub`)](https://gitlab.com/meltano/hub/-/issues)
- [Meltano Squared (`meltano/squared`)](https://gitlab.com/meltano/squared/-/issues)

## Useful issue boards

- [Development Flow](https://gitlab.com/groups/meltano/-/boards/536761), with a column for each `flow::` label. Don't forget to filter by milestone, and/or assignee!
- [Engineering Assignments](https://gitlab.com/groups/meltano/-/boards/3546394?scope=all&milestone_title=%23started&not[label_name][]=valuestream%3A%3ABusiness%20Operation&not[label_name][]=kind%3A%3ANon-Product) - useful for understanding the WIP for engineers in the company.
- [Kind](https://gitlab.com/groups/meltano/-/boards/2917606) - useful for understanding the distribution of work across the different flow types (Bug, Feature, etc.)
- [Value Stream](https://gitlab.com/groups/meltano/-/boards/2917637) - useful for understanding the distribution of work acrss the different product areas of Meltano
- [Urgency](https://gitlab.com/groups/meltano/-/boards/2917749) - useful for understanding the overall priority of issues in a milestone.
- [Milestone](https://gitlab.com/groups/meltano/-/boards/1933232) - used to move issues easily between milestones.
- [Office Hours](https://gitlab.com/groups/meltano/-/boards/2923184) - used to tee up issues for community discussion and review, generally directly
before and/or after implementing an important user-facing feature.

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
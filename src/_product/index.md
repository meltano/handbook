---
layout: page
title: Product Handbook
weight: 1
permalink: /product/
---

Our [milestones and scheduled work](https://gitlab.com/groups/meltano/-/milestones) is available to the public, and we encourage anyone to [submit new issues](https://gitlab.com/meltano/meltano/issues/new).

## Getting in Touch

Use the public [#product](https://meltano.slack.com/archives/C02FRTMPHL0) channel to have open discussions about product priorities.
Use the private [#internal-product](https://meltano.slack.com/archives/C02MBDUHCCD) channel for non-public product discussions.

### Who to contact

For each Meltano property, we have a primary point of contact:

- Meltano - Taylor & AJ
- Meltano SDK - AJ
- MeltanoHub - Taylor
- MeltanoLabs - Pat
- Handbook / Website - Amanda

You should feel comfortable reaching out to each of us either in issues or on Slack if you have questions or concerns about any of these.

## Responsibilities

The Product team will review any [new issues](https://gitlab.com/groups/meltano/-/issues) in the Meltano group on a daily cadence and organize appropriately with labels and milestones.

Product is responsible for reaching out to users and talking with them about their experiences with all Meltano properties.
This is an important sensing mechanism for understanding how users interact with Meltano and it informs product priorities.
We aim for an average of 4 user interviews per month at a minimum.

## Choosing What to Work On

When evaluating a new major piece of work, we create an exploratory issue and use an opportunity assessment (some people call this "Market Requirement Doc" or MRD) to ask the following questions:

1. Exactly what problem will this solve? (value proposition)
2. For whom do we solve that problem? (target market)
3. How big is the opportunity? (market size)
4. What alternatives are out there? (competitive landscape)
5. Why are we best suited to pursue this? (our differentiator)
6. Why now? (market window)
7. How will we get this product to market? (go-to-market strategy)
8. How will we measure success/make money from this product? (metrics/revenue strategy)
9. What factors are critical to success? (solution requirements)
10. Given the above, what’s the recommendation? (go or no-go)

The [opportunity assessment was created by Marty Cagan at Silicon Valley Product Group](https://svpg.com/assessing-product-opportunities/)

## Roadmap Planning

Each item on the [roadmap](roadmap) will be linked to an OKR.

On the first and third monday of the month, the Head of Product and Head of Engineering will meet to validate the current state of the roadmap.
This will be a high-level discussion around progress on current items and negotiation on inclusion of items for current and upcoming months.
They will also discuss spike-worthy itmes and add the appropriate labels as needed.

Key questions to ask are:

- Are we shipping what we thought we would?
- Of the upcoming items on the roadmap, are they spec'ed out enough?

Issues that are related to Roadmap items should have the `Roadmap` label.

## Crossfunctional Feature Prioritization

When any work needs to be prioritized that is not specifically a roadmap featue, use the following process.

### Marketing:
- Marketing work that needs to be prioritized by Product or Engineering must have an issue associated with it. Add the relevant labels below so triage can be streamlined. 
The issue should get added to the [Product Roadmap board](https://github.com/orgs/meltano/projects/4/) by the requestor.
- Once added to the board, it will be considered a priority for marketing and enter  **The Process**  to get worked on by an engineer.
-   Once it's ready to be worked on by an Engineer, it will then get added to the Engineering Assignments board and assigned to an iteration and an engineer for working on.

#### Marketing Traige Labels:
-   `content review`
-   `needs-engineering`
-   `Marketing Priority`

## MR First

If you want to make an improvement to Meltano you don't have to wait for Product approval, kick-off some long convoluted dicsussion, or worry about stepping on anyone's toes. Submit a Merge Request (MR) with your proposed changes and we can iterate from there.

## "AND not OR" Mentality

Sometimes, it can feel like we are chosing between two important things and this can be painful. However, we take the approach that anything is technically possible to build on the Meltano team so it's a just a question of the order of operations. On a long enough timeline, we will do everything we put on the roadmap -- so keep writing issues and hold onto that "it's an AND, not OR" mindset.

## Milestones

Meltano uses weekly milestones to track work. They are named for the Friday on which the milestone ends, i.e. `Fri: July 9, 2021`.

### Weekly Kickoff

Every Monday we have a Kickoff call to highlight for the community what the priorities are for the week. Prior to the actual call, there are several work items to do.

#### Friday - Last day of Milestone

- Create a kickoff issue highlighting the general priority for the next week.
  - Title: `Weekly Kickoff for Milestone - <milestone>`
  - Due Date for the Monday of the milestone

#### Monday - Kickoff Day

Before the Kickoff Call:

- Review and roll community issues to the next milestone
- Roll merge requests
- Everyone on the team should roll their own issues to the next milestone. Take the time to review the current status of issues and align priorities with the kickoff issue.

Kickoff Call:

- Check-in with everyone
- Highlights & lowlights from previous week
- Confirm general priorities and do a soft review of boards
- Review Metrics
- Start livestream
  - Talk about general priority
  - Walk through issues

After the Kickoff Call:

- Close the previous milestone
- Close Kickoff issue

## Open Source Projects We're Keeping an Eye On

This section is dedicated to tracking interesting open source projects that we want to keep an eye on that we don't already have plans to integrate with.
This [article from BVP](https://www.bvp.com/atlas/roadmap-data-infrastructure/) is useful as well.

- [Evidence](https://www.evidence.dev/)
- [Lightdash](https://www.lightdash.com/) - BI, integrates with dbt
- [metriql](https://metriql.com/) - Headless BI
- [Rudderstack](https://rudderstack.com/) - Customer Data Platform
- [Soda SQL](https://github.com/sodadata/soda-sql) - Data Testing and Monitoring
- [Feast](https://github.com/feast-dev/feast) - ML Feature Store
- [fal](https://github.com/fal-ai/fal) - run python scripts from dbt
- [MetricFlow](https://github.com/transform-data/metricflow) - Metrics layer

Additionally, there are many "git for data" tools tracked in [this spreadsheet](https://docs.google.com/spreadsheets/d/1jGQY_wjj7dYVne6toyzmU7Ni0tfm-fUEmdh7Nw_ZH0k/edit#gid=0).
[Project Nessie](https://projectnessie.org/) is another option not listed in the sheet.

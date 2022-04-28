---
layout: page
title: Roadmap
weight: 2
---

Meltano is developed completely in the open on GitLab: <https://gitlab.com/meltano/meltano>. Our [issue tracker](https://gitlab.com/groups/meltano/-/issues), [epics](https://gitlab.com/groups/meltano/-/epics), and [weekly milestones](https://gitlab.com/groups/meltano/-/milestones) can be found there as well.

To get an idea of what the team and community are currently working on, check out the current [iteration](/company/using-gitlab#iterations)'s [Development Flow board](https://gitlab.com/groups/meltano/-/boards/536761?scope=all&utf8=%E2%9C%93&milestone_title=%23upcoming).

If you'd like to look further into the future, the [Milestones board](https://gitlab.com/groups/meltano/-/boards/536761?not[label_name][]=valuestream::Business+Operation&not[label_name][]=kind::Non-Product&iteration_id=Current) has a column for each upcoming milestone.

Be aware that issue [milestones](/company/using-gitlab#milestones) serve more as a rough indication of relative priority than as hard deadlines,
since short-term priorities can change quickly in response to community feedback, and it's hard to predict how much progress can be made in a week.

These efforts are the foundation of our larger vision to enable a full DataOps OS.
To learn more about our strategy around the DataOps OS, check out [this blog post](https://meltano.com/blog/our-strategy-to-achieving-meltanos-ambitious-mission-and-vision/).

## Our Roadmap

Our product development roadmap is driven by our company goals.
For 2022 the goals that are relevant to product are:

* **Become the DataOps OS**
* **Have a great new user experience**
* **Have a managed service by end of year (EOY)**

These goals can be broken dodwn further into large work items. 

We have a [Roadmap Board](https://gitlab.com/groups/meltano/-/boards/3860358?label_name[]=Roadmap) to connect these high-level goals to specific work items in the near-term.

As this projects out into the future it is subject to change based on feedback.
Don't see something you want on the roadmap? [Make an issue](https://gitlab.com/meltano/meltano/-/issues) and let us know!

### 2022-Q2

#### MeltanoHub as the SSOT for Meltano Plugins

This specifically means that MeltanoHub will be the only source for Meltano to understand what plugins are avialable for installation. 
This also implies specific features such as a lock file that prevents breaking changes when plugin definitions change as well as updates to the Hub APIs and how Meltano consumes those APIs.

#### Launch the MVP of a full DataOps OS

For the MVP, we've decided to implement Snowflake as the primary cloud vendor.
Everything else for the MVP will be an open source option:

* Singer for Extract and Load
* dbt for Transformations
* Airflow for Orchestration
* Great Expectations for Data Quality
* Superset for Analysis

The MVP will be launched as Meltano 2.0 where we will also be deprecating legacy features and eliminating tech debt.

#### Formalize Meltano API

Having a clear and stable API for interacting with Meltano via the command line and user interface will enable us to iterate faster on feature development. 
This also unlocks use cases for users that we may not be able to directly address in either the CLI or UI.

#### Rearchitect scheduling and workflows

Our goal with Meltano is not to create yet another orchestrator. 
We aim to simplify common cross-plugin workflows in a way that makes it easy to integrate with dedicated orchestrators.
With our OS framing in mind we will rework how jobs and tasks are defined and how those DAGs are sent to orchestrators for execution.

### 2022-H2

#### Improve choice within categories

With MeltanoHub as a the source of truth for plugins, the community will be able to add any arbitrary plugins as long as they meet the minimum level of quality.
Meltano will invest in increasing the level of support for specific plugins within different categories including Dagster for Orchestration, Soda for Data Quality, Clickhouse and DuckDB for data warehouse, Lightdash and mProve for Analysis, and more. 
These choices will be driven by user feedback and data. 

#### Improve deployment options with a focus on our managed service

As we make progress towards offering a managed Meltano service, we will invest in relevant deployment options for ourselves and our community.
We want to work with the community on this - if you're interested in becoming a design partner for the managed service, please reach out via Slack.

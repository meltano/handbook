---
layout: page
title: Metrics and Definitions
weight: 2
---

The following are the metrics and definitions that we currently track for understanding progress towards business goals.

## Metrics - Product Usage

These metrics are all sourced from the Google Analytics [anonymous usage data](https://meltano.com/docs/settings.html#send-anonymous-usage-stats) and use the [Meltano project_id](https://meltano.com/docs/settings.html#project-id) UUID as the definition of a project.
Events in this context are CLI commands.

#### 28 Day Active Users
The distinct count of [project_ids](https://meltano.com/docs/settings.html#project-id) using a trailing 28 day sliding window.
A project is considered active if it had any event in the 28 day window.

#### Plugin Usage Percentage
The percentage of projects in a particular time range that have executed one of more CLI commands using the plugin.
Due to the nature of our Google Analytics implementation we parse the CLI command strings to determine if it uses the plugin, refer to the [squared transformation logic](https://gitlab.com/meltano/squared/-/tree/master/data/transform/models) to understand how each plugin is parsed from the command.

Transformers:
- dbt

Orchestrators:
- Airflow (all `schedule run` commands are assumed to be Airflow)
- Dagster

EL:
- Singer

Utilities:
- sqlfluff

Analyzers:
- Lightdash
- Superset


#### OS Feature Usage Percentage
The percentage of projects in a particular time range that have executed one of more CLI commands using the OS feature.
Due to the nature of our Google Analytics implementation we parse the CLI command strings to determine if it uses the OS feature, refer to the [squared transformation logic](https://gitlab.com/meltano/squared/-/tree/master/data/transform/models) to understand how each OS feature is parsed from the command.

Current Features:
- [Environments](https://meltano.com/docs/environments.html#environments)
- [Run](https://meltano.com/docs/command-line-interface.html#run) - `meltano run`
- [Test](https://meltano.com/docs/command-line-interface.html#test) - `meltano test`

#### Average Events per Project
The count of projects where their last event was in the particular time range.

#### Monthly Events
The sum of all events by month.

#### Monthly New Projects
The count of new projects added by month.
A new project is one where their first event was send in that month.

#### Monthly Churned Projects
The count of churned projects by month.
A project is considered to be churned if no events were received for 1 month.


## Metrics - Community
These metrics track the health of our open source community.

#### Slack Members
The distinct count of slack members.

#### Community Contributions - Meltano
The count of issues and merge requests opened in the GitLab `meltano` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Community Contributions - MeltanoLabs
The count of issues and merge requests opened in the GitHub `MeltanoLabs` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).


## Definitions
These are the definitions of our teams commonly used terminology.

#### Monthly Active Cohort
The subset of active projects in a month.
Active means it has had at least 1 event in the month.


---
layout: page
title: Metrics and Definitions
weight: 2
---

The following are the metrics and definitions that we currently track for understanding progress towards business goals.

## Metrics - Product Usage

These metrics are all sourced from the Google Analytics [anonymous usage data](https://meltano.com/docs/settings.html#send-anonymous-usage-stats) and use the [Meltano project_id](https://meltano.com/docs/settings.html#project-id) UUID as the definition of a project.
Events in this context are CLI commands.

#### Monthly Plugin Usage Percentage
The percentage of projects in a particular time range that have executed one of more CLI commands using the plugin.
Due to the nature of our Google Analytics implementation we parse the CLI command strings to determine if it uses the plugin, refer to the [squared transformation logic](https://gitlab.com/meltano/squared/-/blob/master/data/transform/models/marts/telemetry/base/ga_commands_parsed.sql) to understand how each plugin is parsed from the command.

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


#### Monthly OS Feature Usage Percentage
The percentage of projects in a particular time range that have executed one of more CLI commands using the OS feature.
Due to the nature of our Google Analytics implementation we parse the CLI command strings to determine if it uses the OS feature, refer to the [squared transformation logic](https://gitlab.com/meltano/squared/-/blob/master/data/transform/models/marts/telemetry/base/ga_commands_parsed.sql) to understand how each OS feature is parsed from the command.

Current Features:
- [Environments](https://meltano.com/docs/environments.html#environments)
- [Run](https://meltano.com/docs/command-line-interface.html#run) - `meltano run`
- [Test](https://meltano.com/docs/command-line-interface.html#test) - `meltano test`

#### Monthly Events By Category
The sum of all monthly events by command category.
Command categories are defined in the Meltano [ga_tracker.py](https://gitlab.com/meltano/meltano/-/blob/master/src/meltano/core/tracking/ga_tracker.py#L148) module.

#### Active Projects 28d
The distinct count of [project_ids](https://meltano.com/docs/settings.html#project-id) using a trailing 28 day sliding window.
A project is considered active if it had any event in the 28 day window.

#### Monthly Acquired Projects
A project is considered acquired if its first event was sent in the month.

#### Monthly Churned Projects
A project is considered churned if its last event was sent in the month.

#### Monthly Retained Projects
Retained means the project was active in the month but was not acquired or churned, just retained.
A project is considered retained if it sent an event thats greater than its acquired month and less than its churned month.

#### Monthly Tracking Disabled Projects
This is a subset of the churned projects.
A project is considered tracking disabled if they have behavior where we can infer that they have turned off anonymous tracking in their project.
Its hard to detect the difference between a true churn vs a project just turning anonymous tracking off but if a project sends us a single event `meltano init` then nothing else following that, we assume they opted out of tracking as part of onboarding.
In the [getting started guide](https://meltano.com/docs/getting-started.html#create-your-meltano-project) we inform users of this choice after `init` but before any other commands.
It would be odd behavior to create a project but not actually run any commands, so this seems like a fair assumption.

#### Percentage Cohort Usage vs Original
A cohort's total events in a month compared to it's total events in it's acquired month.
The acquired month is the first month that an event was received from that project.

#### Percentage Cohort Projects Active vs Original
A cohort's count of active projects in a month compared to it's count of projects in it's acquired month.
Since this considers only active projects in a month, meaning an event was received, its possible for projects to become inactive then later re-activate.

#### Slack Members
The distinct count of slack members.
This excludes all bots and users who have been deleted.
#### Community Contributions - Meltano
The count of issues and merge requests opened in the GitLab `meltano` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Community Contributions - MeltanoLabs
The count of issues and merge requests opened in the GitHub `MeltanoLabs` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

## Metrics - Community
These metrics track the health of our open source community.
To come...

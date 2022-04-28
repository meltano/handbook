---
layout: page
title: Metrics and Definitions
weight: 2
---

The following are the metrics and definitions that we currently track for understanding progress towards business goals.
These are materialized by the logic in the [squared project](https://gitlab.com/meltano/squared/) using dbt which can be explored in more detail using the hosted [dbt docs](https://meltano.gitlab.io/squared/#!/overview).

## Metrics - Product Usage

These metrics are all sourced from the Google Analytics [anonymous usage data](https://docs.meltano.com/reference/settings#send_anonymous_usage_stats) and use the [Meltano project_id](https://docs.meltano.com/reference/settings#project_id) UUID as the definition of a project.
Events in this context are CLI commands.

#### Monthly Plugin Usage Percentage

The percentage of monthly projects that have executed one or more CLI commands using the plugin.
Executed means the plugin was run with elt/invoke/run/test.
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
- Great Expectations

Analyzers:

- Lightdash
- Superset

Other - A generic bucket for plugins that aren't explicitly tracked yet.

#### Monthly OS Feature Usage Percentage

The percentage of projects that have executed one of more CLI commands using the OS feature.
Due to the nature of our Google Analytics implementation we parse the CLI command strings to determine if it uses the OS feature, refer to the [squared transformation logic](https://gitlab.com/meltano/squared/-/blob/master/data/transform/models/marts/telemetry/base/ga_commands_parsed.sql) to understand how each OS feature is parsed from the command.

Current Features:

- [Environments](https://docs.meltano.com/reference/command-line-interface#environment)
- [Run](https://docs.meltano.com/reference/command-line-interface#run) - `meltano run`
- [Test](https://docs.meltano.com/reference/command-line-interface#test) - `meltano test`
- [Mappers](https://docs.meltano.com/concepts/plugins#mappers) - `meltano run tap-x mappers-plugin target-y`

#### Monthly Events By Category

The sum of all monthly events by command category.
Command categories are defined in the Meltano [ga_tracker.py](https://gitlab.com/meltano/meltano/-/blob/master/src/meltano/core/tracking/ga_tracker.py#L148) module.

#### Active Projects 28d - >1 Execution

The distinct count of [project_ids](https://docs.meltano.com/reference/settings#project_id) using a trailing 28 day sliding window.
A project is considered active if it had >1 execution event (invoke, elt, run, test, ui) in the 28 day window.
These are not unique executions, for example if a single elt job was run multiple times then the project is considered active.

#### Active Projects 28d - >1 Unique Pipeline

The distinct count of [project_ids](https://docs.meltano.com/reference/settings#project_id) using a trailing 28 day sliding window.
A project is considered active if it had >1 unique pipeline execution (elt, invoke, run) in the 28 day window.
The pipeline uniqueness is based on the command which also accounts for different environments.
The same pipeline using multiple environments are counted individually.

#### Monthly Acquired Projects

A project is considered acquired for a given month if its first event was sent in that month.

#### Monthly Churned Projects

A project is considered churned for a given month if its last event was sent in that month.

#### Monthly Retained Projects

Retained means the project was active in a given month but was not acquired or churned.
A project is considered retained if it sent an event thats greater than its acquired month and less than its churned month.

#### Monthly Tracking Disabled Projects

This is a subset of the churned projects.
A project is considered tracking disabled if they have behavior where we can infer that they have turned off anonymous tracking in their project.
Its hard to detect the difference between a true churn vs a project just turning anonymous tracking off but if a project sends us a single event `meltano init` then nothing else following that, we assume they opted out of tracking as part of onboarding.
In the [getting started guide](https://docs.meltano.com/getting-started#create-your-meltano-project) we inform users of this choice after `init` but before any other commands.
It would be odd behavior to create a project but not actually run any commands, so this seems like a fair assumption.

#### Percentage Cohort Usage vs Original

A cohort's total events in a given month compared to it's total events in it's acquired month.
The acquired month is the first month that an event was received from that project.

#### Percentage Cohort Projects Active vs Original

A cohort's count of active projects in a given month compared to its count of projects in its acquired month.
Since this considers only active projects in a month, meaning an event was received, its possible for projects to become inactive then later re-activate.

## Metrics - Community

These metrics track the health of our open source community.

#### Slack Members

The distinct count of slack members.
This excludes all bots and users who have been deleted.

#### Community Contributions - GitLab Meltano

The count of issues and merge requests opened in the GitLab `meltano` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Community Contributions - GitHub MeltanoLabs

The count of issues and merge requests opened in the GitHub `MeltanoLabs` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Contributors

The count of unique contributors across the GitLab Meltano and GitHub MeltanoLabs namespaces.
Users are de-duplicated across platforms by first using an exact match then falling back to a [manual mapping file](https://gitlab.com/meltano/squared/-/blob/master/data/transform/data/contributor_id_mapping.csv) where the usernames are different across platforms.

#### Company Domains

The list of company domains that were first acquired in slack per month.
The domain is based on emails of new slack users.
The date the domain was acquired is based on the first user to join with that domain.

---
layout: page
title: Metrics and Definitions
weight: 2
---

The following are the metrics and definitions that we currently track for understanding progress towards business goals.
These are materialized by the logic in the [squared project](https://github.com/meltano/squared/) using dbt which can be explored in more detail using the hosted [dbt docs](https://meltano.gitlab.io/squared/#!/overview).

## Metrics - Product Usage

These metrics are all sourced from the Google Analytics [anonymous usage data](https://docs.meltano.com/reference/settings#send_anonymous_usage_stats) and use the [Meltano project_id](https://docs.meltano.com/reference/settings#project_id) UUID as the definition of a project.
Events in this context are CLI commands.

#### Projects x Plugins Score (PXP)

The number of projects times the amount of plugins categories used in each project.

For example, 10 projects using only Singer (1 plugin category) or 2 projects using Singer + dbt + GE + Airflow + Superset (5 categories) would both count as 10 "points" toward the PXP.

This metric is used to monitor both the active user base in general as well as the variety of plugins that those projects use.
This metric encourages us to both grow the existing user base while also encouraging users to increase the variety of plugins they use.
This means the existing projects implemented pre-2.0 only using EL still positively contribute to this metric.

##### Implementation Details

The metric is aggregated daily over a 28 day rolling window excluding executions that are within 7 days of their first event.
This means that projects that are abandoned within 7 days are never accounted for in this metric.
The intention is to reduce the noise created by first time users exploring so the metric more closely tracks long term users.
One reason we chose a 28 day window was because we want to make sure we account for plugins that are less frequently executed like Airflow or Superset.
Only execution events are considered for this metric meaning invoke/elt/run/test (ui doesnt execute a plugin so it gets naturally excluded even though its an execution event).
If the execution project ID source is "random" then its not considered because we can't confidently differentiate that project from another we've already counted so we risk over counting.

#### APP - Average Plugin Types per Project

A secondary metric for measuring progress towards being the DataOps platform infrastructure is the average number of plugin types per project (APP).

We want to increase APP but it's as much a tool to aid in prioritization as it is a metric we care about.

This metric is intending to understand the variety and depth of plugins used by Meltano projects, although it has the side affect of being skewed by spikes in new projects that
haven't been around long enough to onboard a variety of plugins yet or by the cohort of projects using Meltano only for EL.

Similar to PXP this metric is aggregated daily over a 14 day rolling window, excluding executions that are within 7 days of their first event, and only considered execution events.
This metric is intending to understand the variety and depth of plugins used by Meltano projects, although it has the side affect of being skewed by spikes in new projects that
haven't been around long enough to onboard a variety of plugins.

APP is a lagging indicator that should be interpreted in context of other KPIs and health metrics.
Short-term fluctuations are expected and our goal is an increase of the KPI over the long term.

APP is calculated using CLI invocations for elt, run, test, and invoke and by categorizing
each plugin into its appropriate type (i.e. Singer, dbt, Airflow, etc.).

For example, if a project executes the following commands:

```bash
meltano elt tap-github target-snowflake

meltano run tap-gitlab some-map target-snowflake dbt

meltano invoke airflow

meltano test tap-gitlab some-map target-snowflake
```

APP for this project is 3 because only Singer, dbt, and Airflow plugins are used.

This definition of type is different from how we discuss plugin types in the [Meltano documentation](https://docs.meltano.com/concepts/plugins#types).
In the above example, tap-gitlab, some-map, and target-snowflake are 3 different plugin types (Extractor, Mapper, and Loader, respecitvely), but for this metric they are all Singer-based plugins.

##### Diagnosing APP Volatility

As with any ratio-based KPI, the total % or average product count can go down whenever we add to the denominator disproportionately. Since our denominator is number of total users, any large influx of new users may _reduce_ the overall percentages and APP averages. Changes in the denominator should always be considered therefor when investigating or analyzing changes over time in these metrics.

#### Monthly Plugin Usage Percentage

The percentage of monthly projects that have executed one or more CLI commands using the plugin.
Executed means the plugin was run with elt/invoke/run/test.
Due to the nature of our Google Analytics implementation we parse the CLI command strings to determine if it uses the plugin, refer to the [squared transformation logic](https://github.com/meltano/squared/tree/main/data/transform/models/marts/telemetry/base/structured_parsing) to understand how each plugin is parsed from the command.

#### Monthly OS Feature Usage Percentage

The percentage of projects that have executed one of more CLI commands using the OS feature.
This metric includes both Snowplow and GA events.
Due to the nature of our Google Analytics implementation we parse the CLI command strings to determine if it uses the OS feature, refer to the [squared transformation logic](https://github.com/meltano/squared/tree/main/data/transform/models/marts/telemetry/base/structured_parsing) to understand how each OS feature is parsed from the command.

Current Features:

- [Environments](https://docs.meltano.com/reference/command-line-interface#environment)
- [Run](https://docs.meltano.com/reference/command-line-interface#run) - `meltano run`
- [Test](https://docs.meltano.com/reference/command-line-interface#test) - `meltano test`
- [Mappers](https://docs.meltano.com/concepts/plugins#mappers) - `meltano run tap-x mappers-plugin target-y`
- etc.

#### Monthly Events By Category

The sum of all monthly events by command category.
Command categories are defined in the Meltano [tracking](https://github.com/meltano/meltano/tree/main/src/meltano/core/tracking) module.

#### Active Projects 28d >1 Execution

The distinct count of [project_ids](https://docs.meltano.com/reference/settings#project_id) using a trailing 28 day sliding window.
A project is considered active if it had >1 execution event (invoke, elt, run, test, ui) in the 28 day window.
These are not unique executions, for example if a single elt job was run multiple times then the project is considered active.

#### Active Projects 28d >1 Unique Pipeline

The distinct count of [project_ids](https://docs.meltano.com/reference/settings#project_id) using a trailing 28 day sliding window.
A project is considered active if it had >1 unique pipeline execution (elt, invoke, run) in the 28 day window.
The pipeline uniqueness is based on the command which also accounts for different environments.
The same pipeline using multiple environments are counted individually.

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

The count of issues and merge requests opened in the GitHub `MeltanoLabs` or `meltano` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Contributors

The count of unique contributors across GitLab and GitHub.
Users are de-duplicated across platforms by first using an exact match then falling back to a [manual mapping file](https://github.com/meltano/squared/blob/main/data/transform/data/contributor_id_mapping.csv) where the usernames are different across platforms.

#### Company Domains

The list of company domains that were first acquired in slack per month.
The domain is based on emails of new slack users.
The date the domain was acquired is based on the first user to join with that domain.


## Common Definitions

#### Execution Event

An execution event when a user executes something via Meltano.
The intent is to exclude any native or configuration related CLI executions to differentiate between running a pipeline vs configuring a project or managing the Meltano instance (e.g. `meltano state`).
For example `meltano config` is not an execution event but `meltano run` is.
The list includes invoke/elt/run/test/ui.

#### Plugin Categories

Some plugins have many implementations (different from variants) but represent the same underlying plugin category so we want to group them for reporting purposes.
For example the `singer` plugin category is used to represented the entire catalog of taps and targets and `dbt` has adapter specific plugins (i.e. `dbt-snowflake`, `dbt-postgres`, etc).
These all get rolled up into their respective plugin category.

#### Pipeline

A pipeline is an execution by a project of 1 or more plugins using either the `meltano run` or `meltano elt` command.
Pipelines are also distinct to environment, meaning the same set of plugins run in cicd vs prod vs no environment are considered distinct pipelines.
The unique combination of plugins also considers the use of [plugin commands](https://docs.meltano.com/concepts/project#plugin-commands) due to the fact that many pipeline specific arguments are set using custom commands.
For example using `meltano --environment=prod run tap-csv target-postgres dbt-snowflake:stage` is distinct from `meltano --environment=prod run tap-csv target-postgres dbt-snowflake:all` due to the `stage` vs `all` dbt command doing potentially very different things.
The decision to not consider `invoke` commands as pipelines was because `invoke` is primarily used for adhoc executions whereas pipelines are usually scheduled and recurring.

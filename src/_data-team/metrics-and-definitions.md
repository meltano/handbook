---
layout: page
title: Metrics and Definitions
weight: 2
---

The following are the metrics and definitions that we currently track for understanding progress towards business goals.
These are materialized by the logic in the [squared project](https://github.com/meltano/squared/) using dbt which can be explored in more detail using the hosted [dbt docs](https://meltano.gitlab.io/squared/#!/overview).

## Metrics - Product Usage

These metrics are all sourced from the Meltano core CLI [anonymous usage data](https://docs.meltano.com/reference/settings#send_anonymous_usage_stats) and use the [Meltano project_id](https://docs.meltano.com/reference/settings#project_id) UUID as the definition of a project.

#### Monthly Active Projects

The amount of projects that had an [active execution](/data-team/metrics-and-definitions#active-execution) in the month and also ended the month with active status.

Projects are assigned [active status](/data-team/metrics-and-definitions#active-status) at the day grain using a 28d rolling window so theres a lag between when a project stops executing pipelines and when they've officially inactive.
Due to this we chose to only count projects that had active executions because although the project might still have active status in a particular month, it may be in its grace period on it's way to being churned by the end of the month.
For example if a project is active for a few months then runs it's final pipeline on Jan 31th 2023, then no pipelines in Feb, they would be active until Feb 28th then they'd switch to inactive, since they didn't have any active executions in Feb they would rightfully not be counted towards this Monthly Active Projects metric.
Similarly if they ran their final pipelines on Jan 1st then they would be inactive by Jan 29th and would not count towards this metric because they didn't end the month in active status.

#### Monthly Pipeline Runs

The amount of pipelines that were executed in a month.
This metric does not require that the pipeline was executed successfully.

#### Monthly New Projects

The amount of new projects created.
This excludes projects:
- with random project ID sources
- that are only executed in CI pipelines
- that opted outs
- with a project lifespan < 5 mins
- where it's first event is > '2022-06-01' and meltano version is prior to the 2.0 launch Snowplow telemetry release. The intention is to exclude projects that were created by users who already had a previous version of Meltano installed, meaning this isn't a new user.

#### Monthly Unique Pipelines

The count of unique pipelines that we're executed in a month, see the [pipeline definition section](/data-team/metrics-and-definitions#pipeline) for more details on what makes a unique pipeline.

## Metrics - Community

These metrics track the health of our open source community.

#### Slack Members

The distinct count of slack members.
This excludes all bots and users who have been deleted.

#### Community Contributions - GitHub/GitLab Meltano

The count of issues and pull requests opened in the GitHub/GitLab `meltano` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Community Contributions - GitHub MeltanoLabs

The count of issues and pull requests opened in the GitHub `MeltanoLabs` or `meltano` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Community Contributions - GitHub MeltanoLabs

The count of issues and pull requests opened in the GitHub `MeltanoLabs` or `meltano` namespace.
Contributions by core team members are still counted prior to their start date at Meltano (company).

#### Contributors

The count of unique contributors across GitLab and GitHub.
Users are de-duplicated across platforms by first using an exact match then falling back to a [manual mapping file](https://github.com/meltano/squared/blob/main/data/transform/data/contributor_id_mapping.csv) where the usernames are different across platforms.

#### Company Domains

The list of company domains that were first acquired in slack per month.
The domain is based on emails of new slack users.
The date the domain was acquired is based on the first user to join with that domain.


## Common Definitions

#### Active Status

An active project is defined as a project that is >=7 days old, ran an [execution event](/data-team/metrics-and-definitions#execution-event), and the project ID source is not "random".
This attribute uses a daily aggregated 28 day rolling window.

- &gt;=7 Day Lifespan Filter

    This means that projects that are abandoned within 7 days are never counted as active.
    The intention is to reduce the noise created by first time users exploring so our metrics more closely track long term users.

- Execution Event Filter

    Although a user may be executing project configuration commands like install/config/discover/etc., we don't consider them active until they run an [execution command](/data-team/metrics-and-definitions#execution-event).

- Project Source Filter

    Projects with a [project ID source](/data-team/metrics-and-definitions#project-id-source) of `random` are excluded from active status because our telemetry is unreliable for them.
    Likely the project ID is being regenerated in something like an ephemeral container and is not persisted in the meltano.yml file.
    We do not exclude `persisted_random` projects because they have proven to have reliable telemetry.

- 28 day Rolling Window

    A 28 day rolling window is used, meaning once a project stops running their last execution they're still considered active for 28 more days.
    One reason we chose a 28 day window was because we want to make sure we account for service plugins that are less frequently executed like Airflow or Superset and for users who run larger less frequent pipelines (i.e. weekly, bi-weekly).
    This is something to be aware of and to consider when interpreting results because a metric like monthly churn rate could be more reflective of projects churning the prior month.

- Re-activation Example

    Projects can fluctuate between active and inactive states over their lifetime, for example: a new user looking to bring Meltano into their organization might conduct a POC where they initialize a project and use it actively for a couple weeks, then go dormant for 28+ days making them inactive while they get buy-in from leadership, then later pick the project back up and execute a plugin at which point they're immediately considered active again following plugin execution.

#### Project ID Source

The project ID source attribute is sent with every execution and will almost always be random for a `meltano init`, so the project's ID source attribute is ultimately based on the first
project ID source received excluding the init command.
Additionally, some projects eventually graduate out of being considered random and into a new source called `persisted_random` when they are >7 days old and have been seen from multiple different IP addresses.
This type of activity indicates that they're most likely not ephemeral projects anymore and the project ID was persisted to the meltano.yml file.

#### Project Fish Segments

Projects are assigned one of the following fish segments on a monthly basis according to the amount of pipelines they ran in that month:

- Whale: > 2000 pipelines
- Marlin: 50-2000 pipelines
- Guppy: < 50 pipelines

This allows us to understand the influence of particular segments on the overall pipeline counts.

#### Execution Event

An execution event when a user executes something via Meltano.
The intent is to exclude any native or configuration related CLI executions to differentiate between running a plugin/pipeline vs configuring a project or managing the Meltano instance (e.g. `meltano state`).
For example `meltano config` is not an execution event but `meltano run` is.
The list includes invoke/elt/run/test/ui.

#### Active Execution

An execution event that occurred while a project had [active status](/data-team/metrics-and-definitions#active-status).

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

---
layout: page
title: KPIs
weight: 2
---

## What is a KPI

A Key Performance Indicator (KPI) is a way to measure and understand progress towards a particular result.

## North Star KPI

Meltano's current North Star KPI is the number of unique CLI invocations for run, test, and invoke over time. Unique means the set of **plugins** and **environments** within a specific project triggered by the three CLI commands. 

For example, if a project runs the following commands:

```bash
# This is run 10x per day
meltano –environment=dev run tap-gitlab some-map target-snowflake dbt

# This is run 1x per day (same as above, different environment)
meltano –environment=prod run tap-gitlab some-map target-snowflake dbt

# This is run 1x per day (same as above, without dbt)
meltano –environment=prod run tap-gitlab some-map target-snowflake
```

these would be counted as a total of 3 unique CLI invocations for any given time period. 

The goal of this metric is to help us validate our vision and our movement towards product-market fit. 

We include `run` and `test` as they are relatively new features based on our DataOps OS vision. 
We include `invoke` as well because it implies specific usage of plugins.

We determine uniqueness based on the set of plugins *and* the environment as the more users are running a variety of plugins in any number of environments, we believe that to be progress toward our vision. 

### Other KPIs

We care about a number of particular KPIs and metrics, but we believe our current North Star KPI to be the most important. 

Other metrics we track are documented in the [data team handbook](/data-team/metrics-and-definitions)

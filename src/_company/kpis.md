---
layout: page
title: KPIs
weight: 2
---

## What is a KPI

A Key Performance Indicator (KPI) is a way to measure and understand progress towards a particular result.

## North Star KPI - Average Plugins per Project

Meltano's current North Star KPI is the average number of plugin types per project (APP).

The goal of APP is to help us validate our vision and our progress towards product-market fit for Meltano as a DataOps OS. 

APP is calculated using CLI invocations for run, test, and invoke and by categorizing each plugin into its
appropriate type (i.e. Singer, dbt, Airflow, etc.). 

For example, if a project executes the following commands:

```bash
meltano run tap-gitlab some-map target-snowflake dbt

meltano invoke airflow

meltano test tap-gitlab some-map target-snowflake
```

APP for this project is 3 because only Singer, dbt, and Airflow plugins are used.

We include `run` and `test` as they are relatively new features based on our DataOps OS vision. 
We include `invoke` as well because it implies specific usage of plugins.
We exclude `elt` as it a pre-OS feature that does not drive us towards our vision.

### Other KPIs

We care about a number of other KPIs and metrics, but we believe APP to be the most important. 

Other metrics we track are documented in the [data team handbook](/data-team/metrics-and-definitions)

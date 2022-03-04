---
layout: page
title: KPIs
weight: 2
---

## What is a KPI

A Key Performance Indicator (KPI) is a way to measure and understand progress towards a particular result.

## North Star KPI - Average Plugin Types per Project

Meltano's current North Star KPI is the average number of plugin types per project (APP).

The goal of APP is to help us validate our vision and our progress towards product-market fit for Meltano as a DataOps OS. 

APP is a lagging indicator that should be interpreted in context of other KPIs and health metrics. 
Short-term fluctuations are expected and our goal is improvement of the KPI over the long term.

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

### Other KPIs

Additional KPIs and health metrics like retention, overall usage, and community engagement will be added to this page as we're able to define and measure them.

Other metrics we track are documented in the [data team handbook](/data-team/metrics-and-definitions)

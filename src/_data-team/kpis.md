---
layout: page
title: KPIs
weight: 2
---

## Intro to KPIs

A Key Performance Indicator (KPI) is a way to measure and understand progress towards a particular result.

## KPIs as Health Metrics

Certain KPIs are considered Health Metrics, which means we actively monitor them and alarm on them and take action when and if they fall out of expected range. Otherwise we may or may not have goals or initiatives associated with their outputs.

## Pipeline Runs

Meltano's primary strategic goal is to achieve product-market fit for Meltano as the DataOps Platform Infrastructure, with a particular focus on ELT workloads. Our primary metric for measuring progress towards this goal is the number of pipelines run.

This metric encourages us to have users implement Meltano for useful data workloads across all plugin types and is typically a sign of a successful implementation of a Meltano project. 
This metric encourages us to grow the usage of existing Meltano users as well as activate new users to a successful pipeline run. 
We also view this metric as a possible proxy for revenue once our [Managed offering](https://meltano.com/managed/) is launched.

To learn more about North Star Metrics checkout these articles from [Mixpanel](https://mixpanel.com/blog/north-star-metric/) and [Amplitude](https://amplitude.com/blog/product-north-star-metric).

#### Implementation Details


## Transparency Guidelines for KPIs and Metrics

- Metric calculation logics and the code behind them are **public** in the `squared` repo.
- KPI metric values, metric goals, and metric history are kept **internal** by default.

Note:

- "Internal by default" does not mean "private". We wholeheartedly reject "private" metrics or metrics that only certain individuals would have access to monitor. Metrics and KPIs by default should always be made available as broadly as possible, to the extent that we can still honor our responsibility for proper handling of PII and other protected or sensitive data.
- Our CEO can approve metrics to be made public on a per-case cases: as specific data points, as live metrics, or in the form of interactive reports and dashboards.

## Why KPIs are internal-by-default

Making KPIs as internal-by-default instead of "public" (counterintuitively) keeps politics and pride out of the honest reporting of our metrics, and it supports our values of company-wide humility, ambition, and transparency. This approach allows the best and most honest internal iterations on metrics, and promotes transparency across the company _by default_ with no need for individuals to avoid or suppress metrics which at least initially don't look "flattering" for meltano.

### Other KPIs

Additional KPIs and health metrics like retention, overall usage, and community engagement will be added to this page as we're able to define and measure them.

Other metrics we track are documented in the [data team handbook](/data-team/metrics-and-definitions)

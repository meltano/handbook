---
layout: page
title: KPIs
weight: 2
---

## Intro to KPIs

A Key Performance Indicator (KPI) is a way to measure and understand progress towards a particular result.

## KPIs as Health Metrics

Certain KPIs are considered Health Metrics, which means we actively monitor them and alarm on them and take action when and if they fall out of expected range. Otherwise we may or may not have goals or initiatives associated with their outputs.

## Active Projects

Meltano's primary strategic goal is to achieve product-market fit for Meltano as a data movement (EL+T) solution with 10X developer experience over alternatives. Our primary metric for measuring progress towards this goal is the number of [active projects](/data-team/metrics-and-definitions#active-project).

Active projects is a metric we can influence directly and new active projects will inevitably lead to more Unique Pipelines and Pipeline Runs.
This metric encourages us to retain existing Meltano users as well as activate new users.

We previously targeted Pipeline Runs as our primary metric, but because it, along with unique pipelines, are harder to directly influence, we have re-focused on active projects.
However, we believe that a key part of increasing active projects is ensuring successful pipeline runs, so we will still monitor Pipelines Runs closely.

To learn more about North Star Metrics checkout these articles from [Mixpanel](https://mixpanel.com/blog/north-star-metric/) and [Amplitude](https://amplitude.com/blog/product-north-star-metric).

#### Implementation Details

See the [metrics and definitions page](/data-team/metrics-and-definitions#pipeline) for details on how we measuere pipelines.

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

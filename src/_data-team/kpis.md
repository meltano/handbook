---
layout: page
title: KPIs
weight: 2
---

## Intro to KPIs

A Key Performance Indicator (KPI) is a way to measure and understand progress towards a particular result.

## KPIs as Key Results in an OKR

KPIs are often used to measure Key Results in an [OKR](/company/okrs). Not all KPIs are input metrics to OKRs. Certain KPIs are tracked as health metrics and certain metrics or KPIs are not yet actionable because they are still being socialized and analyzed.

## KPIs as Health Metrics

Certain KPIs are Health Metrics and not part of any OKR, which means we may passively monitor them and alarm on them and take action when and if they fall out of expected range. Otherwise we may or may not have goals or initiatives associated with their outputs.

## APP - Average Plugin Types per Project

Meltano's current North Star OKR is to help us validate our vision and our progress towards product-market fit for Meltano as a DataOps OS. Our primary metric for this OKR is the average number of plugin types per project (APP).

We want to increase APP but it's as much a tool to aid in prioritization as it is a metric we care about.

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

To learn more about North Star Metrics checkout these articles from [Mixpanel](https://mixpanel.com/blog/north-star-metric/) and [Amplitude](https://amplitude.com/blog/product-north-star-metric).

## Product Penetration Ratios - The Components of APP

Since we have 4 tracked plugin types for the purposes of APP tracking, and since there are two ways of tracking each metric, there are likewise 8 (4x2) component product penetration KPIs:

- `#` and `%` monthly projects with "Orchestrator" plugins usage.
- `#` and `%` monthly projects with "Transformer" plugins usage.
- `#` and `%` monthly projects with "Utility" plugins usage.
- `#` and `%` monthly projects with "Singer" plugins usage.

## Diagnosing APP Metric Volatility

As with any ratio-based KPI, the total % or average product count can go down whenever we add to the denominator disproportionately. Since our denominator is number of total users, any large influx of new users may _reduce_ the overall percentages and APP averages. Changes in the denominator should always be considered therefor when investigating or analyzing changes over time in these metrics.

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

---
layout: page
title: Telemetry
weight: 2
---

## Telemetry Overview

We collect telemetry data (see [docs](https://meltano.com/docs/settings.html#send-anonymous-usage-stats)) for the Meltano CLI, UI, website, MeltanoHub, Newsletter, etc. in order to understand usage patterns.
This is currently done via [Google Analytics](https://analytics.google.com/analytics/web/#) but will soon be [transistioned over](https://gitlab.com/groups/meltano/-/epics/122) to a hosted Snowplow instance.
All Telemetry data has limitations at it's core because it's easy to disable tracking through the application using the [send_anonymous_usage_stats](https://docs.meltano.com/reference/settings#send_anonymous_usage_stats) setting or by using other tracker blocking software or by simply running the application without an internet connection.

## Google Analytics (GA)

GA is the current event aggregator that we use for telemetry data.
Our implementation has some known flaws including the use of a user_id that is commonly short lived in a Meltano project.
This means that some projects look like a new user on every instantiation.
Due to this we choose to retrieve the raw events from GA and use project_id as the unique identifier for a Meltano project.
This is currently done by pulling the GA data, using Meltano in the squared [repo](https://gitlab.com/meltano/squared), into Snowflake and analyzing it there.

## Snowplow

Snowplow is an open source event data collection platform that we use for collecting telemetry data.
The goal is to migrate off of GA for event tracking and onto Snowplow for multiple reasons but primarily because it has more advanced features that GA doesn't support.
Our Snowplow instance is hosted by [SnowcatCloud](https://www.snowcatcloud.com/), see the [Squared Snowplow README](https://gitlab.com/meltano/squared/-/tree/master/data/utilities/snowplow) for more details on how the data is received and loaded into Snowflake via Snowpipes.

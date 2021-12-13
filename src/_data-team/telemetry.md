---
layout: page
title: Telemetry
weight: 2
---

## Telemetry Overview

We collect telemetry data (see [docs](https://meltano.com/docs/settings.html#send-anonymous-usage-stats)) for the Meltano CLI, UI, website, MeltanoHub, Newsletter, etc. in order to understand usage patterns.
This is currently done via [Google Analytics](https://analytics.google.com/analytics/web/#) but will soon be [transistioned over](https://gitlab.com/groups/meltano/-/epics/122) to a hosted Snowplow instance.

## Google Analytics (GA)

GA is the current event aggregator that we use for telemetry data.
Our implementation has some known flaws including the use of a user_id that is commonly short lived in a Meltano project.
This means that some projects look like a new user on every instantiation.
For this reason the CLI user metrics are not a reliable source for understanding active users.
This is currently done by pulling the GA data, using Meltano in the squared [repo](https://gitlab.com/meltano/squared), into Athena and analyzing it there. 

## Snowplow

Coming soon...

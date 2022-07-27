---
layout: page
title: Telemetry
weight: 2
---

## Telemetry Overview

We collect telemetry data (see [docs](https://docs.meltano.com/reference/settings#send_anonymous_usage_stats)) for the Meltano CLI, UI, website, MeltanoHub, Newsletter, etc. in order to understand usage patterns.
This is primarily done by Snowplow but some events are still tracked by pre-2.0 Meltano versions via [Google Analytics](https://analytics.google.com/analytics/web/#).
All Telemetry data has limitations at it's core because it's easy to disable tracking through the application using the [send_anonymous_usage_stats](https://docs.meltano.com/reference/settings#send_anonymous_usage_stats) setting or by using other tracker blocking software or by simply running the application without an internet connection.

## Data Collection Platforms

### Snowplow

Snowplow is an open source event data collection platform that we use for collecting telemetry data.
Our Snowplow instance is hosted by [SnowcatCloud](https://www.snowcatcloud.com/), see the [Squared Snowplow README](https://github.com/meltano/squared/tree/main/data/utilities/snowplow) for more details on how the data is received and loaded into Snowflake via Snowpipes.

### Google Analytics (GA)

GA is the legacy event aggregator that we used for telemetry prior to Snowplow.
Our implementation has some known flaws including the use of a user_id that is commonly short lived in a Meltano project.
This means that some projects look like a new user on every instantiation.
Due to this we choose to retrieve the raw events from GA and use project_id as the unique identifier for a Meltano project.
This is currently done by pulling the GA data, using Meltano in the squared [repo](https://github.com/meltano/squared), into Snowflake and analyzing it there.

## Philosophy of Telemetry

The goal of telemetry is three-fold:

1. **Inform our team.**
   - We gather data which can be used to improve the Meltano product. This includes gathering insights on which Meltano features are used and how pervasively, which work well, and which are not working well.
2. **Inform our community.**
   - We gather data which can help guide other Meltano users. For instance, when one specific plugin is being used successfully by thousands of distinct users every day, we want to reflect that success in plugin metadata on the Hub so others can be encouraged to try out the same plugin, with confidence that thousands of others have deployed it successfully.
   - Conversely, if a plugin breaks, or for any reason stops working for 99% of our users, we can put a warning that guides the community _away_ from using the broken version of the plugin. We can also channel our resources, both internally and from the broader community, to help plugin maintainers resolve those issues when they arise.
3. **Find and fix problems faster.**
   - Our Meltano culture highly values automated tests and automated validation. Nevertheless, bugs and regressions do happen. Telemetry helps us identify bugs in our code _(and also in 3rd party plugins!)_ so that we can respond effectively and in a timely fashion to any issues affecting our community of users.

## Telemetry is for product improvement, not monetization

We will never monetize your telemetry data. This means we will never sell your data or trade your data, nor will we mine your data with the goal of monetizing insights.

**The _only_ approved use of Meltano telemetry is to improve the Meltano experience for users of Meltano.**

## Telemetry and Privacy

As a company principal, Meltano will make every reasonable attempt to _not_ record any data which could lead to damages or which could compromise sensitive information if leaked.

## Dev standards

This section should be used by developers to guide in telemetry development.

### Logging both start and completion for long-running events

Long-running processes should have both a `started` and `completed` event log. This is to ensure we detect failures when the running Meltano process (or container) may be killed before getting a chance to send a "failed" or "aborted" message at completion time.

The `completed` version of an event log should be identical to its corresponding `started` event, with the inclusion of the final ending state data.

Unless otherwise approved or required, we do not emit "heartbeat" events. A starting event and completion event is sufficient to achieve our goals.

## One-way hashing

Anonymization is performed via one-way hash algorithms. We default to MD5 because it generates shorter digests. We may also use SHA256 for any aspects we believe should receive a more robust hashing treatment, or for any aspects which have higher likelihood of hash collision when using MD5.

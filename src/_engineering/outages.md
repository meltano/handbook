---
layout: page
title: Outages and Escalation
weight: 3
---

## Types of escalations

We classify three types of production issues:

- `outages` - An outage is any user-impacting disruption of service.
- `bugs` - Bugs are not always outages. A bug generally affects a single version of the codebase.
  - If a bug is broadly impacting, we label it with `priority::high`, `priority::higher`, or `priority::highest`.

### Examples of Outages

Examples of outages include:

- `meltano.com` website is down.
- `hub.meltano.com` website is down.
- `discovery.yml` web endpoint is down.
- Discovery API service is down.
- `pipx install meltano` is failing for any reason - including upstream package dependency breakages, PyPI outages, etc.

### Critical Bugs (`urgency::highest`)

Examples of critical bugs include:

- Significant security vulnerabilities discovered in the latest-published Meltano version.
- Any bug that would cause a significant number of user pipelines to fail in the new release which were otherwise running in a prior release. (Excepting announced deprecations.)

Bugs labeled `priority::highest` should be alerted asap, and should be resolved within 24 hours or sooner. By approval from a Staff Engineer or higher, the problem version may be optionally be yanked from PyPi.

Always tag AJ, Taylor, and Florian when a critical bug is identified.

## Alerts and Notifications

The [`#meltano-alerts`](https://meltano.slack.com/archives/C0320DQTKV5) Slack channel receives alerts for outages and high-priority bugs.

The [#troubleshooting](https://meltano.slack.com/archives/C01TCRBBJD7) channel is the primary place we notify users of outages and critical bugs. Depending on severity and percentage of users impacted, we may also notify users in the [#announcements](https://meltano.slack.com/archives/CFG3C3C66) channel.

### Responding to alerts

If you are responding to an alert in `#meltano-alerts`:

1. Immediately put the '👀' reaction on the thread so others know you're aware. This also ensures that you'll see replies on the issue thread in Slack.
2. If you are taking action, reply first to the Slack thread so others know that you are doing so.
   - For instance, if you're opening an issue, reply "I'm logging an issue." to avoid duplication and redundant effort.
3. If you've resolved the issue or if the issue is a false positive:
   - Put a '✅' emoji on the thread to indicate it is resolved.
   - Drop a comment in the thread on the nature of the resolution or false positive instance.

## Alerting the team manually

If you have identified a production outage or a critical bug and no alert is yet logged to `#meltano-alerts`:

1. Drop a message with the nature of the issue into `#meltano-alerts`.
2. If no issue exists, create an issue and drop the link in the Slack thread.

## Notifying users

When outages are expected to impact users, please share the alert or create a new notification in the `#troubleshooting` channel. Users would otherwise inquire in `#troubleshooting` should discover your notification and know that the Meltano team is addressing the issue.

## Upstream failures

Occasionally we observe outages due to upstream services failures.

If the issue requires action from us or is otherwise worthy of investigation, we should log an issue for tracking our work and then proceed with the alerting process.

If the issue does not require any action from us, such as a significant PyPi or GitLab service outage, we may not need to open an issue but we should nevertheless [notify users](#notifying-users) as appropriate.

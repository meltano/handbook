---
layout: page
title: Outages and Escalation
weight: 3
subcategory: Team Practices
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
- Any bug that would cause a significant number of user pipelines to fail in the new release which were otherwise running in a prior release (excepting announced deprecations).

Bugs labeled `priority::highest` should be alerted ASAP, and should be resolved within 24 hours or sooner. By approval from a Staff Engineer or higher, the problem version may be optionally yanked from PyPI.

Always tag Taylor, and Will Da Silva when a critical bug is identified.

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

If the issue does not require any action from us, such as a significant PyPI or GitLab service outage, we may not need to open an issue but we should nevertheless [notify users](#notifying-users) as appropriate.

## Incident Response System

The Information Security Manager (ISM) as described in Meltano's policies is the primary on-call engineer. Should the primary on-call engineer be unavailable, the ISM is the secondary on-call engineer.

Potential security incident must be reported to the ISM and other on-call engineers promptly either via email or Slack. The notification channel `#internal-infra-alerts` should be used to report any incidents. Refer to the Incident Response Policy document (in Drata) for additional details.

All staff must complete training for the "Procedure For Executing Incident Response" as outlined in the internal Meltano Incident Response Policy document at least once per year.

The incident response plan is tested anually during the month of July.

### Management Sponsors

- **Engineering**: Seth Turner (Senior Engineering Manager)
  - Responsible for understanding the technical aspects of the incident, including its cause and potential solutions.
  - Responsible for coordinating with the Engineering Team to implement these solutions, and work with other departments to communicate the technical details of the incident and the response.
- **Legal**: Richard E. Baum (Head of Operations):
  - Responsible for understanding and advising on the legal implications of the incident. This might include potential violations of laws or regulations, contract breaches, and liabilities.
  - Responsible for ensuring the company meets any necessary legal reporting requirements.
- **HR**: Nichole Garrett (Senior Talent Partner):
  - Responsible for handling any human resources-related legal and regulatory compliance aspects of the incident.
- **Marketing**: Douwe Maan (CEO)
  - Responsible for handling external communications with customers and the public during the incident response, and about the incident in general.
- **C-Suite**: Douwe Maan (CEO)
  - Responsible for providing high-level oversight and decision-making during the incident response.
  - Serves as a final point of authority in case of major decisions during the incident response.

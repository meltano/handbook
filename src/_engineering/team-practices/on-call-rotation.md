---
layout: page
title: On-Call Rotation
weight: 3
subcategory: Team Practices
---

Meltano maintains an on-call rotation schedule that involves every engineer on our team.

Each engineer participates in an on-call rotation that lasts two weeks — one week as the secondary on-call engineer, and the following week as the primary on-call engineer.

The rotation period runs from Monday to Sunday, starting/ending at noon Eastern time. Noon Eastern time is used because every Meltano engineer has regular working hours that overlap with that time, which can simplify any handoffs should an incident persist beyond the end of one's primary on-call period.

We use OpsGenie to manage the on-call schedule, and alert on-call engineers. [More details about our use of OpsGenie are provided below](#schedule-management-and-alerting).

During their assigned week, the engineers are responsible for handling any high-severity incidents that arise outside of normal working hours.

## Rotation Schedule

1. **Primary on-call engineer:** The primary on-call engineer is responsible for responding to incidents first. They are expected to be ready to troubleshoot and solve problems as they come up.

2. **Secondary on-call engineer:** The secondary on-call engineer acts as a backup to the primary. If the primary on-call engineer is not available or requires additional assistance, the secondary on-call engineer will be contacted.

Newly hired engineers are added at the end of the on-call rotation queue to allow them sufficient time to understand our systems and processes before their turn. Their manager may elect to skip over their turn in the on-call rotation as-needed until they are sufficiently prepared/experienced to handle being on-call.

After serving a week as the primary on-call engineer, that engineer will be placed at the end of the on-call rotation queue.

Engineers may, with their manager's approval, trade places in the on-call rotation queue, or otherwise cover for one another. It is advised that this not be done often, and only be used for exceptional circumstances. Every engineer is expected to participate in the on-call rotation.

## Schedule Management and Alerting

We use [OpsGenie](https://meltano.app.opsgenie.com) to manage our on-call schedule and issue alerts to the on-call engineers. Alerts are issued automatically when our [StatusPage](https://status.meltano.com/) detects an outage for any of the sites/APIs it monitors. Alerts may also be issued manually.

[The current on-call rotation schedule can be viewed/updated here](https://meltano.app.opsgenie.com/schedule/whoIsOnCall).

When an alert is sent, the primary on-call engineer will be notified first. If they do not acknowledge it within 12 hours, the secondary on-call engineer will be notified. The first thing the secondary on-call engineer should attempt to do is make contact with the primary on-call engineer, and coordinate with them. That said, once the secondary on-call engineer has been alerted, they should not wait for the primary on-call engineer to respond. They may begin investigating and addressing the incident immediately following their attempt to contact and coordinate with the primary on-call engineer.

## Responsibilities

On-call engineers should:

1. Be available and ready to respond to alerts or issues.
   - This includes ensuring that notifications/alerts about outages and security incidents can reach them while they are on-call. OpsGenie can be configured by each engineer to send them an SMS message or phone call, which can help ensure they can be notified without requiring that they receive all types of notifications while on-call.
2. Be able to access the necessary systems and tools to diagnose and fix problems.
   - This includes always being able to access one's Meltano-provided laptop within 15 minutes, and ensuring internet access is available. If you intend to leave your place of work while on-call, a laptop bag is recommended.
3. Communicate clearly and effectively with customers, team members, and management during an incident.
4. Document incidents, and record actions taken in a communication channel other Engineering Team members can access (e.g. the internal-engineering Slack channel).

The on-call engineers are expected to triage incidents, and respond to alerts, but not necessarily address every issue that arises themselves. It is okay and expected that, should the need arise, the on-call engineers will request aid from other Engineering Team members. Other Engineering Team members are not expected to provide aid or check for work notifications outside of regular work hours, but are expected to provide reasonable aid when requested during regular work hours.

**Engineers should not perform their regular assigned tasks while acting as the primary on-call engineer.** The reasons for this are twofold:
- Being the primary on-call engineer means that at any time large time-consuming interruptions to one's regular assigned tasks may arise. By there being no expectation that regular assigned tasks are performed while acting as the primary on-call engineer, the stress of an incident interfering with one's ability to complete their assigned tasks is removed.
- Being the primary on-call engineer is inherently stressful, and limits what one can do outside of regular work hours, negatively affecting one's work-life balance. To help make up for those negative aspects, Meltano does not burden the primary on-call engineer with their regular assigned tasks.

Instead of working on regular assigned tasks, the primary on-call engineer may spend their time not spent dealing with incidents/alerts on whatever they'd like, provided it reasonably benefits Meltano. Being the primary on-call engineer is not a pseudo-vacation in which one may be totally unproductive while waiting for an incident/alert to respond to. Rather, this work can include addressing low-priority pet peeves, research/experimentation, professional development/training, trying out interesting hacks (à la Meltano Hack Day), and more. If you're unsure if a given activity would be appropriate for your time as the primary on-call engineer, feel free to ask your manager about it.

Because engineers should not perform their regular assigned tasks while acting as the primary on-call engineer, during the week leading up to being the primary on-call engineer (i.e. the week in which one is the secondary on-call engineer), engineers should avoid picking up any tasks that might block others if not completed soon, and they should hand-off or complete any such tasks promptly. With the aforementioned caveats, the secondary on-call engineer is still expected to work on regular assigned tasks.

## On-Call Rollout

As of 2023-07-17, Meltano's on-call policy is considered to be in effect for security incidents only.

Once Meltano Cloud has its GA release, Meltano's on-call policy will be in effect for all incidents, including security incidents and outages.

This section of the handbook (i.e. "On-Call Rollout") may be removed once Meltano Cloud has had its GA release.

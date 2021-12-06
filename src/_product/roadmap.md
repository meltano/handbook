---
layout: page
title: Roadmap
weight: 2
---

Meltano is developed completely in the open on GitLab: <https://gitlab.com/meltano/meltano>. Our [issue tracker](https://gitlab.com/groups/meltano/-/issues), [epics](https://gitlab.com/groups/meltano/-/epics), and [weekly milestones](https://gitlab.com/groups/meltano/-/milestones) can be found there as well.

To get an idea of what the team and community are currently working on, check out the upcoming milestone's [Development Flow board](https://gitlab.com/groups/meltano/-/boards/536761?scope=all&utf8=%E2%9C%93&milestone_title=%23upcoming).

If you'd like to look further into the future, the [Milestones board](https://gitlab.com/groups/meltano/-/boards/1933232) has a column for each upcoming weekly milestone.

Be aware that issue milestones serve more as a rough indication of relative priority than as hard deadlines,
since short-term priorities can change quickly in response to community feedback, and it's hard to predict how much progress can be made in a week.
Also note that issues labeled `flow::To Do` have higher priority and are more likely to be completed in a given week than those labeled `flow::Triage`, which are often moved to the next milestone at the end of the week, with issues already scheduled for the next week pushed out to make room for them.

Below you will found our current roadmap.
Each item should link to an Epic with the relevant issue linked to that epic.
As this projects out into the future it is subject to change based on feedback.
Don't see something you want on the roadmap? [Make an issue](https://gitlab.com/meltano/meltano/-/issues) and let us know!

These efforts are the foundation of our larger vision to enable a full DataOps OS.
To learn more about our strategy around the DataOps OS, check out [this blog post](https://meltano.com/blog/our-strategy-to-achieving-meltanos-ambitious-mission-and-vision/).

### December 2021

* Composable Meltano Pipelines - [Epic](https://gitlab.com/groups/meltano/-/epics/116)
  * `meltano run` [Issue](https://gitlab.com/meltano/meltano/-/issues/2301)
  * Stream Maps [Issue](https://gitlab.com/meltano/meltano/-/issues/2300)
* Documentation Overhaul - [Epic](https://gitlab.com/groups/meltano/-/epics/81)
* Easy deployment of Meltano for production development - [Epic](https://gitlab.com/groups/meltano/-/epics/124)
* Add validator plugin type with Great Expectations and `dbt test` support  - [Epic](https://gitlab.com/groups/meltano/-/epics/111)
* Telemetry Enhancements for Meltano, Meltano SDK, and MeltanoHub - [Epic](https://gitlab.com/groups/meltano/-/epics/122)

### 2022-Q1

* Add Pluggable Log / Metadata Shipping for Observability Enhancement - [Issue](https://gitlab.com/meltano/meltano/-/issues/3008) & [Epic](https://gitlab.com/groups/meltano/-/epics/93)
* Support Secrets Backends Natively -[Issue](https://gitlab.com/meltano/meltano/-/issues/2918)
* UI Improvements and Parity - [Issue](https://gitlab.com/groups/meltano/-/epics/78)
* Release v1.0 of Meltano SDK - [Epic](https://gitlab.com/groups/meltano/-/epics/121)
* Support non-Python plugins - [Issue](https://gitlab.com/meltano/meltano/-/issues/2205)
* Add support for OpenMetadata observability - [Epic](https://gitlab.com/groups/meltano/-/epics/93) & [Issue](https://gitlab.com/meltano/meltano/-/issues/2805)
* Add Fast Sync / `BATCH` Messages to Meltano SDK - [Epic](https://gitlab.com/groups/meltano/-/epics/114)
* Add Dagster as an Orchestrator - [Epic](https://gitlab.com/groups/meltano/-/epics/113) & [Issue](https://gitlab.com/meltano/meltano/-/issues/2393)

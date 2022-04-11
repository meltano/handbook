---
layout: page
title: Data Handbook
weight: 1
---

## Domains and Responsibilities

The data team sits within the Product organization so the primary responsibility is to use data to inform product decisions.
A secondary responsibility of the team is to provide insights into the health of the business and open source ecosystem around it.

## Code and Repository Ownership

The data team is responsible for the following code bases:

- [squared](https://gitlab.com/meltano/squared) - An internal Meltano project that is used for dogfooding the product while also serving as the primary data platform for the team.
- [snowplow-infra](https://gitlab.com/meltano/snowplow-infra) - The infrastructure-as-code for the data team's [Snowplow](https://github.com/snowplow/snowplow) instance, used for collecting telemetry data.
- [MeltanoLabs](https://github.com/MeltanoLabs) - The GitHub project that houses code under the [shared ownership model](https://meltano.com/blog/launching-meltanolabs-your-home-for-singer-connectors-dbt-packages-and-all-meltano-plugins/). Currently this includes Singer Connectors, dbt packages, and Meltano Plugins. Pat Nadolny is the point of contact for MeltanoLabs. The following is a list of repos in the MeltanoLabs project that we are either primary maintainers on or we use and contribute to them:

  Primary Maintainers:

  - [Meta](https://github.com/MeltanoLabs/Meta)
  - [tap-google-analytics](https://github.com/MeltanoLabs/tap-google-analytics)

  Contribute to and use:

  - [tap-github](https://github.com/MeltanoLabs/tap-github)
  - [target-athena](https://github.com/MeltanoLabs/target-athena)
  - [tap-gitlab](https://github.com/MeltanoLabs/tap-gitlab)
  - [target-yaml](https://github.com/MeltanoLabs/target-yaml)
  - [tap-slack](https://github.com/MeltanoLabs/tap-slack)
  - [tap-athena](https://github.com/MeltanoLabs/tap-athena)

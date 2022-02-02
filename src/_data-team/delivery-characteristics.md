---
layout: page
title: Delivery Characteristics
weight: 2
---

The Data Team wants to make sure that the data consumers are informed about the reliability, quality, stability, etc. of the data assets that they are consuming.
In order for everyone to be aligned and informed on the state of the data assets they're consuming, we need a consistent way of talking about the characteristics and expectations of those assets.
To do this effectively we laid out the characteristics that you can expect from data assets based on their phase of delivery, in order for you to make an informed decision about when you feel comfortable relying on that asset.

## Delivery Stages

The delivery stages applies to both the data platform itself (Meltano and infra) and the features developed on top of it (i.e. dbt models and dashboards)

#### POC

The POC stage is for initial testing and development of a feature to determine if its worth pursuing.

Characteristics:
- Local or Dev environment
- Tests are optional
- No monitoring and alerting
- Downtime expected and allowed
- No SLAs
- Infrastructure manually managed
- Optional CI/CD
- No stable release versioning, subject to change
- Documentation optional

Stack Specific Expectations:
- dbt - optional schema and data tests, optional docs, flexible schema, column naming could change

#### Alpha

The Alpha stage is where a feature is complete enough to bring to users for feedback, deployed to production (or staging if one exists), but can not be relied upon yet and is used for only for validation.
It's proven that the POC is a viable solution and should be developed further.

Characteristics:
- Dev or Prod environment
- Small linting tests, medium (e.g. dbt/great expectations tests) required
- No monitoring and alerting
- Downtime expected and allowed
- Defining SLAs
- Defining security requirements
- Infrastructure as code
- CI/CD
- Stable release versioning
- Documentation optional
- Key metrics defined
- Collecting feedback from stakeholder

Stack Specific Expectations:
- dbt - schema tests for all prep and consumption models (boundaries asserted), docs for all consumption models, column naming may change

#### Beta

The Beta stage is where a feature thats complete, deployed to production (or staging if one exists), and can start be to used with caution.

Characteristics:
- Dev or Prod environment
- Small, medium, and optional integration tests required
- Monitoring and alerting required
- Consistently available and up
- Implement SLAs
- Implement security requirements
- Infrastructure as code
- CI/CD
- Stable release versioning
- Documentation required
- Key metrics approved and aligned with stakeholders
- Implemented feedback from stakeholder

Stack Specific Expectations:
- dbt - schema tests for all prep and consumption models (boundaries asserted), docs for all consumption models, column naming stable
- EL - pipeline integration tests in CI

#### Generally Available

The Generally Available stage is when a feature is complete, deployed to production, and can be relied upon for business critical activities.

Characteristics:
- Prod environment
- Small, medium, and integration tests required
- Monitoring and alerting required
- Consistently available and up
- Meets SLAs
- Meets security requirements
- Infrastructure as code
- CI/CD
- Stable release versioning
- Documentation required
- Key metrics approved and aligned with stakeholders
- Product team defines and validates feature backlog

Stack Specific Expectations:
- dbt - schema tests for all prep and consumption models (boundaries asserted), docs for all consumption models, column naming stable
- EL - pipeline integration tests in CI

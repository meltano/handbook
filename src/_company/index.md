---
layout: page
title: Company Handbook
weight: 1
permalink: /company/
---

This section of the handbook describes concepts, processes, and best practices that apply to the company as a whole, and don't fall under a specific department or area.

To explore the full contents of this handbook, refer to the sidebar.

## Values

Our values define how we work together and make decisions.
They are Belief in better, Progress over perfection, Together we thrive, and Kindness is key.

You can learn more about these values on the [Values](values) page.

## Mission

Our mission is to **enable everyone to realize the full potential of their data**.

When we say “everyone”, we mean it. It includes massive enterprises, tiny startups, as well as individuals. It includes those who may one day pay us, as well as those who will likely never be able to. It includes solo founders, one-person IT/dev teams, and curious hobbyists, as well as multidisciplinary data teams and weathered veterans of the data profession.

Our core convictions fuel our mission:

- Data is a key ingredient for success in whatever goal one is trying to accomplish, both to identify the right problem to solve and to know you’re building the best solution,

- More accessible data tools that adapt to and scale with the unique needs of every team will accelerate innovation and progress in every aspect of the world, and

- The awesome power of data should be available to small upstarts with pure intentions just as much as it already is to massive organizations with their often muddled incentives and goals.

To learn more about this mission, check out this [detailed blog post](https://meltano.com/blog/meltano-the-strategic-foundation-of-the-ideal-data-stack/#mission) by our CEO Douwe Maan.

## Vision

Our vision is for Meltano to be **the foundation of every team's ideal data platform**.

More concretely, we are building **open source DataOps Platform Infrastructure** that levels up the data profession by bringing lessons and best practices from the world of software development to data tooling.
By applying the principles of DevOps and open source and abilities like version control, isolated environments, and CI/CD to the entire data lifecycle, Meltano lets data teams deliver insights and drive processes with increased velocity, collaboration, and confidence.

To learn more about this vision, check out this [detailed blog post](https://meltano.com/blog/meltano-the-strategic-foundation-of-the-ideal-data-stack/#vision) by our CEO Douwe Maan.

## Persona and Problem

This persona and their problems drive our [company strategy](/strategy) and [product roadmap](/product/roadmap).

### Introduction

Our mission and vision are intentionally broad and ambitious, and describe an end state that will requires a significant shift in how data teams (and the organizations they serve) think about their data infrastructure and the problems they face: from a loose "data stack" of separate tools and technologies set up once and integrated in an ad-hoc way, to a cohesive "data platform" in which these tools are components, that's built like an internal software product to effectively serve the organization and rapidly evolve with its changing needs.

To get there, we can't blindly focus on building out our vision as the solution to all of a data team's problems and hope that if we repeat it enough, they market will get it and rebuild their entire stack in this new and relatively unproven way.
Instead, we need to start by meeting people where they are and solving the narrow problems they face today with solutions that are immediately compelling, that will then gradually introduce them to our broader vision by proving the value of our approach and earning their trust at every step.

As such, the target persona and problem we are focused on will change over time, as the industry changes and effectively solving one set of problems earns us the right to work on the next.

#### Persona

Our current target persona is the **mid- to senior-level Data Engineer at a mid-market organization** of around 200-1000 people who works in a small data team less than five and is in the process of putting together a new data stack for their organization (its first, a rebuild, or an additional one for a different department or use case).
While their title may not be "data engineer" exactly, they are tasked with building data pipelines and choosing and setting up the tools to do so.

#### Problems

Their urgent problems are as follows, in the order they'd experience them and therefore our priority:
1. **it's hard to get open source data tools/technologies up and running in production** (in other words: installation, configuration, deployment, and self-management are hard)
2. broken changes are not caught until they go live in production and start affecting users (in other words: changes cannot be tested before they go into production)
3. when production breaks, the broken changes have to be fixed live under pressure (in other words: changes cannot be rolled back)

#### Building into the vision

While our broad vision aims to solve these problems for the data stack/platform as a whole, the persona will initially experience them and start looking for a solution in the context of a specific data tool, like Singer, dbt, or Airflow.
This means that we are focused on solving the above problems (by simplifying installation, configuration, deployment, and management, and enabling version control, isolated environments, and testing in CI/CD), not "for all your data tools" (implying you need multiple to get value), but "for any data tool" (implying just one is enough), and really for _specific_ data tools the user has already decided to use.

Meltano still delivers more value the more of a user's data platform it manages, but new users cannot be expected to already have realized that there's value in bringing all of their tools together in one place.
Every popular open source data tool that we solve these first-week problems for opens up a new door into Meltano: once they've seen what Meltano can do for one tool, they're likely to give it a try when they expand their data stack with new tools as well, until it has effectively become the foundation of their entire data platform.

This means that in prioritizing our product work, we have to balance depth (to make sure we the most pressing problems with a tool are effectively solved) and breadth (to expand the number of tools and therefore potential users that we can deliver value to).
The initial focus will be on becoming for dbt and Airflow what we already are for Singer: the obvious companion to these tools in any new data stack.
Other open source data tools come into scope based on their popularity, both in general and within our existing user base, and the degree of problems new users face.

#### Looking to the future

Once Meltano is the best way to manage Singer, dbt, and Airflow for data movement, transformation, and orchestration, something new emerges that is better than the sum of these parts.

A new user may still not realize that by bringing these tools together they're building a data platform, and that they need a dedicated component (Meltano) to manage the complexity and fragility, but the value of the Meltano+Singer+dbt+Airflow _combination_ can be easily understood: it's a direct competitor to all-in-one data movement and transformation product like Fivetran and solves the same problem of **getting your data from place A to place B in the desired format**.
However, compared to Fivetran and other tools that started out with that problem in mind, Meltano's architecture and long-term vision have let us solve the same problem in a way that has 10X the developer experience, is infinitely more flexible, extensible, and scalable, and empowers users to evolve their data platform to their liking instead of limiting them to a cookiecutter approach.

This "**like Fivetran with 10X the developer experience**" framing gives us a clear target and justifies building a product roadmap around everything that our target persona considers still standing in the way of Meltano(+Singer+dbt+Airflow) being the obviously superior solution.
A likely first area for improvement will be the stability and performance of data movement from OLTP to OLAP databases (aka CDC, Change Data Capture), which is already a primary use case that drives users from Fivetran to Meltano.

We expect this to be the framing and scope for our initial launch of [Managed](https://meltano.com/managed).

## History

Meltano was [founded](https://about.gitlab.com/blog/2018/08/01/hey-data-teams-we-are-working-on-a-tool-just-for-you/) inside [GitLab](https://about.gitlab.com/) in 2018 as an open source tool built for GitLab’s data and analytics team, who wanted an end-to-end data platform built around open source components and DevOps principles.

To learn more about our history, check out the [timeline](/timeline) listing significant events in Meltano's life with links to relevant articles.

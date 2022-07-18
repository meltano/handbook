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

More concretely, we are building **open source DataOps Platform Infrastructure** that brings the benefits of software development best practices such as DevOps, open source, version control, isolated environments, and CI/CD to the entire data lifecycle.

To learn more about this vision, check out this [detailed blog post](https://meltano.com/blog/meltano-the-strategic-foundation-of-the-ideal-data-stack/#vision) by our CEO Douwe Maan.

## Persona and Problem

<!-- Build, test, deploy in minutes, not hours, for any data tool/service/infra -->
<!-- Build, test, deploy [any data infrastructure] in minutes, not hours -->

Our mission and vision are intentionally broad and ambitious, and describe an end state that will requires a significant shift in how data teams (and the organizations they serve) think about their data infrastructure and the problems they're facing: from a loose "data stack" of separate tools and technologies set up once and integrated in an ad-hoc way, to a cohesive "data platform" in which these tools are components, that's built like an internal software product to serve the organization and rapidly evolve with its changing needs.

To get there, we can't blindly focus on building out our vision as the solution to all of a data team's problems and hope that if we repeat it enough, they'll get it and rebuild their entire stack in this new and more or less unproven way.
Instead, we need to start by meeting people where they are and solving the narrow problems they face today with solutions that are immediately compelling, that will then gradually introduce them to our broader vision by proving the value of our approach and earning their trust at every step.
As such, the target persona and problem we are focused on will change over time, as the industry changes and effectively solving one set of problems earns us the right to work on the next.

Our current target persona is the mid- to senior-level Data Engineer at an organization of 30-200 people who works in a small data team of 1-3 people and is in the process of putting together a new data stack for their organization (its first, a rebuild, or an additional one for a different department or use case).

Their urgent problems are as follows, in the order they'd experience them and therefore our priority:
1. it's hard to get open source data tools/technologies up and running in production (in other words: installation, configuration, deployment, and self-management are hard)
2. broken changes are not caught until they go live in production and start affecting users (in other words: changes cannot be tested before going to production)
3. when production breaks, the broken changes have to be fixed live under pressure (in other words: changes cannot be rolled back)

While our broad vision aims to solve these problems for the data stack/platform as a whole, the persona will initially experience them and start looking for a solution in the context of a specific data tool, like Singer, dbt, or Airflow.
This means that we are focused on solving the above problems (by simplifying installation, configuration, deployment, and management, and enabling version ontrol, isolated environments, and testing), not "for all your data tools" (implying you need multiple to get value), but "for any data tool" (implying just one is enough), and really for _specific_ data tools the user has already decided to use.

This means that in prioritizing our product work, we have to carefully balance depth (to make sure we the most pressing problems with a tool are effectively solved) and breadth (to expand the number of tools and therefore potential users that we can deliver value to).
Meltano still delivers more value the more of a user's data platform it manages, but new users cannot be expected to already have realized that there's value in bringing all of their tools together in one place until they've seen what Meltano can do for one tool and then become interested in letting it repeat that trick for another, and another, and another.

This persona and their problems drive our [company strategy](/strategy) and [product roadmap](/product/roadmap).

## History

Meltano was [founded](https://about.gitlab.com/blog/2018/08/01/hey-data-teams-we-are-working-on-a-tool-just-for-you/) inside [GitLab](https://about.gitlab.com/) in 2018 as an open source tool built for GitLab’s data and analytics team, who wanted an end-to-end data platform built around open source components and DevOps principles.

To learn more about our history, check out the [timeline](/timeline) listing significant events in Meltano's life with links to relevant articles.

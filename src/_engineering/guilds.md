---
layout: page
title: Guilds
weight: 2
---

# Overview

## Responsibilities

In line with our <a href="/company/values#together-we-thrive">Together we thrive</a> <a href="/company/values">value</a>, organization of key areas of the Meltano ecosystem are stewarded by Guilds.
Guilds are made up of members of the Meltano staff and contributers from the community.
Rather than owning the work items of a given area, Guilds perform an administration and coordination role.
Primary responsibilities are:

- Ownership, curation and dissemination of a roadmap (with guidance and support from Product, Data, Leadership, the Community, other Guilds etc.), especially for major version updates
- Ownership of community engagement (esp. the publishing/tagging of "Good First Issues" and participation in company events such as Taptoberfest)
- Ownership of key maintenance (releases, dependabot PRs, CI/CD workflows, PyPI publishing etc.)
- Ownership of slack, issue and PR triage (questions, bug reports, feature requests, community PR's etc.)
- Ownership of knowledge sharing and mentoring (promotion/improvement of Docs, Blog Posts, 'Best Practices', topics in Office Hours, Newsletters etc.)
- Ownership and development of domain tooling (e.g. `hub-utils`) as needed

## Expected Commitment

For Guilds to be self-sustaining, each are to have at least 2 permanent members (a HA pair 😅).
Tenured engineers are encouraged to join a Guild and to work towards "subject matter expertise".
Newly hired engineers will likely be discouraged from Guild membership for a fixed period (say 6 months, TBD) so as not to specialize early or distract from onboarding.
Given the likely time commitment, engineers should be discouraged from joining multiple Guilds at our current company stage.
This can likely be relaxed as we grow 🚀

Each Guild might require different commitments of time and effort, but an 80/20 to 70/30 split is not unreasonable (with the majority chunk devoted to normal, non-Guild engineering responsibilities).

# Current Guilds

# Core

- The Meltano core codebase in the `meltano/meltano` repository along with any related bug reports, feature requests, technical debt, or community or community support needs, with the exception of code specific to `meltano cloud` subcommands.
- CI/CD workflows and code standards for Meltano core.
- The Meltano core release process, excepting specific release processes for the Meltano Cloud CLI.
- The content of the Meltano docs, along with frameworks, code, and processes used to generate and publish them, with the exception of any Cloud-specific docs found under the `cloud/` directory or CLI reference docs specific to the Meltano Cloud CLI.
- Hosting of Meltano core docs at docs.meltano.com along with associated monitoring and alerting.

# Singer Ecosystem

- The Meltano SDK codebase in the `meltano/sdk` repository along with any related bug reports, feature requests, technical debt, or community support needs.
- CI/CD workflows and code standards for the Meltano SDK.
- The Meltano SDK release process.
- The content of the Meltano SDK docs, along with frameworks, code, and processes used to generate and publish them.
- Hosting of Meltano SDK docs at sdk.meltano.com along with associated monitoring and alerting.
- The Meltano Hub codebase in the `meltano/hub` repository along with any related bug reports, feature requests, technical debt, or community support needs.
- The content of Meltano Hub, along with frameworks, code, and processes used to generate and publish it.
- Hosting of Meltano Hub at hub.meltano.com along with associated monitoring and alerting.

I'm sure there's other Singer ecosystem work that should be included here -- thinking particularly of some of the work that @pnadolny13 does around plugin quality assurance and more that I don't have a ton of visibility into.

# Cloud

- The Meltano cloud codebase in the `meltano/infra` repository along with any related bug reports, feature requests, technical debt, or customer support, with the exception of any code in the `services/cloud-ui` directory.
- Those portions of the Meltano Core codebase which relate to the Meltano Cloud CLI.
- Those portions of the Meltano Core release process which are specific to the Meltano Cloud CLI
- CI/CD workflows and code standards for Meltano Cloud, except those which are specific to the Meltano Cloud UI
- Meltano Cloud deployment processes, except those which are specific to the Meltano Cloud UI.
- The content of the Meltano Cloud docs as found in the `docs/src/_cloud` directory within the `meltano/meltano` repository.
- Provisioning, monitoring, maintenance, and any other processes related to infrastructure where Meltano Cloud code runs, excepting any Cloud UI-specific infrastructure.
- Application-level monitoring and alerting for Meltano Cloud services running on the above infrastructure.
- On-call rotations, incident response, escalation, and any other processes related to supporting the infrastructure and services described above.

# Cloud UI

- The Meltano Cloud UI codebase in the `services/cloud-ui` directory of the `meltano/infra` repository along with any related bug reports, feature requests, technical debt, or customer support.
- Those CI/CD workflows and code standards which are specific to the Meltano Cloud UI.
- Those deployment processes which are specific to the Meltano Cloud UI.
- Provisioning, monitoring, maintenance, and any other processes related to infrastructure where Cloud UI code runs.
- Application-level monitoring and alerting for Meltano Cloud UI services running on the above infrastructure.
- On-call rotations, incident response, escalation, and any other processes related to supporting the infrastructure and services described above.

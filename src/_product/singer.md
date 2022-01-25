---
layout: page
title: Embracing Singer
weight: 2
---

To make open source data integration built on DataOps principles a reality, we have embraced [Singer](https://www.singer.io/)
and are committed to providing its community and ecosystem with all of the tools and support
needed for it to realize its full potential as the **de-facto standard for open source connectors**,
to be used with Meltano or any other tool that supports them.

To further support the community and ecosystem, we have launched the [MeltanoHub for Singer](https://hub.meltano.com/singer/).
This is the Singer equivalent of [PyPI](https://pypi.org/) or [Docker Hub](https://hub.docker.com/),
to give users (and tools) a **central place to learn** about the behavior, supported features,
and maintenance status of **all taps and targets in the ecosystem**,
which are currently scattered across Git repos and PyPI packages.
As we continue to develop and enhance the [MeltanoHub](https://gitlab.com/groups/meltano/-/epics/83)
we will encourage decentralized maintenance of connectors
to prevent individual organizations from becoming bottlenecks as the ecosystem grows,
and will support the adoption of abandoned connectors by new maintainers.

With Meltano, we are providing a **clear path to production** with existing Singer taps and targets where there wasn't one before,
thereby lowering the barrier to adoption and motivating people who run into an issue with an existing connector
to debug it, contribute a fix, and see it through, instead of giving up.
Meltano's index of discoverable [extractors](https://hub.meltano.com/extractors/) and [loaders](https://hub.meltano.com/loaders/) will grow as the
number of [Singer Taps and Targets grows](https://hub.meltano.com/singer/).

In addition to the MeltanoHub, the [**SDK for Singer Taps and Targets**](https://sdk.meltano.com) enables
developers to build **connectors with all the bells and whistles** without having to be become an expert on the spec.
This further lowers the barrier to creating new connectors and contributing to existing ones,
and will lead to increased reliability and consistency.

We've also [launched](https://meltano.com/blog/launching-meltanolabs-your-home-for-singer-connectors-dbt-packages-and-all-meltano-plugins/) [MeltanoLabs](https://github.com/MeltanoLabs) which is the best place for the community to collaboratively support open source connectors.

We've also [created an interpretation of the Singer specification](https://hub.meltano.com/singer/spec)
that aims to be clearer for newcomers to the project. We believe the spec is great in its current version, but
confusing documentation has made it challenging for some to onboard to the community.

Last but not least, we're also **[**unlocking the evolution**](https://gitlab.com/groups/meltano/-/epics/88) of the
[**Singer spec**](https://hub.meltano.com/singer/spec)** through the [Singer Working Group](https://meltano.com/blog/announcing-the-singer-working-group-the-future-of-singer-is-bright/).
This is a framework built with the community for the proposal and consideration of optional extensions to the spec
that compatible tools, including the SDK and Meltano, can choose to support,
while maintaining compatibility between all taps and targets.

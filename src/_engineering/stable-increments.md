---
layout: page
title: Stable Increments
weight: 3
---

This page describes stable vs unstable increments, and is primarily focused on Engineering use cases and applications.

## Every iteration should be a stable increment

Our value of constant iteration is balanced by a requirement that each increment is "stable". A stable increment is an iteration that provides value without disproportionately adding maintenance and support costs.

## What drives us to merge unstable increments?

Unstable increments are often introduced due to implied or expressly communicated deadlines. When a deadline approaches and time is running out, there's a natural instinct to "just get something shipped". When asking whether something should ship or not, we should remember to ask if it will be stable or unstable over 30 days, 90 days or 180 days.

## Is tech debt stable?

Sometimes yes, ironically. Tech debt can often be extremely stable. Stability is not a measure of our own developer cost when adding the _next_ feature, but the impact of the feature itself being released "as is" without guarantee of follow-on investments.

We should always try to avoid knowingly creating _new_ tech debt, but leaving in existing tech debt does not imply the increment will be unstable. Often the opposite is true: while removing tech debt we increase the risk that our increment will be unstable -introduced due to implied and we often have to counter the additional stability risk by investing in new tests while refactoring, for instance.

## Examples of stable increments

- Releasing a feature which as of the first iteration only resolves 20% of expected use cases, but which can be utilized immediately for use cases which it addresses. (The subsequent use cases can be prioritized as follow-on increments.)
- _Most_ bug fixes, assuming new issues are not being introduced.
- Resolving ambiguity in documentation. (Improvements to documentation are always a stable increment.)
- Updating an existing feature _without_ significantly refactoring legacy code, even when the additional refactor would be helpful in the longrun. (Refactoring reduces technical debt at the cost of additional time and _also_ at additional risk to short and mid-term stability. Often the most stable increment is to change _only_ the code you need to change.)

## Examples of unstable increments

- Releasing a feature without docs.
- Adding a large new feature without tests.
- Adding a feature with an unstable spec - meaning the spec is known to be non-final and is expected to later be updated in a non-backwards compatible manner.
- Releasing a "short-term bug fix" with known remaining defects or undesirable behaviors. (Those will in turn need to be patched as part of a later "permanent" fix.)

## The high cost of unstable increments

Unstable increments can put company-wide priorities at risk by introducing often mandatory costs which cannot be avoided or deprioritized. These costs may be visible or invisible to the rest of our prioritization process:

- A feature release that is missing docs (for example) is likely to trigger more user questions in Slack, which raise the support cost of the product.
  - The additional support requirements in Slack are an invisible cost and will likely continue ongoing until docs are prioritized and then delivered.
- A feature release that is not sufficiently tested (for example) is likely to lead to bug reports, which raise the support cost of the product.
  - This is a visible cost, generally `Urgency:high` bug reports and must be reprioritized.

Unlike stable increments, where the feature will be fine if it is deprioritized for a few weeks or more, an unstable increment demands to stay prioritized, at risk of ongoing impact to the users and/or the team's velocity.

## Estimating an increment's stability

To determine if the increment is stable, we can ask two questions:

1. Will this increment disproportionately _increase_ costs if merged and left as-is without modification?
2. Will this increment still be providing a net value if related next steps are deprioritized, delayed, or canceled?

## Approval for unstable increments

The leadership team may occasionally approve the merging of an unstable increment, especially in these circumstances:

- If there are severe impacts of _not_ merging - for instance, if a large known bug or usability issue is being resolved.
- If capacity is dedicated and the team is expected to taking immediate learnings from the the increment.
- If there's ability to guarantee continued investment (dedicated developer and/or administrative bandwidth) for any needed follow-on action.

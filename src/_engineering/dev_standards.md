---
layout: page
title: Dev Standards
weight: 3
---

This page is a resource for development standards across all Meltano products and Meltano code repos.


## General Standards

The definition of done for any increment of work should always include:

1. Docs meet or exceed documentation standards (in [Docs section](#Documentation_Standards) below)
1. Code meets the standards for the respective language (documented in sections below).
1. Code is sufficiently tested

An iterative approach _does not_ mean that docs and tests can be saved for a later iteration. To save time, it's generally a good practice to write docs and tests before writing the code.

## Documentation Standards

### Markdown Linting

Every docs page should be linted and should adhere to linting standards. (VS Code has several good linting options.)

### Docs and the "Definition of Done"

Documentation is critical and should be included in _every_ increment. Docs should never be skipped or moved as a follow-on issue after the merge.

A test of _minimally complete documentation_ is as follows:

1. **Feature discoverability.** Can a user reading through our docs understand what the feature is and whether they should use it?
2. **Implementation intructions.** Can a user implement this feature successfully using _only_ the available docs? _(Excluding complementary resources such as blogs, Slack notifications, and demos.)_

If either of these conditions is not met, the MR _should not be merged_ as it does not meet the minimal definition of done as related to documentation.

Note that within these qualifications, there's still tons of room for variability in the overall "first iteration" time investment.

### Is it okay to add docs as follow-on?

**Q:** We make decisions to postpone certain components all the time - why not allow docs to be created after the feature launches?

#### A: The invisible high cost of missing docs

There are several invisible costs that appear immediately after docs are delayed: support costs, training costs, administrative costs, and priorization costs.

All of these together are generally 4x or more the cost of writing the docs in the first place. 
Apart from the greater overall costs from _not_ having docs in place, there's an additional risk that a user will _discover_ the feature, _fail_ to implement it. Rather than provide a valuable feature they were interested in, we've potentially damaged a user's confidence because of a bad onboarding experience.

### Exceptions to documentation requirements

The only valid exceptions to this requirement are: (1) if another team member (such as a member of the PM team) is separately assigned the docs authoring, or (2) if we are accepting a contribution contribution and taking the docs authoring role upon ourselves. Even in these cases, however, docs still need to be completed before the feature is released.

## SQL Standards

SQL code should validate against the SQLFluff checks and should match with SQLFLuff autoformat output. (Ideally, CI tests are to be enabled wherever possible.)

- Additional guidance is available in the [SQL Style Guide](../_data-team/sql-style-guide.md).
- SQLFluff settings defaults (including a sample SQLFluff config file) will be made official in [handbook#69](https://gitlab.com/meltano/handbook/-/issues/69).

## Python Standards

COMING SOON

## Terraform Standards

Terraform code should validate against the `terraform fmt` checks and should match with `terraform fmt` autoformat output. (Ideally, CI tests are to be enabled wherever possible.)

As a general guide, please refer to [Gruntwork's Terraform Style Guide](https://docs.gruntwork.io/guides/style/terraform-style-guide/) - except the "Testing" section, which does not yet apply.

## Helm Standards

COMING SOON

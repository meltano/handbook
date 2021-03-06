---
layout: page
title: Dev Standards
weight: 3
---

This page is a resource for development standards across all Meltano products and Meltano code repos.

## General Standards

The definition of done for any increment of work should always include:

1. Docs meet or exceed documentation standards (in [Docs section](#documentation-standards) below).
1. Code meets the standards for the respective language (documented in sections below).
1. Code is sufficiently tested.

An iterative approach _does not_ mean that docs and tests can be saved for a later iteration. To save time, it's generally a good practice to write docs and tests before writing the code.

## Every Iteration should be a stable increment

Our Meltano value of ongoing `Iteration` is balanced by a requirement that each increment is "stable". A stable increment is an iteration that provides value without disproportionately adding maintenance and support costs.

_For more information, please see the handbook section on [Stable Increments](./stable-increments)._

## Documentation Standards

### Markdown Linting

Every docs page should be linted and should adhere to linting standards.

It is a good idea to install the [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) VS Code extension, or similar, so you have realtime lint guidance while editing.

Whenever possible, GitLab and GitHub projects should have automated lint checks, including markdown lint checks and broken link checks.

### Docs and the "Definition of Done"

Documentation is critical and should be included in _every_ increment. Docs should never be skipped or moved as a follow-on issue after the merge.

A test of _minimally complete documentation_ is as follows:

1. **Feature discoverability.** Can a user reading through our docs understand what the feature is and whether they should use it?
1. **Implementation instructions.** Can a user implement this feature successfully using _only_ the available docs? _(Excluding complementary resources such as blogs, Slack notifications, and demos.)_

If either of these conditions is not met, the MR _should not be merged_ as it does not meet the minimal definition of done as related to documentation.

Note that within these qualifications, there's still tons of room for variability in the overall "first iteration" time investment.

For more information on writing quality documentation, check out [Divio's documentation system](https://documentation.divio.com).

### Is it okay to add docs as follow-on?

**Q:** We make decisions to postpone certain components all the time - why not allow docs to be created after the feature launches?

#### A: The invisible high cost of missing docs

There are several invisible costs that appear immediately after docs are delayed: additional support costs and training costs, along with additional overhead related to administrating and prioritizing the follow-on issue. All of these together can quickly add up to more than the cost of the docs authoring itself.

Apart from the above-mentioned costs, there's an additional risk that a user will _discover_ the feature and then fail to implement it. Contrary to our goal of providing "early access" to a valuable feature, we risk damaging a user's confidence in our product because of a bad onboarding experience.

### Exceptions to documentation requirements

The only valid exceptions to this requirement are: (1) if another team member (such as a member of the PM team) is separately assigned the docs authoring, or (2) if we are accepting a contribution contribution and taking the docs authoring role upon ourselves.

Even in these cases, however, docs still need to be completed before the feature is released.

## CLI Standards

For many users, the CLI is the primary Meltano interface interacted with on a regular basis.
As such, we aim to make to make working with our CLI as intuitive and joyful as possible.

When adding or changing functionality in Meltano's CLI, refer to [clig.dev](https://clig.dev) for guidelines on creating human-centric CLIs.

## SQL Standards

SQL code should validate against the SQLFluff checks and should match with SQLFLuff auto-format output. (Ideally, CI tests are to be enabled wherever possible.)

All projects containing SQL code should include a `.sqlfluff` configuration file with the minimal settings. Changes to these settings (such as max line length) should be considered on a per-project basis.

If using VS Code, developers writing SQL should install the [SQLFluff VS Code extension](https://marketplace.visualstudio.com/items?itemName=dorzey.vscode-sqlfluff). This extension gives real time lint feedback and has autoformat capabilities for many of its rules.

### `.sqlfluff` sample config

```ini
[sqlfluff]
dialect = snowflake  # or another dialect as needed
templater = dbt
output_line_length = 80
ignore_templated_areas = True
runaway_limit = 100

[sqlfluff:rules]
tab_space_size = 4
max_line_length = 80
indent_unit = space
comma_style = trailing

[sqlfluff:rules:L010] # Keywords
capitalisation_policy = upper

[sqlfluff:rules:L014] # Unquoted Identifiers
extended_capitalisation_policy = lower

[sqlfluff:rules:L030] # Function Names
capitalisation_policy = upper

[sqlfluff:templater:dbt]
# TODO: Replace with project-specific dbt settings:
project_dir = transform
profiles_dir = transform/profile
profile = meltano
target = snowflake
```

### See also:

- [SQL Style Guide](/data-team/sql-style-guide), in the **Data Team** section of this Handbook.
- [Squared project SQLFluff config](https://gitlab.com/meltano/squared/blob/master/data/.sqlfluff)

## Python Standards

COMING SOON

## Terraform Standards

Terraform code should validate against the `terraform fmt` checks and should match with `terraform fmt` auto-format output. (Ideally, CI tests are to be enabled wherever possible.)

As a general guide, please refer to [Gruntwork's Terraform Style Guide](https://docs.gruntwork.io/guides/style/terraform-style-guide/) - except the "Testing" section, which does not yet apply.

## Helm Standards

COMING SOON

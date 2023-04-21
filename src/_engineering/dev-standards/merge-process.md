---
layout: page
title: Pull Request (PR) Process
weight: 2
subcategory: Dev Standards
---

## Trivial Updates

All non-trivial pull requests should be reviewed and merged by someone other than the author.
A pull request that touches code is never trivial, but one that fixes a typo in the documentation probably is.

Trivial updates, such as docs updates, do not require a logged issue.

Outside of very trivial issues like typo's, if a PR is opened _without_ an associated issue, the PR description should then briefly explain why the PR is needed or what led to its creation.

## PR Review Process

All team members are encouraged to review community contributions. However,
each PR should have a single accountable reviewer, who is also approved as a CODEOWNER. That
reviewer can ask others in the team for feedback but they are solely accountable for the merge/approval
decision.

If you are assigned as primary reviewer and _do not_ feel confident in your ability to approve and merge,
it is your responsibility to either (a) request assist from a team member on specific parts of the code,
or (b) ask another team member to take the role of primary reviewer.

## Approval Stickiness

PR approvals are set (on a per-repo basis) to _not_ use the option to `Remove all approvals when commits are added to source branch`. This means approvals are "sticky" and can be requested any time during the review cycle. This also means it is the Merger's responsibility to check commit history and raise an alarm on any regressions or other concerns introduced _after_ another team member granted their approval.

**Security Note:** In most cases, the closing "post-approval" tasks should be cosmetic - such as docs, linting, and changelog updates - but team members should nevertheless be on the lookout for any regressions or malicious-looking code that may have been added _after_ approvals are given and _before_ the Merge is applied. (If in doubt, please request a repeat-review from other approvers on the PR.)

## Team-Authored PRs

Team authored PRs may be reviewed by any other team member, but should also be approved by a code owner, as described below.

## Community-Contributed PRs

For community contributions, the community contributor should indicate readiness to merge and the core team member (primary reviewer) will approve the PR and also perform the merge.

We aim to be responsive in all community contributed PRs, as a sign of respect for the community members' contributed time and effort.

The first team member to review should assign themselves to the review and check the following are present:

- Soundness of code changes (the "meat" of the review)
- Description of manual testing performed (where applicable)
- Presence of unit testing for new capabilities, where applicable
- Presence of docs and changelog updates, where applicable

**Note:** If not comfortable being primary approver, due to either time constraints or subject matter expertise, the first reviewer should request review by tagging another team member.

### Guiding Principles for Community Contributions

- We prioritize code contributions as high-value work, honoring the generous and valuable donation of a contributor's time and effort. We honor those contributions as representing the authors' valuable time and energy, and we respond to them in a time-sensitive manner.
- Whenever blocked on a response for 48+ hours, we may flag as such using the `Awaiting Action::Author` label. Sparingly and with due respect, we may ping a contributor on Slack (in DM or in the `#contributing` channel) to notify them of pending action on their side.
- In the case that a contributor becomes non-responsive due to competing priorities, time lag, or other factors, we evaluate internally within the team (and with help from Product) to decide if we can prioritize and deliver any remaining outstanding tasks ourselves.

### Contributing to branches on a community-member's fork

Occasionally we need to help a contributor get their PR completed by contributing back to their fork. The GitLab-provided instructions are incorrect for this process. Please use the following:

#### Step 1: Author must allow edits from maintainers

According to the [docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/allowing-changes-to-a-pull-request-branch-created-from-a-fork):

> Only pull request authors can give upstream repository maintainers, or those with push access to the upstream repository, permission to make commits to their pull request's compare branch in a user-owned fork.

![Allow Maintainers to Make Edits](https://docs.github.com/assets/cb-44583/images/help/pull_requests/allow-maintainers-to-make-edits-sidebar-checkbox.png)

Note that this only works for pull requests that are authored by a user-owned fork but not if it's an organization-owned fork.

#### Step 2: Set some env vars

```bash
export FORK_ORG_NAME=name-of-user
export FORK_REPO_NAME=meltano
export FORK_BRANCH_NAME=name-of-branch
export TARGET_BRANCH_NAME=main
```

#### Step 3: Add the remote and checkout locally

```bash
# Add the remote
git remote add $FORK_ORG_NAME "https://github.com/$FORK_ORG_NAME/$FORK_REPO_NAME.git"
# Fetch the branch refs
git fetch $FORK_ORG_NAME
# Checkout the branch
git checkout -b "$FORK_ORG_NAME-$FORK_BRANCH_NAME" --track "$FORK_ORG_NAME/$FORK_BRANCH_NAME"
```

If you need to pull new commits later on (before deleting the remote):

```bash
git pull $FORK_ORG_NAME $FORK_BRANCH_NAME
```

### Step 4: Make changes in your local copy of the branch as usual

Optionally, merge in the latest from master and resolve conflicts:

```bash
git merge "origin/$TARGET_BRANCH_NAME"
```

Then make any other changes needed. For example, commonly we need to re-lock the python library refs:

```bash
poetry lock
```

### Step 5: Push the changes back to the fork and remove the remote

```bash
git push $FORK_ORG_NAME "$FORK_ORG_NAME-$FORK_BRANCH_NAME:$FORK_BRANCH_NAME"
```

Remove the local remote ref and branch:

```bash
git checkout $TARGET_BRANCH_NAME
git branch -D "$FORK_ORG_NAME-$FORK_BRANCH_NAME"
git remote remove $FORK_ORG_NAME
```

## Code owners and approvers

For our core repos we use a pattern of Primary/Fallback ownership, where each area of the codebase has a designated primary and secondary owners. Approval is required for both Community-Contributed PRs and Team-Authored PRs from one of these individuals.
This can be requested either when the PR foundation is in place or as a "final check". The final approval from the Primary code owner should generally be requested _after_ the PR is otherwise "clean" - and after known action items and questions are called out in the text of the PR.
In the scenario where the primary code owner is also an author they must obtain approval from the "fallback" owner.

The code owners for Meltano and the SDK are specified in their respective `CODEOWNERS` files:

SDK - [CODEOWNERS](https://github.com/meltano/sdk/blob/main/.github/CODEOWNERS)

Meltano - [CODEOWNERS](https://github.com/meltano/meltano/blob/main/.github/CODEOWNERS)

As we grow and the complexity of the various code base increases, we will appoint additional code owners to specific subject areas as needed.

### Pulumi and IAC Resources

For any Pulumi and IAC resources which don't already have a `CODEOWNERS` ruleset, the following approval model should apply:

- Primary Approver: @magreenbaum
- Secondary Approvers: @WillDaSilva

### EM and PM Approval

Whenever spec changes/updates are introduced during the process of development, and/or whenever a large impactful feature is being implemented, please add `@seth-meltano` and `@tayloramurphy` as required approvers.

All EM/PM approval requests should be paired with a comment tagging one or both, specifically addressing the details of _where_ spec has changed and/or _which_ components or choices are needing approval.

There are three types of EM/PM approval requests:

1. **Pre-approval.** In this case, approval is being requested early in the dev cycle regarding a critical design choice or spec change. Generally a tagged comment is sufficient, and "approval" may just be in the form of a comment reply.
2. **Final approval.** In this case, you are requesting final approval before merging a completed feature into the main branch. This generally is most appropriate _after_ the default/primary approver has completed providing their own feedback.
3. **ADR Approval.** If your PR contains an ADR, it should _always_ be approved by both EM and PM, with cc mention to @DouweM.

## Responsibility to Merge

- Core team members may merge their own PRs once necessary approval(s) are provided.
- When nearing completion, an PR author may also invite the reviewer
  to "merge if approved", in order to reduce cycles spent in back-and-forth.
- Except in exceptional circumstances, a reviewer should not merge
  the PR on behalf of the other team member unless invited to do so.

## Continually improving Contribution Guidelines

As experts catch issues in PRs that the original reviewers did not,
we will update this section and the [Contributor Guide](https://meltano.com/docs/contributor-guide.html#reviews),
and reviewers will learn new things to look out for until they catch (almost) everything the expert would,
at which points they will be experts themselves.

## Dependabot

All repos should enable [Dependabot security updates](https://docs.github.com/en/code-security/dependabot/dependabot-security-updates/about-dependabot-security-updates) and [Dependabot version updates](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/about-dependabot-version-updates) for its own dependencies, as well as for any dependencies that are used in the repo's CI/CD pipeline.

You can take a look at the [Dependabot configuration for the SDK](https://github.com/meltano/sdk/blob/main/.github/dependabot.yml) for an example.

### Dependabot PRs

Dependabot will open PRs to update dependencies and these PRs should be reviewed and merged by the team.

Some guidelines for reviewing and merging Dependabot PRs:

- Engineers should avoid pushing to the Dependabot branch directly. If the PR is stale, and there aren't any conflicts, the engineer should trigger a rebase by commenting `@dependabot rebase` on the PR.
- Engineers should only push directly to the Dependabot branch if the PR is failing _because_ of the dependency update (e.g. because of deprecation), in which case the engineer should push a fix to the branch.
- Engineers should merge Dependabot PRs by commenting `@dependabot merge` on the PR.

## Repository Settings and Permissions in GitHub

_This section describes the project permissioning model and project-level settings which are required for our merge process to work correctly._

### `Branch Protection Rules` settings

Per repo, these settings are found at `Settings` > `Branches`:

There should be a branch protection rule that applies to the `main` branch. The rule should have the following settings:

- Check "Require a pull request before merging", and set the following options:
  - At least 1 approval is required
  - Uncheck "Dismiss stale pull request approvals when new commits are pushed"
  - Check "Allow specified actors to bypass required pull requests" and select a team who can bypass the above settings (e.g. `meltano/engineering`)

- Check "Require status checks to pass before merging". The specific checks required will vary by project
- Check "Require conversation resolution before merging"

_Important: The GitHub UI requires you to hit "Save changes" after making changes to a branch protection rule._

### `Pull requests` settings

Per repo, these settings are found at `Settings` > `General` > `Pull Requests`:

- Uncheck "Allow merge commits"
- Check "Allow squash merging" and select "Default to pull request title and commit details" as the default commit message.
- Uncheck "Allow rebase merging"
- Check "Always suggest updating pull request branches"
- Check "Allow auto-merge"
- Check "Automatically delete head branches"

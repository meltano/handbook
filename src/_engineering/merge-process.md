---
layout: page
title: Merge Request (PR) Process
weight: 2
---

## Trivial Updates

All non-trivial merge requests should be reviewed and merged by someone other than the author.
A merge request that touches code is never trivial, but one that fixes a typo in the documentation probably is.

Trivial updates, such as docs updates, do not require a logged issue.

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

For community contributions, the community contributor should indicate readiness to merge and
the core team member (primary reviewer) will approve the PR and also perform the merge.

All Community-Contributed PRs should have their corresponding Issue marked with the `Community-Contributed PR` label in Gitlab. This helps in prioritization of code contributions. We aim to be responsive in all Community-Contributed PRs, as a sign of respect for the community members' contributed time and effort.

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

According to the [docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/allowing-changes-to-a-pull-request-branch-created-from-a-fork
):

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

Currently, we have the following owners (listed in order eg. primary, fallback):

SDK - [CODEOWNERS](https://gitlab.com/meltano/sdk/-/blob/main/.gitlab/CODEOWNERS):

- `/docs/` owners: @edgarrmondragon @afolson
- `*` (everything else) owners: @edgarrmondragon @aaronsteers

Meltano - [CODEOWNERS](https://gitlab.com/meltano/meltano/-/blob/master/.gitlab/CODEOWNERS):

- `/src/meltano/core/bundle/discovery.yml` owners: @aaronsteers @pnadolny13
- `/docs/` owners: @tayloramurphy @afolson
- `/src/webapp/` owners: @alex1126 @pandemicsyn
- `/src/meltano/api/` owners: @pandemicsyn @alex1126
- `/docs/` owners: @tayloramurphy @afolson
- `*` (everything else) owners: @pandemicsyn @edgarrmondragon

As we grow and the complexity of the various code base increases, we will appoint additional code owners to specific subject areas as needed.

### Terraform and IAC Resources

Terraform and IAC are an increasingly important codebase for our team's success. For any terraform and IAC resources which don't already have a `CODEOWNERS` ruleset, the following approval model should apply:

- Primary Approver: @edgarrmondragon
- Secondary Approvers: @aaronsteers, @kgpayne (both required as 'additional' approvers \*\*)

Note:

- More eyes are needed _temporarily_ on infra-related resources, but we'll scale this down to the standard primary/secondary approval model once a set of best practices and standard coding guidelines have been established. (Tracked in [handbook#68](https://gitlab.com/meltano/handbook/-/issues/68))

### EM and PM Approval

Whenever spec changes/updates are introduced during the process of development, and/or whenever a large impactful feature is being implemented, please add `@aaronsteers` and `@tayloramurphy` as required approvers.

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

## Project Settings and Permissions in Gitlab

_This section describes the project permissioning model and project-level settings which are required for our merge process to work correctly._

### `Protected Branches` Settings

Per project or repo, these settings are found at `Settings` > `Repository` > `Protected Branches`:

- The `main` or `master` branch should be marked as a "protected" branch.
- The protected branch should be set to allow Merges from "Developers and Maintainers".
- The protected branch should be set to allow Push from "None".

### `Merge requests` project settings

Per project or repo, these settings are found at `Settings` > `General` > `Merge Requests`:

- These options should be set as follows:
  - `Enable "Delete source branch" option by default`: `Enabled`
  - `Squash commits when merging`: `Encourage`
  - `Merge checks: Pipelines must succeed`: `Enabled` if a CI Pipeline exists, otherwise `Disabled` to avoid infinite loop/freeze of PRs.
  - `Merge checks: All discussions must be resolved`: `Enabled`

_Important: The Gitlab UI requires you to hit "Save" after making changes in this section._

### `Merge request appprovals` project settings

Per project or repo, these settings are found at `Settings` > `General` > `Merge request approvals`:

- These options should be set as follows:
  - `Enabled`: `Prevent approval by author`
  - `Disabled`: `Prevent approvals by users who add commits`
  - `Disabled`: `Remove all approvals when commits are added to source branch`

_Important: The Gitlab UI requires you to hit "Save" after making changes in this section._

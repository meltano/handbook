---
layout: page
title: Merge Request (MR) Process
weight: 2
---

## Trivial Updates

All non-trivial merge requests should be reviewed and merged by someone other than the author.
A merge request that touches code is never trivial, but one that fixes a typo in the documentation probably is.

Trivial updates, such as docs updates, do not require a logged issue.

## MR Review Process

All team members are encouraged to review community contributions. However, 
each MR should have a single accountable reviewer, who is also approved as a CODEOWNER. That 
reviewer can ask others in the team for feedback but they are solely accountable for the merge/approval
decision.

If you are assigned as primary reviewer and _do not_ feel confident in your ability to approve and merge,
it is your responsibility to either (a) request assist from a team member on specific parts of the code,
or (b) ask another team member to take the role of primary reviewer.

## Approval Stickiness

MR approvals are set (on a per-repo basis) to _not_ use the option to `Remove all approvals when commits are added to source branch`. This means approvals are "sticky" and can be requested any time during the review cycle. This also means it is the Merger's responsibility to check commit history and raise an alarm on any regressions or other concerns introduced _after_ another team member granted their approval.

**Security Note:** In most cases, the closing "post-approval" tasks should be cosmetic - such as docs, linting, and changelog updates - but team members should nevertheless be on the lookout for any regressions or malicious-looking code that may have been added _after_ approvals are given and _before_ the Merge is applied. (If in doubt, please request a repeat-review from other approvers on the MR.)

## Team-Authored MRs

Team authored MRs may be reviewed by any other team member, but should also be approved by a Manager (probably AJ), as described below.

## Community-Contributed MRs

For community contributions, the community contributor should indicate readiness to merge and
the core team member (primary reviewer) will approve the MR and also perform the merge.

All Community-Contributed MRs should have their corresponding Issue marked with the `Community-Contributed MR` label in Gitlab. This helps in prioritization of code contributions. We aim to be responsive in all Community-Contributed MRs, as a sign of respect for the community members' contributed time and effort.

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

## Manager-Level Approval

For both Community-Contributed MRs and Team-Authored MRs, a Manager-Level approval is required for any non-trivial updates - in addition to Team Member approval. This can be requested either when the MR foundation is in place or as a "final check". The manager-level approval should generally be requested _after_ the MR is otherwise "clean" - and after known action items and questions are called out in the text of the MR.

The goal in the dual-approval approach is to create a virtuous cycle of individual ownership combined with manager-level accountability, while fostering organic and supportive training opportunities for new team members.

- **Note:** In future, as we scale, we will replace "Manager-Level" approval with "Senior-Level" approval or similar.

## Responsibility to Merge

- Core team members may merge their own MRs once necessary approval(s) are provided.
- When nearing completion, an MR author may also invite the reviewer
to "merge if approved", in order to reduce cycles spent in back-and-forth.
- Except in exceptional circumstances, a reviewer should not merge
the MR on behalf of the other team member unless invited to do so.

## Continually improving Contribution Guidelines

As experts catch issues in MRs that the original reviewers did not,
we will update this section and the [Contributor Guide](https://meltano.com/docs/contributor-guide.html#reviews),
and reviewers will learn new things to look out for until they catch (almost) everything the expert would,
at which points they will be experts themselves.

## Project Settings and Permissions in Gitlab

_This section describes the project permissioning model and project-level settings which are required for our merge process to work correctly._

### Protected branches

Per project or repo, these settings are found at `Settings` > `Repository` > `Protected Branches`:

- The `main` or `master` branch should be marked as a "protected" branch.
- The protected branch should be set to allow Merges from "Developers and Maintainers".
- The protected branch should be set to allow Push from "None".


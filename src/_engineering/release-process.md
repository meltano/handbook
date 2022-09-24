---
layout: page
title: Release Process
weight: 2
---

The process below applies to both Meltano and then SDK, unless otherwise noted.

## Evergreen Release Process

We are always releasing, and we aim to have an _evergreen_ release process, handling the operational release and marketing work simultaneously while performing development.

## Schedule

The release schedule is determined by Product and Marketing. The Engineering team aims to _always_ be ready to ship, with sufficient automation and documentation in place to allow _anyone_ in the company to perform the role of Release Manager.

## Rotating Release Managers

We have a sliding window of `Release Manager` role within the Engineering team, with the prior `Release Manager` on call to support the next `Release Manager`. If issues arise or a second opinion is needed during release, the last person who ran the release process will perform this supporting function for the next.

## Versioning

Regular releases get a minor version bump (`1.1.0` ⇾ `1.2.0`).
Releases that only address regressions introduced in the most recent release get a patch version bump (`1.2.0` ⇾ `1.2.1`).

## Release process

### Basic overview

Current as of: Aug 2022

The processes for releasing the Meltano and the SDK are essentially the same. At a high level they consistent of:

1. Trigger the version bump GitHub workflow for [Meltano](https://github.com/meltano/meltano/actions/workflows/version_bump.yml) and [SDK](https://github.com/meltano/sdk/actions/workflows/version_bump.yml).
2. Watch for the auto-generated [Meltano](https://github.com/meltano/meltano/pulls) and [SDK](https://github.com/meltano/sdk/pulls) PRs. Verify the automated version bump and changelog increment in each PR.
3. Merge the PRs.
4. Locate the automatically created draft releases for [Meltano](https://github.com/meltano/meltano/releases) and [SDK](https://github.com/meltano/sdk/releases). Then [groom the releases notes](#release-notes-grooming) for each, as needed.
5. Publish the draft releases in GitHub. This automatically ships to PyPI.
   - ⚠️ Warning: In GitHub, `Ctl+Enter` does not just save your copy edits for the draft releases - it also publishes the workflow. Extreme caution is advised to not "accidentally" release too early.
7. Execute of the Docker Publish workflow for [Meltano](https://github.com/meltano/meltano/actions/workflows/docker_publish.yml) only.

### Release Notes Grooming

The guidelines below will help to confirm that the release notes are a helpful resource for users and contributors.

Note: It's generally not worth slowing down the release process to update these in the changelog. Our standard is that the CHANGELOG should prioritize being _accurate_ and the Release Note should prioritize being _readable_.

1. Everything in the "New" and "Docs" categories should have a docs link.
1. Delete "Docs" entries unless at least one of these are true:
   1. They are authored by a community contributor, as noted by the automated attribution.
   1. They actually warrant linking to new/exciting content.
1. All notes should be tested by this questions:
   1. As a non-technical user, can I tell if I will be affected or benefited by this?
   1. As a technical engineer or contributor (with no extra context), can I understand roughly what is changing and why?
1. Everything unrelated to the user experience is deleted. E.g.:
   1. Sometimes 'fix' entries are merged before the feature is actually released.
   1. Sometimes 'ci' or 'chore' notes are miscategorized as 'fix' or 'change'.

### Release process in detail

Note: An excellent walkthrough of the GitHub portion of the releases process is available as a [recording in zoom](https://meltano.zoom.us/rec/play/ORP7_YqAfOf7cO1QlzpBgQvzE03sUGWwgaqVM3l73J6Bv4ZNobGHkpBYunfcsbDSZ4EArSQwmWr9sQ2M.sci0rE6xMAfSNMVG?continueMode=true&_x_zm_rtaid=20Z-pMoDQgy0DmRPcCaVvQ.1659731481077.bf202a39d17b8ca28a159b9671132651&_x_zm_rhtaid=985)

#### Triggering the version bump

The first step to a release regardless of whether is the SDK or Meltano is to trigger a version bump. To do so, you'll manually trigger the Version Bump GitHub action:

Selecting options:
- Version bump type: `patch` or `minor` (`major` will be used rarely)
- Increase to this prerelease version: `none`

This will:

- Create a Version Bump PR with an auto-generated changelog update
- Create a draft release and tag on GitHub

#### Reviewing/Merge the Version Bump PR

Triggering a version bump will create a PR like [!891](https://github.com/meltano/sdk/pull/891). You'll need to review this PR and:

- Check version bump to ensure that the version bump worked correctly, and the new version appears as you would expect.
- Groom the changelog:
  - Checking explicitly for missing entries.
  - Checking for missing or incorrectly linked PRs.
  - Generally ensuring that the format adheres to previous changelog convention and entries.
  - Thanking contributors when the PR originated from a Meltano contributor rather than core developer.

Once the change log is groomed, go ahead and copy the raw (markdown) change log contents and use it to update the description of the Draft release corresponding to your version bump on the GitHub releases page (e.g. https://github.com/meltano/sdk/releases). DO NOT publish the release notes.

Once the changelog is groomed, and you're happy with its state, merge the PR.

#### Release notes and Marketing

Once you've merged the version bump PR and copied the description to the draft release, ping AJ Steers and Taylor Murphy in the marketing Slack channel, asking them to review the release notes.

Be sure to merge the release PR Before publishing the release. **Publishing the release before the version bump PR has landed will cause the PyPI action to fail**.

Publishing the release will trigger the PyPI release.

--

If the release is published before the version bump PR has landed, you will need to start over (don't forget to stash your groomed changelog somewhere so that you can paste it back in). In this scenario:

- Close the Release PR
- Delete the Release AND Tag
- Verify that the PR is closed, the Release is deleted, and the Tag is deleted. Having any three of these remaining will likely cause issues moving forward
- Start the process a new by triggering **the same** version bump again. You do not need to skip a version

#### Meltano - Docker Publish

When releasing Meltano, there's one additional step. You'll need to build/publish images to the Docker hub. 

After publishing the Meltano draft, and after you've verified that the packages are live on PyPI, you will need to trigger the Docker publish action: https://github.com/meltano/meltano/actions/workflows/docker_publish.yml

Selecting options:

- Use workflow from: `branch: main`
- Where to upload the images: `docker.io`
- Optionally selecting `dry-run` will skip the upload stage, which can be used to run an image scan prior to releasing the new Docker image.

#### Comms

Coordinating with the `#marketing` Slack channel, post a release announcement in the `#announcements` Slack channel.

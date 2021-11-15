---
layout: page
title: Release Process
weight: 2
---

The process below applies to both Meltano and then SDK, unless otherwise noted.

## Evergreen Release Process

We are always releasing, and we aim to have an _evergreen_ release process, handling the operational release and marketing work simultaneously while performing development.

## The Release Checklist

All release steps are documented in the Gitlab issue template, and a new `Release` checklist issue should be created each time one is closed. 

In either the SDK or Meltano project on Gitlab, begin a new issue and select the `Release` template from the dropdown options.

## Schedule

The release schedule is determined by Product and Marketing. The Engineering team aims to _always_ be ready to ship, with sufficient automation and documentation in place to allow _anyone_ in the company to perform the role of Release Manager.

## Rotating Release Managers

We have a sliding window of `Release Manager` role within the Engineering team, with the prior `Release Manager` oncall to support the next `Release Manager`. If issues arise or a second opinion is needed during release, the last person who ran the release process will perform this supporting function for the next.

## Versioning

Regular releases get a minor version bump (`1.1.0` -> `1.2.0`).
Releases that only address regressions introduced in the most recent release get a patch version bump (`1.2.0` -> `1.2.1`).

## Version Bump Processes

The Meltano and the SDK version bump processes are documented in the Release issue templates. No further actions are needed besides what is listed in the checklist.
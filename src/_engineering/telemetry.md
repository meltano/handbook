---
layout: page
title: Telemetry
weight: 7
---

This page describes our telemetry standards for development across Meltano libraries and repos.

## Philosophy of Telemetry

The goal of telemetry is three-fold:

1. **Inform our team.**
   - We gather data which can be used to improve the Meltano product. This includes gathering insights on which Meltano features are used and how pervasively, which work well, and which are not working well.
2. **Inform our community.**
   - We gather data which can help guide other Meltano users. For instance, when one specific plugin is being used successfully by thousands of distinct users every day, we want to reflect that success in plugin metadata on the Hub so others can be encouraged to try out the same plugin, with confidence that thousands of others have deployed it successfully.
   - Conversely, if a plugin breaks, or for any reason stops working for 99% of our users, we can put a warning that guides the community _away_ from using the broken version of the plugin. We can also channel our resources, both internally and from the broader community, to help plugin maintainers resolve those issues when they arise.
3. **Find and fix problems faster.**
   - Our Meltano culture highly values automated tests and automated validation. Nevertheless, bugs and regressions do happen. Telemetry helps us identify bugs in our code _(and also in 3rd party plugins!)_ so that we can respond effectively and in a timely fashion to any issues affecting our community of users.

## Telemetry is for product improvement, not monetization

We will never monetize your telemetry data. This means we will never sell your data or trade your data, nor will we mine your data with the goal of monetizing insights.

**The _only_ approved use of Meltano telemetry is to improve the Meltano experience for users of Meltano.**

## Telemetry and Privacy

As a company principal, Meltano will make every reasonable attempt to _not_ record any data which could lead to damages or which could compromise sensitive information if leaked.

## Anonymization Standards

Unless otherwise approved, any user-entered data is anonymized client-side before being submitted to Meltano. This section describes which data is sent in clear text and which data is obfuscated via one-way hashing.

We capture these in clear text:

- plugin names
- plugin variant names
- command names
- execution context, such as:
  - OS version
  - Python version
  - project ID

We anonymize these with one-way hashing before reporting:

- CLI args
- plugin config

These items will never be collected or reported back to meltano:

- your settings values
- your secrets or credentials
- the contents of your `meltano.yml` file
- your IP address

## Dev standards

This section should be used by developers to guide in telemetry development.

### Logging both start and completion for long-running events

Long-running processes should have both a `started` and `completed` event log. This is to ensure we detect failures when the running Meltano process (or container) may be killed before getting a chance to send a "failed" or "aborted" message at completion time.

The `completed` version of an event log should be identical to its corresponding `started` event, with the inclusion of the final ending state data.

Unless otherwise approved or required, we do not emit "heartbeat" events. A starting event and completion event is sufficient to achieve our goals.

## One-way hashing

Anonymization is performed via one-way hash algorithms. We default to MD5 because it generates shorter digests. We may also use SHA256 for any aspects we believe should receive a more robust hashing treatment, or for any aspects which have higher likelihood of hash collision when using MD5.

## Hashing Q&A

### Q: What is a one way hash and how is it helpful?

**A:**

A one-way hash is a way of obfuscating sensitive data such that:

1. The same input value always produces the same output value (aka "hash").
2. The results are mathematically and statistically _extremely difficult_ (read: near impossible) to reverse engineer back to the source value.
3. Hash results are extremely helpful in safely and anonymously detecting changes to a file or configuration. Without passing the entire configuration, and without providing a hacker any means of decoding/decrypting the data back to its source, we can see that a file (such as `meltano.yml`) has not changed since its last hash was generated.

### Q: Why does Meltano use hashing?

**A:**

Meltano hashes any fields at all which could be used by a hacker to compromise a project or user. We will never know what freeform text arguments you passed in via the command line, we won't have any data at all which could be used to compromise your environment, and whatever data we collect, we'll never sell, share, or trade your data with any third parties.

### Should I enable or disable anonymous reporting?

**A:**

We hope you will choose to enable reporting, because this really does help us - and it helps the Meltano community in a very real way.

If you still have any concerns about keeping anonymous reporting enabled, we hope you'll share those concerns with us. You can do so by emailing `hello@meltano.com` or by logging an issue in our [Meltano Issue Tracker](https://gitlab.com/meltano/meltano/-/issues).

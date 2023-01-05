---
layout: page
title: Security Policies
weight: 2
---

## Account Policies

### Google Accounts

All Meltano employees will be issued an `@meltano.com` email address and Google Workspaces login. This account will be used as your primary SSO identity.

#### Google MFA Requirement

Employees are required to enable MFA on their `@meltano.com` user account.

### GitHub Accounts

All Meltano employeess and contractors will receive an invite to the Meltano Team in GitHub. As long as the employee or contractor is employed by Meltano, the following must be configured for the users' GitHub accounts:

### Password Manager

Meltano uses 1Password for account management, including as our recommended one-time-password (OTP MFA) provider. We require all employees to install and use the provided password manager.

#### GitHub User Account Requirements

1. MFA must be enabled. (We recommend 1Password as the OTP application.)
2. If the user has been given a meltano.com email address, their `@meltano.com` email address must be added to their GitHub user account. Note that this does _not_ require that the user remove other email addresses from their account.

## Laptop Governance Policies

All Meltano employees are issued a laptop upon joining Meltano. Below are procedures and processes designed to ensure their safe use.

The below requirements apply to all Meltano workstations.

1. Automatic security updates enabled on laptop.
1. Screensaver lock meets policy for max time between start of screensaver and locking of laptop.
1. Hard drive encryption is enabled.
1. Anti-virus installed on laptop. (Requirement [waived](https://help.drata.com/en/articles/5282257-mac-os-and-antivirus-software) for MacOS users on a sufficiently recent OS version.)

### Uploading Evidence of Laptop Compliance

Once per audit period (at minimum), Meltano employees should be prepared to log in to [app.drata.com](https://app.drata.com) with their `@meltano.com` SSO account and upload screenshots of the above using the provided instructions.

Assuming laptop has already been subscribed to the above security policies, employees should expect approximately 10-15 minutes effort to upload the associated screenshots as evidence of compliance.

## Compliance Vendor: Drata

We use [Drata](https://app.drata.com) as our chosen vendor to monitor and alert on compliance. In many cases, Drata will create an alert if above policies are not met. For more information on specific tests performed by Drata, please see the [tracking issue](https://github.com/meltano/soc2/issues/2) (internal link).

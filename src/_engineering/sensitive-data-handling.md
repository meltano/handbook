---
layout: page
title: Handling of Sensitive Data
weight: 12
---

## Data Classifications

Responsible handling of sensitive data starts with proper data classification. Our data classification guide is [here](../_data-team/data-classification.md).

### Sensitive Data within Log Files

#### Meltano Core Logs

We do expect Meltano Core CLI logs will include Level 3 data that could contain internal information related to our users' business models, intellectual property, trade secrets, etc.

Since Meltano delivers functionality via 3rd party connectors and other 3rd party software, we are aware that some Level 4 data (e.g. user accounts and/or credentials) may be inadvertently printed to logs by those 3rd party plugins. When this occurs, and we try to ensure the issue is logged as a high urgency bug to the correct repo for the connector or extension in question.

Meltano Core itself aims to never print Level 4 data in logs, unless the user explicitly asks to print those values with the `--print-var` CLI arg.

#### Meltano Cloud Internal Service Logs

_NOTE: This section applies to logs about the Meltano Cloud Service itself, excluding "detailed customer logs" which are discussed above._

For Meltano Cloud internal logs and infrastructure logs, we aim to exclude data from Level 3 and we will treat the presence of Level 4 data as high urgency bug.

For Level 3 data captured within Meltano Cloud log files, we will make reasonable attempts to exclude this data. If not feasible to exclude the specific Level 3 data item, for instance if some Level 3 data is playing a critical role in our ability to support Meltano Cloud operations, we will register and monitor the exception within the data usage inventory.

Customers' own logs from Meltano CLI and their data processing workloads are treated as DCL3 (restricted), and should be presumed to contain DCL3 data. It is not permitted to view customers' raw log files without proper business justification. Valid justification would include: debugging unexplained failures, responding to customer error reports, etc.

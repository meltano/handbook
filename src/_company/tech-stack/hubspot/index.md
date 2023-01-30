---
layout: page
title: "HubSpot"
weight: 2
---

## About

Customer relationship management (CRM) and marketing automation platform (MAP).

## Access

For access, please contact a `Super Admin`.

## Integrations

### WordPress Plugin

>Built-in analytics: analyze website performance and HubSpot forms to see which channels are driving the most leads by clicking the Dashboard link in the plugin menu. Track the performance of your team with sales dashboard reports.

The HubSpot tracking code is added to meltano.com via a [WordPress plugin](https://knowledge.hubspot.com/integrations/install-the-hubspot-wordpress-plugin). When a visitor fills out a form (ex: newsletter), they become `known` in HubSpot and page views can then be tracked on the contact record.

### Slack/Zapier

We use Zapier to send new Slack community members to HubSpot.

Trigger: New Slack user
Action: Find contact in HubSpot by email. If it does not already exsit, create a new contact in HubSpot (first name, last name, email, lead source).

### API Usage

500k calls/day. API call counts reset at midnight.

[API Usage Details](https://developers.hubspot.com/docs/api/usage-details)

> Starting November 30, 2022, HubSpot API keys will no longer be able to be used as an authentication method to access HubSpot APIs. In addition, starting July 15, 2022, you'll no longer be able to create new HubSpot API keys. [Learn more about this change](https://developers.hubspot.com/changelog/upcoming-api-key-sunset).

[Learn more about Private Apps](https://developers.hubspot.com/docs/api/private-apps)

## HubSpot Insights

HubSpot Insights can only enrich company data if the company name is pulled in: https://knowledge.hubspot.com/companies/hubspot-insights-on-company-records

## Import Contacts

- [How to setup your import file](https://knowledge.hubspot.com/crm-setup/set-up-your-import-file)
- How to use the [template](https://docs.google.com/spreadsheets/d/1IocXCt_ltEnBr5k51vmYehkiX9eenEDkE9DKKFs8hX0/edit#gid=0): make a copy of the document, fill in all the contact details for your contacts (1 contact per row), then provide to [marketing ops](https://handbook.meltano.com/marketing/marketing-ops/) to QA before importing to HubSpot.

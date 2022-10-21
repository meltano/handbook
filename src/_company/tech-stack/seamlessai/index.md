---
layout: page
title: Seamless.ai
weight: 2
permalink: /company/tech-stack/seamlessai/
---

## About

Sales intelligence and lead management solution that streamlines contact search, market research, lead conversion, data importing, etc.

## Access

A shared login is stored in the `Marketing-contractors` 1Pass vault. 

## Account

Meltano currently uses the free plan. 

- 50 credits/month
- Email Addresses
- Cell Phones
- Real-time search engine
- Enterprise Security and Compliance*
- Export download
- Basic Integrations*

**Support features:**

- Self-serve Knowledge Base
- Email support (Support times active between 9 AM - 5 PM ET Monday through Friday)

## Settings

[Setting up Preferences and your Ideal Customer Profile(ICP)](https://help.seamless.ai/s/article/Setting-up-Preferences-and-your-Ideal-Customer-Profile-ICP)

### Preferences

- What are the top titles you sell to? `data engineer, software engineer, data architect, solutions architect`
- What are the top titles you sell to? `Higher Education, Financial Services, Computer Software, Retail, Hospital & Healthcare`
- What are the top company sizes you sell to? `201-500, 501-1,000, and 1,001-5,000 employees`
- What departments do you sell to? `Engineering, IT, Operations`

Gong alerts `ON`

**In-app notifications**

Show Gong alerts `ON`

## Chrome Extension

[Download the Chrome extension](https://chrome.google.com/webstore/detail/seamlessai/dbepenphjfofmnjmlacfcdehikakmaap?hl=en)

Use the Seamless.ai Chrome extension while navigating B2B websites and search for prospects that match your ideal customer profile. Send their contact information directly to HubSpot. 

## Integrations

### HubSpot

#### Universal settings

_Set and lock org-wide._

- Owner: Douwe Maan email
- Default HubSpot contact list: [Seamless.AI ICP contact import list](https://app.hubspot.com/contacts/20712484/lists/37)
- Total AI Threshold/Limit on Contact Imports: 50
- Seamless.ai will automatically create accounts for contacts if they don't already exist in HubSpot. 
- Auto-import `NO`
- Import without a valid email address `NO`
- Use Hubspot auto-generated companies for contacts `YES`
- Fill Blank Contact Phone with Company Phone	`NO`
- Fill Blank Contact Location with Company Location	`YES`

**Import mappings**

_Set and lock org-wide._

Account/Company Object

| Seamless.ai Field | HubSpot Field | Overwrite* |
| --- | ----------- | ----------- | ----------- |
| Website | website | `No` |
| Website domain | domain | `No` |
| Phone | phone | `No` |

_*Please note: that changing Overwrite to `Yes` will allow Seamless.ai to overwrite HubSpot fields._

Contact Object

| Seamless.ai Field | HubSpot Field | Overwrite |
| --- | ----------- | ----------- | ----------- |
| First Name | firstname | `No` |
| Last Name | lastname | `No` |
| Title | jobtitle | `No` |
| Company Name | company | `No` |
| Contact Phone | phone | `No` |
| Business Email | email | `No` |
| Website | website | `No` |

## Search

Seamless.ai automatically recommends contacts and companies based on the [ideal contact preferences in settings](https://login.seamless.ai/settings/preferences).

Use the search filters to further segment your search by senoirity, department, technologies, location, etc. You can search for contacts or companies. You can also save a search to review later. 

- [Using Negative Search Criteria](https://help.seamless.ai/s/article/Using-Negative-Search-Criteria)
- [Searching for Contacts or Leads](https://help.seamless.ai/s/article/Searching-for-Contacts-or-Leads)

## Import

_Please note: only 50 credits per month allowed under the free plan._

[Importing Contacts or Leads to your Hubspot CRM](https://help.seamless.ai/s/article/Importing-Contacts-or-Leads-to-your-Hubspot-CRM)

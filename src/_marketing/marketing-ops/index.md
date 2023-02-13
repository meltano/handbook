---
layout: page
title: "Marketing Ops"
weight: 1
---

## Campaigns

To request a marketing campaign, please use the `campaign-request.md` template in the [internal-marketing repo](https://github.com/meltano/internal-marketing/blob/main/.github/ISSUE_TEMPLATE/campaign-request.md).

## Tech stack

Please see a full list of all our [tooling here](/company/tech-stack/).

## Domains

Meltano has several domains we've purchased and managed. These are documented in [this Google Sheet](https://docs.google.com/spreadsheets/d/15f_p0jU1ZaIMPE8_3OTBjM5Uf5_RjtG8EIRUygFVBTM/edit#gid=0).

## Website/blog

The website and blog are currently hosted on WPEngine. You can find the credentials in 1Password.

### WordPress

WordPress has updates disabled so that we can manually check that updates will work with our theme. Please do not update WordPress or plugins without testing updates on dev or staging environments.

#### Plugins

Plugins do not update by default. Please test new plugins and updates on a dev or staging instance.

##### Jetpack

You can configure the social media buttons that appear on posts [here](https://meltano.com/wp-admin/options-general.php?page=sharing).

##### Permalink Manager

You can update the permalinks for a post through the post's settings or through this [list](https://meltano.com/wp-admin/tools.php?page=permalink-manager).

### Troubleshooting

#### Website redirects to defaultwebpage.cgi

It's not clear why this happens, but clearing the cache resolves it. Follow SiteGround's instructions to [clear the cache](https://www.siteground.com/kb/clear-site-cache/). See [this issue](https://gitlab.com/meltano/meltano/-/issues/2886) for more information.

#### Web health checks
Performing regular web health checks is a good digital practice. When doing so, if you find 404 error pages, you can simply create a redirect so users get redirected to the correct page. The process might defer from one subdomain to another, but in this case we will cover the steps to create redirects for Meltano Hub:
1. First, go to the ['redirects' file](https://github.com/meltano/hub/blob/main/_redirects) in the Hub repository
2. How it works: Everything on the left is the old URL, and the one on the right is the new URL. All of them assume that `https://hub.meltano.com` is the prefix
3. For cases when you find an URL that doesn't have an updated equivalent, you can simply type "/" to redirect to the Hub main page
4. Create a pull request with your changes and push to main when approval/all checks have passed.

## Design

## Newsletter

## Community Management Tools

### Orbit

We use [Orbit](https://orbit.love) to track champions within the community. Anyone with a `meltano.com` email address can log into our workspace.

## Slack

### Slack Invite URL

[https://meltano.com/slack](https://meltano.com/slack) points to an invite to join our Slack workspace. The Slack links we generate can be used 2,000 times and do not expire.

1. Generate an invite URL in Slack.
    1. On Slack, click "Meltano" in the top left menu and select "Invite people to Meltano".
    1. Click "Edit link settings" and create a new link with no expiry. **Note:** You can also deactivate the invite URL entirely from here if needed. Please proceed with caution as `https://meltano.com/slack` is linked in our documentation and marketing materials.
    1. Copy and save the link for the next step.
1. [Edit the redirect in WPEngine](/marketing/wpengine#add-or-edit-redirects).

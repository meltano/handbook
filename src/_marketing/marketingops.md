---
layout: page
title: "Marketing Ops"
weight: 2
---

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

## Intercom

Intercom is used as a support channel. Only select team members have access to this but please ask Amanda if need access or reports.

## Social

We use [SproutSocial](https://sproutsocial.com/) to manage our social media accounts. Please ask Emily for access if you need it.

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

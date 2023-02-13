---
layout: page
title: "WPEngine Management"
weight: 2
---

The marketing site is hosted on WPEngine.

## Add or Edit Redirects

1. Navigate to the [redirect rules page](https://my.wpengine.com/installs/meltano/redirect_rules).
1. Click "New redirect rule" or click on the redirect rule you wish to edit.
1. Under "Name" type a short description of the redirect rule.
1. Under "Domain" select "All Domains"
1. Under "Source" you'll need to add a regex expression. See the other redirects for examples.
1. Under "Destination" add the URL you wish to redirect to.

## Website Outage Triage

If there's a website outage here are the steps you can take to triage it (in no particular order):

- Visit the WPEngine status page to see if there's a broader outage
- Check Pingdom alerts to see if the website is down or just unreachable from a specific region
- View the logs on WPEngine

### Contacting WPEngine

To contact WPEngine for support you will sometimes need to provide a "Support Pin." This is located at the bottom left corner of the control panel.

## Backups

Backups are taken every night and can be manually created and restored [here](https://my.wpengine.com/installs/meltano/backup_points#production).

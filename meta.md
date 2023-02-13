---
layout: page
title: About the Handbook
---

## Contribute to the Handbook

Follow the steps below to work locally with this project.

1. Make sure you have a Ruby environment set up locally. You'll need the Ruby version specified in the [Dockerfile](https://github.com/meltano/handbook/blob/main/Dockerfile).
1. Fork, clone or download this project.
1. Install ruby dependencies: `bundle install`
1. Install node dependencies: `npm install`
1. Build and preview: `bundle exec jekyll serve`
1. Preview the site at [http://127.0.0.1:4000](http://127.0.0.1:4000).
1. Make changes to the content of the site and preview them at the link above.

**Note:** Changes to `_config.yml` require you to stop the Jekyll server (`^C`) and restart it with `bundle exec jekyll serve`.

### Add a New Page

You can add `.md` and `.html` files to this project to be rendered. Most handbook pages are written in [Markdown](https://github.github.com/gfm/).

1. Go to the `_src` folder and locate your team's handbook section.
1. Create a new file called `my-page.md`. Use dashes as spaces in your file name.
1. Add [front matter](#front-matter) to your new file.
1. Add your [Markdown](https://github.github.com/gfm/) content.
1. If you've set up a dev environment, you can preview your new page on [http://127.0.0.1:4000](http://127.0.0.1:4000).

#### Front Matter

All pages require [front matter](https://jekyllrb.com/docs/front-matter/) to render properly. At a minimum you will need to specify:

- `layout:` The template file to use when rendering the content. For handbook pages use `page`. Custom templates can be created and placed in `_layouts`.
- `title:` The title of the page.
- `weight:` This controls how pages are displayed in menus and lists. The first file in each handbook section should be named `index.md` and have a weight of `1`. All other pages within a handbook section should have a weight of `2`.
- **Optional** `permalink:` This allows you to set this page's URL. You can use this to override Jekyll's automatically generated URLs. Ex. `/marketing/brand`
- **Optional** `toc:` Set this to `true` to include a Table of Contents on the page. By default this is disabled and should be added manually to pages that need it.

**Example:**

```
---
layout: page
title: Meltano Brand Kit
permalink: /marketing/brand
weight: 2
toc: true
---
```

### Add a New Section

1. Create a folder named `_yourdepartment` in the `src` directory.
1. [Create a new file](#add-a-new-page) called `index.md`. Set the `weight:` of this page to `1` -- it'll be the home page for this handbook section.
1. Add your [Markdown](https://github.github.com/gfm/) content. Since this is an index page it may be helpful to add some information about this new handbook section. Create additional pages for team policies and procedures and link to them from this page.
1. Update `collections:` in `_config.yml`. Ex:

```
  engineering:
    output: true
    icon: "fa-cogs"
```

`icon:` Refers to a [Font Awesome](https://fontawesome.com/) icon.

### Add Images

1. Create an `images` folder in your handbook section.
1. Add photos to this folder.
1. You can refer to them with `images/filename.jpg` in your pages.

### Add Table of Contents to a Page

The TOC is managed through the `jekyll-toc` gem. You can read about its configuration [here](https://github.com/toshimaru/jekyll-toc#customization).

This is added to all pages by default. It can be turned off by setting `toc: false` in the [front matter](https://jekyllrb.com/docs/front-matter/) of the document.

### Add/Remove/Edit an Announcement

You can edit the announcement and CTA under the `announcement` section in `_config.yml`.

- `display` - Set this to `true` to display an announcement or set it to `false` to hide it.
- `text` - This is the announcement text. Keep it short and sweet (~140 characters or less) so it's not intrusive on the page.
- `cta` - This prompts readers to do something. Make it engaging!
- `cta-link` - This is the link folks will be directed to. It opens in a new page so readers don't lose their place in the docs.

```
announcement:
  display: true
  text: Meltano v2.0 is almost here!
  cta: See what's on the roadmap.
  cta-link: https://handbook.meltano.com/product/roadmap#2022-q2
```

#### Testing Announcements Locally

If you're running docs locally, you will need to stop the Jekyll server (`^C`) and restart it with `bundle exec jekyll serve` in order to see updates to announcements. It's not ideal but it prevents folks from having to edit raw HTML to make changes to announcements.

## Check for Broken Links

Builds will fail to deploy if links are broken. You can check for broken links locally with this command before pushing changes:

```
bundle exec jekyll build && bundle exec htmlproofer --log-level :debug ./_site --assume_extension --http_status_ignore 503 --url-ignore "/www.linkedin.com/,/www.dell.com/,/www.optionimpact.com/"
```

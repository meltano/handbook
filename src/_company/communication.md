---
layout: page
title: Communication Guidelines
weight: 2
---

We're an all-remote company that allows people to work from almost anywhere in the world, so it's important for us to practice clear communication in ways that help us stay connected and work more efficiently. We communicate respectfully and professionally at all times.

To accomplish this, we use asynchronous communication as a starting point and stay as open and transparent as we can by communicating through public issues, merge requests, and Slack channels. 

## Asynchronous communication

Asynchronous communication is the practice of communicating and moving projects forward without requiring stakeholders to be available at the same time. 

Asynchronous communication demonstrates consideration for team members across time zones and enables us to travel outside of our usual time zone or structure our day around commitments at home or in our community. We practice asynchronous communication by recording meetings, using GitLab Issues and Merge Requests rather than texts, calls, or Slack messages, and being sensitive to local holidays and vacation statuses. We also place an emphasis on ensuring that conclusions of conversations outside of the issue tracker (i.e. Slack and impromptu Zoom calls) are written down: If it's not in the issue, it didn't happen. All of these actions ensure that team members are not pressured to be online outside of their working hours. Embracing asynchronous communication and learning to use it effectively requires a mental shift. This can feel unusual or even uncomfortable for those who come from a colocated environment, where in-person meetings and communiques are the norm. 

## In practice
 
1. Aim to respond to mentions other than FYIs within 3 business days. If you are unable to fulfill a specific request during that time, respond to the mention and indicate when you'll have an answer.
1. If you're behind on responding to notifications and expect to miss a deadline for any new mentions (until you're caught up), please inform the team in the Kickoff, and ask that urgent requests be sent to you via Slack DM and include the issue/MR link.
1. Use direct language when communicating. If you want someone to take action, directly tell them what's required, and when you need an answer, and whether there is urgency. Also indicate whether something is a "must have" or "nice to have" when asking for collaboration. 
1. Overcommunication can be appropriate. You can mention someone in an issue, but we all know that sometimes we can miss something, so if a request has stagnated, you can send someone a direct message as a gentle reminder. If you need something urgently, you can also send a Slack message to request that something is prioritized. 

### Slack guidelines

1. **Please avoid using @here or @channel unless something is urgent and important.** 
1. Use `FYI @username` when you want someone to be aware of what's being discussed, but they're not required to take action.
1. Use `@username` when you want someone to take a specific action, such as contributing to the discussion or answering a question.
1. If decisions are made on Slack, please either paste a screenshot of the conversation in the relevant issue/MR or provide a summary of what was discussed.
1. Use the private #internal-thanks channel when you want to thank a team member for something. If it's less sensitive, consider sharing in the public #thanks channel so the wider Meltano community can see it.

### Issue and merge request guidelines

1. Use `FYI @username` when you want someone to be aware of what's being discussed, but they're not required to take action.
1. Use `@username` when you want someone to take a specific action, such as contributing to the discussion or answering a question.
1. Directly mention (`@username`) the people you want to involve in a comment, especially the person you're replying to. Some people only work through GitLab TODOs (rather than email notifications) and will only see responses to comments and threads if they're explicitly mentioned.
1. Be mindful that most issues and MRs are public by default (unless the project is private or the issue confidential), and our communication in them can be viewed by our community. Please always consider how we present ourselves to the public.

### Email guidelines

1. Email should only be used when communicating with external vendors or when discussing sensitive, confidential matters (e.g. PeopleOps or financial situations).
1. Write `FYI` when you want someone to be aware of what's being discussed, but they're not required to take action.

### Meeting Guidelines

1. All meetings should have an agenda. Use the "[Create Meeting Notes](https://workspaceupdates.googleblog.com/2021/10/create-meeting-notes-in-google-calendar.html)" feature in Google Calendar to quickly create a Google Doc that is shared with all users invited to the event. Update the title of the doc to include the [ISO dates](https://en.wikipedia.org/wiki/ISO_8601#Calendar_dates).
1. If a meeting needs an additional document for internal documentation, create a new document in the appropriate folder in the [`External Meetings` folder](https://drive.google.com/drive/u/1/folders/17bM6lL5XG0i_onFtlR0wwoA6HEVnZCL1) in the shared [`Meltano Team` Google Drive](https://drive.google.com/drive/u/1/folders/0AMdtIhQUeQ-1Uk9PVA) and link to it in the public notes doc. Preface the link with "Internal Meltano Ref: `link`". If a relevant private GitLab issue exists as well, link to it inline with the Google Doc link. 

### Writing Style Guidelines

1. At Meltano, we use American English as the standard written language.
1. Do not use rich text, it makes it hard to copy/paste. Use Markdown to format text that is stored in a Git repository. In Google Docs use "Normal text" using the style/heading/formatting dropdown and paste without formatting.
1. Don't use ALL CAPS because it [feels like shouting](https://en.wikipedia.org/wiki/All_caps#Association_with_shouting).
1. Do not create links like "here" or "click here". All links should have relevant anchor text that describes what they link to, such as: "Meltano CLI Reference documentation". Using [meaningful links](https://www.futurehosting.com/blog/links-should-have-meaningful-anchor-text-heres-why/) is important to both search engine crawlers (SEO) and accessibility for people with learning differences and/or physical disabilities.
   This guidance should be followed in all places links are provided, whether in the handbook, website, GoogleDocs, or any other content.
   Avoid writing GoogleDocs content which states - `Zoom Link [Link]`.
   Rather, paste the full link directly following the word `Zoom`.
   This makes the link more prominent and makes it easier to follow while viewing the document.
1. Always use [ISO dates](https://en.wikipedia.org/wiki/ISO_8601#Calendar_dates) in all writing and legal documents since other formats [lead to online confusion](http://xkcd.com/1179/). Use `yyyy-mm-dd`, for example 2015-04-13, and never 04-13-2015, 13-04-2015, 2015/04/13, 20150413, 2015.04.13, nor April 13, 2015. Even if you use an unambiguous alternative format it is still harder to search for a date, sort on a date, and for other team members to know we use the ISO standard. For months use `yyyy-mm`, so 2018-01 for January. If the year is obvious from the context it is OK to use Dec 4, but not 12/4, since the ordering isn't obvious when using two numbers but when naming the month it is clear that the number of the day of the month.
1. Remember that not everyone is working in the same timezone; what may be morning for you is evening for someone else. Try to say 3 hours ago or 4 hours from now, or use a timestamp, including a timezone reference.
1. When specifying measurements, please include both Metric and Imperial equivalents.
1. We're an internationally diverse company. Please do not refer to team members outside the US as international, instead use non-US. Please also avoid the use of offshore/overseas to refer to non-American continents.
1. If you have multiple points in a comment or email, please number them. Numbered lists are easier to reference during a discussion over bulleted lists.
1. When you reference an issue, merge request, comment, commit, page, doc, etc. and you have the URL available please paste that in.
1. In making URLs, always prefer hyphens to underscores, and always use lowercase.
1. Use [inclusive and gender-neutral language](https://techwhirl.com/gender-neutral-technical-writing/) in all writing.
1. Refer to environments that are installed and run by the end-user as "self-managed."
1. Do not use a hyphen when writing the term "open source" except where doing so eliminates ambiguity or clumsiness.
1. Monetary amounts shouldn't have one digit, so prefer $19.90 to $19.9.
1. If an email needs a response, write the answer at the top of it.
1. Use the future version of words, just like we don't write internet with a capital letter anymore. We write frontend and webhook without a hyphen or space.
1. Try to use the [active voice](https://writing.wisc.edu/Handbook/CCS_activevoice.html) whenever possible.
1. If you use headers, properly format them (`##` in Markdown, "Heading 2" in Google Docs); start at the second header level because header level 1 is for titles. Do not end headers with a colon. Do not use emoji in headers as these cause links to have strange characters.
1. Always use a [serial comma](https://en.wikipedia.org/wiki/Serial_comma) (a.k.a. an "Oxford comma") before the coordinating conjunction in a list of three, four, or more items.
1. Always use a single space between sentences rather than two.
1. Do not use acronyms when you can avoid them. Acronyms have the effect of excluding people from the conversation if they are not familiar with a particular term. Example: instead of `MR`, write `merge request`.
   1. If acronyms are used, expand them at least once in the conversation or document and define them in the document using [Kramdown abbreviation syntax](https://kramdown.gettalong.org/syntax.html#abbreviations). Alternatively, link to the definition.
   1. If you don't know the meaning of an acronym, ask. It's always ok to speak up.

## Best practices

1. **Kindness matters.** Always communicate with kindness and empahty. Everyone should be comfortable in their work environment.
1. **All written communication happens in English**, even when sent one on one, because sometimes you need to forward an email or chat.
1. **Own your actions**: If you say it or type it, own it. If it hurts the company or an individual, even unintentionally, we encourage you to look at things from other points of view and apologize easily.
1. **You're not expected to be available all the time**. There is no expectation to respond to messages outside of your planned working hours.
1. **Sometimes synchronous communication is the better option**, but do not default to it. For example, a video call can clear things up quickly when you are blocked or when an asynchronous conversation isn't resolved after a few rounds of back-and-forth. 
1. **It's okay to ask as many questions as you have**. Please ask them so that team members can provide and view answers. Use issues or public chat channels instead of direct messages or emails.
1. **Make merge requests to update the handbook with answers** to questions you've received.
1. **Include links when you mention something** (e.g. a merge request, issue, commit, webpage, comment).
1. **All company data should be shareable by default**. Don't use a local text file, but rather leave comments on an issue.
1. **Provide due dates or communicate your progress on tasks**. Answers like: "will do," 
OK," "it is on my todo list" are not helpful. If it's a small request, it's better to spend 2 minutes to do the task to unblock someone. If it's a large request that requires a time investment, then communicate that to the other person so that they can either solve it in another way if your timeframe exceeds their needs.
1. **Avoid creating private groups** for internal discussions, unless a topic is confidential. We aim to be transparent, and private discussions are not searchable and easily documented.
1. **Use [low-context communications](https://en.wikipedia.org/wiki/High-context_and_low-context_cultures)** by being explicit in your communications. We are a remote-only company, located all over the world. Provide as much context as possible to avoid confusion. Relatedly, we use [ubiquitous language](https://about.gitlab.com/handbook/communication/#ubiquitous-language) for communication efficiency.
1. **Be careful not to lean too much into hypotheticals**. There is a tipping point in which it decreases value and no longer becomes constructive at helping everyone come into a unified decision.
1. **Focus on what we can directly influence.** There are many factors we can't directly influence and we should avoid spending time discussing those things. 
1. **Always adhere to our Anti-Harassment Policy and Code of Conduct.**
1. **Express your thoughts.** We live in different locations and often have very different perspectives. We want to know your thoughts, opinions, and feelings on things.
1. **Feedback is Essential.** It's difficult to know what is appropriate in every one of our team members' countries. We encourage team members to give feedback and receive feedback in a considerate way.

## Everyone is a Moderator

If you see something that concerns you in Slack, Issues, Merge Requests, Video, Emails or any other forum, we encourage you to respectfully say something directly to the individual in a 1:1 format. If you are not comfortable reaching out to the individual directly, please reach out to your direct manager or the Operations Analyst to discuss.

## Custom Emoji

We use emoji to help convey emotions and ideas quickly. You should feel empowered to add any emoji you like, just consider the entire community and keep them appropriate and generally unoffensive.

Within Slack, it is possible to add emojis via the [customize interface](https://meltano.slack.com/customize/emoji). 

### GitLab Custom Emoji

GitLab also supports [custom emoji](https://docs.gitlab.com/ee/api/graphql/custom_emoji.html), though it is harder to add new ones. 

First navigate to [`GraphiQL`](https://gitlab.com/-/graphql-explorer) where you are able to execute GraphQL commands.

The command to add a new emoji is:

```graphql
mutation {
  createCustomEmoji(input: {
    groupPath: "meltano",
    name: "<emoji-name>",
    url: "<emoji-url>",
  }) {
    customEmoji {
      name
    }
    errors
  }
}
```

to get a list of all emojis available, use this query:

```graphql
query GetCustomEmoji {
  group(fullPath: "meltano") {
    id
    customEmoji {
      nodes {
        name,
        url
      }
    }
  }
}
```

Currently available GitLab custom emojis are:

* `melty-flame`
* `tanuki`

Use them in comments or descriptions by typing `:emoji-name:`. Unfortunately, autocomplete and reactions (award emojis) are not currently supported for Custom Emojis.

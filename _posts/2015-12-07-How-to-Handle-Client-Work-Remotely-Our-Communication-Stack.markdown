---
layout: post
title:  "How to Handle Client Work Remotely: Our Communication Stack"
date:   2015-12-07 15:00:00
author: alex
categories: Communication Productivity Organisation MarsBased
---

*Captain's log, stardate {{page.date | martian_date}}*

As a remote working company, we work from <a href="https://marsbased.com/blog/2015/06/22/Working-Remotely-from-Berlin/" title="Working remotely from Berlin" target="_blank">very different places</a> and at very different times. That is, we have no office. Because of that, we face a lot of questions about how we deal with customers: "<i>How do you earn their trust?</i>", "<i>how can they know if you're working?</i>", "<i>how do you deal with specification changes?</i>" and so on.

Dealing with clients while being a remote working company is not easy. In this entry, we explain how we do it.

<!--more-->

In general, it is easier for product companies to offer full flexibility on where and when to work, but not so much in service companies. For instance, Red Hat, Github, Spotify, Buffer and Basecamp - just to name a few - are companies that offer full-remote positions. Service companies offering remote positions do exist, but they’re fewer.

<blockquote><i>During the length of the project, I’ve talked to you more often than to my colleagues in the office, and I’ve only seen you once!</i> - One of our clients</blockquote>

The key to manage client work by being 100% remote is to be the best at communication. And how do you become the best at communicating? With a solid <i>communication stack</i>.

###What is a communication stack?###

Tech-oriented companies often define their <i>tech stack</i>, which is the tools & programming languages they use as a <i>de facto</i> standard for every new project. One of the most famous tech stacks is the <a href="https://en.wikipedia.org/wiki/LAMP_(software_bundle)" title="LAMP" target="_blank" rel="nofollow">LAMP architecture</a> (Linux, Apache, MySQL, Php).

Likewise, a communication stack is the tool belt you use to channel company communications, both internal and external.

<strong>Internal communication</strong> includes project management, news sharing, a chatroom, decision taking and transfer of knowledge within your team. Think of your project management tools, task list managers, corporate chats/social networks, organisation tools, wikis, storage platforms, intranets and video call rooms.

<strong>External communication</strong>, instead, refers to whatever channels and tools you use to interact with agents outside of your company. That includes the following: RSS, newsletter & emailing tools, social media, call centers, a blog, newsfeeds, forums and client management tools. Some of the tools mentioned in the internal communication side might also be used here, as some allow collaboration.

In product companies, this separation is clearer, but as a services company, the limits between internal and external are far more diffuse. In this entry, we will focus more on the tools themselves than whether they're for internal or for external communication.

Let’s get to it. We’ll describe how do we manage our client work remotely.

###Project Management: Basecamp###

<img src="/images/blog/post27a.png" alt="Overview of Basecamp" title="Overview of Basecamp" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>This is how a Project looks like on Basecamp</small></p>

<a href="http://www.basecamp.com" title="Basecamp" target="_blank" rel="nofollow">Basecamp</a> is an online collaboration tool for team management. The reason why we like Basecamp so much is because they’re the creators of the framework Ruby on Rails and the writers of two really inspirational books we identify ourselves a lot with, both as individuals and as a company: <a href="https://37signals.com/rework/" title="Rework" target="_blank" rel="nofollow">Rework</a> and <a href="https://37signals.com/remote/" title="Remote: No Office Required" target="_blank" rel="nofollow">Remote: No Office Required</a>.

Basecamp focuses on simplicity to provide a solid tool that allows the management of almost any team. In fact, we don’t use it only for our internal team, but we also manage our client work.

We have created a project for each and every project we’ve got. In client projects, we keep our clients in the loop by inviting them to join the platform.

Basecamp is really good to centralise a project’s relevant information in just one place. All discussions should be placed here, and decisions too. If something has been agreed outside of Basecamp, it should be moved to Basecamp, lest we forget about it.

You can also use the Google Drive integration to attach the important project files to the Basecamp Project (contracts, offers, credentials, documentation, logos, mockups etc.) and their own text files to save things you don’t want anyone to forget about.

Lastly, we also use Basecamp to include our weekly report - every Monday - of what has been keeping us busy the previous week, and the planning for the week ahead.

<img src="/images/blog/post27c.png" alt="Reporting on Basecamp" title="Reporting on Basecamp" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>You can use Basecamp to send the weekly reports to your clients</small></p>

###Sprints & Tech teams: Trello + Github###

<img src="/images/blog/post27d.png" alt="A Trello board" title="A Trello board" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>This is the top part of the sprint funnel on Trello</small></p>

<a href="http://trello.com" title="Trello" target="_blank" rel="nofollow">Trello</a> is our tool of choice to manage team tasks. It's 100% agile-oriented and, therefore, a good fit for agile development teams.

Trello boards allow you to create lists that hold cards. Each list represents a status, and the cards are dragged from board to board as they change their status. In the screenshot above, you can see some of the lists distributing the tasks between <i>Backlog</i>, the <i>Features</i> list, the <i>Bugs</i> list, and the planning for the next week. In the screenshot below, you can also see the lists including the tasks that have already been completed.

<img src="/images/blog/post27e.png" alt="A Trello board" title="A Trello board" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>This is the bottom part of the sprint funnel on Trello</small></p>

Tasks that have been completed by our developers are placed into the <i>Review Pending</i> list, where a more experienced developer or the person in charge of code review will review them and test them. Once OK’d, they are dragged to the <i>Done</i> list. Should one of them not be OK enough to be deployed, it’s moved back to the current week and reassigned to the developer so he spends more time on it.

We like to take this a little further, and we also classify the tasks & features according to where they are deployed. This works really well to find out very quickly what features are available in which environment, so we don’t miss stuff during product demos. For that, we've got lists such as <i>Deployed to staging</i> and <i>Deployed to production</i>.

On the inside of a card, you can describe the task at hand, label it according to whatever taxonomy you use, assign it to people, add attachments, comment on the task and set a due date, among other things. We use the comments system to include the pull request of that feature/bug/hotfix when the task is completed.

<img src="/images/blog/post27f.png" alt="A Trello card" title="A Trello card" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>Trello cards represent tasks or sets of similar tasks</small></p>

Since Trello is very oriented to tech-savvy people, we only invite the technical personnel of our clients: CTOs, developers, tech leads and so on.

###Real-time communication: Slack###

While all the previous tools are really good for taking decisions, planning and execution, none of them offers real-time communication. For that, we use <a href="http://www.slack.com" title="Slack" target="_blank" rel="nofollow">Slack</a>: a real-time communication tool for teams.

<img src="/images/blog/post27g.png" alt="Slack" title="Slack" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>Here's our COO Jordi reporting to one of our clients via Slack</small></p>

Some clients demand a higher availability and/or a really short response time. For them, we set up a new Slack team, so everyone’s on board and can have direct real-time communication.

While this fast and effective communication is good for the coordination of urgent actions (hotfixes, a demo day, or other emergencies), Slack's free tier only retains the last 10000 messages. Therefore, all decisions taken on Slack are volatile. <a href="https://www.youtube.com/watch?v=NOW4QiOD-oc" title="Blade Runner Monologue" target="_blank">All those moments will be lost in time, like tears...in...rain</a>. For exceptional clients, we set up the paid version of Slack and channel all communication through Slack. We're flexible about that.

Slack also provides kickass integrations with some of our preferred tools. You can integrate it with almost whatever tool your company or project uses. Depending on the project, we integrate it with Airbrake, Trello, Github or Bug Catcher just to name a few.

With their multi-platform & -device apps, you’re just a chat away from getting an answer (or a question) from your client.

###Videocalls: Appear.in###

Some topics require a little bit more of human touch. To be more precise, certain matters require a face-to-face conversation.

Some text messages just don’t add the criticality, urgency or calm that a face-to-face conversation has. As a remote working company, it might as well happen that we are on the other side of the world when talking to our clients. But luckily enough, we’ve got <a href="http://appear.in" title="Appear.in" target="_blank" rel="nofollow">Appear.in</a>.

<img src="/images/blog/post27h.png" alt="Appear.in" title="Appear.in" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>We kindly borrowed this photo from <a href="https://twitter.com/appear_in/status/560023198226714624" title="Appear.in Twitter handle" target="_blank">@appearin's</a> Twitter!</small></p>

Appear.in excels in what other video call services fail to deliver: requires no registering, no accounts, no installation and no hassle what-so-ever. Just type in <i>http://appear.in/(NAMEOFYOURCHATROOM)</i> and boom! You’re magically in. Up to eight people joining that URL will be placed in a group video conference with you.

As a matter of fact, we also have found that the video quality and the call stability is much better than on Skype or Google Hangouts, thus making it ideal for people in low wifi signals or using their mobile data plans.

Last, but not least, Appear.in also offers screen sharing options, which they’re good enough for most purposes. However, we sometimes need to have a more collaborative screen share so we use <a href="http://screenhero.com" title="Screenhero" target="_blank" rel="nofollow">Screenhero</a> instead.

<hr>

This is our way to handle client work remotely! As you can see, there’s nothing that we can’t do with these tools.

We’d love to hear your thoughts on this, and what your communication stack is. What best practices do you recommend? What tools can we suggest we try to improve our current stack? Let’s discuss this in the comments section below!

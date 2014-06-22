---
layout: post
title:  "We make the right app for you (part 2)"
date:   2014-03-24 23:59:00
categories: MarsBased Startup Business
---

*Captain's log, stardate d489.y35/AB*

*Disclaimer: long (and nerdy) post ahead.*

In our last entry we wrote about MarsBased's principles when working for other companies, because we have recently been hired to develop our first projects. In this entry, we are breaking down our tool belt.

###Front-end Development###

MarsBased stands for innovation by using state-of-the-art technologies. HTML5, CSS3 and both Javascript and front-end frameworks - such as <a href="http://getbootstrap.com/" title="Bootstrap" target="_blank">Bootstrap</a> or <a href="http://angularjs.org/" title="AngularJS" target="_blank">AngularJS</a> - allow us to deliver responsive and highly dynamic websites with an unparalleled User Experience.

<!--more-->

<img src="/images/blog/post6.png" alt="The MarsBased Tech Stack" title="The MarsBased Tech Stack" class="img-right img-responsive" />

Twitter Bootstrap is a front-end framework created to design websites faster and easier. Its last version adopts a "mobile first" philosophy providing tools to create responsive sites. Nowadays, every competitive website needs to be responsive, due to the rise of mobile traffic in multiple-sized screens or the latest Google algorithm changes, focusing on mobile experience (Google Hummingbird explained <a href="http://venturebeat.com/2013/10/02/things-not-strings-how-googles-new-hummingbird-algorithm-sets-the-stage-for-the-future-of-mobile-search/" title="Google Hummingbird" target="_blank">here</a>).

Another technology we use is <a href="http://www.lesscss.org/" title="LESS" target="_blank">LESS</a>. As a dynamic stylesheet language, LESS introduces variables, functions and operators in your stylesheets and preprocesses them. By doing that, designers can actually focus on designing, without having to write long, repetitive and tedious CSS stylesheets.

As for the Javascript side, we use <a href="http://angularjs.org/" title="AngularJS" target="_blank">AngularJS</a>. AngularJS is a Javascript framework designed to build single-page web applications as if they were native by removing all the Javascript boilerplate. By doing that, AngularJS gives the browser the power it needs to materialize our ideas into something real using richer client-side interfaces.

The most recent addition to the MarsBased tech stack has been <a href="http://coffeescript.org/" title="Coffeescript" target="_blank">Coffeescript</a>. Coffeescript allows rewriting Javascript code with simplicity and elegance. After some research and testing, we integrated both Coffeescript and AngularJS with Cookin.me and fell in love with them.

###Server Side Development###

We are Rubyists! We love its simplicity, elegance and cleanliness. And while we believe that methodologies are language-agnostic, <a title="Ruby" href="https://www.ruby-lang.org/">Ruby</a> and <a title="Ruby on Rails" href="http://rubyonrails.org/">Ruby on Rails</a> help us follow Agile Development practices. That's the reason why we have chosen tools that let us move quickly through each development stage: building, integrating, testing & releasing.

At MarsBased we take testing *very seriously*. We know that our clients might require changes over time, and might want to introduce improvements to their apps. The only way we can ensure delivering these changes without breaking the entire codebase of the project is through testing. Test, test, test and then some.

We have adopted two popular ruby frameworks for our testing needs. With <a title="RSpec" href="http://rspec.info">RSpec</a> and <a title="Capybara" href="https://github.com/jnicklas/capybara">Capybara</a> we feel very comfortable applying a test driven development approach from unit testing to building acceptance tests.

For more specific projects, we have a flexible tool belt. According to every project's needs, we've got a broad set of technologies at hand to give our clients exactly what they need:

* <a title="ElasticSearch" href="http://www.elasticsearch.org">ElasticSearch</a>: For indexing and searching through our client data without affecting performance.
* <a title="Sidekiq" href="http://sidekiq.org">Sidekiq</a>: Handy when there's a lot of background processing jobs - like image and video transformations, web crawling or big data processing. 
* <a title="Memcached" href="http://memcached.org">Memcached</a>: Caches almost every little part of a web application to achieve blazing fast responses, thus keeping response times low.
* <a title="Redis" href="http://redis.io">Redis</a>: Manages big amounts of volatile data faster than any relational database can.

###Deployment###

Small teams need to automate and or delegate processes to manage recurrent tasks. This is why we use <a title="Chef" href="http://www.getchef.com/">Chef</a>: to automatically provision our servers. Automation spares us from having to log into our servers (this is so last century's!) and guarantees that no human errors will happen during server installations. All the time we save by automating, we can use it in polishing their apps even further.

Because of our background using Chef, we have a custom set of configurations (called *cookbooks* in Chef jargon) that cover all the possible scenarios we could ever need. We don't need to reinvent the wheel for every project. We can set up a server in less than 30 minutes unless anything uncommon is required.

As for the software deployments, we use <a title="Capistrano" href="https://github.com/capistrano/capistrano">Capistrano</a>. This open-source tool is used to automate software deployments without downtime. Fast and simple. It is actually an awesome way to deliver our customers the latest version of their apps seamlessly.

###Maintenance###

At MarsBased we know that sometimes things might go wrong. Most of the times, the real cause of a general failure is an error that goes unnoticed for too long.

Our servers run very different services that need to be monitored (Nginx, MySQL, Elasticsearch… just to name a few!), so we use <a title="Monit" href="http://mmonit.com/monit/">Monit</a> to rule them all. Monit sends notifications whenever there is a risk of something failing such as a service being too loaded. It actually allows us to act proactively before any errors arise. But if a service goes down, Monit automatically tries to start it to minimize the downtime as much as possible.

Although Monit itself is very impressive, we also use another error-tracking tool very known by the Ruby community. Airbrake is an exception reporting service <a title="Airbrake" href="https://airbrake.io/">trusted by over 40k customers</a>, now seamlessly integrated with our tech stack. Simply put, if anyone using our web applications comes across an error message, we'll get a notification in our cell phones with the details of the error in less than a minute. 

Nothing is more satisfying than spotting and solving bugs before users have even time to report them.

That's all for today, folks. As you can see, we love talking technologies. Feel free to drop us an e-mail or bring up a conversation on <a title="MarsBased Twitter Profile" href="http://twitter.com/MarsBased">Twitter</a> anytime.
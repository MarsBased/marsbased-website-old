---
layout: post
title:  "Code Refactoring: When, Why and Who"
date:   2015-10-05 15:00:00
author: xavier
categories: MarsBased Coding Development Rails RubyOnRails Refactoring
---

*Captain's log, stardate {{page.date | martian_date}}*

The rise of tech companies has caused a higher adoption of technology among new generations. People are learning how to code in order to keep up with the times, or to reinvent themselves professionally to unlock new paths in their career.

The more we code, the more we need to make it a sustainable practice. Quantity almost never implies quality.

Enter code refactoring. Everyone talks about <i>what</i> refactoring is, and <i>how</i> to do it, but we want to talk about the other three dimensions: when to do it, why, and who should do it.

<!--more-->

According to <a target="https://en.wikipedia.org/wiki/Code_refactoring" title="Code refactoring" target="_blank">Wikipedia</a>, "<i>Code refactoring is the process of restructuring existing computer code – changing the factoring – without changing its external behavior. Refactoring improves nonfunctional attributes of the software</i>".

Imagine you are the CTO of a recently-founded dev shop: sitting in front of your laptop, fingers ready to code, while waiting for your salesman to bring in the contract for the next Facebook. However, the first project happens to come with legacy. That is, a client hires your company to fix an already existing project, which unsurprisingly is broken. The first five words that come to mind are: "<i>I can do this better!</i>".

In fact, at MarsBased, a very large proportion of our existing clients had a different provider in the past, but they decided to change for different reasons. This is something we learnt during <a href="http://www.marsbased.com/blog/2015/04/13/Lessons-Learned-One-Year-Running-Our-Own-Business/">our first year operating</a>.

While you being able to rewrite better code may actually be true, you should also consider the client's needs. Why did this project end up on your table? Maybe the quality of the deliverables was insufficient, or maybe because the client perceived the development team's pace was very low and he was running out of patience (and cash).

Having that in mind, it will probably take longer to start from scratch, and rebuild everything instead of replacing the existing code.

How do we decide? We do it case by case.

<img src="/images/blog/post24.jpg" alt="Coding by the fireplace" title="Coding by the fireplace" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>In this entry, we're talking about code refactoring: when, why and who. If we were to talk about the where, it would probably be here.</small></p>

###The When###

If the application is too big, a whole refactor can take ages. It will also be impossible to rebuild it while maintaining the strict deadlines the market or the investors dictate. On the other hand, if the application is small enough, you might also get distracted by too much refactoring instead of adding new features.

Our customers hire us to give answers. If the code we find in legacy projects is not good, we tell them. We can also audit the code and provide a report with the cost of rebuilding everything or opting for a complete refactor. Most of the times, though, the clients want to keep up with the ongoing development while adopting a progressive refactoring.

For us, <i>progressive refactoring</i> is sticking to the development roadmap and its new features, while improving the existing code with each release. When we need to touch legacy code, our commitment is to <i>leave it better than before</i>.

By applying this, you will find that the application progressively looks and feels way better, without affecting the releases roadmap and the product evolution. This is extremely important in projects that have already launched.

But there's more than that. The fight for the <i>Greater Code</i> is better fought with tests. The quality of tests (or lack thereof) in legacy projects is a game-changer. Refactoring the tests is as important as refactoring the code. But again, you will have to agree with the client the deadlines & deliverables, and the time devoted to refactoring and testing.

Refactoring is a time investment: you devote time now to make it easier to work on it in the future.

###The Why###

Having explained when we should refactor, now it is the time to say the reason why.

"<i>New is always better</i>" may sound great, but old code can save you time. While it may be outdated, or even not work, it is the result of somebody else's effort to solve a specific problem, and their approach could be really different from yours. So you can still learn a lot from other people's code before throwing it away.

Since our approach is to leave code better than we found it, we always try to understand the existing code in order to improve it. It might even contain a solution you would have never come across!

Further, bad code tends to replicate itself.

Let's be honest: we <i>all</i> copy and paste code. Although we ought not to do it, we borrow code often to either save time or solve complexities beyond our skills.

That is why we should replace bad code when we find it. By eliminating bad code, we eliminate the chance of somebody borrowing those parts for other projects. This is even more so important when introducing new hires or less-experienced programmers to the project: they might think that code is yours or, worse, perceive it as a reference and replicate it somewhere else.

Our CTO, Xavi, <a href="http://www.marsbased.com/blog/2014/08/22/The-Martians-conquer-the-IronHack/"> gave a talk at Ironhack a year ago</a> where he talked about the maintainability of the code.

To sum up, we need to refactor code to improve code quality, maintainability and legibility, while making it easier for other teammates to become familiar with the project.

###The Who###

We strongly believe refactoring is good for everybody, but <i>who</i> should do it?

Refactoring forces you to think over a piece of code that somebody else wrote trying to solve a difficulty. It might as well be code you wrote in another company or even years ago.

At MarsBased, all of us refactor code from the very first day. We're given the style guide and instructed to produce quality code right away.

When introducing a new team member to a project, it is a good practice to make him refactor the code. This way, he does not only become familiar with the project, but we're weaseling in some good practices we seldom might find time for. By touching code here and there, we're forced to swim through the different layers & components until we get the whole picture.

Junior developers have more room to learn, and sharing your refactoring tools with them will make them grow as developers in the right direction. They are also less prone to have any bad habits acquired throughout the years, and tend to write code the way they read it. They may also need a senior developer to guide them through the process in the beginning, but soon enough they develop the habit of writing healthy code. Once again, time invested in mentoring a junior developer will pay off threefold in the future.

As time goes by, the initiated developers will feel more confident in their coding skills, and they will start suggesting changes and improvements on other people's code. A self-confident developer will be far more independent taking decisions that will benefit the project. All thanks to a good learning process through guidance and demanding quality from the get-go.

Not only have we got a commitment towards the clients to deliver quality code, but with the established deadlines and the product roadmap. These are a couple of ways how we align with our clients' business model.

<hr/>

What's your experience on refactoring from day zero? Have you ever tried it? Would you add other Whys Whens or Whos? If you have any thoughts on the subject feel free to share them using the comments section below!

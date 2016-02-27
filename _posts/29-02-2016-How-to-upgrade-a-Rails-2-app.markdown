---
layout: post
title:  "How to Upgrade a Rails 2 Application (part 1)"
date:   2016-02-29 15:00:00
author: david
categories: MarsBased Coding Development Rails RubyOnRails Upgrade
---

*Captain's log, stardate {{page.date | martian_date}}*

At MarsBased, we deal with a whole lot of projects: static websites, web platforms, intranets, marketing tools, etc. Some are bigger, and some are smalled, but all of them require maintenance.

In this blog post, I am going to tell you how to upgrade a Rails 2 app to newer versions.

<!--more-->

As a consultancy, we get to work on lots of projects. Sometimes we create the project from scratch while other times we inherit projects with legacy code. Legacy code is code written by someone else. In web development, it is often referred to as such when it was written by a previous provider, or by someone that left your company a long time ago.

Cons of working with legacy code are obvious: learning curve of that code is steep, might not be documented/tested at all, might not be compatible with new code, might not follow your style guide and it is above all not maintainable in the long run. The previous enumeration is not exhaustive.

Keeping outdated apps - apps with lots of legacy code - it is never a good idea. Even if the app runs smoothly and seems to work perfectly, legacy code might lead to trouble. Security, performance and maintenance issues will arise when you least expect it, not to mention that legacy code will not allow you to implement new features and improvements that come with the most recent versions of your libraries or frameworks.

<img src="/images/blog/code.jpeg" alt="Code" title="Code" class="img-center img-rounded img-responsive" />
<p class="text-center img-footer"><small>Code, code and then some.</small></p>

###Obsolete vs. up-to-date applications###

It might sound obvious, but the best way to keep your projects up-to-date is by updating them. Let's take a look at one of our biggest projects we got in February 2014.

To define an updating strategy, we need to understand the software versions and their particularities, requirements and dependencies. In our project we had:

- Ruby 1.8.7, (2012).
- Rails 2.3.18, (2013).
- Based on an open source platform that is currently not maintained. It is integrated with the application through a some git submodules.
- Too much overriding on the _/lib_ folder over vendor/ submodules.
- Abusive usage of alias method chain and metaprogramming, thus difficulting the data flow tracking and bug fixing.
- Outdated gems due to the Ruby and Rails versions used in the project.

If this project had been updated periodically, the platform would have never become so obsolete (and we would have never written this post!). Among others, these were the biggest problems of such an obsolete platform:

- The application's autoreload was not working, due to the excessive overriding in the _/lib_ folder.
- The application's performance was at an all-time-low.
- We struggled to find documentation for the versions used in the platform.
- Developing new features without breaking anything was too complex.
- The cost of maintenance increased with time.
- Some gems were not compatible with each other.

After almost a year of working on the project, we decided that the best decision was to update it to the current versions of Ruby, Rails and its libraries.

What will it change when we update to the current versions of Ruby and Ruby on Rails?

- All of the above problems will be solved.
- Higher security.
- Better performance.
- Usage of the new Ruby methods found in the newest versions.
- Usage of friendlier implementations of Asset Pipeline, Active MOdel and Active Record, among others, found in the newest Rails versions.
- Huge boost to developers happiness.

###How to upgrade the application###

The first step will be to migrate Ruby 1.8.7 to Ruby 1.9.3 without upgrading the Rails version. This will require a code refactor in the _/lib_ and _vendor/_ folders:

- Remove all unnecessary metaprogramming.
- Migrate all code to Concerns using the <a href="https://raw.githubusercontent.com/rails/rails/d06e42518a4fdd1732f1d75a43c69071bcd79245/activesupport/lib/active_support/concern.rb" title="concern.rb" target="_blank">concern.rb</a> Ruby on Rails module. Then we will unify and move the overriding and extension to new files stored in the _concerns/_ folder, using this widely-accepted structure:

{% highlight ruby %}

module UserPlugin::Concerns::Models::User
  extend ActiveSupport::Concern

  included do
    relations_validations_etc
  end

  def instance_method
  end

  module ClassMethods
    def class_method
    end
  end
end

{% endhighlight %}

Then, we will include this in our model found in _app/models_:

{% highlight ruby %}

class User < ActiveRecord::Base
  include UserPlugin::Concerns::Models::User
end

{% endhighlight %}

- It is important to split this step in small iterations and integrate them in the application step by step, lest you overcomplicate the code and make it too difficult to fix bugs.
- You must absolutely neither optimise nor <a href="https://marsbased.com/blog/2015/10/05/Code-Refactoring-When-Why-And-Who/" title="code refactor">refactor the existing code</a> in this step, because you might be introducing new bugs in the app's code.

After reaching this point, we will want to migrate our .ruby-version to Ruby 1.9.3.

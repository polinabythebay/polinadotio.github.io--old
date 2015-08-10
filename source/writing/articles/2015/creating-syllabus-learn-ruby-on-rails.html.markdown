---
title: Creating a syllabus to learn Ruby on Rails
date: 2015-08-10
tags:
---

This is my syllabus for a self-taught course I created for myself to learn Ruby on Rails. Feel free to take inspiration from it and implement your own courses. 

<a name="return"></a>
[Objective](#objective) | [Goals](#goals) | [Overview](#overview) | [Course Materials](#materials)

 [Week 1](#week1) | [Week 2](#week2) | [Week 3](#week3) | [Week 4](#week4) | [Week 5](#week5) | [Week 6](#week6) 

 [Week 7](#week7) | [Week 8](#week8) | [Week 9](#week9) | [Week 10](#week10) | [Week 11](#week11) | [Weeks 12-15](#week12-15) 

[Additional Resources](#resources)

<a name="objective"></a>
##Objective 
[Return to top](#return)

My goal is to gain competency and knowledge of best practices in web development by learning and implementing a web development framework. However, it can take hours, days, and weeks to become proficient in the best practices of a specific framework even for experienced developers. This is why I'm designing an independent study where I can devote time to doing so. Why do I want to teach myself Rails specifically? A few reasons: 

* Ruby on Rails is an open-source web framework based on the Ruby programming language. 
* Rails is a database-agnostic MVC framework that chooses convention over configuration, which means that it's strongly opinionated when it comes to architectural decisions, naming conventions, paths and patterns.
* Rails is a full stack web application: it includes libraries to manage frontend code, supports SASS and CoffeeScript, and does not need an external tool to manage compiling. It also includes a very opinionated workflow. 
* Rails’ structure makes it easy to accommodate change. Rails is particularly good at restructuring your application flow, reusing components in a simple way.
* Rails can easily be extended with a wide variety of external libraries, distributed through Rubygems. 
It implements other best practices and methodologies in web development: TDD, REST, and DRY are among them. 

To summarize, Rails is a powerful web development framework that lets you be more productive when working on complex projects. 

<a name="goals"></a>
##Course goals
[Return to top](#return)

By the end of the semester, through coursework and projects I aim to have a competent knowledge of: 

* **Ruby**, including but not limited to: Classes, methods, types, flow control, I/O, modules, Exceptions, Testing, Gems
* **Ruby on Rails**, including but not limited to: MVC model, Active Record, Action Controller, Action View, Action Pack, Testing, Routes, Filters/Callbacks, Debugging, Ajax, Action Mailer, Web Services and XML, Extending Rails, Benchmarking and performance, Deployment
* Exposure to other web technologies: HTML/CSS/Javascript etc. 
* **Git** and **Github**: Use revision control and keep all course repositories on github
* **Heroku**: understand the different Rails servers (Thin vs Unicorn) for deployment 
* Test-driven-development
* Behavior-driven-development
* **Product Planning**: user stories, use cases, wireframes, and mockups
* Exposure to web **APIs**: Twitter, Gmail, Google Maps, MailChimp, Stripe, etc. 
* Take steps towards learning the ropes of becoming a successful developer in the modern open source driven Rails Community.


<a name="overview"></a>
##Course overview
[Return to top](#return)

**Weeks 1-8**: Fundamentals of Ruby and Ruby on Rails

**Weeks 9-11**: Build a payments site using Stripe

**Weeks 12-15**: Extend site and/or work on a project of choice implementing gems of choice 

<a name="materials"></a>
##Main Course materials
[Return to top](#return)

[*Learn Web Development with Rails*](http://ruby.railstutorial.org/ruby-on-rails-tutorial-book) by Michael Hartl

[*Learn Ruby on Rails*](http://learn-rails.com/learn-ruby-on-rails.html) by Daniel Kehoe

[*Mastering Modern Payments: Using Stripe with Rails*](https://www.petekeen.net/mastering-modern-payments) by Pete Keen

[The Ruby Toolbox](https://www.ruby-toolbox.com/)

[CodeQuizzes](http://www.codequizzes.com/)

<a name="week1"></a>
##Week One
[Return to top](#return)

Setup blog and course

Set up blog using Octopress that is made with Jekyll, a static site generator made with Rails (so I can use Rails to blog about Rails!)

Host blog on github, track blogs and changes on github

Name of blog: http://polina.io/

Blog via [Octopress](http://octopress.org/docs/blogging/)

<a name="week2"></a>
##Week Two
[Return to top](#return)

####Exercises

Work through [Try Ruby Exercises](http://tryruby.org/levels/1/challenges/0)

[Learn Ruby the Hard Way](http://ruby.learncodethehardway.org/book/)

[Rubymonk](https://rubymonk.com/): metaprogramming and common ruby methods

[Code Academy](http://www.codecademy.com/tracks/ruby)

[Ruby Koans](http://rubykoans.com/)

####Quizzes

* [Ruby Array Quiz](http://www.codequizzes.com/topics/28/quizzes/92)
* [Hash quiz](http://www.codequizzes.com/topics/28/quizzes/93)
* [Object Oriented Programming](http://www.codequizzes.com/topics/28/quizzes/94)
* [More OOP](http://www.codequizzes.com/topics/28/quizzes/95) 
* [Inheritance](http://www.codequizzes.com/topics/28/quizzes/96)
* [Object Oriented Design](http://www.codequizzes.com/topics/28/quizzes/97)
* [Code Blocks](http://www.codequizzes.com/topics/28/quizzes/98)

####Homework

* RESTful micro framework in Ruby 
* Write Blog Post
* Update Github

<a name="week3"></a>
##Week three
[Return to top](#return)

#####Exercises

Chapters 1-2 *Learn Web Development with Rails*

* From zero to deploy: Version Control with GIT, deploying with Heroku
* A demo app: planning the application, the Users resource, the Microposts resource

Chapters 1-8 *Learn Rails*

Jeffrey's [introduction](http://net.tutsplus.com/tutorials/ruby/the-best-way-to-learn-ruby-on-rails/) to Rails 

[Rails for Zombies](https://www.codeschool.com/courses/rails-for-zombies-redux)

Rails intro [screencast](http://net.tutsplus.com/tutorials/ruby/the-intro-to-rails-screencast-i-wish-i-had/)

Git [Immersion](http://gitimmersion.com/)


#####Quizzes

* Learning Unix for OS X
* Basic Git Commands 
* Basic Git 
* Git Rebasing 
* Git branch off a branch 
* Git interactive rebasing 
 
####Homework

* Implement Git in Ruby
* App from *Learn Rails*: Contact form, save to Google Drive
* Update Github
* Write Blog Post

For fun: Basic [HTML and CSS](http://www.dontfeartheinternet.com/)

<a name="week4"></a>
##Week Four
[Return to top](#return)

####Exercises

Chapters 3-4 *Learn Web Development with Rails*

* Static Pages
* Rails Flavored Ruby

Chapters 9-28 *Learn Rails*

####Homework

* Devise for authentication with ActiveRecord and SQLite for a database
* Devise for authentication with a MongoDB datastore
* Update Github
* Write Blog Post

<a name="week5"></a>
##Week Five
[Return to top](#return)

####Exercises

Chapters 5-6 *Learn Web Development with Rails*

* Filling the Layout
* Site navigation
* Bootstrap, CSS
* Partials
* Sass and asset pipeline
* Layout links
* User signup: first step
* Modeling Users
* User model
* User validations
* Adding a secure password

####Homework

* OmniAuth for authentication with a MongoDB datastore
* Base-camp style subdomains with Devise and MongoDB
* Update GitHub
* Write Blog Post

[Additional Homework]

* Make a to-do list app with Rails

<a name="week6"></a>
##Week Six
[Return to top](#return)

####Exercises

Chapters 7-8 *Learn Web Development with Rails*

* Sign up
* Showing Users
* Signup form
* Signup failure
* Signup success
* Sign in, Sign out
* Sessions and sign in failure
* Sign in success
* Introduction to Cucumber

####Homework

* Devise for authentication and CanCan for authorization
* Integrating Rails 4.0 and Twitter Bootstrap 3.0
* Update GitHub
* Write Blog Post

<a name="week7"></a>
##Week Seven
[Return to top](#return)

####Exercises

Chapters 9-10 *Learn Web Development with Rails*

* Updating, showing, and deleting users
* Updating users
* Authorization
* Showing all users
* Deleting users
* Using Microposts
* A micropost model
* Showing microposts
* Manipulating microposts

####Homework

* Application for a startup prelaunch signup site
* Update GitHub
* Write BlogPost

<a name="week8"></a>
##Week Eight
[Return to top](#return)

####Exercises

Chapter 11 *Learn Web Development with Rails*

* The Relationship model
* A web interface for following users
* The status feed
* Conclusion

####Homework

* Site with subscription billing using Stripe
* Site with subscription billing using Recurly
* Update GitHub
* Write Blog Post

[Additional Homework]

* Create scaled down reddit clone in rails
* Recreate Twitter in rails

<a name="week9"></a>
##Week Nine
[Return to top](#return)

####Exercises

Chapters 1-3 *Mastering Modern Payments: Using Stripe with Rails*

* Introduction
* The Simplest Stripe Integration
* Security and PCI Compliance

####Homework

* Start payments project 
* Blog
* Update Github

<a name="week10"></a>
##Week Ten
[Return to top](#return)

####Exercises

Chapters 4-6 *Mastering Modern Payments: Using Stripe with Rails*

* Custom Payment forms
* State and History
* Handling Webhooks

####Homework

* Work on payments project
* Blog
* Update Github

<a name="week11"></a>
##Week Eleven
[Return to top](#return)

####Exercises

Chapters 7-10 *Mastering Modern Payments: Using Stripe with Rails*

* Processing payments with Background workers
* Subscriptions
* Marketplaces
* Additional Resources

####Homework

* Finish/continue payments project
* Blog
* Update Github

<a name="week12-15"></a>
##Weeks 12-15
Implement popular Gems and test Rails knowledge 
[Return to top](#return)

**Quizzes** to test Rails knowledge

* [MVC without generators](http://www.codequizzes.com/topics/3/quizzes/10): Create a RESTful model, view, and controller without using any rails generators.
* [Nested Resources](http://www.codequizzes.com/topics/3/quizzes/11): Create the model, view, and controller for a nested resource.
* [Database Queries](http://www.codequizzes.com/topics/3/quizzes/15): Structure database queries to get specific information from a database efficiently.
* [Polymorphism](http://www.codequizzes.com/topics/3/quizzes/16): Make a resource that belongs_to two other resources for nested comments.
* [Active Record](http://www.codequizzes.com/topics/3/quizzes/45): Associations, delegation, callbacks, etc.
* [Many to Many Relationships](http://www.codequizzes.com/topics/3/quizzes/54): Rails practice problems on has_and_belongs_to_many and has_many :through relationships

####The Ruby Toolbox

Choose several of the following [areas](https://www.ruby-toolbox.com/) and create apps with a focus on implementing popular gems in those areas:

* Active Record Plugins
* Background processing
* Code Quality: code metrics
* Communication
* Content Management and Blogging
* CSS
* Data Persistence
* Dev Tools
* Documentation Tools
* Graphics
* HTML and Markups
* Javascript
* Maintenance and monitoring
* Package and depedency management
* Provision, deploy, host
* Rails plugins
* Security
* Testing
* Time and Space
* Web apps, Services, and Interaction

####Homework

* Work on project(s)
* Update blog
* Update Github

####Optional Quizzes

* [Recursion](http://www.codequizzes.com/topics/5/quizzes/7)
* [Big O](http://www.codequizzes.com/topics/5/quizzes/99)
* [Selectors](http://www.codequizzes.com/topics/27/quizzes/90)
* [Inheritance and the cascade](http://www.codequizzes.com/topics/27/quizzes/91) 
* [Beginning/Intermediate jQuery](http://www.codequizzes.com/topics/2/quizzes/3)

####Learn/test Javascript knowledge

* [Quiz #1](http://www.codequizzes.com/topics/26/quizzes/84)
* [Quiz #2](http://www.codequizzes.com/topics/26/quizzes/85)
* [Quiz #3](http://www.codequizzes.com/topics/26/quizzes/87)
* [Quiz #4](http://www.codequizzes.com/topics/26/quizzes/88) 
* [Quiz #5](http://www.codequizzes.com/topics/26/quizzes/89) 

<a name="resources"></a>
##Additional Resources
[Return to top](#return)

**Books** (in no particular order)

* [Rails3 in Action](http://www.manning.com/katz/)
* [Agile Web Development in Rails](http://pragprog.com/book/rails4/agile-web-development-with-rails-4)
* [The Rails Way](http://www.rubyinside.com/the-rails-way-by-obie-fernandez-679.html)
* [Programming Ruby: The Pragmatic Programmer’s Guide](http://ruby-doc.com/docs/ProgrammingRuby/)
* [The Ruby Programming Language](http://shop.oreilly.com/product/9780596516178.do)
* [Practical Object-Oriented Design in Ruby](http://www.poodr.com/)
* [Rails Guides](http://guides.rubyonrails.org/getting_started.html)
* [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)
* [Test First](http://testfirst.org/learn_ruby)
* [Design Patterns in Ruby](http://designpatternsinruby.com/)
* [Eloquent Ruby](http://eloquentruby.com/)
* [Well Grounded Rubyist](http://www.manning.com/black2/)
* [The RSpec Book](http://pragprog.com/book/achbd/the-rspec-book)

####Podcasts

* [Railscasts](http://railscasts.com/): tutorials 
* [Ruby5](http://ruby5.envylabs.com/): latest news in the Ruby Community
* [The Changelog](http://thechangelog.com/): open source news 
* [CoderPath](https://itunes.apple.com/us/podcast/coderpath-podcast/id214162182?mt=2): Ruby-focused interview and discussion podcast
* [Software Engineering Radio](http://www.se-radio.net/): NPR for SWEs
* [This Developer’s Life](http://thisdeveloperslife.com/): *This American Life* for SWEs
* [Pragmatic Podcasts](http://pragprog.com/podcasts): excellent book reviews from the Pragmatic Bookshelf

####Meetups

* [Rails Girls](http://railsgirls.com/): International community that sponsors free rails workshops for women. Based in Finland. 
* [RailsBridge](http://www.railsbridge.org/): Free rails workshops for women. Based in San Francisco. 
* [Boston Ruby Women](http://www.meetup.com/Boston-Ruby-Women/)
* [Girl Develop It Boston](http://www.girldevelopit.com/chapters/boston): Free introductory workshops for women. 
* [Boston Ruby on Rails](http://www.meetup.com/Rails-Boston/)

####Conferences
* [railsconf 2013 talks- Portland](http://www.railsconf.com/2013/talks.html)

####Hackathons 

* [WECode](http://www.hcs.harvard.edu/~harvardwomenincs/wecode.php#)
* [PennApps](http://2014s.pennapps.com/)

####Community

* [Hacker News](https://news.ycombinator.com/): Ladies you should really follow this. It's like reddit with less bullshit. 
* [Reddit](http://www.reddit.com/): There are good subreddits out there to discover. 
* [Stack Overflow](http://stackoverflow.com/)
* [Confreaks](http://confreaks.com/)
* [Green Ruby](http://greenruby.org/)
* [Project Euler](http://projecteuler.net/)
* [HackerRank](https://www.hackerrank.com/tracks)
* [Rails Best Practices](http://railsbest.com/)
* [Ready Set Rails](http://www.readysetrails.com/)
* [Rubies in the Rough](http://subinterest.com/rubies-in-the-rough)
* [General Assembly: Ruby on rails for developers](https://github.com/generalassembly/ga-ruby-on-rails-for-devs)
* [Ruby Quiz](http://rubyquiz.com/)
* [Ruby Rogues](http://rubyrogues.com/)
* [Ruby Stack](http://bitnami.com/stack/ruby)
* [The Ruby Game](http://www.therubygame.com/challenges/distressed-ducks/submissions)


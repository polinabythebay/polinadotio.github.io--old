---
title: In which I decide to delegate Rails to the API layer
date: 2015-11-27
tags:
---

I have been tinkering with Rails in my free time for about a year now. Rails was my first foray into web development and Flask was my second, so until now I haven't spent much time using Javascript. 

After spending a few weeks getting more familiar with the wonders of ES6, Coffeescript, Underscore, and jQuery, I recently started working with [Backbone.js](http://backbonejs.org/) and have started implementing it in my Rails projects. It has an event system that's nice, and 'listeners' that 'trigger' events. Prior to Backbone I had used a sprinkling of jQuery and Ajax in my projects. Since I could inject Javascript here and there I didn't really understand why someone couldn't just use what Rails gives you (HTML views). So I started thinking about what Rails is really good at and why someone would make the decision to add Backbone to it.

I think Rails is really good at creating RESTful web services. It structures its routing in terms of a set of resources accessed through uniform URIs that are defined in `routes.rb`. This is important because it makes Rails inherently **stateless**. If you look at a traditional Rails app, you can split it into the following:

- stateless HTML resources for humans
- stateless JSON (API) resources for machines

This setup has a few ramifications. The first is this means all of our HTML rendering is done server-side. That's okay, because it's how our request/response model works. However, since we are relying on the server to update the UI, it means that our interface is only as fast as our network connection. We are stuck in "click and wait" land.

What if instead of relying on the server to update the UI, we persisted state in the DOM and re-rendered our templates client side? That would be nice, because then we could then build out responsive asynchronous interfaces. Our Rails app would no longer be a simple website, it could be a rich web app with highly interactive HTML pages!

But as I mentioned before, Rails is inherently stateless. How would one go about adding rich interactivity to a Rails app? Well, there are client side frameworks out there that are well suited to the task, so what you'll end up doing is replacing your HTML views with something like Backbone. Instead of your Rails app returning HTML views, it can now act as an API for your Backbone app and return JSON. Your Rails + Backbone app now looks like the following:

- stateful rich client side UI provided by the Backbone layer for humans
- stateless resource oriented RESTful API provided by the Rails layer for machines

Backbone [originally started](http://backbonejs.org/#FAQ-rails) as a Javascript library in a Rails application, so it lends itself to pairing with Rails very nicely. It is a light framework (<1000 lines) that allows you to structure your Javascript code in MVC fashion. It is also based on RESTful services. Whenever you create, update or destroy a Backbone model, you do so via the standard HTTP actions sent to URIs which assume a RESTful architecture (which we have!). When you do this, you are using Rails as an API.

I'm glad that I've started learning more Javascript and that I'm discovering the world of client-side applications. Instead of replacing Rails, I think adding client side frameworks to it complements nicely:

- Rails makes an excellent CRUD/REST API
- Its asset pipeline makes it straightforward to serve up client side MVCs.
- It has a good ORM, excellent libraries and a really awesome community.

I'm really happy with delegating Rails to the API layer. This is also a great turning point in my web development journey-- at this moment my interests of focus are learning more about functional reactive programming, building asynchronous interfaces, and learning how to design great APIs.

#### Further reading

- [Backbone on Rails book by thoughtbot](https://gumroad.com/l/backbone-js-on-rails)
- [Rails is just an API and that's okay](http://blog.alexmaccaw.com/rails-is-just-and-api-and-that-s-ok)
- [Rails and Backbone working together](http://stackoverflow.com/questions/11918586/rails-and-backbone-working-together)





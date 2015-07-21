---
title: Choosing a web server for your Rails application
date: 2015-07-20
tags:
---

If you're new to web development and new to [Rails](http://railsapps.github.io/what-is-ruby-rails.html), it might be a bit early to consider your server options. However, if you're starting to use [Heroku](https://www.heroku.com/about) and interested in optimizing your app you might be interested in learning about what's out there.

To start, what is a *web server*? A web server is how your application is exposed to the World-Wide-Web. It uses the web's hypertext transfer protocol (HTTP) to serve files that form web pages. 

There is one thing all web servers for Ruby based applications have in common: they use an interface to talk to your application that is called Rack. Rack's founder, Christian Neukirchen, calls Rack a "modular Ruby webserver interface". The Rack interface/specification works by dividing incoming HTTP requests into different pipelined stages and handles them in different pieces until it is told by your web application to send back a web page. Rails servers can choose to implement this in a variety of ways, yielding different architectual features and performance trade offs.

The first one you're probably familiar with is going to be Rails' default web server, WEBrick. I remember the excitement I first felt starting up WEBrick and seeing my first full fledged Rails application in localhost (the good ole days).

<pre><code>
polina: hello-world-app [2.1.3@rails4.1](master)$ rails server
=> Booting WEBrick
=> Rails 4.1.6 application starting in development 
on http://0.0.0.0:3000
=> Ctrl-C to shutdown server
[2015-07-20 21:38:55] INFO  WEBrick 1.3.1
[2015-07-20 21:38:55] INFO  ruby 2.1.3
[2015-07-20 21:38:55] INFO  
WEBrick::HTTPServer#start: pid=2593 port=3000
</pre></code>

WEBrick is one option out of many, and you may quickly find that it'll grow slower as you learn and add more features to your applications. 

Heroku recommends that you use <a href="https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server" target="_blank">Puma</a> in production. Puma is inspired by the legacy <a href="https://en.wikipedia.org/wiki/Mongrel_(web_server)" target="_blank">Mongrel</a> web server and is popular because of its ability to process concurrent requests (this allows you to efficiently use your Heroku [dynos](https://devcenter.heroku.com/articles/dynos)).

Additional servers to cover:

Unicorn, Passenger, and Thin.
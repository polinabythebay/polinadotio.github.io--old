---
title: Setting up my personal site
date: 2015-08-01
tags:
---

This was originally going to be a few notes on how to set up a Middleman blog, but I wanted to do my personal site justice and document my previous experiences. This current site is the 5th(!) iteration of my personal site. Historically I like to tinker with my personal page and like to iterate frequently. Here are the previous versions:

- Jekyll [blog](https://github.com/polinadotio/psoshnin.github.io--v1/tree/jekyll-bootstrap)
- [Single Page App](https://github.com/polinadotio/single-page-site-with-d3) using a D3.js visualization
- Octopress [blog](https://github.com/polinadotio/psoshnin.github.io--v3)
- Homemade [static blog generator](https://github.com/polinadotio/static-blog-generator) written in Flask

All are static sites and all are hosted using [Github pages](https://pages.github.com/).

#### What is a static site?

A static site is one that is comprised solely of static content. This means that all of your HTML, CSS, and Javascript files already exist and are waiting to served. Dynamic sites, to contrast, generate pages on demand and may return different content based on the request, what's in the database, etc.

There's a couple of great things about using a static site. The first is that serving static content simplifies the process of deploying your site. For personal blogs that usually host articles and such, there isn't any need for dynamic content. This also leads to better security and a performance boost (it's very easy to cache static content and you're not running any application code).

The second is that Github allows you to host a static site for free using Github pages. This is very convenient, especially since you may already be keeping your site on Github :).

#### How do I make a static site?

The simplest thing you can do is create an `index.html` file in a Github repo and title the repo `github-username.github.io`. When you go to that link you'll see your html file.

The next thing you can do is try out a static site generator. They can make the deployment process nicer for you and add special features that make blogging easier. Here are a few popular static site generators:

- [Jekyll](http://jekyllrb.com/), generator written in Ruby.
- [Octopress](https://github.com/imathis/octopress), a blogging framework built on top of Jekyll.
- [Pelican](http://blog.getpelican.com/), generator written in Python.
- [Gitbook](https://www.gitbook.com/), a full-featured publishing platform.

A third option is to roll your own static site generator. I went this route after playing around with both Jekyll and Octopress. They both have a lot of awesome features, but I wasn't using most of them and I was getting bogged down by how much code I was sifting through that I didn't understand. So I made my own! I used [Flask](http://flask.pocoo.org/) and [Frozen-Flask](http://pythonhosted.org/Frozen-Flask/). If you're interested in learning more, I hope to write a blog post on it in the future.

#### Why Middleman?

[Middleman](https://middlemanapp.com/) is a static site generator written by the lovely folks at [thoughtbot](https://thoughtbot.com/). I initially gave Middleman a shot because it's very similar to Rails and I was learning Rails at the time. Middleman uses concepts like partials, erb/haml templating, and the asset pipeline which are all things you'll find when using Rails.

The reason I've decided to stick with Middleman is I've found it to be a nice compromise between the perks of using a maintained static site generator and using a tool that is lightweight and doesn't make me feel bogged down by superfluous features. I also think the thoughtbot team is really awesome.

#### My workflow

My Middleman generator lives in the `source` branch and my blog lives in `master`. I make all of my edits in `source`. To create a new blog post, I add a `post-title.html.markdown` file to my articles directory and write using Markdown. To see my site locally I run `$ middleman`. To deploy to `master` I run `$ middleman build` to build my static content and then `$ middleman deploy`.













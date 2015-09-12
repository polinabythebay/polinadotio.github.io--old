---
title: Stuff everyone knows except you-- a draft
date: 2015-09-02
tags:
---

You do not know everything.
Dunny Kruger Effect.

Speed up repeating tasks:

Being a programmer is solving a problem once, then getting a computer to do it forever.
  The command line: tiny bash scripts are an amazing time saver
  Be good at your editor: doesn't matter which one you use

HTML is your friend
  Tim Berner's Lee. He invented the web. He was trying to event somethint like wikipedia.
  HTML is meaningful.

-way to defined information (not just present it)

-semantic value of the web

Keep it on the <dl> key, value store
Forms grab-bag
  placeholder
  select multiple
  label for ="id"
  optgroup
  autocomplete=off, autocapitalize=off

Code smells
  I will read your html and I will judge you.
  <br> tags usually a bad idea
  Comments in html are a bad idea
  put comments in code generating html

CSS
  
  Understand box model
  box-size: border-box (widths and heights make a lot more sense)
  display: table-cell
  @media selectors (responsive css)

  CSS animation > js animations
  CSS preprocessors: sass, less

Client side javascript
  There's never a right way

Learn Javascript
  Coffeescript != Javascript

Rich app: gmail
Flat app: nytimes

Need to figure out what kind of app you need to build:

Metrics:
  1. actions per minute (many for gmail)
    all done on the client side
    rich app is super app
    nytimes less than 1 action per minute 
  3. load-to-dwel ratio
    Gmail has load time (people will wait)
    NYTimes has no load time (people won't wait)

  4. indexability 
    Is it important for robots to read your site?
  5. you don't always need a rich app

Best way to use javascript is optionally

Progressive Enhancement

Make your website read only w/o js
  1. really well at read only: google spreadsheets. 
  google sheets is one of the richest web apps in the world
    One of the world's most complicated web apps
  it first loads a bunch of html that looks like a spreadsheet
  then it loads in the functionality while you're looking at it

UX antipatterns

Design for failure

Links go places (irreversable)
Buttons do things
No one scrolls horizontally
No one cares about carousels

Our sense of spatial awareness. We were made to live in the jungle.

your website has annoyed the crap out of me and I want to leave

carousels are solved for the marketing dept. but no one cares about carousels.

Usability > Impressiveness. 
Solve the user's problems.
Don't redefine browser UI

breaking down, adding complexity, not adding experience

5% of users are vision impared. and yet we make sure the website works in ie7

don't use modal. drop everything and do this.

I'm just going to rage quit your website.



"your website has annoyed the crap out of me and I'm just going to rage quit your website"

URL = promise. you will see exactly the same thing I'm seeing.

Don't break links. Ever. Don't break your links.
Put a bunch of redirects.

Use pushState to change URLs in rich web apps.
Keep URLs meaningful. URL should change you are in this email now.

No hashbang URL!

State.

Sessions: add state to HTTP. handled by cookies. built into HTTP headers. greatest strength and weakness. Cookies are not for storage. They should be a pointer bc they get sent on every single request.

Lock down cookies

HttpOnly = true (prevents script access to cookies)
Secure = true (go over https)
Almost never mess with user's cookies in JS, unless you are a hacker.

Local Storage

Bigger than a cookie. Isn't sent with every single request. Lives in the browser.

Security

Not enough people are good at.
You cannot add it later.
And now let's make it secure.
You have to be thinking about it all the time.
Never trust the user.

OWASP - top 10 security problems. 
1. XSS. Cross Site Scripting
Tricked into executing external JS.

Hi my name is <script>alert('evil')</script>


2. CSRF
Cross Site Request Forgery 

HTTP is stateless. Contents of form in form you are expecting.

3. Input validation bugs

Define what you are expecting very very precisely via regex.

Regex: DSL for pattern matching.
Compact and safe in a way that is provable.

4. SQL injection

Hi I'm username and my password is 'anything' 'OR 'x'='x'

x';DROP TABLE users;

Command Injection

eval() is evil

5. Direct Object Reference

People always list everything in that directory.

Security Grab Bag

Missing security updates
There are still machines not patched against heartbleed.
Unvalidated redirects.

Auth

Identication - I am Laurie
Authentication - I am Laurie and I can prove it to a computer
Authorization - I am Laurie and I am allowed to do these things on a website.

Zooko's triagle

Authority vs Identity

Salt and Hash your goddam passwords
-- don't encrypt the password the same way for everyone (salting)
Someone is going to steal your passwords one day

Performance

Speed - time taken for 1 request. only thing web users care about
  Any slight slow down makes them lose money.
  Google keeps its pages as simple as possible.
  Don't use a slow language.
  Buy hardware = easiest way to buy performance
  Do less stuff, if all else fails.

Efficiency - resources per request
  Optimizing for efficiency is a high scale problem.
  Time to optimize efficiency is when you have 100 boxes.
  Until then, if you're running 10 servers, don't worry about efficiency now.


Throughput - concurrent requests/time per request
  total requests per second

  Good throughput ! = good experience 
  A thing you can optimize for, but you have to think about speed first


Latency

  latency = time to (perceived) response

Rich apps can reduce perceived latency (not necessarily fix it)
  Edge caching, CDNs

Caching = storage for speed
  Storing data closer to the user (in space or in time)
  Does it by sacrificing local storage

Edge cashing = CDN
  Put thousands of servers all over the world, goes to the closest server
  Multicast DNS is horrifyingly magical

Asset caching

Full page caching (works if you're a content site)
  You don't need to check the database ever time
  No one will know the difference

  +Fragment caching

Query caching

  Some dbs automatically do this for you
  Preprocessing: something on your homepage that counts

How fresh/accurate does my information need to be

Some people have unlimited money

Reduce number of HTTP requests.
Reduce gzip and send them less stuff in the first place
Progressive rendering (something you can read while the rest of the site is loading)

Debugging and Testing

Tests save time (they do not cost time, they feel like they cost time)
Tests are like tying your shoe laces, but you're increasing your chances of falling on your face
You're increasing your risk for no reason

Automated tests are a lot faster
Write down a bunch of steps
Write tests works much better
Any tests is better than no tests

Don't be superstitious

Don't commit code if you don't know what it does.
Do write code if you dont know what it does. REPL is your friend.
Learning how an API works.
Use RPL to debug production app.
  Actively query what your server is doing.

Binary search is amazing. When you are trying to debug a problem, take the piece the code that you think is responsible, delete half of it. If the problem is still there, delete half of it.

Log it!

Write evil tests.

Write software that is testable.

Testable code and just code is very fuzzy. Black art of dependency injection. Maintaining your tests.

Read the error logs. Common mistake/problem. They see a spew a error logs and see "oh it's broken". On one line it says "oh you fucked it up this way". Oh it broke, I don't know. Actually read error logs. THey are written by people who are trying to help you out. 
Try to write helpful error messages.

Invalid input-- that is nearly always the problem. You shouldn't be sending these errors to the users. Here's a little string that I've put into my logs. You find that unique key and find the 100 lines of error messages.


Source maps for front end.

Coding antipatterns: globals

Your code should rely entirely on information that is passed to it.

God object: it is everywhere and it knows everything

function foo (x, god){
  return god.universe.random.thing + x;
}

Giant Function signatures = use options

The million parameter function

function foo(a,b,specialthis,specialthat,isprime,isnull){
  
}

fuction foo(a,b,options){
  
}

Variable names: you are not charged by the character
tiny and generic variable names
stop abbreviating random things

Stop being clever. Excessively clever code. 
Novelty is fun by unproductive.
Be boring: not every architecture should be a special snowflake

Code readability 

Radically underestimated. Use lots of comments. Comment way more than you think you should be doing.
Your audience is the next person. Pretend your successor will have your address and a gun.
Not what the code does. Tell me why it's doing it.

Time Zones

All hail UTC
You should be capturing everything in UTC
You should be storing it in UTC

One true time format: ISO 8601. This is amebable to grep. unix_timestamps are not easy to grep.

Computers are a lot easier to make faster and you are always the same speed.

Unicode is hell, use UTF-8

Databases

segway=none

CAP Theorem

- Consistency: is everyone seeing the same data at the same time (not always necessary)
- Availability: every request gets some response even if that response is idk (logging, sometimes you drop 1% of those)
- Partition tolerance: does your system work if the communication between the parts of your system is not perfect. Are both of your DBs going to freak out if they don't see each other, or are they going to be like "see you later"

Pick two: conventional wisdom

Decide what database you should be using

Reality: dial down these with different trade offs. 

Other things to take into consideration:

- indexability: can I look up on other keys than the primary key? sometimes you need to be able to do that. if you don't need to do that, throwing away that feature can lead to huge performance gains. a lot of nosql databases are based on that.

- durability: how important is this data? is it okay if sometimes I lose some data.
- scalability: do I need this db to work on 100 boxes?
- speed/throughput

Types of Databases

Memory: the best database ever.
  You don't think of memory 
  It's as close to your data as your data can be: it's an object store.
  Stores functions, other chunks of logic, incredibly efficient
  - only available on one process

  Memcache- the solution to that problem
    Still everything in memory, but everyone is talking to one block of memory via protocol that is memcache
    It's only problem is that is it memory. memcache not a good idea for bank records. user sessions? perfect!
    Great for caches and ephemeral data

  Redis is like memcache except it stores objects through restarts. Periodically saving them to disk.
  Thing that Redis is sacrificing is durability. Banks cannot use Redis. A bunch of neat atomic operations. Use it for queueing jobs.

  Mongo DB. Great for prototypes. Easy to use. your schema lives in your application. Great for only one app talking to your mongo. Anecdotally hard to scale. Doesn't guarantee availability. Is it very popular.

  Couch DB. works really well for partition tolerance. Its queries are map reduce jobs written in javascript.

  Level DB. Key value store that scales super well. lets you use a bunch of backends at the same time

  MySQL. de factor leader of relational db space. defines what people think of. baseline expectation for relational db.

  Postgres. like mysql but better. a lot harder to install and get running.

  Oracle: does everything. incredibly expensive. Oracle comes with a person who tells you what to do stuff with Oracle.

  Cassandra. Column store. Good for high write, slow read. Scale in real time. The Ad Network is a classic example. 
  This person saw that ad. (write) This other person saw an add (another write). Once per week it does a read.

  Riak. Cassandra competitor. Tunable consistency.

  Neo4J. graph database. follower network, social network. storing relationships between nodes. It not good at anything else.

  The File System

    Durable, ATOMIC operations, historically slow. SSDs are a lot faster now. You can use disk for a lot of things now. Ex. kafka. huge queueing/processing job system. what do we store this info on? they throw this info on the file system. 

    HDFS/HBASE. Hadoop. data processing when you get data that is too big to process on a single machine.
    HBASE is the database built on top of HDFS for using Hadoop.
    It's distributed, it's durable, it's cool as fuck.

    S3 - like the file system by slower and scales for ever.


Replication

Always consider your replication strategy. (scaling strategy)
- Split reads and writes (all the writes go to this DB, and it will replicate to 4 other DBs)
- Replication is a good scaling strategy but it is not a good backup strategy

Don't invent new DSLs.
Do not write another web framework.

Javascript specific stuff

Accessibility is not optional.

Version control: git is your friend. isolate changes, rollback mistakes. merge without conflicts. essential to modern web development. learn about rebasing and merging.

Deployment. 
Automate all the things.
Get it right once, and automate the hell out of it.

Backups

-replication is not a backup strategy
-offsite and offsystem 

Archectural principles

Smallest possible thing that I can build. 
Yak shaving is very tempting. 

Common patterns.
MVC
MVP

Separation of concerns: you decouple things (if function a and b can only run one after the other, they should be 1 function. if they can run at diff times then make sure you can). you turn stuff into interfaces. you make things modular. 
Easier to debug. The code that is wrong is a DB problem (I don't have to go hunting). They don't have to go looking everywhere in the universe.

Everything is an API. Everything you define is a system someone is going to have to learn, so you should make it simple and obvious and consistent.
ex. if you always pass in your database objects as your first parameter, always do that. 

How does your code work when it is on multiple machines?

Think about failure. How does your system fail? Design for failure. What will happen if a certain system is down?

Planning

All estimates all BS and always have been and forever will be. You still have to do it! You have to try. You need to add time for design. Time for tests. Budgeting time for tests. Budget time for meetings/vacation/time off

"People will forget what you said,
People will forget what you did,
but people will never forget 
how you made them feel"
-Maya Angelou

Do not be an asshole.
Tech is full of assholes for some reason.
Don't undervalue the non-technical people.
Don't belittle people.
Don't let the power go to your head.

The job market right now is insane. 
You've all got a bunch of really valuable skills. They're going to tell you how incredibly awesome you are. It's really hard to not think I'm awesome, and I'm way better. It's not true. Silicon Valley is full of people who are earning more money and it somehow makes them better. Be nice and be helpful and be kind.

Value Yourself.

Your job is not worth your health. And yet the value is full of companies that do not give a shit about how their employees feel. 

Sleeping, eating, exercising.

Never work alone.

Never be working by yourself on a particular problem. Someone else should know what you are doing. Galapagos tortoise syndrome. This person doesn't do things the right way.

Relatively baseline in your coding habits.

Always ask for help. My self worth is based on figuring it out.

Argument against being a contractor.





Overfunded startups. If the problem is the database, afford oracle and you won't have a db problem.



























  


























--
title: SQL Python JSON Cron Jobs
date: 2015-08-19
tags:
---

Context

Large organization has hundreds of users in dozens of specific user roles. Organization is complaining that some users are getting access to roles they should not have access to. However, it's hard to say if this is a human made problem or a regression on our end.

What I want to do: store and analyze snapshots of user roles

Components

1. get daily snapshot
2. store snapshot in a DB
3. get the diff between snapshots.
4. get a readable list of who is in what role with access to what apps

Bonus: get an email of two things. first, list of who's in what role with what access. second, diff between the two days.

Tools

MySQL. Data from API stored in MySQL DB
Python. Convenient scripting tool with convenient libraries. Using pymysql
JSON. Format I will get the data in
Cron Job: time based job scheduler

Step 1. Connect to the DB

Write the query:


Four tables:

user
user_organization
organization
user_org_role



Interactive Python debugger

https://docs.python.org/2/library/pdb.html





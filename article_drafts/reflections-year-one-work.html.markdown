---
title: Reflections on working at a sinking ship
date: 2015-09-1
tags:
---

I recently put in my two weeks at my first job out of college. This wasn't how I pictured my first year of work panning out, but I learned and grew all the same. Quitting was stressful and relieving at the same time. 

Startups as a whole seem to occupy one of three states. The first is growth, where the startup is exhibiting consistent year over year growth and vc money is pouring in. The second state is stasis, where the startup is profitable but not growing consistently. I was hired at the end of the startup's stasis phase. The third state is a prolonged and inevitable path to death. You try to get acquired or acquihired, you fail, you pivot, and fail again, and you start to shrink. 

Looking back at my year there, I attribute my decision to quit ultimately to decisions made by both product and management. As a result, I didn't have the career development or employee support I needed, and I couldn't trust the product I was tasked with supporting and promoting.

The following is a compilation of the symptoms that lead to my departure.

####Bad management 

- Lack of enthusiasm to own projects at senior management level.
- No one owns or manages important features
- Death by a thousand cuts - you see the second round of layoffs, with no change in top management
- Too many pending decisions at all levels.
- Management is increasingly stressed while individual contributors are directionless and bored.
- Saying that one deal will make/break it. A company that is on the right track can say no to deals that would distract too much from product development. The desperate startup never said no, instead pulling their developers to do custom-development work. Inevitably, even the customer they're courting will see that the advertised product is becoming no closer to reality, and they'll walk away.
- You spend the first week of the quarter talking about long-term strategic planning. You then forget about it and spend the next twelve weeks scrambling to make the quarter
- The core team announces the company is getting broken up and sold. They act like that was the plan all along, then lay off 1/3 of your co-workers.
- Managers and directors of teams admit they have no idea what they're doing and just try anything to resolve immediate issues.
- Multiple people in a place of authority and decision making do not trust one another's answer to the same question.
- Tech side is drowning in technical debt, and then gets downsized.
- I have no idea why a manager is in the position he's in and he doesn't appear to like his job.
- Just because a resolution/decision was made doesn't mean it is carried out.
- Focus is more on Short Term results than laying down the foundation for long term growth

####..and the poor decisions made by Product

- Product has extra external facing features that do not actually work. Both customers and customer facing teams are under the impression that they are implemented.
- Extraneous features that appear to be there do not do anything. Management says they're there in case the feature is extended in the future.
- Disabled legacy feature is still visible, with no indication that it was disabled.
- I have to ask many people the same question to get a good answer from management. Most answers are too vague or incorrect.
- The spec for a feature was 'make it exist'
- Merged PRs for issues sometimes never released into production, forgotten about.
- Hotfixes constantly to patch failing platform, no fix to root causes.
-  Management expecting me to learn features that are no longer supported by engineering with documentation that is inaccurate.
- Way too many manual/one off fixes by engineering that cause miscommunication and more regressions a few weeks later.
- The product has many 'features' that are red herrings-- they don't really have any meaning or function and lead users astray.
- The tech team severly fails the Joel Test (http://www.joelonsoftware.com/articles/fog0000000043.html).

This leads to: 

####A Terrible product

- No way to ensure accuracy or rely on the product
- "Features" that were released become huge pain points for everyone involved and customers that forget that feature is on by default beg for it to be disabled.
- Inconsistencies in behavior between SDK versions. For example, 1.0 can do x, 1.1, cannot do x, 1.2 can do x.
- Weeks of data is lost and irrecoverable
- Stuck in a situation where you can't really do much besides identify bugs that might not be fixed, identify new bugs constantly, and have no confidence in the operation of the system.
- Constantly firefighting. Waking up and not knowing whether the product will be online when you get to work.
- Being told you need to remember to project confidence to customers because no one is confident in the product.
- Employees acknowledge that the product is terrible.
- Revenue comes from the same set of customers - no new customer growth
- Largest percent of revenue comes from old products that are being deprecated/no longer actively maintained.
- metrics for product success is financial versus whether or not the product actually solves a customer problem
- no one seems particularly passionate about the product
- I started wishing that certain large customers would churn, because it was so frustrating keeping them afloat on products that were no longer maintained by anyone, or owned by anyone in management.
- More than a dozen of your JIRA issues are closed by engineering as "won't fix"
- When you have to constantly personally send email invites and reset passwords manually for users.
- Known issues are not fixed and keep coming up and causing painpoints for clients. Known issues are also not publically documented.
-  Your public facing SDK doesn't compile because a variable name is mispelled somewhere and your customer needs to correct the spelling for it to compile.
- Revenue comes from the same set of customers - no new customer growth

####Not surprisingly, employees and users don't have faith in your product

- The team supporting your product does not know what functionaly the product has and doesn't have.
- Users constantly encounter issues using your product. All the issues are probably related, but the state of the product makes it hard to determine whether the issues were manual errors, a usage problem, or something else.
- Key customers getting frustrated
- Users lose a lot of money when relying on your product.
- Customer dissatisfaction increasing or above average levels.
- People call your office and ask if you're still in business.
- Parts of the code base that customers are paying a lot for in a SASS product have not been worked on in 2-3 years and the developers have since left.
- Users say site is "so confusing and unlike any site I have encountered". You agree with them.
- A feature has never worked successfully, and neither the user nor your team can ensure it's accuracy.

That nail in the coffin for me was the severe lack of employee support and development. 

####No Employee Development

- You and others are questioning whether you're on a sinking ship.
- Frustration throughout the company
- Employees are looking for jobs and are staying for the sake of buying more time for job hunting.
- Layoffs 6 months after being told there's a lot of runway.
- No bonuses
- No raises
- Jobs don't get replaced when a person leaves.
- you start losing good people faster than you hire them
- When people who climb the corporate ladder unabashedly stop climbing and start interviewing with other companies
- Unproductive or even harmful employees get promoted instead of fired. And don't get laid off in the lay offs.
- High turnover- multiple layoffs
- Employees are not using their top skills in their daily work.
- There are rarely site activities or team building
- You don't target the best companies and try to hire their best people.
- When asked about performance reviews, changing teams/leveling up, I'm met with crickets.
- There were never team goals or a roadmap for my team.
- people smarter and / or more courageous than you start quitting.
- Undervaluing HR - reducing them to recruiting, admin and payroll
.

What's next for me? Well, I'm not entirely sure. I have a year's worth of reasons not to go back to startup land. Some of these symptoms seem inherent in working for a startup. Some probably aren't, but may very well crop up when resources and time become scarse. It's hard for me to tell just yet.

####The silver lining

One of the reasons I became upset a lot in the past year is because I really care about developing a product users love and get a lot of value out of. In searching for resources on learning best practices in software development, I have decided that being a Thoughtbot developer is a dream job of mine, partly from being exposed to their [guides](https://github.com/thoughtbot/guides/tree/master/code-review), their wonderful open source products, and their public Github PRs. I currently follow a Github repo of theirs and feel like I'm listening in on the pros as their develop and maintain a product. I will work as hard as I can to be in a place that has that kind of code review culture. Those Thoughtbot developers seem like a very happy, awesome bunch who deeply care about making a good product and sharing their knowledge.

All in all, this first job has given me greater confidence in myself than I had a year ago. I'm striving to find a job I am passionate about and can grow and excel in. I plan to put my best foot forward and engage with the next hiring process in good faith.













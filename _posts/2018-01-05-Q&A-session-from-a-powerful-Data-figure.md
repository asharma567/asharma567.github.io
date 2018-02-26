My rough notes from a Q&A session with a very popular figure within the Data space who shall go unnamed who grew a data team from 0 to almost 1000 people. It's now a premium destination for data scientist/analyst, globally.

The notes are pretty raw and mostly (90%) straight from him however, I sprinkled-in my own thoughts here and there. 

A key take-away was the distinction between technical cofounders and non-technical ones especially if they have a Sales background. This adds another crucial metric when evaluating leadership at a start-up for any reason. It greatly effects the susceptible, adoption of data-products.

{% include toc title="Topics" icon="gears" %}


#### What was your motivation to join <secret company>? (about a year old, just raised an A round)
- He didn't know if it was going to be successful, but the business model made sense.
- He wanted to work with a group of people who were smarter than he was. That's how he measured downside risk. **The people** and what he'd learn from them should all else fail.
_This is yet another example of how it doesn't pay to chase first order needs/desires (money, cars, titles, status symbols, etc.)_

#### Did you have any trouble convincing cofounders ( upper management ) about the importance of data for the sake of adoption?
- He didn't. Data-driven decision making is usually in the DNA of technical cofounders hence it made adoption of data products easier.
- Intuition ( gut ) based decision-making is the hallmark of a sales org e.g. CEO is a ex-salesperson. 
_As a matter of fact, he often poached from such companies because data was an afterthought there, hence making data people unhappy._

#### Con of a Technical Cofounder?
- They could have strong bias for a particular TechStack and this could cause a lot of problems later on. There problem was <cofounder> was all about PHP which is known to be an antiquated language. 
_My current company, was it's monolithic._

#### What would you do differently, if you had to rebuild <secret company>'s data team from scratch again?
A major headache early on was separating the data orgs: operations ( internal facing analytics ) & R&D ( consumer facing ):
1. They differed in titles which caused confusion about capabilities within the org: HR and comp, etc. 
Redundancy and inefficiency of resources, DS on one side being understaffed.
2. There were two independent data lakes catering to each group which caused a big mess later on.

#### What are the benefits of a Data org?
- Data needs to have it's own identity, it's own director, provided the groups large are enough. If it's not it should roll-up into engineering...
Engineers offer the most day-to-day benefits to enable Data Scientists for success
	- Access to data
	- Meaning of the data e.g. how it's generated, data dictionary, etc.
	- Tooling
	- Like-Mindedness interms of workflow

#### Benefits of having it independent
	- Better services for other internal clients vs favoring the hometown client

#### Benefits of have a unified data org versus multiple (Internal Analytics & Consumer Facing)
	- Distinctions between job titles became clear: standardization with corresponding skills 
	- Promotional milestones also became clear
	- Redundancy of meetings, tools, resources
	- Lines of ownership of tasks are clear
	- There will be a point where an anlayst will need to use something beyond data analysis for a particular job. Hence the centrality aids to education
	- Allocate resources personnel more efficiently
	- Better career pathing 
	- "Data engineering wasn't good enough at customer relations where they could handle two seperate orgs"

#### Without a Data org, it's harder to recruit.
	- Communicates leadership doesn't take it seriously
	- No visibility in management if there's just a single data scientist serving purely as an IC. There needs to be two at the minimum: Manager/Strategist and IC.

#### How to persuade management early-on about the importance of an org?
- Before building one you need to get upfront commitment from management, this is somethiung they have to be clear on.

#### What habits would you encourage in young Data Leaders?
- Stay opinionated
- Stay assertive
- Reluctant to compromise

#### How did you get adoption from departments across the org in areas that wouldn't traditionally consider a data scientist? ( e.g. advocacy groups, public policy groups, people operations. )
- Blow past Data doubters. Bait them in by saying, "your team's excited my team's excited, lets not kill motivation." 
- This is where persuasion comes in: Offer a trial period, where they get a taste. 
- Seekout a Data Scientist who's also enthusiastic about the subject domain and a champion on the subject team who's open minded about a novel approach and combine the two. That way you'll have two excited people working on something together.

#### What skills do you look for in a Data Scientist given today's environment?

Technical skills are being abstracted away with the advent of tooling e.g. AWS ML, sklearn. It's important not to depend too much on these ML solutions because they constrain the solution space by their ability and hence the product.

#### Ideal Data Scientist
- Technical background, __Me: SE heavy__
- Strong sense of corporate competitiveness


#### What was your last project there?
The operations tooling group where they made: Data Science as a service basically: Experimentation, Prediction, Customer-segmentation. 

The automation/standardization of a workflow (Sklearn specific to <secret company>).

Gaining adoption for the ML platform tools was challenging because people were very much attached to their workflow, tools, etc. 

"Sometimes technical people have strong biases which make them very hard to persuade even more so than internal clients."

The strategy was to do it through workflow automation rather than application so no one's egos were hurt. Which ultimately led to further adoption and company-wide ML IQ and standardization. The tooling group came about because of the magnitude of scale (around 500 data people) previous to that, shared libraries go a long way.


#### Does management want a head of data science?
After that's utterly clear, grow into that role then start building out the team.

_More skills on application as opposed learning the tools and nuances of using it. Over time, it's becoming less technical skills. Urgency/corporate competitiveness._

# Other great resources

Hope you find it helpful. 

Here's [another book](https://resources.github.com/whitepapers/data-science/) Drew Conway recommended to me on team structuring. 

Another article which talks about the [pitfalls of being a Lead](https://www.linkedin.com/pulse/why-data-science-leaders-running-exit-edward-chenard/)

Initial Team Structure
=================

( Assumes a Data Science Manager already in-place. )

1st hire
--------
10x Data Scientist 
Pay above market. This will be your measuring stick.

2nd - 5th
---------
- todo list executers
- Enthusiasm
- Strong executers
- Competent Technical Chops-wise

5 - 25
------
- Project employees
- Leadership potential

#### Example structure of a team: Dynamic Pricing
- 8 data scientist 
- 2 engineers 
- 1 pm
Create teams adequately weighted staff-wise for it's purpose i.e. a design team would have more designers than anything else.


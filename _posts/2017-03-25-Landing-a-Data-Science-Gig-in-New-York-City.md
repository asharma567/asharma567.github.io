3/25/17


<a href="/assets/images/Flow_Chart.jpeg"><img src="/assets/images/Flow_Chart.jpeg"></a>


_I wrote this on thanksgiving day (11/24/16) so I purged my thoughts while they were fresh and now I'm finally getting around to publishing this (lazy..? I know). Oddly enough 6 months later, I?m now rewriting this from the lens of a hiring manager -- my opinions have changed a bit._

To give thanks to all those who helped me through my journey, I wanted to write this guide to finding a data science gig in NYC specifically for the underdog - _no advanced degrees_. Job search articles are quite popular but mostly by folks who have the prototypical background: PhDs. Having no advanced degree whatsoever, the adversities are quite different.

There's definitely a stigma with folks without advanced degrees and you have to prove yourself a bit more. Having had quite a few Q&A sessions with lead data scientists with such backgrounds, the short answer of how you stand-out is __bodies of work__: End-to-end data products and/or write-up analyses. __Demonstrate you know how to take a business problem and deliver value.__

About interviews, people say _"you've got to play their game"_ which is true on some level. But you could also filter certain types of interviewers out upfront and focus on ones which play to your strengths. There's a sea of start-ups out there, it makes sense to be somewhat selective depending on where you?re at experience/skill-wise.

I focused on interviews which were very representative of day-to-day work. Being an ex-quant, I already had strong practical skills.

To make sure I'm providing proper & relevant info, I've ran this past a few hiring managers at major start-ups and job searchers with entry level skills. Though I'll continue to mention, you could know everything through-and-through, have no imposter syndrome, yet still struggle; which is reflective of a harsh environment, not of your skills. So, be discriminative on what you internalize.

Some statements here may seem pervasive or biased, and that's because they are. I'm only speaking from my experience and do not intend to cast a blanket statement over an entire population of interviewers.

This writing is comprehensive. Some parts you may find redundant, in which case it should serve as reinforcement to pre-existing knowledge, boosting self-confidence. Other parts you'll find original and insightful (_hopefully_).


{% include toc title="Table of Contents" icon="file-text" %}



# Bay Area vs. NYC

__NYC__ is oriented towards salespeople and relationship managers. As such, the culture permeates throughout the community, even reflected in data science interviews.

__The traditional mindset of interviewing--__
- your network is your net worth
- pedigree/credentials matter 
- classic interview etiquette is emphasized
	- eye contact
	- firm handshake
	- etc...
- weighted more heavily on theoretical Qs as opposed to practical
- coming off "confident" as opposed to being accurate: _rarely right, always certain._
... the list goes on but here's a [great book](https://www.amazon.com/60-Seconds-Youre-Hired-Revised/dp/0143128507) that helped me out with this phase. 

In a nutshell, the evaluation is more perception based vs the west coast. There's certainly controversy around how to best evaluate a problem-solver and perception based interviews are a terrible way to do it - bodies of research show this. Although, it's unsurprisingly effective for sales recruiting. So in this regard, Bay Area wins.

### Verbose=True
In regular conversation, it's good practice to limit your answers to less than 60 secs to keep your audience engaged. That rule goes out the window for these types of questions. Err on the side of verbosity. Be able to speak "at length" about a technical subject. It's _supposed to_ demonstrate your rigor & interest level. Though you very well could be repeating words memorized from a textbook/blog.

__Bay Area__ is oriented towards engineers. Having lived in LA as well,  I'd also extend this to the rest of California. Intellectual honesty is much more appreciated - they care about __what you can do__. It's preferred to admit your flaws and shortcomings skill-wise upfront. Whereas in NYC, you're always in a mode to "sell yourself" and admitting flaws might be seen as weakness. Which makes me wonder, _do people want to hire good interviewers or practitioners?_ ...A topic for another article. 

Other distinctions noted for each section below.



# Resume

Courtesy of all the publicity around purportedly high salaries of Data Scientists, everyone wants to be one! 

Unless you fit the mainstream mold, it's difficult for hiring folks to distinguish you from the rest of the applicants. So work hard on making your resume distinct! It applies twice, i) application submission and ii) in networking.

### Project structure

Each project from your past jobs should follow a consistent structure:
- business problem
- solution
- impact to the business by a quantifiable metric
- tools used
max 1-2 lines each.

```
__Item Conversions__  
- (Problem) Modeled conversions and user engagement for items on our platform. Previously thought of as an unsolvable problem due to sparsity and low observation count.  
- (Solution) Augmented dataset from disparate sources which created strong classification & regression models. Generalized by feature engineering, grid-searching hyper-parameters, and PCA.  
- (Impact) Increased conversion rate by 18%. Write-up analysis increased understanding for decision-makers.  
(Used)_Sklearn, NumPy, Hadoop, Hive._
```

Initially, start-off verbose then extract the salient points to make it concise -- use these points in your resume. 

This structure not only helps the recruiters & hiring managers parse relevant points as they read, but it also helps how you frame your thoughts during the interview. As you write, always keep this in mind: __Less is more.__

About the "Thou shalt not break the 1 page resume" rule: Fuck that rule. But be extra mindful of the sequence of topics and projects. First thing a recruiter/hiring manager sees should be most relevant to the skills & experience they seek. For me it was-- 
i) technical skills (2 lines) 
ii) my prior experience as a Data Scientist 
iii) my experience as a quant

This arrangement will pique their interest enticing them to dig deeper to subsequent pages after just a quick glance.

### Projects sheet

Showcase your projects with links accompanied by a brief description (same structure mentioned above). Links should ideally be to a blog post and github repo. Note: people like to see the end-product, not sift through code on github. 

__Do not let the code do the talking for you.__ Use visualizations and qualitative summaries to convey your findings -- communicate them succinctly.

### Cover sheet trick

If you're really interested in a particular job, do the following: 
i. Make a T-chart.
ii. Requirements from the job spec on the left side and on the right side, list corresponding examples of past work where you've demonstrated the corresponding requirement. 
iii. Include this as the first page of the resume so it doesn't get lost.




# Sourcing interviews

Initially casting a wide net and actively narrowing it with your preferences is a reasonable approach and it's what most people do including myself. As you go through each and every interview make sure to ask deep questions about fit and be highly reflective about your performance post interview. A post-mortem should be standard part of your process. 

Outline what you liked/disliked about the role/company and how your performance could've been better, etc.

NYC's quite different from SF in that it's highly susceptible to networking (which is unfortunately biased towards extroverts). On the bright-side, it's a great place to learn the skill which pays a lifetime of dividends.

__Why is networking superior to application/resume submission.__ All jobs on the market are available through networking, application/resume jobs is a subset. Only companies who are properly staffed and have a good recruiting infrastructure are equipped to handle the volume from an application portal. For example, at a lean start-up the recruiters only have so much time to allocate to certain requisitions. In our case, hiring engineers was priority over a data scientist, which made my role __exclusively__ available through networking.


### Cold email outreach

Use LinkedIn and rapportive to figure out someone's email address (work) and write them a message about your inquiry. Github is another great resource for capturing email addresses (personal/work).

Opening email format--

> Who you are in 2 sentences. Sell yourself a bit here. It should be clear that you're someone worth talking to. 
> 
> State what you want from them. Try and be as specific as possible. For example, "I saw your talk on conv nets and wanted to ask about the optimization algorithm you were using e.g. Adam, SGD? Would you have a sec for a few questions?" (2 more sentences)
> 
> Overall, it shouldn't take anyone longer than 60 secs to read. Be succinct, clear, and to the point.

People often want to help-out but they usually don't know how. By being specific, you'll notice a positive reaction more often than not in your outreach.

### Traditional job boards

- [Gary's guide](http://www.garysguide.com/)
- [tinyletter](http://tinyletter.com/nycdatajobs)


### Meetups

__Which meetups?__
- ["https://www.meetup.com/nyhackr"](https://www.meetup.com/nyhackr) _*the shit!_
- ["https://www.meetup.com/dstraders/"](https://www.meetup.com/dstraders/)
- ["https://www.meetup.com/DataDrivenNYC/"](https://www.meetup.com/DataDrivenNYC/)
- ["https://www.meetup.com/nycpython/"](https://www.meetup.com/nycpython/)
- ["https://www.meetup.com/NYC-Data-Science-Study-Group/"](https://www.meetup.com/NYC-Data-Science-Study-Group/)

__What to do at meetups?__
Show up early to meet with the host and others. The host is a hub -- a popular person -- it's worth investing in that relationship. He/She may also have helpful advice along with knowing about companies that are hiring.

The preliminary stages of the meetup are often reserved for folks looking to hire/network, if that's not the case then just go talk to folks after the talk. 

__Approaching people:__
Start with someone that's not talking to anyone just to warm things up. Have goal of meeting with 4 or so people per meetup whether or not they're beneficial to you. Prepare a canned intro of yourself (background and job search interest) and _always_ meet people with the intention of seeking advice or getting to know them vs asking for job outright.

An easy way to __start a convo__: Simply stick out your hand and introduce yourself and ask "so what'd you think of the talk?"

The __types of meetups__ you go to are very important: beginner topics will have a beginner audience.

How to __get noticed__ versus the other job searchers: have your 60 sec intro story down. 

_Note: if you've been studying, it'll show in your interactions with people because more than often it'll be the subject that's top of mind. Taking in depth about a nuance but valuable subject can be very polarizing._

### Have one good recruiter

I used: ["clutch talent"](http://clutchtalent.com/)



## Interviews Questions

### Questions for Recruiter

This is a chance to save yourself a bunch of time and frustration and opportunity cost of interviewing with a better company. So, it's pretty important you take this call seriously.

__Have they ever hired a data scientist before?__

Data Science is still pretty nascent, consequently lots of folks have gotten into roles with very little experience in the real-world, only being validated by their credentials. In short this means there are a lot of junior hiring managers.

As such, they might have very biased vetting processes and ultimately end-up building poor teams which you don't want to be a part of. 
 
The issue is interviews can be very disjointed from the day-to-day tasks as a Data Scientist, so it make sense to deliberately study for interviews as much as possible. 

- Theory or Practical?
	- Theory: Management case study, Dice rolling/Coin flipping,
	- Practical: Live-code or whiteboard (SQL, CS algo, practical helper funcs), take-home (analysis, predictive model, write-up).
- Composition of team?
	- if it's all PhDs, you'll have an idea of the types of questions they'll be asking - likely be on the more theoretical side.
- Get background info of the hiring manager.
	- Recency from academia? I found this to be a very strong indicator of terrible interview questions.
- How long have you been trying to fill the position?
	- If it's been a while, that's a red flag, something's wrong with their interviewing process. I'd probe further to get insight as to what could be the problem.
	- Are you the first one in their pipeline? RED FLAG! Sequence matters. For various reasons, the first person that's interviewed usually isn't made an offer. At the minimum, interviewers are undergoing `#FOMO` about other candidates out there. They're also figuring out their interview process & material as they go along, so requirements could completely change for the next candidate.
	
	In contrast, being the last person has its advantages. Imagine interviewers tired and dissuaded from their search finally succumbing to their most practical choice.

### Behavioral

"What to do you want to do?"
	i. State what you're actually interested in doing on a day-to-day. e.g. "Come up with a data science or engineering  solutions to a business problem"
	ii. Conclude with how it contributes to their needs
	Assuming it's a fit, I'd couch (i) in the context of their needs and end it with how you'd like to make a contribution to them. This shows that you're ultimately looking to be a team player. You don't want to come off like someone that's only "out for themselves."

"Tell me about yourself?"
- Journey of how you came to be a data scientist. Time the answer to be under 60 secs, otherwise you'll lose the interviewer's attention.

"What have you been up to?"
- __Always be working on something__, whether it's further optimizing your take-home project, blogging about side-projects, or working on a contracting assignment - this being the strongest because it validates your skills are worth money.

"What's your favorite algorithm?"
- Don't say something very common like Random Forest; it's been beaten to death and the interviewer has probably heard it all, which raises the bar for the quality of your answer.
- Say something novel e.g. Level Set Tree, t-SNE, GMM(Gaussian Mixture Model), Isoforest, etc.
	- Potentially insightful to the interviewer
	- The diligence won't be as thorough given the interviewers prior knowledge
	- It's distinguishing

### On communicating "the approach" of a problem

- State the business problem you're addressing
- Analysis
- Possible solutions with cost-benefit trade-offs
- Results / impact to the business in the form of a metric e.g. FPs describe in a dollar amount


### Theory-based interviews (BUZZWORD BINGO)

__ML must knows--__

- Tree based models*: Decision, RF, Boosting 
- PCA*
- Regression models: OLS, Logistic, Regularization techniques_
	- Communicate the meaning of the beta coefficients to a business unit
- Vectorizing text: Bag of words, TF-IDF*, Word2vec
- ROC Curve*
- Euclidean Distance (l2 norm)*
- kNN*
- Class imbalance
- Multilabel
- Collinearity
- Overfittedness
- Clustering: K-Means*, DBSCAN, Hierarchical clustering
	- Differences between K-Means and Hierarchical clustering
- Recommender systems: Item-based, Collaborative filtering, Matrix factorization


__Feature Selection--__

- L1 Lasso
- Wrapper models e.g. stepwise methods
- Filter models e.g. fisher score, gini impurity, entropy*
- Missing ratio


__Dimensionality Techniques--__

- t-SNE
- MDS
- PCA*
- Isomap
- Sammon mapping
- LLE
...more here.
https://lvdmaaten.github.io/drtoolbox/

_*know these down to the math_


__Elements of Statistical Learning (ESL)--__

[Watch these videos first on 1.5x](https://lagunita.stanford.edu/courses/HumanitiesSciences/StatLearning/Winter2016/about)

3. Linear Regression
4. Linear Classification
5. Regularization
10. Boosting
12. SVM
15. RF
16. Ensembling
Obviously read some areas deeper than others but be especially mindful of the vocabulary being used. This bolsters your communication skills.


__CS algo--__

Didn't come across too many of these though the question which got me my job was the [word-break problem] (http://www.geeksforgeeks.org/dynamic-programming-set-32-word-break-problem/)
- [Interview Cake](https://www.interviewcake.com/)


__Probability Theory and Intro Stats--__

This should cover dice rolling and coin flips Qs
- Khan academy

### Practical based interviews

__SQL--__
- (left, right, inner, outer, self) joins, aggregate functions, filtering, window functions, case when..
- [Mode](https://community.modeanalytics.com/sql/tutorial/sql-aggregate-functions/) for practice questions.

__Bash--__
- ls
- ssh
- look up a process and kill it: ```ps aux | grep app.py, sudo kill process_id```
- grep
- cat
- ```>>``` vs ```>``` 
- cheat sheets [I](https://gist.github.com/LeCoupa/122b12050f5fb267e75f),[II](https://learncodethehardway.org/unix/bash_cheat_sheet.pdf)

__Experimental design and A/B testing__
- [Udacity's course](https://www.udacity.com/course/ab-testing--ud257)

__Take-homes--__

Being a practitioner, this is where I shine - nearly had 100% conversion to an onsite. Takehome assignments take more time but they're a wonderful way to build your skill and are usually quite enjoyable (assuming you love practicing data science and the take-home material is mature). 

As you do these, purge all helper functions to a central toolbox. This will aid you when you actually land a job so you could hit the ground running and it helps get through subsequent take-homes quickly.
- Asking clarifying questions to make sure you understand the problem correctly is very fair and encouraged: 
	1. Echo the problem back as you understand it.
	1. State the approach(s) you're considering.
	1. Ask if you're on the right track before you dive in.


__Summary sheet at the very top__
- Restate the business problem as you understand it.

- Analysis with your findings
Use visualization and a qualitative summary to speak about your findings. Even the rudimentary steps like checking data types and the distribution of the features/data, etc., just to show that you did them! Why? Because you want to avoid looking like a Kaggler. Kagglers skip this phase and jump to model-selection and grid-searching hyper parameters. The interviewer will redflag you if he can't see your methodology.

- Enumerate solutions considered with a quick cost-benefit of each

- Solution / approach taken and why. 
Stating you took the simplist approach for time sensitive purposes and couch it as a benchmark for later approaches is what I'd recommend.

- Next steps i.e. talk about subsequent iterations
The approach you chose should be the MVP (minimal viable product) in the best interest of time. You should list the rest of the potential solutions here. With the promise of yielding better performance at the expense of time to prototype/research.

Get rid of the noise! Abstract away most code into a helpers file, suppress all error warnings. In the helper file, use descriptive variable names that make sense. Include docstrings in your helper functions and practice clean-code principles. Bonus for unit tests for all of your helper functions.

Talk big game for your later approach. Don't be a afraid to wow them here.

The purpose of this section is to demonstrate that you've scoped problems thoroughly before diving in and you can communicate succinctly.

### Seeking guidance
Whenever you're stuck on any part of this job search phase, ask for help. People are very much willing to help you out provided they can. What you can do is be very specific about where you need help. 

> I need help with X.
> I've tried a,b,c but it's gotten me no where. 
> Any tips?

This shows-- 
i) you've put in effort.
ii) specifically where you're stuck. 

Also know when advice is bad or not relevant. This is a tough thing to do but don't naively take everything at face value and follow instructions, always question it's validity.

### Staying motivated
- I found that experimenting around with different strategies kept me on track.
- Always be working on something e.g. blog, contract project, take-home.
- Don't beat yourself up. Things could be completely out of your control like the [entire job market.](https://www.hakkalabs.co/articles/2016-summer-swoon-data-science-jobs)
- Be emotionless as possible as you get dinged at various stages. Treat them all as a learning exercise.

### Optimal weekly schedule
- Stick to a strong routine.
- Commit to some body of work every weekend. Whether it be a blog post, building on a past project, finding something that's shippable in a 2 or 3-day time frame. Why? you need sustenance, you need to stay present, also building your public bodies of work.
- Stay very healthy exercise everyday for at least an hour.

### If I had to redo my job search
- I would've enlisted in TA'ing sooner.
- I would've lined up a contractual assignment that would take about half my week and focused remaining time on job searching. 
	Places to find side-work: 
	- elance.com 
	- odesk.com 
- Be more selective (with their interview process), don't go for the big brand names, never be the first in line to interview, ask for feedback religiously (on the spot ideally), built out a blog and shipped out projects versus doing mini-side projects which would now sit in my desk drawer.


### Other helpful resources
- [Trey Causey's post of ds jobs](http://treycausey.com/data_science_interviews.html)
- [Erin Shellman's post](http://www.erinshellman.com/crushed-it-landing-a-data-science-job/)
- [http://www.jeannicholashould.com/getting-your-first-job-in-data-science.html](http://www.jeannicholashould.com/getting-your-first-job-in-data-science.html)
- [http://varianceexplained.org/r/year_data_scientist/ ](http://varianceexplained.org/r/year_data_scientist/)
- [https://www.fastcompany.com/3063167/](https://www.fastcompany.com/3063167/every-data-science-interview-boiled-down-to-five-basic-questions)
- [https://medium.freecodecamp.com/5-key-learnings-from-the-post-bootcamp-job-search-9a07468d2331#.42nq76g6j](https://medium.freecodecamp.com/5-key-learnings-from-the-post-bootcamp-job-search-9a07468d2331#.42nq76g6j)
- Coursera's data structure and algorithm class

I hope you found this post helpful, it took me a long ass time to write it. Best of luck!
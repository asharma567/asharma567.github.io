6/08/19

<!----- Conversion time: 3.669 seconds.


Using this Markdown file:

1. Cut and paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β17
* Sat Jun 08 2019 10:26:38 GMT-0700 (PDT)
* Source doc: https://docs.google.com/a/datashop.ai/open?id=1LP8uLnwP7E1CedaZa_631zyugQxWdzku8NH2fADFZDk
* This document has images: check for >>>>>  gd2md-html alert:  inline image link in generated source and store images to your server.

WARNING:
You have 5 H1 headings. You may want to use the "H1 -> H2" option to demote all headings by one level.

----->


<p style="color: red; font-weight: bold">>>>>>  gd2md-html alert:  ERRORs: 0; WARNINGs: 1; ALERTS: 4.</p>
<ul style="color: red; font-weight: bold"><li>See top comment block for details on ERRORs and WARNINGs. <li>In the converted Markdown or HTML, search for inline alerts that start with >>>>>  gd2md-html alert:  for specific instances that need correction.</ul>

<p style="color: red; font-weight: bold">Links to alert messages:</p><a href="#gdcalert1">alert1</a>
<a href="#gdcalert2">alert2</a>
<a href="#gdcalert3">alert3</a>
<a href="#gdcalert4">alert4</a>

<p style="color: red; font-weight: bold">>>>>> PLEASE check and correct alert issues and delete this message and the inline alerts.<hr></p>



# Why You Swipe Right: Insights from 1,000 Online Dating Photos (PART 1)

Online dating sucks.

It’s racially biased, allows people to misrepresent themselves, doesn’t correctly model human attraction, and its algorithm-based matchmaking skills are pretty dismal.

Despite these shortcomings, we still can use online dating as a way to glean insight into ourselves, our romantic preferences, and our unconscious biases. The data’s only part of the story, though—the result of my own struggles with online dating, my efforts to connect the dots, and the truths I uncovered about my tastes when I looked at my dating history through the lens of data science and artificial intelligence.

Whether you’re looking for the right one or the one for right now, maybe you’ll relate.


# The motivation

As of 2010, [about 20% of heterosexual couples](https://data.stanford.edu/hcmst) met through online dating—and that was nearly a decade ago. Today, online dating is without a doubt one of the most common ways that couples meet. It’s especially popular for groups outside the dating “mainstream,” like the LGBTQ+ community.



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document0.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document0.png "image_tooltip")
_[“Love, Online Dating, Modern Romance and the Internet”](http://time.com/aziz-ansari-modern-romance/) by Aziz Ansari, [TIME Magazine](http://time.com/)_

As Western society has increasingly moved social interactions online, some singles depend exclusively on online or app-based dating and have long forgotten how courtship used to work in the good ol’ days: real-life encounters (a dying art). This shift will be even more pronounced in future generations. At some point, perhaps we’ll see single people meeting in virtual reality. We’re continually looking for ways to automate every aspect of our lives, and dating is no exception.

And really, why should it be? It's nice to have such a wide selection of potential partners right in the palm of our hands. The benefits are obvious—an expanded dating pool allows us to meet many people we’d be unlikely to meet otherwise and to be pickier with our dates, which could ultimately lead to a better match.


# But what if it doesn’t work for you?

After a few years spent trying and failing to find a partner online, I felt like online dating was a waste of my time and decided to forgo it altogether. At first, I chalked it up to how picky I am—I swiped right on less than 10% of the profiles I was shown. But then I began to internalize my lack of success and, after some investigation, realized that there may be factors beyond my control at play: in the algorithm-based world of online dating, my stock as a short Indian guy isn’t worth a whole lot.


# Race matters

It turns out I wasn’t just being paranoid—according to data from several sources, [online dating is highly racially discriminative](https://www.npr.org/2018/01/09/575352051/least-desirable-how-racial-discrimination-plays-out-in-online-dating). Ethnicity isn’t the only factor considered in online dating, but it’s a big one, and (like my height) it’s something that I can’t change.



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document1.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document1.png "image_tooltip")


   _  [“How the internet has changed dating,”](https://www.economist.com/briefing/2018/08/18/how-the-internet-has-changed-dating) by [The Economist](https://www.economist.com/)_



<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document2.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document2.png "image_tooltip")


_["The uncomfortable racial preferences revealed by online dating"](https://qz.com/149342/the-uncomfortable-racial-preferences-revealed-by-online-dating/)  by Ritchie King, [Quartz](https://qz.com/)_



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document3.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document3.png "image_tooltip")


_[“Race and Attraction, 2009–2014”](https://theblog.okcupid.com/race-and-attraction-2009-2014-107dcbb4f060) by [OkCupid](https://www.okcupid.com/)_

The data made things seem rather hopeless for me. Even if I beat the odds and matched with someone, there would still be more hoops to jump through: an engaging opening message, a good initial conversation, then planning a first date and actually going through with it. The woman I matched with could pull out at any one of these moments, and if we somehow (fingers crossed) make it to the point where we meet in person, it’s still a gamble whether or not we’d find each other as attractive in the real world as we did on the app.

We spend so much of our lives online that it’s easy to forget the stakes are high here. When I order a pair of Asics online in a size 10.5, I know what to expect in the mail. It’s not so easy to predict who’s going to show up for dinner when you make a date online.

When people grossly misrepresent themselves in the digital world, it’s known as [kittenfishing](https://hingeirl.com/hinge-reports/kittenfishing-its-catfishing-lite-and-youve-definitely-experienced-it/)—not as big a deal as [catfishing](https://en.wikipedia.org/wiki/Catfishing), to be sure, but still a major problem for folks looking for love. Being kittenfished can result in a lot of time, energy, and money wasted, especially when you live in Manhattan (like I do), where dates aren't exactly a cheap affair.

I’ll admit that when the soul-crushing realities of looking for love online get to me, I’ve contemplated simply lowering my expectations to match—looking simply for _one night_ instead of _the one._ But I know that ultimately, I’d wind up back here at square one, and all the more jaded for it.


# Not having luck, either? It’s only partially your fault

On platforms like OKCupid and Hinge, where people can filter their results by attributes like ethnicity or height, there’s little chance I’ll even be seen. And on top of that, there are matching algorithms used to sort and “surface” (recommend) profiles to users which ultimately determine your [visibility](https://www.swipehelper.com/2016/11/16/tinder-algorithm/)—a word that translates quite literally to “fate” when it comes to online dating. 

For example, [Tinder’s Elo score](https://www.swipehelper.com/2018/09/23/secret-rules-tinder-algorithm-how-to-improve-score-more-matches/) (essentially, the percentage of people who swipe right on you divided by your total number of swipes) and [OKCupid’s geometric mean](https://ed.ted.com/lessons/inside-okcupid-the-math-of-online-dating-christian-rudder) (which matches users based on their answers to personality assessment questions) are the only paths to algorithmic attention without spending money to artificially boost your profile. These scores can, over time, start to discriminate against people like me who are less likely to appear in a user’s search results. 

To be fair, [Tinder claims to have abandoned Elo scoring](https://blog.gotinder.com/powering-tinder-r-the-method-behind-our-matching/) for something else... but [it’s evidently the same thing with a different name](https://www.swipehelper.com/2019/03/24/tinder-changes-elo-ranking-algorithm-new-score-system-just-same/), and the broader point is these algorithms have an overwhelming amount of control over our likelihood to match up with other users.


    _“The [Elo] score system and matching algorithm doesn’t [just] work in terms of a 1-10 attractiveness scale, but the effect can be expressed as such: If you have been determined to be a 6, you will be regularly shown to 5-7, and rarely [matched] to >7, or <5 rated people, and vice versa.”_


    (From ["Tinder’s Algorithm / How Your Desirability Score Is Calculated & What you can do to improve yours"](https://www.swipehelper.com/2016/11/16/tinder-algorithm/) by [SwipeHelper](https://www.swipehelper.com/))

Algorithms like Tinder’s promote—inadvertently or not—segmented dating between people artificially determined to be “equals” in the online attractiveness hierarchy. Your place in the hierarchy also determines how soon your profile pops up in front of users, which is why when you sign on to a dating app (and when you first sign-up), the most attractive people appear up front. 

These apps need a clever way to rank-order the cue of profiles shown to you. But Elo scoring is a one-size-fits-all solution originally designed for competitive chess play and often used in sports. Tinder uses it as a proxy for a user’s universal ranking of desirability, but Elo scoring doesn’t account for the laws of attraction or the importance of demographics. Someone from a niche group—say, a hipster—is likely more desirable to others in their own group than to a group of, for example, Evangelical Christians. But under this umbrella system, all users (who aren’t necessarily hipsters) have an equal say in this particular hipster’s Elo score. 

As such, this system dramatically favors the people who would be considered the most conventionally attractive, putting people with less traditional good looks—or people who belong to a niche group that’s often identified with a specific outward style—at a disadvantage. 

In the real world, this is just about the exact opposite of how attraction actually works: people whose attractiveness is objectively debatable are usually extremely attractive to their respective demographic while being extremely unattractive to another. As Christian Rudder wrote in his book _Dataclysm: Who We Are (When We Think No One's Looking)_, [“you must have haters to be hot.”](https://www.amazon.com/Dataclysm-When-Think-Ones-Looking/dp/B00M284HDO) 

How would the current system of Elo Scoring perform in this scenario of polarization? Pretty poorly.

To validate the efficacy of Tinder’s matching algorithms, I did a bit of research and found out that it’s not just me who thinks their scoring method is less than accurate—according to [this experiment (Jacque’s answer)](https://www.quora.com/Why-don-t-I-get-matches-with-above-average-white-girls-on-Tinder-I-m-an-attractive-mixed-Asian-man) and [this experiment](https://medium.com/@worstonlinedater/tinder-experiments-ii-guys-unless-you-are-really-hot-you-are-probably-better-off-not-wasting-your-2ddf370a6e9a), Elo scoring only benefits people who are blessed with mainstream good looks... but surprisingly, _not by much._ To any logical person, **a [2.63% match rate](https://qph.fs.quoracdn.net/main-qimg-0868312679388aa39d11062bc8cdf2cd) is a pretty shitty return on any investment of time** (irrespective of the claims of racism made in the experiments above).


# Despite the downsides, dating apps have their uses

Because dating apps have so much information about my activity, they surely know my “type” better than I do. But since I refuse to use these apps to meet people—the apps’ purported purpose—I can at least use them to gain insight into my unconscious dating preferences (in other words, the things I don’t realize I’m attracted to).

How many times have you asked a friend about their type and received some mundane response like, “I just like beautiful women.” _Don’t we all?_ 

In reality, beauty is subjective and a lot of what attracts us to someone probably lives in our subconscious. An in-depth analysis should theoretically shed light on the reason why some girls drive me wild while others just make me feel meh.

(It’s probably a better use of my time than just mindlessly swiping, anyway.)

_Curious about what I uncovered? Hop over to Part 2 of my “Why You Swipe” series to read about my Tinder experiment... and to find out what I learned about myself in the process _⚗️


<!-- Docs to Markdown version 1.0β17 -->

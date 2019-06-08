# Why You Swipe Right (PART 2)

_Looking for Part 1 of “Why You Swipe”? Get caught up here!_



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document0.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document0.png "image_tooltip")



# Analyzing my swipes

Generally speaking, it’s easier to pursue things if we know what we desire beforehand. The insight obtained from this analysis should allow me to be more selective before an interaction, thus devoting more time to the women I’m likely to be interested in and less to the ones that I’m not. 

As a bonus, this could also benefit me in real life (since it’s still the [most popular way couples meet](https://mic.com/articles/112062/the-way-most-people-meet-their-significant-others-is-not-what-you-think#.lUvkV8NvP)). With a clear idea of my type in mind, a cold approach—like walking up to someone in a bar—wouldn’t feel so much like a shot in the dark.


## Some notes on the data



*   I collected data exclusively from Tinder. [It’s the most popular dating app](https://www.digitaltrends.com/social-media/tinder-most-popular-dating-app/), and gives a decent representation of the single population.
*   I evaluated two months’ worth of swipes: May 2017 (right swipes only) and May 2018 (left and right swipes). I was swiping in ethnically diverse (or so I thought) Manhattan during both months, using the same distance and age range filters.
*   Over those two months, I swiped about 1,000 times and collected bios, photos, and the dates and times of each swipe.
*   For the purposes of streamlining this analysis, I only evaluated facial photos.



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document1.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document1.png "image_tooltip")


_Clusters of 1,000 Tinder faces._


## The questions 



*   What similarities exist among my likes and dislikes?
*   Am I following the herd and chasing traditional good looks or am I interested in a more unique look?
*   Have my tastes evolved year over year?
*   Am I being racist, too?
*   Like Hugh Hefner, do I prefer a certain hair color?


# The insights

If my insights seem trivial or obvious, then take it as an evidence-backed affirmation of your prior theory; if they appear novel and insightful, all the better—you've learned something new!


## What did the faces have in common?

The very first thing I did was look for facial similarities among the photos I collected to see how they grouped together, and there was a pattern—three distinct clusters, in fact. This is in line with the [theory on race and bone structure](https://blog.world-mysteries.com/science/how-many-major-races-are-there-in-the-world/) that groups humankind into three major races: Asians, Africans, and Caucasians. 

Each cluster had a hodgepodge of different ethnicities. The Caucasian cluster featured Latin, [Indian](https://www.quora.com/Are-Indians-technically-Caucasians), and (of course) European faces. Although these results weren’t exactly surprising, the clusters validated my theory—and several other theories I’ve come across— which is that people really do have a “type,” whether or not they realize it.

 

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document2.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document2.png "image_tooltip")


_The X & Y axes are units of distance, i.e. points closest together are the most similar._

In my dataset, the Caucasian cluster was by far the largest, followed by Asians, and then Africans. Interestingly, Asians are much more distant from the Caucasian cluster than the African cluster, which indicates strong dissimilarity. The cluster in the middle (magenta) is made up mostly of Africans, but there were a few Caucasians and Asians mixed in there as well.


## A strong pattern between right and left swipes

The classifier fitted to my right and left swipes showed very strong predictive power (for those that are nerds, ROC AUC 95%)—in other words, there was a clear distinction between the two groups. Having gone into a dataset without the promise of insightful information, this was great news! The classifier shows there are common attributes among my right swipes that distinguish them from my left swipes. 

Now, to bring these attributes to light...


## Hang on, am I a racist?!

Most of my right swipes fell inside one major cluster. At first blush, it seemed as if I solely liked Caucasians. Could it be that I, too, buy into the vicious cycle of racial discrimination?



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document3.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document3.png "image_tooltip")


_*May ‘18 only._

This is in line with the aforementioned racial preferencing present in online dating, but it’s important to note that Caucasians make up a large majority of the app users that I swiped on—meaning I had more chances to swipe right or left on Caucasians than I did on Asians or Africans. The sheer size of that cluster dwarfs everything else. This is the dangerous aspect of machine learning and A.I. models: algorithmic fairness.

Here are the racial proportions* of the profiles I saw during May 2018:


        

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline drawings not supported directly from Docs. You may want to copy the inline drawing to a standalone drawing and export by reference. See <a href="https://github.com/evbacher/gd2md-html/wiki/Google-Drawings-by-reference">Google Drawings by reference</a> for details. The img URL below is a placeholder. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)



*   Black = 50, 7%
*   Asian = 120, 15%
*   Caucasian = 540, 78%
*   Total swipes: 750

                    _      *Rounded approximations_


Because there are more data points in one single group by count, the classifier will determine that a relationship exists there (in this case: if a face has typical Caucasian features then it’s a right swipe, and anything that deviates from those features is, by default, a left swipe). 

What’s more, we can only swipe on what we’re shown, and I was only shown 50 African women during that month. That number seems pretty low for downtown Manhattan—that’s only seven percent of the total number of swipes!

**So, who's actually responsible for the racial discrimination: the users or the apps? **We’ll get there.


## Assuming I’m not racist, what exactly am I looking for?

Despite the large number of women in the Caucasian cluster that I swiped right on, there were also plenty in that cluster I rejected—the majority, actually—so there had to be something there beyond simple preference. 

To dig a little deeper on this, I held race fixed, focusing only on Caucasians. 

I brought in a more [homogenous dataset](https://arxiv.org/pdf/1801.06345.pdf): 5,500 Asian and Caucasian male and female faces, each given an attractiveness rating from 1-5 by 20 different people (seemingly crowdsourced in China). 

Despite the different demographic of the people doing the scoring, their ratings seemed reasonable. Using the model derived from my Tinder swipes, I contrasted their top rankings with my own.



<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document4.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document4.png "image_tooltip")


_Their top 25 out of 750 (ranked left to right, top to bottom)._



<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document5.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document5.png "image_tooltip")


_My top 25 (using the model trained on my preferences from my swipes)._

Notice that their top five are nowhere to be seen in my top 25—or even my top 100, for that matter. Their first-ranked face is my 135th, and Jessica Alba (their fourth-ranked) sits at number 181 on my list! I only noticed two photos that overlapped at all, one of which is Anne Hathaway.

After eliminating outliers in terms of race or general attractiveness—and assuming that none of the photos had been retouched—clear patterns began to emerge in my top 25: specifically long, oval/ narrow faces and well-defined bone structure (e.g. prominent nose bridges and strong brow bones, à la Julia Roberts or Anne Hathaway). 

On the other hand, it seemed I was far less attracted to women with round, soft, or young-looking features—a baby face, à la Scarlett Johansson or Anna Kournikova.

You’ll see here the significant scoring difference between the first set of photos and the second.



<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline drawings not supported directly from Docs. You may want to copy the inline drawing to a standalone drawing and export by reference. See <a href="https://github.com/evbacher/gd2md-html/wiki/Google-Drawings-by-reference">Google Drawings by reference</a> for details. The img URL below is a placeholder. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)                           

<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline drawings not supported directly from Docs. You may want to copy the inline drawing to a standalone drawing and export by reference. See <a href="https://github.com/evbacher/gd2md-html/wiki/Google-Drawings-by-reference">Google Drawings by reference</a> for details. The img URL below is a placeholder. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)



<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline drawings not supported directly from Docs. You may want to copy the inline drawing to a standalone drawing and export by reference. See <a href="https://github.com/evbacher/gd2md-html/wiki/Google-Drawings-by-reference">Google Drawings by reference</a> for details. The img URL below is a placeholder. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)



<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline drawings not supported directly from Docs. You may want to copy the inline drawing to a standalone drawing and export by reference. See <a href="https://github.com/evbacher/gd2md-html/wiki/Google-Drawings-by-reference">Google Drawings by reference</a> for details. The img URL below is a placeholder. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)                        

<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline drawings not supported directly from Docs. You may want to copy the inline drawing to a standalone drawing and export by reference. See <a href="https://github.com/evbacher/gd2md-html/wiki/Google-Drawings-by-reference">Google Drawings by reference</a> for details. The img URL below is a placeholder. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)


## My track record, validated

The model actually aligns with my dating history, too. (Yes, I scored pictures of women I’ve dated. Yes, I know how that sounds. Blame it on my scientific mind! For what it’s worth, they all scored high.)

But more interesting than the high scores of my old flames was the fact that a persona began to emerge that was linked to their facial patterns.

[People with chiseled features](https://www.independent.co.uk/news/science/what-your-cheekbones-say-about-you-study-shows-brains-make-snap-judgments-on-whether-to-trust-a-face-9652367.html) (like the women my preference-emulator rated higher in attractiveness) tend to be viewed as more independent and dominant by the subconscious brain, while those with [softer, more classically “feminine” features](https://www.dailymail.co.uk/sciencetech/article-2345991/Women-feminine-features-cheeks-small-jaws-ideal-target-men-looking-affair.html) (those who scored lower in my model) are seen as more approachable and—interestingly—attractive to men looking for a short-term fling. 

In this way, at least, my tastes seem to diverge a bit from mainstream ideals of female beauty—across diverse cultures, [in every corner of the globe](http://digitalcommons.usu.edu/cgi/viewcontent.cgi?article=1601&context=fchd_facpub), baby-faced women are consistently rated the most attractive. 


    _“The big eyes, the long lashes, the arched brows, the plump lips, the small chins, the round face, the cute little nose—if I wasn’t describing a baby, I’d be describing a supermodel,” says Caroline Keating, an expert in nonverbal communication at Colgate University, New York. _(From “[The Benefits of Having a Baby Face](http://www.bbc.com/future/story/20160913-the-benefits-of-having-a-babyface)” by Zaria Gorvett, [BBC.com](https://www.bbc.com/))

As further validation of this global trend, notice how the Top 25 grid in the Chinese dataset above begins with five women who could be described as baby-faced. Although I’m not 100% sure why my [lizard brain](https://www.psychologytoday.com/ca/blog/where-addiction-meets-your-brain/201404/your-lizard-brain) seems to have ditched the baby-face bandwagon, having a more solid idea of the features I tend to find attractive is a win in my books. 


## Have my likes changed at all from the previous year?

The short answer is: not really. 

The analysis didn’t show much of a difference, but it will make for an interesting exercise later with more data to play with, focusing on how a person’s state of mind changes given the season or the year.


## Are my tastes in women more mainstream or more unique?

Just to be sure my preferences skew more unique than mainstream, I used the ratings from the Chinese dataset to train a model, then used it to score all of my Tinder swipes. 

How would the rating committee have rated my swipes?



<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document6.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document6.png "image_tooltip")




<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document7.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document7.png "image_tooltip")


There’s a significant difference but there’s also a lot of overlap. Average scores from the committee are approximately 3.0 on my left swipes and 3.5 on my right, respectively. The upshift indicates that my right swipes are more attractive from a mainstream—or, at least, from the rating committee’s—perspective. 

So overall, most people would say my right swipes are more attractive than my left swipes. 


## An interesting aside: the correlation between body and face

As mentioned earlier, both men and women are guilty of misrepresenting themselves online—exaggerating or downplaying things like height and weight. But it turns out there might be a way to determine if a person is kittenfishing before you actually meet them in person...

One of the most interesting discoveries I made while running my simulations was that the correlation between body and face is strong enough for an AI to use a photo of a person’s face to predict the proportions of their body. 

I tended to swipe right on women with a slim build regardless of whether or not the photo included their body, but it was surprising to learn that the model was able to predict this by simply inspecting the small facial mask. _I_ _can’t even do that! _



<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document8.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document8.png "image_tooltip")


[“5 Marketing Trends To Watch Closely in 2019”](https://www.growthmanifesto.com/5-marketing-trends-to-watch-closely-in-2019/) by Ange Jones, [The Growth Manifesto](https://www.growthmanifesto.com/)

It turns out, this subject has already been researched: [Face to BMI, Height, Weight](https://hal.inria.fr/hal-01799574/document).

To explore this further, I used the same method as above (the rating committee’s ranking of facial attractiveness on a scale of 1-5) and applied it to my Tinder swipes. There definitely seems to be a correlation between the faces ranked most attractive and their body types. Perhaps there are biological cues about the body that show in the face.



<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline drawings not supported directly from Docs. You may want to copy the inline drawing to a standalone drawing and export by reference. See <a href="https://github.com/evbacher/gd2md-html/wiki/Google-Drawings-by-reference">Google Drawings by reference</a> for details. The img URL below is a placeholder. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)

_Top and bottom-rated faces* from my swipes (held race fixed—only Caucasians)._

_*Photos cropped in keeping with [Tinder’s Terms of Service](https://www.gotinder.com/terms/us-2018-05-09)_

It’s pretty amazing what you can glean from just a face. Maybe a dating app could somehow roll this technology out as a picture verification tool without pissing off a lot of people...? I.e. if a user uploads a photo, it has to agree with the facts stated on a user’s bio, such as age, height, etc. 

Ultimately, though, I can’t see this being a foolproof solution to kittenfishing. 


## How much of an impact do makeup and lighting have?

The short answer: a lot. 

Using the AI that learned my preferences from my Tinder swipes, watch how my preference scores change across this random selection of photos of Scarlett Johansson.



<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Untitled-document9.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Untitled-document9.png "image_tooltip")


Though she’s universally considered an attractive person, for the most part, I’m not particularly attracted to her. 

Remember how the data we looked at earlier showed that I’m not a big fan of the “baby face” look? That’s why ScarJo’s first three looks were ranked so low in comparison to her last look, which is in sharp contrast to her youthful appearance in the first photo. Even AI algorithms can be fooled by makeup! Then again, so can I. 

Image is so powerful, yet so superficial: these facades can be created and replicated in minutes.

(It’s worth noting that makeup might not be the only factor impacting looks here—ScarJo’s age likely varies across these photos and her facial features along with it—but I noticed this pattern across quite a few people. ScarJo was simply a good person to use an example.)


## Why am I ruling out pose? 

To check whether or not facial pose was relevant, I scored all my Tinder swipes with the AI algorithm tuned to my preferences. It showed no difference between the poses among the top-ranked deciles and the bottom-ranked deciles so, for my purposes, I ruled it out. I’m not entirely sure this is true, though—more rigor across a bigger sample size would be needed to make this claim universal.

_Head to Part 3 of “Why You Swipe” for a deep dive into the hows and whys of racial bias in online dating, and the steps app companies can—and should—take to help prevent it _
<!-- Docs to Markdown version 1.0β17 -->

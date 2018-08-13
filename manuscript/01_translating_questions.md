# Translating Questions to Data Science Questions


As we discussed in the first lesson, the approach to data analysis that we prefer is ["problem forward, not solution backward"](https://simplystatistics.org/2013/05/29/what-statistics-should-do-about-big-data-problem-forward-not-solution-backward/). The main point of this approach is to start with the question that you want to ask before you look at the data or the analysis. 

In some cases the question that you want to answer will be a question driven by your curiousity. For example, you may be interested in a question about your fitness. You could collect data using a Fitbit and the MyFitnessPal app. Or you may have a question about what kind of songs you like best and collect data from your Spotify profile. You might also be interested in where the potholes are most common in your city. You could collect information from your city's open data website. 

Another really common situation is that _someone else_ is coming up with the question. When you are working as a data scientist this might be the marketing team, and executive, or an engineer who has a question that they would like to answer with the data. Part of your job as a data scientist is to translate general questions into data science questions. 

The first step in translating a general question into a data science question is to make it as concrete as possible. For example here are some generic questions you might be interested in: 

1. When I run more do I lose weight? 
2. Are customers more likely to click on ads with puppies?
3. Do I need to take an umbrella with me when I leave the house today?

These questions are _interesting_ but they aren't very _specific_. This is how most good data science projects start. To make a question more concrete you need to think about the data you would use to answer the question. This could either be data that you have or data that you think you could find. 

For each of these questions you need to ask some specific questions:

* What or who am I trying to understand with data? 
* What measurements do I have on those people or objects that help me answer the question?
* How do the data I have limit the type of question I can answer?
* What is the type of data science question we are trying to answer?

__When I run more do I lose weight?__

* _What or who am I trying to understand with data?_ I'm trying to understand something about only myself, not about others. 
* _What measurements do I have on those people or objects that help me answer the question?_  I have data on how many steps I take with Fitbit and measure my weight with a scale.
* _How do the data I have limit the type of question I can answer?_ I only have data on me. I only have measurements on my weight every day and I need to summarize my Fitbit data to understand my runs, but won't have information on whether I ran up and down hills or any information on my diet. 
* _What is the type of data science question we are trying to answer?_ In this case we are looking for a relationship between two variables that we measured for only the data we have so it is an exploratory analysis. 

___Are customers more likely to click on ads with puppies?__

* _What or who am I trying to understand with data?_ I'm trying to understand something about customers. I would need to figure out which customers. Customers trying to buy motorbikes might be different than customers trying to buy pet food. We'd have to ask further questions to figure out which customers we are talking about.
* _What measurements do I have on those people or objects that help me answer the question?_  Suppose we have all the data from a set of customers who visited a website for buying dog food for a single day. Some of the customers saw a puppy ad and some didn't. We also have data on how much dog food they bought. 
* _How do the data I have limit the type of question I can answer?_ I only have data on a single website and only on a single day. So I might not be able to say things about other websites or other days. 
* _What is the type of data science question we are trying to answer?_ In this case we are looking for a relationship between two variables and trying say something about all the customers for a website. So this is an inferential analysis. 


__Do I need to take an umbrella with me when I leave the house today?__

* _What or who am I trying to understand with data?_ I'm trying to predict the weather in my hometown on a particular day so I know whether to take an umbrella.  
* _What measurements do I have on those people or objects that help me answer the question?_  I could take predictions from different weather services, look out the window and see if it is cloudy, or go out and feel if it is humid outside. To build my prediction I could collect these measurements for a year and also record whether I needed an umbrella that day.   
* _How do the data I have limit the type of question I can answer?_ I only have data on my hometown, I've only collected data from a few weather prediction services, and the data are only collected over one year. So it might be hard to say things for other people, other places, or other times.  
* _What is the type of data science question we are trying to answer?_ In this case we are looking to use historical data to predict something about a single day. So this is a prediction problem. 


## A real example


Let's practice translating questions to data science questions through an example. We briefly mentioned this example in the course [Getting Data](https://leanpub.com/universities/courses/jhu/getting-data). The analysis is based on data scientist David Robinson's [blog](http://varianceexplained.org/r/trump-tweets/). 

A Twitter user came up with a hypothesis that when Donald Trump was tweeting, hyperbolic tweets came from an Android phone (which he suggested were coming from Donald Trump) and non-hyperbolic tweets came from an iPhone (which he suggested came from Donald Trump's staff). 

This twitter had noticed that "When Trump wishes the Olympic team good luck, he’s tweeting from his iPhone. When he’s insulting a rival, he’s usually tweeting from an Android." Robinson started with this question and translated it into a data science question he could answer with data he could collect from Twitter. 

was curious about if there are differences in the tone of the tweets.

![Analysis of Donald Trump's tweets](images/01_translating_questions/01_dataanalysis_translating_questions-6.png)

__What or who am I trying to understand with data?__

In this case we are trying to answer a question about who is tweeting from the account _RealDonaldTrump_ on Twitter. Specifically, we are interested in the differences between Tweets coming from iPhones versus those coming from Android phones. 

__What measurements do I have on those people or objects that help me answer the question?__

Since we care about the differences between iPhones and Android phones we need to know which kind of phone each Tweet came from. But this information is available for each Tweet. 

We could collect this information by looking at the _RealDonaldTrump_ twitter profile or we could use the Twitter API to extract this data for each tweet. Robinson collects data on the type of phone for all the tweets from the account using the API. 

We also need to figure out how to define "hyperbolic" which was the hypothesis in the original question. It is hard to label tweets as hyperbolic or non-hyperbolic. 


* How do the data I have limit the type of question I can answer?
* What is the type of data science question we are trying to answer?


The question is how to examine this quantitatively. We want to go from the general question of "Are the Android and iPhone tweets clearly different (tweeted by different people)?" to a more quantifiable question "Are the Android tweets angrier and more negative?" Note that the first question is broad. Different in what terms? However, the second question specifically mentions whether Android tweets are "angrier" or "more negative." As we have learned by now, text data can be analyzed and quantified. Using sentiment analysis techniques we can measure the level of "anger" or "negativity" in a piece of text.

![Translating questions to data science questions](images/01_translating_questions/01_dataanalysis_translating_questions-7.png)


Using some exploratory analysis, David Robison first found that the most common words the come from the Android and iPhone platforms are different. He uses a measure to find the likelihood that a word is tweeted from an Android or an iPhone phone. So the words "badly" or "crazy" are likely to be sent from Android and the hashtags #makeamericagreatagain and #trump2016 are likely from iPhone. 

![Likelihood of words tweeted from Android or iPhone phones](images/01_translating_questions/01_dataanalysis_translating_questions-8.png)

Using sentiment analysis he found a difference in sentiment between the Android and iPhone tweets. He uses the NRC Word-Emotion Association lexicon, available from the `tidytext` package, which associates words with 10 sentiments: positive, negative, anger, anticipation, disgust, fear, joy, sadness, surprise, and trust. The interesting thing is that the "Trump’s Android account uses about 40-80% more words related to disgust, sadness, fear, anger, and other “negative” sentiments than the iPhone account does."

![Sentiment analysis of Trump's tweets](images/01_translating_questions/01_dataanalysis_translating_questions-9.png)

Now that you know the type of your question, here's is how we can figure out what types of data science analysis is best to approach the problem. Most type 1 problems can be solved using descriptive analysis. Most type 2 problems can be solved using exploratory analysis or inferential analysis. And finally, most type 3 problems can be solved using predictive analysis.

![Different types of questions and different types of data science analysis](images/01_translating_questions/01_dataanalysis_translating_questions-10.png)

So for your next project as a data scientist, first try to write down your question in a short sentence, then figure out what type of question it is, and decide what types of data science analysis is the best method for your question.


### Slides and Video

![Translating Questions to Data Science Questions](UPDATE)

* [Slides](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/edit?usp=sharing)

{quiz, id: quiz_01_translating_questions}

### Translating questions quiz

? We learned about how to phrase data science questions. What type of question is the following: What are the most popular Netflix TV shows?

a) None of the answers
B) What is the summary of what happened?
c) What happens to something as a result of something else?
d) How can we predict something?


? Does having siblings make people more social?

a) None of the answers
b) What is the summary of what happened?
C) What happens to something as a result of something else?
d) How can we predict something?


? Will Los Angeles Lakers basketball team will be the next NBA champion?

a) None of the answers
b) What is the summary of what happened?
c) What happens to something as a result of something else?
D) How can we predict something?


? Does drinking too much coffee really cause heart problems?

a) None of the answers
b) What is the summary of what happened?
C) What happens to something as a result of something else?
d) How can we predict something?


{/quiz}

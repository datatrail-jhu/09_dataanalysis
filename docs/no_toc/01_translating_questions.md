# Translating Questions to Data Science Questions

As we discussed in the first lesson, the approach to data analysis that we prefer is ["problem forward, not solution backward"](https://simplystatistics.org/2013/05/29/what-statistics-should-do-about-big-data-problem-forward-not-solution-backward/). The main point of this approach is to start with the question that you want to ask before you look at the data or the analysis.

In some cases the question that you want to answer will be a question driven by your curiosity. For example, you may be interested in a question about your fitness. You could collect data using a Fitbit and the MyFitnessPal app. Or you may have a question about what kind of songs you like best and collect data from your Spotify profile. You might also be interested in where the potholes are most common in your city. You could collect information from your city's open data website.

Another really common situation is that _someone else_ is coming up with the question. When you are working as a data scientist this might be the marketing team, and executive, or an engineer who has a question that they would like to answer with the data. You might be asked to categorize photos on a website like Airbnb. They might bring you the question, the data or both. Part of your job as a data scientist is to translate general questions into data science questions.

The first step in translating a general question into a data science question is to make it as concrete as possible. For example here are some generic questions you might be interested in:

1. When I run more do I lose weight?
2. Are customers more likely to click on ads with puppies?
3. Do I need to take an umbrella with me when I leave the house today?

These questions are _interesting_ but they aren't very _specific_. This is how most good data science projects start. To make a question more concrete you need to think about the data you would use to answer the question. This could either be data that you have or data that you think you could find.

For each of these questions you need to ask these questions:

* What or who am I trying to understand with data?
* What measurements do I have on those people or objects that help me answer the question?
* How do the data I have limit the type of question I can answer?
* What is the type of data science question we are trying to answer?


The first question is focused on figuring out who or what you are trying to study. In the world of statistics this is sometimes called the "population" you are trying to study. When you ask a question it is best to be as specific as possible about what you are trying to study. A good way to be specific is to imagine the individual people or objects you are going to measure data on. Realistically, what is the group that you have or will collect data to measure?

The second question focuses on figuring out which variables are measured or will be measured in the data that you have. We have discussed previously about all the different potential data types you might have, including standard quantitative or qualitative data, text, images, or videos can be data. When answering this question it helps to be specific. For example, unstructured text from a social media post may not be helpful, but words and labels for the words in that post may be the data that you are looking for.

The third question is critical for being careful in a data analysis. When you use the problem forward approach, you might start with a general question. But it might not be possible to answer that question with data we have. For example, it may be difficult to study directly the way that cigarette smoke affects children since most children don't smoke. You might have to change your question to studying the way that second-hand smoking affects children or the way that parents smoking habits affect children. A key part of translating a general question into a data science question is identifying these limitations.

The fourth question is focused on figuring out what type of analysis you are doing. We introduced the flowchart for defining the question type in an earlier lesson. The key questions to ask are how the data are summarized, what are the goals you are trying to achieve, and what does success for your analysis look like? One of the [most common errors](http://science.sciencemag.org/content/347/6228/1314) that people make in doing a data analysis is to answer the wrong type of data analytic question.

Let's try this approach out on a couple of made up examples and a real example to help you understand how to translate general questions into data science questions.

__When I run more do I lose weight?__

* _What or who am I trying to understand with data?_ I'm trying to understand something about only myself, not about others.
* _What measurements do I have on those people or objects that help me answer the question?_  I have data on how many steps I take with Fitbit and measure my weight with a scale.
* _How do the data I have limit the type of question I can answer?_ I only have data on me. I only have measurements on my weight every day and I need to summarize my Fitbit data to understand my runs, but won't have information on whether I ran up and down hills or any information on my diet.
* _What is the type of data science question we are trying to answer?_ In this case we are looking for a relationship between two variables that we measured for only the data we have so it is an exploratory analysis.


![When I run more do I lose weight?](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/export/png?id=18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo&pageid=g3fa6327ef6_0_234)

__Are customers more likely to click on ads with puppies?__


* _What or who am I trying to understand with data?_ I'm trying to understand something about customers. I would need to figure out which customers. Customers trying to buy motorbikes might be different than customers going to Pets.com. We'd have to ask further questions to figure out which customers we are talking about.
* _What measurements do I have on those people or objects that help me answer the question?_  Suppose we have all the data from a set of customers who visited a website for buying dog food for a single day. Some of the customers saw a puppy ad and some didn't. We also have data on how much dog food they bought.
* _How do the data I have limit the type of question I can answer?_ I only have data on a single website and only on a single day. So I might not be able to say things about other websites or other days.
* _What is the type of data science question we are trying to answer?_ In this case we are looking for a relationship between two variables and trying say something about all the customers for a website. So this is an inferential analysis.


![Are customers more likely to click on ads with puppies?](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/export/png?id=18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo&pageid=g3fa6327ef6_0_365)

__Do I need to take an umbrella with me when I leave the house today?__

* _What or who am I trying to understand with data?_ I'm trying to predict the weather in my hometown on a particular day so I know whether to take an umbrella.  
* _What measurements do I have on those people or objects that help me answer the question?_  I could take predictions from different weather services, look out the window and see if it is cloudy, or go out and feel if it is humid outside. To build my prediction I could collect these measurements for a year and also record whether I needed an umbrella that day.
* _How do the data I have limit the type of question I can answer?_ I only have data on my hometown, I've only collected data from a few weather prediction services, and the data are only collected over one year. So it might be hard to say things for other people, other places, or other times.  
* _What is the type of data science question we are trying to answer?_ In this case we are looking to use historical data to predict something about a single day. So this is a prediction problem.



![Do I need to take an umbrella with me when I leave the house today?](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/export/png?id=18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo&pageid=g3fa6327ef6_0_388)

### A real example

Let's practice translating questions to data science questions through an example. We briefly mentioned this example in the course [Getting Data](https://leanpub.com/universities/courses/jhu/getting-data). The analysis is based on data scientist David Robinson's [blog](http://varianceexplained.org/r/trump-tweets/).


![Trump Tweets blog post](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/export/png?id=18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo&pageid=g3e01f3a315_0_1)

A Twitter user came up with a hypothesis that when Donald Trump was tweeting, hyperbolic tweets came from an Android phone (which he suggested were coming from Donald Trump) and non-hyperbolic tweets came from an iPhone (which he suggested came from Donald Trump's staff).

This twitter had noticed that "When Trump wishes the Olympic team good luck, he’s tweeting from his iPhone. When he’s insulting a rival, he’s usually tweeting from an Android." Robinson started with this question and translated it into a data science question he could answer with data he could collect from Twitter.

__What or who am I trying to understand with data?__

In this case we are trying to answer a question about who is tweeting from the account _RealDonaldTrump_ on Twitter. Specifically, we are interested in the differences between Tweets coming from iPhones versus those coming from Android phones.

__What measurements do I have on those people or objects that help me answer the question?__

Since we care about the differences between iPhones and Android phones we need to know which kind of phone each Tweet came from. But this information is available for each Tweet.

We could collect this information by looking at the _@RealDonaldTrump_ twitter profile or we could use the Twitter API to extract this data for each tweet. Robinson collects data on the type of phone for all the tweets from the account using the API.

We also need to figure out how to define "hyperbolic" which was the hypothesis in the original question. It is hard to directly label tweets as hyperbolic or non-hyperbolic. But we can collect the text of the tweets themselves. If we alter the question a little to "Are the Android tweets angrier and more negative than the iPhone tweets?" we can use the text of the tweets themselves to answer this question. There are lists of words that are already labeled as "angry" so we can look for those words among the tweets from Android phones and iPhones.

We can also collect the time that each tweet occurred, since this will help us separate tweets coming from one type of phone or another.


__How do the data I have limit the type of question I can answer?__

One critical piece of information we are missing from this data is _who_ sent the tweet out. We can hypothesize that one person has an Android and a different person has an iPhone. But we can't say for sure which person is tweeting from which type of phone. So we have changed the question from a question about _who_ is tweeting to _what is the difference_ between tweets from the two types of phones.

__What is the type of data science question we are trying to answer?__


Using some exploratory analysis, David Robinson first found that the most common words the come from the Android and iPhone platforms are different. He uses a measure to find the likelihood that a word is tweeted from an Android or an iPhone phone. So the words "badly" or "crazy" are likely to be sent from Android and the hashtags #makeamericagreatagain and #trump2016 are likely from iPhone.


![Exploratory Analysis](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/export/png?id=18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo&pageid=g3e007f2873_0_1)

Next he can label each word with one of 10 sentiments:  positive, negative, anger, anticipation, disgust, fear, joy, sadness, surprise, and trust using lists that have been put together in the `tidytext` package. Robinson found that Tweets that come from the Android account use about 40-80% more words related to disgust, sadness, fear, anger, and other “negative” sentiments than the iPhone account does.


![Sentiment Analysis](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/export/png?id=18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo&pageid=g3e01f3a315_0_7)

This exploratory analysis suggested that there is a difference between tweets coming from an Android phone versus an iPhone. If you read the post, you will see that further analysis suggests that there are very different types of tweets happening at very different times. This doesn't show that one person or another is sending those tweets which would require other sources of data we don't have.


### Slides and Video

![Translating Questions to Data Science Questions](https://www.youtube.com/watch?v=uMD1XW9eQPs)

* [Slides](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/edit?usp=sharing)

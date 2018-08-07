# Translating Questions to Data Science Questions

We have learned what data scientists call different types of data science problems. But you may be wondering to what categories the question in your mind belongs. Is it a prediction or inference? Does it only require a simple descriptive analysis? To better understand this, let's start with the main three types of questions you may face. This list is inspired by Benjamin Bloom's famous [Taxonomy](https://en.wikipedia.org/wiki/Bloom%27s_taxonomy). Most questions we face every day are typically one of the following:


### Type 1: What is the summary of what happened?

This kind of question is a more comprehensive version of the previous question. In this type of question, the analysis is at aggregate levels. So instead of looking at one specific case, we look at what happens on average. For instance, a question like what is the most used mode of transportation for *most Americans*? Or what is the average rainfall in Seattle? Or what is the divorce rate in New York City? In these types of questions, we don't usually go beyond using simple statistics such as mean, median, minimum, or maximum or need to look at the distribution of a variable simply.


### Type 2: What happens to something as a result of something else?

In this kind of data science questions, we are often interested in the relationship between two or more variables. In simple terms, we want to answer what happens to Y if X changes. Let' look at a question of this sort. A lot of us wonder if going to college is beneficial in our life. We want to know whether going to college increases our salary or not. This could be a data science question. We need to perform an analysis that shows the effect of X (going to college) on Y (earnings) for most people to be able to tell anything meaningful. Another question can be what is the effect of sitting under the sun and cancer. In general, these kinds of questions requires more complexed analysis.

### Type 3: How can we predict something?

Note that in this kind of questions, we are not looking at a specific X to explain Y. We are mainly interested to know how something happens? For instance, how can we predict prices movements of a specific stock? What are the factors that determine a successful student? What predicts a product to receive positive reviews on Amazon? Again we are not looking at a specific factor or factors that explain Y but instead we are interested in knowing how Y happens?

Try thinking about the questions that you face every day and see if you can put them under any of the categories mentioned above. For instance, should you take the bus or walk to destination today? What will the weather look like this weekend? Should you wear dress formally or casually in your next interview? What's the best time to go to the coffee shop in your neighborhood to avoid a long line? You can also think about a longer-term question such as: Is data science a good field to invest your time in? Is moving to Washington DC the right career decision?

Let's practice translating questions to data science questions through an example. We briefly mentioned this example in the course Getting Data. The analysis is based on data scientist David Robinson's [blog](http://varianceexplained.org/r/trump-tweets/). Going through Donald Trump's tweets he realized a peculiar behavior in how Trump tweets. He noticed that "When Trump wishes the Olympic team good luck, he’s tweeting from his iPhone. When he’s insulting a rival, he’s usually tweeting from an Android." David Robinson was curious about if there are differences in the tone of the tweets.

![Analysis of Donald Trump's tweets](images/01_translating_questions/01_dataanalysis_translating_questions-6.png)


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

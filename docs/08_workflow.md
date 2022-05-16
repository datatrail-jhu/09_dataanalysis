# Data Analysis Workflow

In previous lessons, we went over the basics of data analysis. We went from how to ask data science questions and finding data to inferential and predictive data analysis. Since as a data scientist you may end up working on different projects at the same time. To prevent forgetting important steps that you learned in this course it's crucial that you follow all the steps. In this lesson, we're going to talk about a workflow for your data analysis projects.

### What are the steps?

To begin with, these are the main steps you have to follow in your data analysis question:

* Define the question
* Define the ideal dataset
* Determine what data you can access and obtain the data
* Clean the data
* Exploratory data analysis
* Statistical analysis
* Interpret results
* Challenge results
* Synthesize/write up results
* Create reproducible code



### An example

Let's start with a hypothetical example and go through each step in our example. Imagine we're interested to automatically detect emails that are SPAM from the ones that are not. So our general question is "can I automatically detect emails that are SPAM from the ones that are not?"


![Detecting SPAMs](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_16)

#### Define the question

However, this question is not written entirely in data science terms. We have to make sure our question can be measured and quantified with data. We have to make our question more concrete. So a better way to ask the question is this: "Can I use quantitative characteristics of the emails to classify them as SPAM?"

#### Define the ideal dataset

The second step in data analysis is to imagine an ideal dataset for our analysis. You don't have to be practical in your thinking. Just imagine what type of data would be best for your analysis. In an ideal world, you would want a dataset of all emails received through major email providers such as Gmail or Yahoo and whether the email was flagged as SPAM or not.

#### Determine what data you can access and obtain the data

You may be lucky to have such dataset somehow. However, it's unlikely that due to privacy reasons you can access other people's emails. Even if you can, the data will be gazillions of bytes and it won't be practical to analyze such a large dataset. So our best bet is to see if there's any dataset online.

One of the best datasets for analyzing SPAM data is the *spam* data in the `kernlab` package in R. The spam dataset is collected at Hewlett-Packard Labs and classifies 4601 e-mails as spam or non-spam. Additionally, there are 57 variables indicating the frequency of certain words and characters in the e-mail. Let's install the package first.


![spam dataset from the `kernlab` package](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_0)


```r
library(kernlab)
data(spam)
```

#### Clean the data

In most cases, your data doesn't come clean. In fact, it may come from different sources with different standards. Therefore, you should first tidy up the data. Lucky for us, the spam dataset in the `kernlab` package is already tidy, so we can skip this step. However, if we're doing predictive analysis, it's better to have a training and a test set. The code below creates the train and test sets.


![Cleaning the data](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_58)

#### Exploratory data analysis

We learned about the following steps for doing exploratory data analysis:

* Look at summaries of the data
* Check for missing data
* Create exploratory plots
* Perform exploratory analyses


First, we look at column names.


![Looking at column names](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_76)

And the first few rows of our training data.


![Looking at the first few rows of the data](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_83)

Let's see how many of the emails are flagged as SPAM and how many are not.


![906 emails in the training set are flagged as SPAM](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_92)

We can also plot the average length of capital letters in the text of the email for SPAM and non-SPAM emails. The variable in the data that measures the average length of capital letters in the text is called `capitalAve`.


![Plotting the average length of capital letters](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_5)

To better distinguish the difference in `capitalAve` for SPAM and non-SPAM emails, we can use the log scale. We can convert the variable to log. Be careful that if you have zeros in your data (which you may have), by transforming the variable into log you will run into trouble (log of zero is infinity). To avoid this, we can add 1 to the variable.


![Plotting the log of average length of capital letters](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_109)

We can see if there is any relationship between some of the predictors such as `free`, `original`, and `receive`.


![Relationship between some of the predictors](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_117)

#### Statistical analysis

The type of analysis that we need is predictive analysis since, at the end of the day, our algorithm should predict whether an email is SPAM or not. Note that:

* Exact methods depend on the question of interest
* Transformations/processing should be accounted for when necessary
* Measures of uncertainty should be reported

We can use the following code to perform our prediction analysis using the training set. Note that the function `cv.glm()` calculates the estimated K-fold cross-validation prediction error for generalized linear models (glms). The code chunk below finds the variable (among all of our variables) that has the lowest prediction error in finding the probability of being SPAM.



![Prediction analysis](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_136)

We can then use the test set to get a measure of uncertainty (or accuracy) of the model. For each observation in the test set, we predict whether the observation is a SPAM or not. Note that we already know whether the observation is a SPAM or not but we want to test our model's ability. Once we find the predicted values, we can use them along with the actual values (whether the observations are indeed SPAM or not) and create an error matrix. The error matrix shows how many of the SPAM emails we thought were SPAM and how many we didn't. The same for non-SPAM emails. The line `table(predictedSpam,testSpam$type)` shows that there are 61 non-SPAM emails that our model predicted as SPAM and 458 SPAM emails that our model predicted as non-SPAM. The rest of the observations were predicted correctly. The last line of the code calculates the prediction error.


![Prediction error](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/export/png?id=1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA&pageid=g3df3d0cd9c_0_146)

#### Interpret results

Once you have done the preliminary analysis, you should interpret the results so others know what conclusions can be made from your analysis. You should be careful not to confuse the following words:

* Describes (only if you observe a phenomenon without doing any inferential or predictive analysis)
* Correlates with/associated with (only if you look at the association between variables without any causal interpretation)
* Leads to/causes (only if you have performed causal inference analysis)
* Predicts (only if you have performed predictive analysis)

Make sure you give enough explanation to your analysis.

* Give an explanation as to what your numbers are telling (and not telling)
* If you do regression analysis, interpret the coefficients
* Interpret measures of uncertainty

In our example, here are some of the interpretations we can give.

* The fraction of characters that are dollar signs can be used to predict if an email is Spam
* Anything with more than 6.6% dollar signs is classified as Spam
* More dollar signs always means more Spam under our prediction
* Our test set error rate was 22.4%


#### Challenge results

A good analyst is a good critique of his/her work since the analyst knows the data and the methods best. Your self-critique and self-challenge should start from the start: the question. Challenge

* Question: Start from your question. Is your question asked properly?
* Data source: Challenge your data and make sure your data is good enough for your question.
* Processing: Check whether the data cleaning and processing are done properly.
* Analysis: Challenge your methods; is it the best method you could use given your question and your data.
* Conclusions: Check whether your conclusions are drawn properly.
* Measures of uncertainty: There are various ways to measure the uncertainty of your model. Check whether you have used the best measure.
* Choices of terms to include in models: You always include specific variables in your model. Make sure you have included the ones that make sense regardless of whether they make your results look good.
* Finally, think of potential alternative analyses: Recognize that there might be alternative approaches to your question such as the use of data, method, etc. Recognizing them will show some honesty on your part and will pave the way for future analyses.


#### Synthesize/write-up results

Once you're done with the analysis and checking the credibility of your analysis, start writing up your results. These are some of the important steps:

* Lead with the question
* Summarize the analyses into the story
* Don't include every analysis, include it
  * If it is needed for the story
  * If it is needed to address a challenge
* Order analyses according to the story, rather than chronologically
* Include "pretty" figures that contribute to the story



In our example we should:

* Lead with the question
  * Can you use quantitative characteristics of the emails to classify them as SPAM/HAM?
* Describe the approach
  * The source of our SPAM data and how we created training/test sets
  * Explored relationships
  * Choose logistic model on the training set by cross-validation
  * Applied to test, 78% test set accuracy
* Interpret results
  * Number of dollar signs seems reasonable, e.g. "Make CASH from home \\$ \\$ \\$ \\$!"
* Challenge results
  * 78% isn't that great
  * I could use more variables
  * Why logistic regression?


#### Create reproducible code

As you learned in previous lessons, make sure you document every step. This is important for two reasons: for you in future and for others to redo your analysis. Using Rmarkdown is a good way to accompany your analysis with good documentation. So it's important that:

* Files are properly named.
* There is some explanation of the data.
* Each code file has some description as to what it does.
* Wherever you should add comments for important code chunks within your code files.


### Slides and Video

![Data Analysis Workflow](https://www.youtube.com/watch?v=ezYjHJTMOy8)

* [Slides](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/edit?usp=sharing)

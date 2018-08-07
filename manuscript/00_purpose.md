# The Purpose of Data Science

Data science is the process of making senses of data. A data science problem can be broken down into the following four-step process:

1. The first step is to ask yourself what are the data science questions you define that can be answered with data

2. The second step is to find, get, and clean your data.

3. The third step is to apply data analysis tools to your cleaned-up data to answer the data science questions you asked in the first step.

4. The final step is to present and communicate your analysis results to your audience. We have already discussed what the second step is (getting and cleaning data).


In this course, we will discuss the first (asking questions) and the third steps (data analysis) and in a future course, we will go over how to communicate your analysis. The following categories are what data scientists usually refer to when it comes to different types of data science problems.

* Descriptive: The goal of descriptive data science questions is to describe large volumes data.

* Exploratory: The goal of exploratory data science questions is to find unknown relationships with many variables measured.

* Inferential: The goal of inferential data science questions is to use a relatively small sample of data to say something about a bigger population.

* Predictive: The goal of predictive data science question is to use data from some objects to predict values of other objects. We usually perform predictive analysis by splitting the same population into a training and test data set.


Let's begin with some example data science projects, how they are asked, and how they are approached. In each example, we explain the problem as a data science question and guess what sort of analysis is fit for approaching the problem.

#### Example 1: Credit card fraud detection

Credit card companies track all your transactions. By collecting this large amount of data, credit card companies are able to predict potential fraudulent transactions before consumers notice anything. This is the purpose of fraud detection. So the big question here is detecting fraud in credit cards transactions. But this is not quite in data science terms. A better way to ask this would be "what are the factors that signal a transaction as a fraud?" Also since we are eventually interested in predicting whether a transaction is fraud or genuine, this will be a predictive analysis.

- **Problem:** Credit card fraud detection
- **Data science question:** What are the factors that signal a transaction as a fraud?
- **Type of analysis:** Predictive analysis


#### Example 2: Analysis of Youtube comments

As we learned, text can be regarded as data. With the new text analytics tools out there, it is relatively easy to do some sentiment analysis (computationally identifying and categorizing opinions expressed in a piece of text as positive, negative, or neutral). The question can be written in a data science problem as "Are most Youtube comments positive or negative?" and this is an example of descriptive analysis since once we have the data, the analysis boils down to comparing the number of positive comments to negative comments.

- **Problem:** Analysis of Youtube comments
- **Data science question:** Are most Youtube comments positive or negative?
- **Type of analysis:** Descriptive analysis


#### Example 3: Sesame Street and kids brain development

Let's say we are interested to know whether watching Sesame Street helps brain development in kids. Again, a better way to ask this as a data science question is "Does watching Sesame Street make kids smarter?" since "brain development" is very broad. We can measure being smart through educational outcomes or simply measuring kids' IQ. To approach this problem we need to have a sample of the American kids and measure their IQ and if and how much they watched Sesame Street. However, note that there are other factors that can affect a child's IQ so we have to be careful in drawing any conclusion. But in general, because we can't survey everybody in the U.S. and can only use a sample of the population, this is an inferential analysis.

- **Problem:** Sesame Street and kids brain development
- **Data science question:** Does watching Sesame Street make kids smarter?
- **Type of analysis:** Inferential analysis


The first step in all of these examples is to know what kind of question you're dealing with. The analysis used in each of the categories mentioned above can be different. In the coming course, we will learn how to ask a question and translate it to a data science question.



### Slides and Video

![The Purpose of Data Science](UPDATE)

* [Slides](https://docs.google.com/presentation/d/1VIyLthjLSXikF1euqPNA71cnT_C1kSZhDbIPe8uzg9I/edit?usp=sharing)

{quiz, id: quiz_00_purpose}

### Purpose of data science quiz

? A data science problem solving process can be broken down to the following in what order?

A) Question, data, analysis, present
b) data, analysis, question, present
c) question, present, analysis, data
d) question, analysis, data, present


? What is predictive analysis?

a) Finding the effect of one factor on another
b) Finding the effect of a group of factors on another
C) Using data to predict an event
d) Using data to predict the effect of one variable on another


{/quiz}

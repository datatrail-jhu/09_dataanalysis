# The purpose of data science

Data science is the process of making senses of data. A simple understanding of data science can be broken down into Four steps: the first step is to ask yourself what are the data science questions you define that can be answered with data; The second step is to get and clean your data; The third step is to apply data analysis tools to your cleaned-up data to answer the data science questions you asked in the first step. The final step is to present and communicate your analysis results to the public. We have already discussed what the second step (getting and cleaning data). In this course, we will discuss the first (asking questions) and the third steps (data analysis) and in a future course, we will go over how to communicate your analysis.

First things first, what is a data science question? This may be a strong claim, but we can phrase most real-world questions with data science questions. Most questions we face every day are typically one of the following:

### Who, what, where, or when did something happen?

This is the simplest form of data science questions. In this type of analysis we are mainly looking for a single event, for instance, the loading time for a specific website on Chrome browser. This kind of analysis does not really need complicated analysis, but rather depends on collecting the data point of interest. Another question of this type is what is the population of Ghana. This only requires the data scientist to collect one piece of information. Simple comparison questions are also of this kind: how does case X compares to case Y?

### What is the summary of what happened?

This kind of question is a more comprehensive version of the previous question. In this type of question, the analysis is at aggregate levels. So instead of looking at one specific case, we look at what happens on average. For instance, a question like what is the most used mode of transportation for *most Americans*? Or what is the average rainfall in Seattle? Or what is the divorce rate in New York City? In these types of questions, we don't usually go beyond using simple statistics such as mean, median, minimum, or maximum or need to simply look at the distribution of a variable.

### What happens to something as a result of something else?

In this kind of data science questions, we are often interested in the relationship between two or more variables. In simple terms, we want to answer what happens to Y if X changes. Let' look at a question of this sort. A lot of us wonder if going to college is beneficial in our life. We want to know whether going to college increases our salary or not. This could be a data science question. We need to perform an analysis that shows the effect of X (going to college) on Y (earnings) for most people to be able to tell anything meaningful. Another question can be what is the effect of sitting under the sun and cancer. In general, these kinds of questions requires more complexed analysis.

### How can we predict something?

Note that in this kind of questions, we are not looking at a specific X to explain Y. We are mainly interested to know how something happens? For instance, how can we predict prices movements of a specific stock? What are the factors that determine a successful student? What predicts a product to receive positive reviews on Amazon? Again we are not looking at a specific factor or factors that explain Y but rather we are interested in knowing how Y happens?

Try thinking about the questions that you face every day and see if you can put them under any of the categories mentioned above. For instance, should you take the bus or walk to destination today? What will the weather look like this weekend? Should you wear dress formally or casually in your next interview? What's the best time to go to the coffee shop in your neighborhood to avoid a long line? You can also think about longer-term question such as: Is data science a good field to invest your time in? Is moving to Washington DC the right career decision?


Now that we have learned the basic types of questions let's see what they are usually referred to in data science lingo. The following categories are what data scientists usually refer to when it comes to different types of data science problems. Note the similarities between them and the categories mentioned above.

* Descriptive: The goal of descriptive data science questions is to describe large volumes data.

* Exploratory: The goal of exploratory data science questions is to find unknown relationships with many variables measured.

* Inferential: The goal of inferential data science questions is to use a relatively small sample of data to say something about a bigger population.

* Predictive: The goal of predictive data science question is to use data from some objects to predict values of other objects. We usually perform predictive analysis by splitting the same population into a training and test data set.

The first step to approach a data science problem is to know what kind of question you're dealing with. The analysis used in each of the categories mentioned above can be different. So for your next project as a data scientist, first try to write down your question as short as possible and see which category the question more likely belongs to.



### Slides and Video

* [Slides](https://docs.google.com/presentation/d/1VIyLthjLSXikF1euqPNA71cnT_C1kSZhDbIPe8uzg9I/edit#slide=id.p)

{quiz, id: quiz_00_purpose}

### Purpose of data science quiz

? We learned about how to phrase data science questions. What type of question is the following: What are the most popular Netflix TV shows?

a) Who, what, where, or when did something happen?
B) What is the summary of what happened?
c) What happens to something as a result of something else?
d) How can we predict something?


? Does having siblings make people more social?

a) Who, what, where, or when did something happen?
b) What is the summary of what happened?
C) What happens to something as a result of something else?
d) How can we predict something?


? Will Los Angeles Lakers basketball team will be the next NBA champion?

a) Who, what, where, or when did something happen?
b) What is the summary of what happened?
c) What happens to something as a result of something else?
D) How can we predict something?


? Does drinking too much coffee really cause heart problems?

a) Who, what, where, or when did something happen?
b) What is the summary of what happened?
C) What happens to something as a result of something else?
d) How can we predict something?


? What is predictive analysis?
a) Finding the effect of one factor on another
b) Finding the effect of a group of factors on another
C) Using data to predict an event
d) Using data to predict the effect of one variable on another


{/quiz}

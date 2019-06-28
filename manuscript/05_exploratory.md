# Exploratory Analysis 

The goal of an exploratory analysis is to examine, or **explore** the data and find **relationships** that weren't previously known. Exploratory analyses explore how different measures might be related to each other but do not confirm that relationship as causal, i.e., one variable causing another. You've probably heard the phrase "Correlation does not imply causation," and exploratory analyses lie at the root of this saying. Just because you observe a relationship between two variables during exploratory analysis, it does not mean that one necessarily causes the other.

Because of this, exploratory analyses, while useful for discovering new connections, should not be the final say in answering a question! It can allow you to formulate hypotheses and drive the design of future studies and data collection, but exploratory analysis alone should never be used as the final say on why or how data might be related to each other. In short, exploratory analysis helps us ask better questions, but it does not answer questions. More specifically, we explore data in order to:

* Understand data properties such as nonlinear relationships, the existence of missing values, the existence of outliers, etc.
* Find patterns in data such as associations, group differences, confounders, etc.
* Suggest modeling strategies such as linear vs. nonlinear models, transformation
* "Debug" analyses
* Communicate results


### General principles of exploratory analysis

We can summarize the general principles of exploratory analysis as follows:

* Look for missing values
* Look for outlier values
* Use plots to explore relationships
* Use tables to explore relationships
* If necessary, transform variables


These principles may be more clear in an example. We will use a dataset from [Kaggle.com](www.kaggle.com) that contains 120 years of Olympics history on athletes and results. If you don't have an account on Kaggle, create one and go to the link https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results and under "Data Sources" download the `athlete_events.csv` to your computer. 

{format: png}
![Dataset on 120 years of Olympics history on athletes and results](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_17)

Upload the data on RStudio.cloud and import the csv file using the commands you have learned. Unfortunately, you cannot download the csv file directly from the web address since downloading datasets on Kaggle requires logging in.

{format: png}
![Importing data using `read_csv()`](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_24)

As we learned before, we can use the package `skimr` to take a look at the data. 

{format: png}
![Using the skimr package to have a summary of the data](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_30)

We see that the dataset contains 15 variables and 271,116 observations. Some of the variables are of factor type and others are of integer or numeric type. The dataset includes variables on athletes such as name, sex, the sport played, whether they received a medal, age, and height. We first need to understand the data properties. So let's start with missing values.

{format: png}
![We have different types of variables in our data](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_35)


First, the results of the `skim()` function indicate that some of our variables have lots of missing values. For instance, the variable `Medal` has 231,333 missing values. Generally, this is a place for concern since most statistical analyses ignore observations with missing values. However, it is obvious that the missing values for the variable `Medal` are mainly because the athlete didn't receive any medals. So this kind of missing value should not be a problem. However, we have missing values in the variables `Height` and `Age`. Since we are going to use these variables in our analysis in this lesson, observations with missing values for these two variables will be dropped from our analysis. Remember that `NA` is the most common character for missing values, but sometimes they are coded as spaces, 999, -1 or “missing”. Check for missing values in a variety of ways.

{format: png}
![There are some missing values in the data](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_44)

Second, we can see that there are some outliers in some of the numerical variables. For example, look at the summary of the variable `Age`. Although the average age among all the athletes is around 25, there is an individual who is 97 years old (fun fact: use the command `subset(df, df$Age == 97)` to check out the information about this athlete. You will see that the name of the athlete is John Quincy Adams Ward and he competed in the sport(!) Art Competitions Mixed Sculpturing in 1928. This artist is known for his George Washington statue in front of Federal Hall in Wall Street in New York City.) It is always good to know about the existence of outliers in your sample. Outliers can significantly skew the results of your analysis. You can find outliers by looking at the distribution of your variable too.

{format: png}
![There is an outlier in the Age variable](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_49)

Histograms, in general, are one of the best ways to look at a variable and find abnormalities. You can see that the age of most individuals in the sample are between 18-35.

{format: png}
![Histogram of the variable Age](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_63)


Now, rather than just summarizing the data points within a single variable, we can look at how two or more variables might be related to each other. For instance, we like to know if there is an association between age of athletes and their gender. One of the ways to do this is to look at a boxplot of age grouped by gender, i.e., the distribution of age separated for male and female athletes. Boxplot shows the distribution of the variable age for the gender groups. You can see that the average age is slightly higher for men than for women. 

{format: png}
![Boxplot of the variable Age for male and female individuals](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_40)

If we are interested in looking at the distribution of male and female athletes over time, we can use frequency tables. Let us first create a frequency table of the share of women in each Olympic event. Tables are good for looking at factor or character variables.


{format: png}
![Wrangling data to find the share of female athletes over time](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_5)


Now, if we want to plot this trend, we can use `geom_line()` from `ggplot`. It's interesting that the share of women among all athletes that was once at a very low level in the early 1900s has gone up to almost 50% in modern times.

{format: png}
![Plot of the share of female athletes over time](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_10)

In general, the most important plots in exploratory data analysis are:

* Scatterplots (`geom_point()`)
* Histograms (`geom_histogram()`)
* Density plots (`geom_density()`)
* Boxplots (`geom_boxplot()`)
* Barplots (`geom_bar()`)

To end our lesson on exploratory analysis, let's consider a question: are taller athletes more likely to win a medal? To answer this question we can use different methods. We can look at the distribution of height for those who received a medal and those who didn't. We can use boxplots or barplots. The choice is yours but because boxplots are more informative, we will use them. We can first create a variable that indicates whether the athlete has any medal (the variable `Medal` indicates the type of medals). Note that the variable `has.medal` is a transformation of the variable `Medal`.

{format: png}
![Creating a variable that shows whether the athlete has a medal or not](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_84)

And now, we use the following code to create the boxplot.

{format: png}
![Boxplot for the relationship between height and having won a medal](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/export/png?id=1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0&pageid=g3a82126a9f_0_91)

What is obvious is that those who have a medal are taller. Can we say that being tall increases the probability of winning a medal in the Olympics? The answer to this question is that we don't know. There are some possible scenarios. For instance, it could be true that being tall increase the chances of winning medals. But it could also be that there are more medals awarded in sports such as volleyball or basketball that require taller athletes. In these sports, every member of the winning team gets a medal (even if country counts only one medal is counted for the country). As a result, we may end up having so many tall athletes with a medal in each Olympics. It could also be that there are other confounding factors involved that explain why an athlete wins a medal. We will learn about confounding variables in future lessons. For now, it's important to know, as we said in the beginning of this lesson, that association or correlation does not mean causation.

### Slides and Video

![Exploratory Analysis](https://www.youtube.com/watch?v=lqHlLC652zw)

* [Slides](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/edit?usp=sharing)

{quiz, id: quiz_05_exploratory}

### Exploratory Analysis quiz

{choose-answers:4} 
?1 What one of the following is not among the reasons we use exploratory analysis?

C) Using prediction analysis
C) Performing regression analysis to be able to infer results about the general population
o) Understand data properties such as nonlinear relationships, the existence of missing values, the existence of outliers, etc.
o) Find patterns in data such as associations, group differences, confounders, etc.
o) Suggest modeling strategies such as linear vs. nonlinear models, transformation
o) "Debug" analyses
o) Communicate results

{choose-answers:4} 
?2 Which one of the following is not among the general principles of exploratory analysis?

C) Outliers should not be checked since they contain important information
C) Nonlinear regressions are better than linear regressions
C) Always use summary tables in exploratory analysis instead of graphs
o) Look for missing values
o) Use plots to explore relationships
o) Use tables to explore relationships
o) If necessary, transform variables

{choose-answers:4, points:2} 
?3 In the dataset used in this lesson, what is the number of missing values in the variable `Age`?

C) 9474
m) 60171
o) 261642
o) 0
o) 271116

{choose-answers:4, points:2} 
?3 In the [dataset](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results) used in this lesson, what is the number of missing values in the variable `Height`?

C) 60171
m) 9474
o) 261642
o) 0
o) 271116

{choose-answers:4} 
?4 In the [dataset](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results) used in this lesson, what is the weight of the heaviest athlete?

C) 214
o) 25
o) 60
o) 70
o) 70.7
o) 79

{choose-answers:4} 
?4 In the [dataset](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results) used in this lesson, what is the height of the tallest athlete?

C) 226
m) 214
o) 127
o) 60
o) 100
o) 70.7
o) 79

{choose-answers:4} 
?5 Which one of the following `ggplot2` functions can be used to produce a scatter plot?

C) `geom_point()`
m) `geom_bar()`
o) `geom_histogram()`
o) `geom_density()`
o) `geom_boxplot()`

{choose-answers:4} 
?5 Which one of the following `ggplot2` functions can be used to produce a bar chart?

C) `geom_bar()`
m) `geom_point()`
o) `geom_histogram()`
o) `geom_density()`
o) `geom_boxplot()`

{points:3}
?6 Go to the [Cloud-based Data Science Space on RStudio Cloud](https://rstudio.cloud/spaces/20345/join?access_code=n4b8J1s0XmWctSy83%2BEXbGAwj7rKcuFMI7WJEJFD) and click on your copy of the 'swirl' project (If you haven't made a copy yet, do so now.) Then, type `swirl()` to get started. Tell Swirl your first name when it asks what to call you. Then, type the number that corresponds to the course `CBDS Data Analysis`. Type the number that corresponds to the lesson `L05 Exploratory Analysis Q01 Swirl`. Do this swirl module! Once complete, paste the code at the end of the lesson here.

! /.*(FdHp|vp1F|ZDic|jFbv|t8UC|USLe|1dZb|a66z|P4Jk|kzFD).*/i

{points:3}
?7 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L05 Exploratory Analysis Q02 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

! /.*(b3JA|Bx0b|JwPw|DlLI|Zq19|vn6g|DpIe|gMM5|mAiU|vRzJ).*/i

{points:3}
?8 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L05 Exploratory Analysis Q03 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

! /.*(2CZB|FauT|Bjpx|MnXb|CLcf|Ainc|dvav|Fvcl|6gNn|zchI).*/i

{points:3}
?9 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L05 Exploratory Analysis Q04 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

! /.*(S9C5|GkSz|LsiP|cm9Z|tsT1|xx8h|ud6J|dtF8|cpWo|UxWB).*/i

{/quiz}

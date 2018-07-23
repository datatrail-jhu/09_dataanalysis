# Exploratory analysis 

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


These principles may be more clear in an example. We will use a dataset from [Kaggle.com](www.kaggle.com) that contains 120 years of Olympic history on athletes and results. If you don't have an account on Kaggle, create one and go to the link https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results and under "Data Sources" download the `athlete_events.csv` to your computer. Upload the data on RStudio.cloud and import the csv file using the commands you have learned. Unfortunately, you cannot download the csv file directly from the web address since downloading datasets on Kaggle requires logging in.

```{r}
library(readr)
df <- read_csv("athlete_events.csv")
```

As we learned before, we can use the package `skimr` to take a look at the data. 

```{r}
library(skimr)
skim(df)

# Skim summary statistics
#  n obs: 271116 
# n variables: 15 

# Variable type: factor 
# variable missing complete      n n_unique                                     top_counts ordered
#     City       0   271116 271116       42 Lon: 22426, Ath: 15556, Syd: 13821, Atl: 13780   FALSE
#    Event       0   271116 271116      765     Foo: 5733, Ice: 4762, Hoc: 3958, Wat: 3358   FALSE
#    Games       0   271116 271116       51 200: 13821, 199: 13780, 201: 13688, 200: 13602   FALSE
#    Medal  231333    39783 271116        3 NA: 231333, Gol: 13372, Bro: 13295, Sil: 13116   FALSE
#     Name       0   271116 271116   134732             Rob: 58, Hei: 39, Jos: 38, Ioa: 36   FALSE
#      NOC       0   271116 271116      230 USA: 18853, FRA: 12758, GBR: 12256, ITA: 10715   FALSE
#   Season       0   271116 271116        2                 Sum: 222552, Win: 48564, NA: 0   FALSE
#      Sex       0   271116 271116        2                     M: 196594, F: 74522, NA: 0   FALSE
#    Sport       0   271116 271116       66 Ath: 38624, Gym: 26707, Swi: 23195, Sho: 11448   FALSE
#     Team       0   271116 271116     1184 Uni: 17847, Fra: 11988, Gre: 11404, Ita: 10260   FALSE

# Variable type: integer 
# variable missing complete      n     mean       sd   p0   p25 median   p75   p100     hist
#      Age    9474   261642 271116    25.56     6.39   10    21     24    28     97 ▂▇▁▁▁▁▁▁
#   Height   60171   210945 271116   175.34    10.52  127   168    175   183    226 ▁▁▃▇▇▂▁▁
#       ID       0   271116 271116 68248.95 39022.29    1 34643  68205 1e+05 135571 ▇▇▇▇▇▇▇▇
#     Year       0   271116 271116  1978.38    29.88 1896  1960   1988  2002   2016 ▁▂▂▂▃▅▇▇

# Variable type: numeric 
# variable missing complete      n mean    sd p0 p25 median p75 p100     hist
#   Weight   62875   208241 271116 70.7 14.35 25  60     70  79  214 ▁▇▅▁▁▁▁▁
```

We see that the dataset contains 15 variables and 271,116 observations. Some of the variables are of factor type and others are of integer or numeric type. The dataset includes variables on athletes such as name, sex, the sport played, whether they received a medal, age, and height. We first need to understand the data properties. So let's start with missing values.

First, the results of the `skim()` function indicate that some of our variables have lots of missing values. For instance, the variable `Medal` has 231,333 missing values. Generally, this is a place for concern since most statistical analyses ignore observations with missing values. However, it is obvious that the missing values for the variable `Medal` are mainly because the athlete didn't receive any medals. So this kind of missing value should not be a problem. However, we have missing values in the variables `Height` and `Age`. Since we are going to use these variables in our analysis in this lesson, observations with missing values for these two variables will be dropped from our analysis. Remember that `NA` is the most common character for missing values, but sometimes they are coded as spaces, 999, -1 or “missing”. Check for missing values in a variety of ways

Second, we can see that there are some outliers in some of the numerical variables. For example, look at the summary of the variable `Age`. Although the average age among all the athletes is around 25, there is an individual who is 97 years old (fun fact: use the command `subset(df, df$Age == 97)` to check out the information about this athlete. You will see that the name of the athlete is John Quincy Adams Ward and he competed in the sport(!) Art Competitions Mixed Sculpturing in 1928. This artist is known for his George Washington statue in front of Federal Hall in Wall Street in New York City.) It is always good to know about the existence of outliers in your sample. Outliers can significantly skew the results of your analysis. You can find outliers by looking at the distribution of your variable too.

```{r}
ggplot(df, aes(x=Age)) + 
  geom_histogram(color="black", fill="white")
```

Histograms, in general, are one of the best ways to look at a variable and find abnormalities. You can see that the age of most individuals in the sample are between 18-35.

![Histogram of the variable Age]()


Now, rather than just summarizing the data points within a single variable, we can look at how two or more variables might be related to each other. For instance, we like to know if there is an association between age of athletes and their gender. One of the ways to do this is to look at a boxplot of age grouped by gender, i.e., the distribution of age separated for male and female athletes.

```{r}
ggplot(df, aes(x=Sex, y=Age)) + 
  geom_boxplot()
```

Boxplot shows the distribution of the variable age for the gender groups. You can see that the average age is slightly higher for men than for women. 

![Boxplot of the variable Age for male and female individuals]()


If we are interested in looking at the distribution of male and female athletes over time, we can use frequency tables. Let us first create a frequency table of the share of women in each Olympic event. Tables are good for looking at factor or character variables.


```{r}
share <- df %>% 
  group_by(Year, Sex) %>% 
  summarise(n=n()) %>% 
  mutate(freq = n / sum(n)) %>% 
  filter(Sex=="F")
```

Now, if we want to plot this trend, we can use `geom_line()` from `ggplot`. It's interesting that the share of women among all athletes that was once at a very low level in the early 1900s has gone up to almost 50% in modern times.

```{r}
ggplot(share, aes(x=Year, y=freq)) +
  geom_line()+
  geom_point()+
  ylab("Share of women")
```

![Trend of the share of women athletes over time]()

In general, the most important plots in exploratory data analysis are:

* Scatterplot (`geom_point()`)
* Histogram (`geom_histogram()`)
* Density function (`geom_density()`)
* Boxplot (`geom_boxplot()`)
* Barplot (`geom_bar()`)

To end our lesson on exploratory analysis, let's consider a question: are taller athletes more likely to win a medal? To answer this question we can use different methods. We can look at the distribution of height for those who received a medal and those who didn't. We can use boxplots or barplots. The choice is yours but because boxplots are more informative, we will use them. We can first create a variable that indicates whether the athlete has any medal (the variable `Medal` indicates the type of medals). Note that the variable `has.medal` is a transformation of the variable `Medal`.

```{r}
df <- df %>% 
  mutate(has.medal=ifelse(!is.na(Medal), "Yes", "No"))
```
And now, we use the following code to create the boxplot.

```{r}
ggplot(df, aes(x=has.medal, y=Height)) + 
  geom_boxplot()
```

![Boxplot for the relationship between height and having won a medal]()

What is obvious is that those who have a medal are taller. Can we say that being tall increases the probability of winning a medal in the Olympic? The answer to this question is that we don't know. There are some possible scenarios. For instance, it could be true that being tall increase the chances of winning medals. But it could also be that there are more medals awarded in sports such as volleyball or basketball that require taller athletes. In these sports, every member of the winning team gets a medal (even if country counts only one medal is counted for the country). As a result, we may end up having so many tall athletes with a medal in each Olympic. It could also be that there are other confounding factors involved that explain why an athlete wins a medal. We will learn about confounding variables in future lessons. For now, it's important to know, as we said in the beginning of this lesson, that association or correlation does not mean causation.


### Slides and Video

* [Slides](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/edit?usp=sharing)

{quiz, id: quiz_05_dataanalysis_exploratory}

### Exploratory analysis quiz



{/quiz}
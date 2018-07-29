# Descriptive Analysis 

The goal of descriptive analysis is to **describe** or **summarize** a set of data. Whenever you get a new dataset to examine, this is the first analysis you will perform. In fact, if you never summarize the data, it's *not* a data analysis. 

![Descriptive Analysis summarizes the dataset](images/04_descriptive/04_datanalysis_descriptive-1.png)

If you think of a dataset as the animal in the elephant in the middle of this picture, you doing a descriptive analysis are the blind monks examining every part of the elephant. Just like the blind monks who are examining each and every part of the elephant to understand it completely, the **goal of a descriptive analysis is to understand the data you're working with completely**.

![examining a dataset](images/04_descriptive/04_datanalysis_descriptive-3.png)

Descriptive analysis will first and foremost generate simple summaries about the samples and their measurements to describe the data you're working with. There are a number of common descriptive statistics that we'll discuss in this lesson: measures of central tendency (eg: mean, median, mode) or measures of variability (eg: range, standard deviations or variance). 

This type of analysis is aimed at **summarizing your dataset** Unlike analysis approaches we'll discuss in coming lessons, descriptive analysis is *not* for generalizing the results of the analysis to a larger population *nor* trying to draw any conclusions. Description of data is separated from interpreting the data. Here, we're just summarizing what we're working with. 

Some examples of purely descriptive analysis can be seen in censuses. In a census, the government collects a series of measurements on *all* of the country's citizens. After collecting these data, they are summarized. From this descriptive analysis, we learn a lot about a country. You'll be able to learn the age distribution of the population. 

![2010 census Data broken down by age](images/04_descriptive/04_datanalysis_descriptive-6.png)

This can be further broken down (or **stratified**) by sex to describe the age distribution by sex. The goal of these analysis is  to describe the population. No inferences are made about what this means nor are predictions made about how the data might trend in the future. The point of this (and every!) descriptive analysis is to summarize the data collected. 

![2010 census Data broken down by age and sex](images/04_descriptive/04_datanalysis_descriptive-7.png)

In this lesson, we'll discuss the steps required to carry out a descriptive analysis. As this will be the first thing you do whenever you're working with a new dataset, it's important to work through the examples in this lesson step-by-step.

### How to Describe a Dataset

When provided a new tabular dataset, whether it's a CSV you've been sent by your boss or a table you've scraped from the Internet, the first thing you'll want to do is describe the dataset. This helps you understand how big the dataset is, what information is contained in the dataset, and how each variable in the dataset is distributed.

![Descriptive Analysis](images/04_descriptive/04_datanalysis_descriptive-5.png)

For this lesson, we're going to move *away* from the `iris` or `mtcars` dataset (since you probably already have a pretty good understanding of those datasets) and work with a dataset we haven't used too much in this Course Set: `msleep` (from the `ggplot2` package). This dataset includes information about mammals and their sleep habits. We'll load that package in and assign the dataset to the object `df`:

```r
## install and load package
install.packages("ggplot2")
library(ggplot2)

## assign to object `df`
df <- msleep
```

Generally, the first thing you'll want to know about your dataset is how many observations and how many variables you're working with. You'll want to understand the size of your dataset.

You can always look at the Environment tab in RStudio Cloud to see how many observations and variables there are in your dataset; however, once you have many objects, you'll have to scroll through or search this list to find the information you're looking for.

![Environment tab](images/04_descriptive/04_datanalysis_descriptive-11.png)

To avoid having to do that, the simplest approach to getting this information is the `dim()` function, which will give you the **dimensions** of your data frame. The output will display with the number of rows (observations) first, followed by the number of columns (variables). 

```
## determine the dimensions
 dim(df)
```

![`dim()` output](images/04_descriptive/04_datanalysis_descriptive-12.png)

#### Variables

There are additional ways to learn a bit more about the dataset using a different function. What if we wanted to know not only the dimensions of our dataset but wanted to learn a little bit more about the variables we're working with?

Well, we could use `dim()` and then use the `colnames()` function to determine what the variable names are in our dataset:

```
## determine variable names
colnames(df)
```

The output from colnames tells us that there are 11 variables in our dataset and lets us know what the variable names are for these data.

![`colnames()` output](images/04_descriptive/04_datanalysis_descriptive-13.png)

But, what if we didn't want to use two different functions for this *and* wanted a little bit more information, such as what *type* of information is stored in each of these variables (columns)? To get *that* information, we'd turn to the function `str()`, which provides us information about the structure of the dataset.

```r
## display structure
str(df)
```

![`str()` output](images/04_descriptive/04_datanalysis_descriptive-14.png)

The output here still tells us the size of `df` and the variable names, but we also learn what the class of each variable is and see a few of the values for each of the variables.

A very similar function to `str()` is the `glimpse()` function from the `dplyr` package. As you've been introduced to this function previously, we just wanted to remind you that `glimpse()` can also be used to understand the size and structure of your data frame

```r
## install and load package
install.packages("dplyr")
library(dplyr)

## get a glimpse of your data
glimpse(df)
```

![`glimpse()` output](images/04_descriptive/04_datanalysis_descriptive-15.png)

#### Missing Values

In any analysis after your descriptive analysis, missing data can cause a problem. Thus, it's best to get an understanding of missingness in your data right from the start. **Missingness** refers to observations that are not included for a variable. In R, `NA` is the preferred way to specify missing data, so if you're ever generating data, its best to include `NA` wherever you have a missing value. 

However, individuals who are less familiar with R code missingness in a number of different ways in their data: `-999`, `N/A`, `.`, ` `. As such, it's best to check to see how missingness is coded in your dataset. A reminder: sometimes different variables within a singele dataset will code missingness differently. This shouldn't happen, but it does, so always use caution when looking for missingness.

In this dataset, all missing values are coded as `NA`, and from the output of `str(df)` (or `glimpse(df)`), we see that at least a few variables have `NA` values. We'll want to quantify this missingness though to see which variables have missing data and how many observations within each variable have missing data. 

To do this, we can write a function that will calculate missingness within each of our variables. To do this we'll combine a few functions. In the code here `is.na()` returns a logical (TRUE/FALSE) depending upon whether or not the value is missing (TRUE if it is missing). `sum()` then calculates the number of TRUE values there are within an observation. We wrap this into a function and then use `sapply()` to calculate the number of missing values in each variable. The second bit of code does the exact same thing but divides those numbers by the total number of observations (using `nrow(df)`. For each variable, this returns the proportion of missingness:

```r
## calculate how many NAs there are in each variable
sapply(df, function(x) sum(is.na(x)))

## calculate the proportion of missingness 
## for each variable
sapply(df, function(x) sum(is.na(x)))/nrow(df)
```

![missingness in `msleep`](images/04_descriptive/04_datanalysis_descriptive-17.png)

Running this code for our dataframe, we see that many variables having missing values. Specifically, to interpret this output for the variable `brainwt`, we see that 27 observations have missing data. This corresponds to 32.5% of the observations in the dataset. 

It's also possible to visualize missingness so that we can see visually see how much missing data there is and determine whether or not the same samples have missing data across the dataset. You could write a function to do this yourself using `ggplot2`; however, [Nicholas Tierney](http://www.njtierney.com/about/) has already written one for you. The function `ggplot_missing()` is included in his `neato` package, which is available from his GitHub. 

Note: if you haven't installed `devtools` yet in your RStudio Cloud space, running the following code will take a few minutes.

```r
## install and load devtools
install.packages("devtools")
library(devtools)

## install neato package
devtools::install_github("njtierney/neato")
library(neato)

## visualize missingness
ggplot_missing(df)
```

![`ggplot_missing()` output](images/04_descriptive/04_datanalysis_descriptive-19.png)

Here, we see the variables listed along the bottom. Each row in the visualization is a different observation. Missing data are grey. Nonmissing values are in black. Focusing again on `brainwt`, we can see the 27 missing values visually. We can also see that `sleep_cycle` has the most missingness, while many variables have no missing data.

Getting an understanding of what values are missing in your dataset is critical before moving on to any other type of analysis.

#### Shape

Determining the shape of your variable is essential before any further analysis is done. Statistical methods used for inference (discussed in a later lesson) often require your data to be distributed in a certain manner before they can be applied to the data. Thus, being able to describe the shape of your variables is necessary during your descriptive analysis.

When talking about the shape of one's data, we're discussing how the values (observations) within the variable are distributed. Often, we first determine how spread out the numbers are from one another (do all the observations fall between 1 and 10? 1 and 1000? -1000 and 10?). This is known as the **range** of the values. The range is described by the minimum and maximum values taken by observations in the variable. 

After establishing the range, we determine the shape or **distribution** of the data. More explicitly, the distribution of the data explains *how* the data are spread out over this range. Are most of the values all in the center of this range? Or, are they spread out evenly across the range? There are a number of distributions used commonly in data analysis to describe the values within a variable. We'll cover just a few of them in this lesson, but keep in mind this is certainly *not* an exhaustive list.

##### Normal Distribution

The **Normal distribution** (also referred to as the **Gaussian** distribution) is a very common distribution and is often described as a bell-shaped curve. In this distribution, the values are symmetric around the central value with a high density of the values falling right around the central value. The left hand of the curve mirrors the right hand of the curve.

![Normal Distribution](images/04_descriptive/04_datanalysis_descriptive-21.png)

A variable can be described as normally distributed if:

* there is a strong tendency for data to take a central value - many of the observations are centered around the middle of the range
* deviations away from the central value are equally likely in both directions 
* the frequency of these deviations away form the central value occurs at the same rate on either side of the central value.

Taking a look at the `sleep_total` variable within our example dataset, we see that the data are somehat normal; however, they aren't entirely symmetric.

```r
ggplot(df, aes(sleep_total)) +
  geom_density()
```

![distribution of `msleep` `sleep_total`](images/04_descriptive/04_datanalysis_descriptive-22.png)

A variable that is distributed more normally can be seen in the `iris` dataset, when looking at the `Sepal.Width` variable.

```r
ggplot(iris, aes(Sepal.Width)) +
  geom_density()
```

![distribution of `iris` `Sepal.Width`](images/04_descriptive/04_datanalysis_descriptive-23.png)



##### Skewed Distribution

Alternatively, sometimes data follow a skewed distribution. In a skewed distribution, most of the values fall to one end of the range, leaving a tail off to the other side. When the tail is off to the left, the distribution is said to be **skewed left**. When off to the right, the distribution is said to be **skewed right**.

![Skewed Distributions](images/04_descriptive/04_datanalysis_descriptive-24.png)

To see an example from the `msleep` dataset, we'll look at the variable `sleep_rem`. Here we see that the data are skewed right, given the shift in values away from the right, leading to a long right tail. Here, most of the values are at the lower end of the range.

```r
ggplot(df, aes(sleep_rem)) +
  geom_density()
```

![`sleep_rem` is skewed right](images/04_descriptive/04_datanalysis_descriptive-25.png)

##### Uniform Distribution

Finally, in distributions we'll discuss today, sometimes values for a variable are equally likely to be found along any portion of the distribution. The curve for this distribution looks more like a rectangle, since the likelihood of an observation taking a value is constant across the range of possible values.

![Uniform Distribution](images/04_descriptive/04_datanalysis_descriptive-26.png)


#### Central Tendency

Once you know how large your dataset is, what variables you have information on, how much missing data you've got for each variable, and the shape of your data, you're ready to start understanding the *information within the values* of each variable. 

Some of the simplest and most informative measures you can calculate on a numeric variable are those of **central tendency**. The two most commonly used measures of central tendency are: mean and median. These measures provide information about the *typical* or *central* value in the variable.

##### mean

The mean (often referred to as the average) is equal to the sum of all the observations in the variable divided by the total number of observations in the variable. The mean takes all the values in your variable and calculates the **most common value**. 

So if you had the following vector: `a <- c(1, 2, 3, 4, 5, 6)`, the mean would be 3.5. 

![calculating the mean](images/04_descriptive/04_datanalysis_descriptive-28.png)

But what if we added another '3' into that vector, so that it were: `a <- c(1, 2, 3, 3, 4, 5, 6)`. Now, the mean would be 3.43. It would decrease the average for this set of numbers as you can see in the calculations here:

![decreased average](images/04_descriptive/04_datanalysis_descriptive-29.png)

To calculate the mean in R, the function is `mean()`. Here, we show how to calculate the mean for a variable in R. Note that when you have NAs in a variable, you'll need to let R know to remove the NAs (using `na.rm=TRUE`) before calculating your mean. Otherwise, it will return `NA`.

```r
## this will return NA
mean(df$sleep_cycle)

## have to tell R to ignore the NAs
mean(df$sleep_cycle, na.rm=TRUE)
```

![`mean(sleep_cycle)`](images/04_descriptive/04_datanalysis_descriptive-30.png)

##### median

The median is the middle observation for a variable after the observations in that variable have been arranged in order of magnitude (from smallest to largest). The median is the **middle value**.

Using the same vector as we first use to calculate median, we see that the middle value for this set of numbers is 3.5 as this is the value at the center of this set of numbers. This happens to be the same value as the mean was. 

However, that is not always the case. When we add that second 3 in the middle of the set of numbers, the median is now 3, as this is the value at the center of this set of numbers. 3 is the middle value.

![medians](images/04_descriptive/04_datanalysis_descriptive-32.png)

To calculate the median in R, use the function `median()`. Again, when there are NAs in the variable, you have to tell R explicitly to remove them before calculating the median.

```r
## calculate the median
median(df$sleep_cycle, na.rm=TRUE)  
```

![median `sleep_cycle`](images/04_descriptive/04_datanalysis_descriptive-33.png)

While not the exact same value, the mean and median for `sleep_cycle` are similar (0.44 and 0.33). However, this is not always the case. For data that are **skewed** or contain **outlier values** -- values that are very different from the rest of the values in the variable -- the  mean and the median will be very different from one another. In our example dataset, the mean and the median values for the variable `bodywt` are quite different from one another.

```r
## calculate mean and median
mean(df$bodywt)
median(df$bodywt)

## look at the histogram
ggplot(df, aes(bodywt)) +
  geom_histogram()
```

![mean vs median](images/04_descriptive/04_datanalysis_descriptive-34.png)

When we look at the histogram of the data, we see that most bodyweights are less than 200 lbs. Thus, the median, or value that would be in the middle if you lined all the weights up in order, is 1.6 kilograms. However, there are a few mammals that are a lot bigger than the rest of the animals. These mammals are **outliers in the dataset**. These outliers increase the mean. These larger animals drive the mean of the dataset to 166 kilograms. 

When you have outliers in the dataset, the median is typically the measure of central tendency you'll want to use, as it's reistant to the effects of outlier values. 

##### mode 

There is a third, less-frequently calculated measure of central tendency for continuous variables, known as the mode. This is the value that comes up most frequently in your dataset. For example, if your dataset `a` were comprised of the following numbers `a <- c(0, 10, 10, 3, 5, 10, 10)`, 10 would be the **mode**, as it occurs four times. It doesn't matter whether it's the largest value, the smallest value, or somewhere in between, the most frequently value in your dataset is the mode. There is no built-in function for calculating the mode in R for a numeric value, which should suggest that, for continuous variables, knowing the mode of a variable is often less crucial than knowing the mean and median (which is true)! However, you could write a function to calculate it. For the above vector `a`, `which.max(tabulate(a))` would return the mode: 10. (Note that this would not work if you had two values that were found in the dataset at the same frequency. A more eloquent approach would be required.)

![mode of a continuous variable](images/04_descriptive/04_datanalysis_descriptive-35.png)

However, for categorical variables, the level with the most observations would be the mode. This can be determined using the `table()` function, which breaks down the number of observations within the categorical variable

![`table()` output](images/04_descriptive/04_datanalysis_descriptive-36.png)


Further, the mode for a categorical variable can be visuzlized by generating a barplot:

```r
## plot categorical variable to visualize mode
ggplot(df, aes(order)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 90, 
                                   hjust = 1, 
                                   vjust = 0.5))
```

![`geom_bar` visually displays the mode](images/04_descriptive/04_datanalysis_descriptive-37.png)


#### Variability

In addition to measures of central tendency, measures of variability are key in describing the values within a variable. Two common and helpful measures of variability are: standard deviation and variance. Both of these are measures of 
how spread out the values in a variable are.

##### Variance

The variance tells you how spread out the values are. If all the values within your variable are exactly the same, that variable's variance will be zero. The larger your variance, the more spread out your values are. Take the following vector and calculate its variance in R using the `var()` function:

```r
## variance of a vector where all values are the same
a <- c(29, 29, 29, 29)
var(a)

## variance of a vector with one very different value
b <-  c(29, 29, 29, 29, 723678)
var(b)
```

![variance](images/04_descriptive/04_datanalysis_descriptive-39.png)

The only difference between the two vectors is that the second one has one value that is much larger than "29". The variance for this vector is thus much higher.


##### Standard Deviation

By definition, the standard deviation is the square root of the variance, thus if we were to calculate the standard deviation in R using the `sd()` function, we'd see that the `sd()` function is equal to the square root of the variance:

```r
## calculate standard deviation
sd(b)

## this is the same as the square root of the variance
sqrt(var(b))
```

![Standard Deviation](images/04_descriptive/04_datanalysis_descriptive-40.png)

For both measures of variance, the minimum value is 0. The larger the number, the more spread out the values in the valuable are.


### Summarizing Your Data

Often, you'll want to include tables in your reports summarizing your dataset. These will include the number of observations in your dataset and maybe the mean/median and standard deviation of a few variables. These could be organized into a table using what you learned in the data visualization course about generating tables. 

###skimr

Alternatively, there is a helpful package that will summarize all the variables within your dataset. The `skimr` package provides a tidy output with information about your dataset. 

To use `skimr`, you'll have to install and load the package before using the helpful function `skim()` to get a snapshot of your dataset.

```r
install.packages("skimr")
library(skimr)
skim(df)
```

![`skim()` output](images/04_descriptive/04_datanalysis_descriptive-41.png)

The output from skim separately summarizes categorical and continuous variables. For continuous variables you get information about the mean and median (`p50`) column. You know what the range of the variable is (`p0` is the minimum value, `p100` is the maximum value for continuous variables). You also get a measure of variability with the standard deviation (`sd`). It even quantifies the number of missing values (`missing`) and shows you the distribution of each variable (`hist`)! This function can be incredibly useful to get a quick snapshot of what's going on with your dataset.

### Summary

This lesson covered the necessary parts of carrying out a descriptive analysis. Generally, describing a dataset involves describing the numbers of observations and variables in your dataset, getting an understanding of missingness, and, understanding the shape, central tendency, and variability of each variable. Description must happen as the first step in any data analysis.

### Additional Resources

* [Visualizing Incomplete & Missing Data](https://flowingdata.com/2018/01/30/visualizing-incomplete-and-missing-data/?utm_content=buffer8adce&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer), by [Nathan Yau](http://flowingdata.com/about-nathan)
* [`neato` package](https://github.com/njtierney/neato), from [Nicholas Tierney](http://www.njtierney.com)
* [Using the `skimr` package](https://cran.r-project.org/web/packages/skimr/vignettes/Using_skimr.html), by [Elin Waring](https://elinwaring.org/)

### Slides and Video

![](UDPATE LINK)

* [Slides](https://docs.google.com/presentation/d/1sDojkPrY2T5_qwT2bLD-8DRGcUHie1N9I95e6U2Jimc/edit?usp=sharing)

{quiz, id: quiz_04_descriptive}

### Descriptive Analysis quiz

{choose-answers:4}
? Which of the following describes a descriptive analysis?

C) Make histograms of your sample data to calculate mean, median, and variance for each variable in your dataset
C) Generate a table summarizing the number of observations in your dataset as well as the central tendencies and variances of each variable
o) Draw conclusions from your sample data distribution and infer for the larger population
o) Use your sample data distribution to make predictions for the future
o) Fit regression models to your sample data and use your data to interpret coefficients in the model
o) Use your dataset to understand the mechanistic link between two variables
o) Use your dataset to run a randomized trial, resulting in causal understanding

{choose-answers: 4, points: 3}
? What is the shape of the distribution for the variable `mag` within the `quakes` dataset? (You will have to go around and work with the `quakes` dataset in R to answer this question. This dataset is available automatically in R.)

C) right-skewed
o) Normal
m) left-skewed
o) Uniform
o) Poisson
o) Bernoulli

{choose-answers: 4}
? For a continuous variable with a skewed distribution, which is the most appropriate measure of central tendency?

C) median
m) mean
o) mode
o) standard deviation
o) variance
o) range

{choose-answers: 4}
? To describe how spread out your the numbers in your variable are, what could you use?

C) standard deviation
C) variance
C) range
o) mode
o) median
o) mean
o) sum


{/quiz}
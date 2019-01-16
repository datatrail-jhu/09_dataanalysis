# Inferential Analysis 

Inferential Analysis is what analysts carry out *after* they've described and explored their data set. After understanding your dataset better, analysts often try to infer something from the data. This is done using **statistical tests**. While we'll only be discussing **linear regression** in this lesson, there are *many* different statistical tests, each of which (when appropriately applied) can be used for inferential data analysis. 

Let's break this all down a little bit. The goal of inferential analyses is to use a relatively **small sample** of data to **infer** or say something about the **population** at large. This is required because often we *want* to answer questions about a population. Let's take a dummy example here where we have a population of 14 shapes.


{format: png}
![The population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_5)

Here, in this graphic, the shapes represent individuals in the population and the colors of the shapes can be either pink or grey.

In this example we only have fourteen shapes in the population; however, in inferential data analysis, it's not usually possible to sample *everyone* in the population. Consider if this population were everyone in the United States or every college student in the world. As getting information from every individual would be infeasible, data are instead collected on a subset, or a **sample** of the individuals in the larger population. 

{format: png}
![A sample is collected from the population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_25)

In our example, we've been showing you how many pink and how many gray shapes are in the larger population. However, in real life, we don't *know* what the answer is in the larger population. That's why we collected the sample!

{format: png}
![We don't know what the truth is in the population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_50)

This is where **inference** comes into play. We analyze the data collected in our sample and then do our best to infer what the answer is in the larger population. In other words, inferential data analysis uses data from a sample to make its best guess as to what the answer would be in the population if we were able to measure every individual.

{format: png}
![Inference from the sample makes its best guess as to what the truth is in the population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_240)

### Uncertainty

Because we haven't directly measured the population but have only been able to take measurements on a sample of the data, when making our inference we can't be exactly sure that our inference about the population is exact. For example, in our sample one-third of the shapes are grey. We'd expect about one-third of the shapes in our population to be grey then too! Well, one-third of 14 (the number of shapes in our population) is 4.667. Does this mean four shapes are truly gray?

{format: png}
![Inference gives us a good guess as to what the truth is in the population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_77)

Or maybe five shapes in the population are grey? 

{format: png}
![Maybe the population really has five grey shapes in it...](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_269)

Given the sample we've taken, we can guess that 4-5 shapes in our population will be grey, but we aren't certain *exactly* what that number is. In statistics, this "best guess" is known as an **estimate**. This means that we estimate that 4.667 shapes will be gray. *But*, there is uncertainty in that number. Because we're taking our best guess at figuring out what that estimate should be, there's also a measure of uncertainty in that estimate. Inferential data analysis includes generating the estimate *and* the measure of uncertainty around that estimate.

Let's return back to the example where we *know* the truth in the population. Hey look! There were actually only three grey shapes after all. It is totally possible that if you put all those shapes into a bag and pulled three out that two would be pink and one would be grey. As statisticians, we'd say that getting this sample was **probable** (it's within the realm of possibility), but it's not the most likely (The most likely was either 4 or 5.) This really drives home why it's important to add uncertainty to your estimate whenever you're doing inferential analysis!  

{format: png}
![There actually were only three grey shapes in our population after all](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_131)

### Random Sampling

Since you are moving from a *small* amount of data and trying to generalize to a *larger* population, your ability to accurately infer information about the larger population depends heavily on how the data were sampled. We briefly touched on this in a previous lesson, but let's discuss it fully now. 

The data in your sample *must* be **representative of your larger population** to be used for inferential data analysis. Let's discuss what this means. 

Using the same example, what if, in your larger population, you didn't just have grey and pink shapes, but you also had blue shapes? 

{format: png}
![What if your larger population had three different color shapes?](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_156)

Well, if your sample only has pink and grey shapes, when you go to make an inference, there's no way you'd infer that there should be blue shapes in your population since you didn't capture any in your sample.

In this case, your sample is *not* representative of your larger population. In cases where you do not have a representative sample, you can not carry out inference, since you will not be able to correctly infer information about the larger population.

{format: png}
![You can only carry out an inferential analysis when your sample is representative of the population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_181)

This means that you have to design your analysis so that you're collecting representative data *and* that you have to check your data after data collection to make sure that you were successful.

You may at this point be thinking to yourself. "Wait a second. I thought I didn't know what the truth was in the population. How can I make sure it's representative?" Good point! With regards to the measurement you're making (color distribution of the shapes, in this example), you *don't* know the truth. *But*, you should know other information about the population. What is the age distribution of your population? Your sample should have a similar age distribution. What proportion of your population is female? If it's half, then your sample should be comprised of half females. Your data collection procedure should be set up to ensure that the sample you collect is representative (very similar to) your larger population. Then, once the data are collected, your descriptive analysis should check to ensure that the data you've collected are in fact representative of your larger population. By randomly sampling your larger population, then ensures that the inference you make about the measurement of interest (color distribution of the shapes) will be most accurate.

To reiterate: If the data you collect is not from a representative sample of the population, the generalizations you infer won't be accurate for the population. 


### A real-life example of inferential data analysis

Unlike in our previous examples, Census data wouldn't be used for inferential analysis. By definition, a census already collects information on (functionally) the entire population. Thus, there is no population on which to infer. Census data are the rare exception where a whole population *is* included in the dataset. Further, using data from the US census to infer information about another country would not be a good idea because the US isn't necessarily representative of the other country. 

Instead, a better example of a dataset on which to carry out inferential analysis would be the data used in the study: [The Effect of Air Pollution Control on Life Expectancy in the the United States: An Analysis of 545 US counties for the period 2000 to 2007](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3521092/). In this study, researchers set out to understand the effect of air pollution on everyone in the United States

{format: png}
![Study question looks to learn something about entire US population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1553)

To answer this question, a subset of the US population was studied, and the researchers looked at the level of air pollution experienced and life expectancy. It would have been nearly impossible to study every individual in the United States year after year. Instead, this study used the data they collected from a sample of the US population to *infer* how air pollution might be impacting life expectancy in the entire US! 

{format: png}
![Studies use representative samples to infer information about the larger population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1563)

### Mean different from expectation?

To get started on inferential data analysis, let's consider the case where you're interested in analyzing data about a single numeric variable. If you were doing descriptive statistics on this dataset, you'd likely calculate the mean for that variable. But, what if, in addition to knowing the mean, you wanted to know if the values in that variable were all within the bounds of normal variation. You could calculate that using inferential data analysis. You could use the data you have to *infer* whether or not the data are within the expected bounds.

For example, let's say you had a dataset that included the number of ounces *actually* included in 100 cans of a soft drink. You'd expect that each can have exactly 12 oz of liquid; however, there is some variation in the process. So, let's test whether or not you're consistently getting shorted on the amount of liquid in your can. 

In fact, let's go ahead and generate the dataset ourselves!

```r
## generate the dataset
set.seed(34) 
soda_ounces <- rnorm(100, mean = 12, sd = 0.04)
head(soda_ounces)
```

In this code, we're specifying that we want to take a random draw of 100 different values (representing our 100 cans of soft drink), where the mean is 12 (representing the 12 ounces of soda expected to be within each can), and allowing for some variation (we've set the standard deviation to be 0.04).

{format: png}
![output looking at `soda_ounces` dataset](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1350)

We can see that the values are approximately, but not always exactly equal to the expected 12 ounces. 

#### Testing mean difference from expectation in R

To make an inference as to whether or not we're consistently getting shorted, we're going to use this sample of 100 cans. Note that we're using this sample of cans to infer something about all cans of this soft drink, since we aren't able to measure the number of ounces in all cans of the soft drink generated. 

To carry out this statistical test, we'll use a t-test. However, before we can do so we have to ensure that the data follow a normal distribution, since this is the primary assumption of the t-test.

```r
library(ggplot2)

## check for normality
ggplot(as.data.frame(soda_ounces))+
  geom_histogram(aes(soda_ounces), bins = 10)
```

Here, we see that the data are approximately normally distributed, allowing for a t-test to be used.

{format: png}
![histogram of `soda_ounces`](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1361)

A t-test will check whether the observed ounces differs from the expected mean (12 oz). To run a t-test in R, the function is `t.test()`

```r
## carry out t-test
t.test(soda_ounces, mu = 12)
```

{format: png}
![t-test output](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1355)

In the output from this function, we'll focus on the 95 percent confidence interval. Confidence Intervals provide the range of values likely to contain the unknown population parameter. Here, the population parameter we're interested in is the mean. Thus, the 95% Confidence Intervals provides us the range where, upon repeated sampling, the calculated mean would fall 95 percent of the time. More specifically, if the 95 percent confidence interval contains the expected mean (12 oz), then we can be confident that the company is not shorting us on the amount of liquid they're putting into each can.

Here, since 12 is between 11.99187 and 12.00754, we can see that the amounts in the 100 sampled cans are within the expected variation. We could infer from this sample that the population of all cans of this soft drink are likely to have an appropriate amount of liquid in the cans.

### Proportion Differences

Beyond looking at a single numeric variable, what if you had two groups and wanted to know if the proportions of a second variable within the groups differed? To test to see if the proportions within one group differs from the proportions in the second group, we'll use the function `prop.test()`. 

For this example, we'll look to the `quine` dataset from the `MASS` package. This dataset includes a sample of 146 students in rural New South Wales. In this case, our **population** is students in Rural New South Wales. Our **sample** is the 146 students for whom we have data. 

In this example, we're going to check to see if the proportion of aboriginal males in the dataset is different from the proportion of aboriginal females. The variable `Eth` contains an "A" if the individual is aboriginal, "N" otherwise. Sex is coded such that "M" is male and "F" is female.

```r
library(MASS)

## take a look at the raw values
table(quine$Eth, quine$Sex)
```

{format: png}
![raw numbers from `quine` dataset](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1372)

From the raw values, we see there are 38 aboriginal females and 31 males. It's hard to tell from this output whether or not those proportions truly differ from one another. Is 38 out of 80 different than 31 out of 66? Thus, we'll use a statistical test to draw an inference from this sample.


#### Proportion Differences Testing in R 

As mentioned above, `prop.test()` allows you to test whether or not the proportions between groups are the same.

```r
## test for differences in proportions between groups
prop.test(table(quine$Eth, quine$Sex)) 
```

{format: png}
![`prop.test()` output](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1377)

Here, again, we'll looked to the confidence interval to interpret our results. If the proportion of aboriginals in each group is equal, we'd expect the difference between them to be zero. Thus, if zero is contained within the 95% confidence interval, there is no statistical difference between the proportions of aboriginals in the male and female groups. This is the case we see here in these data, as zero is between -0.16 and 0.17. 

### Linear Regression

Inferential analysis is commonly the goal of statistical modeling, where you have a small amount of information to extrapolate and generalize that information to a larger group. One of the most common approaches used in statistical modeling is known as **linear regression**. Here, we'll discuss when using linear regression is appropriate, how to carry out the analysis in R, and how to interpret the results from this statistical approach. 

When discussing linear regression, we're trying to describe (model) the relationship between a dependent variable and an independent variable.  

{format: png}
![linear regression models relationship between two variables](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_357)

When visualizing a linear relationship, the independent variable is plotted along the bottom of the graph, on the **x-axis** and the dependent variable is plotted along the side of the plot, on the **y-axis**. 

{format: png}
![independent on the x-axis; dependent on the y-axis](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_430)

When carrying out linear regression, a **best-fitting line** is drawn through the data points to describe the relationship between the variables. 

{format: png}
![A best-fitting line describes the relationship between the variables](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_468)

A best-fitting line, technically-speaking, minimizes the sum of the squared errors. In simpler terms, this means that the line that minimizes the distance of all the points from the line is the best-fitting line. Or, most simply, there are the same number of points above the line as there are below the line. In total, the distance from the line for the points above the line will be the same as the distance from the points to the line below the line.

Note that the best fitting line does *not* have to go through any points to be the best-fitting line. Here, on the right, we see a line that goes through seven points on the plot (rather than the four the best-fitting line goes through, on the left). However, this is *not* a best-fitting line, as there are *way* more points above the line than there are below the line.

{format: png}
![A best-fitting line does NOT have to go through the most points possible](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_504)

This line describes the relationship between the two variables. If you look at the direction of the line, it will tell you whether there is a positive or a negative relationship between the variables. In this case, the larger the value of the independent variable, the larger the value of the dependent variable. Similarly, the smaller the value of the independent variable, the smaller the value of the dependent variable. When this is the case, there is a **positive relationship** between the two variables.

{format: png}
![A positive relationship will have points that trend up and to the right](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_641)

An example of variables that have a positive relationship would be the height of fathers and their sons. In general, the taller a father is, the taller his son will be. And, the shorter a father is the more likely his son is to be short.

{format: png}
![Father and son height demonstrate a positive linear relationship](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_791)

Alternatively, when the higher the value of the independent variable, the lower the value of the dependent variable, this is a negative relationship. 

{format: png}
![A positive relationship will have points that trend up and to the left](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_752)

An example of variables that have a negative relationship would be the relationship between a students' absences and their grades. The more absences a student has, the lower their grades tend to be.

{format: png}
![Student absences and grades show a negative linear relationship](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_830)

Linear regression, in addition to to describing the direction of the relationship, it can also be used to determine the **strength** of that relationship.

This is because the assumption with linear regression is that the true relationship is being described by the best-fitting line. Any points that fall away from the line do so due to random error. This means that if all the points fall directly on top of the line, there is no error. The further the points fall from the line, the greater the error. When points are further from the best-fitting line, the relationship between the two variables is weaker than when the points fall closer to the line.

{format: png}
![Correlation is weaker on the left and stronger on the right](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_872)

In this example, the pink line is exactly the same best-fitting line in each graph. However, on the left, where the points fall further from the line, the strength of the relationship between these two variables is weaker than on the right, where the points fall closer to the line, where the relationship is stronger. The strength of this relationship is measured using **correlation**. The closer the points are to the line the more **correlated** the two variables are, meaning the relationship between the two variables is stronger. 

#### Assumptions

Thus far we have focused on drawing linear regression lines. Linear regression lines *can* be drawn on any plot, but just because you can do something doesn't mean you actually *should*. When it comes to linear regression, in order to carry our any inference on the relationship between two variables, there are a few assumptions that must hold before inference from linear regression can be done.

The two assumptions of simple linear regression are **linearity** and **homoscedasticity**.

##### Linearity

The relationship between the two variables must be linear. 

For example, what if we were plotting data from a single day and we were looking at the relationship between temperature and time. Well, we know that generally temperature increases throughout the day and then decreases in the evening. Here, we see some example data reflective of this relationship. The upside-down u-shape of the data suggests that the relationship is not in fact linear. While we *could* draw a straight line through these data, it would be inappropriate. In cases where the relationship between the variables cannot be well-modeled with a straight line, linear regression should *not* be used.

{format: png}
![If the relationship between the variables is non-linear, regression should not be used](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1008)

##### Homoscedasticity

In addition to displaying a linear relationship, the random variables must demonstrate **homoscedasticity**. In other words, the variance (distance from the line) must be constant throughout the variable. 

If points at one end are much closer to the best-fitting line than points are at the other end, homoscedasticity has been violated and linear regression is not appropriate for the data.

{format: png}
![Variance must be consistent across the variable for linear regression to be used](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1054)

If these two assumptions hold, linear regression can be considered for your analysis.

### What can linear regression infer?

Now that we understand what linear regression is and what assumptions must hold for its use, when would you actually use it? Linear regression can be used to answer many different questions about your data. Here we'll discuss specifically how to make inferences about the relationship between two numeric variables.

#### What is the association?

Often when people are carrying out linear regression, they are looking to better understand the relationship between two variables. When looking at this relationship, analysts are specifically asking "What is the **association** between these two variables?" Association between variables describes the trend in the relationship (positive, neutral, or negative) *and* the strength of that relationship (how correlated the two variables are).

After determining that the assumptions of linear regression are met, in order to determine the association between two variables, one would carry out a linear regression. From the linear regression, one would then interpret the **Beta estimate** and the **standard error** from the model.

**Beta estimate** - determines the direction and strength of the relationship between the two variables. 

A beta of zero suggests there is no association between the two variables. However, if the beta value is positive, the relationship is positive. If the value is negative, the relationship is negative. Further, the larger the number, the bigger the effect is. We'll discuss effect size and how to interpret the value in more detail later in this lesson. 

{format: png}
![Beta estimates describe the size and strength of the effect](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1095)

**Standard error** - determines how uncertain the beta estimate is. The larger the standard error, the *more* uncertain we are in the estimate. The smaller the standard error, the *less* uncertain we are in the estimate.

Standard errors are calculated based on how well the best-fitting line models the data. The closer the points are to the line, the lower the standard error will be, reflecting our decreased uncertainty. However, as the points are further from the regression line, our uncertainty in the estimate will increase, and the standard error will be larger.

{format: png}
![Standard errors explain how uncertain the estimate is](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1167)

A reminder that when carrying out inferential data analysis, you will always want to report an estimate *and* a measure of uncertainty. For linear regression, this will be the **beta estimate** and the **standard error**.

You may have heard talk of **p-values** at some point. People tend to use p-values to describe the strength of their association due to its simplicity. The p-value is a single number that takes into account both the estimate (beta estimate) and the uncertainty in that estimate (SE). The lower a p-value the more significant the association is between two variables. However, while it is a simple value, it doesn't tell you nearly as much information as reporting the estimates and standard errors directly. Thus, if you're reporting p-values, it's best to also include the estimate and standard errors as well.

That said, the general interpretation of a p-value is "the probability of getting the observed results (or results more extreme) by chance alone." Since it's a probability, the value will always be between 0 and 1. Then, for example, a p-value of 0.05, means that 5 percent of the time (or 1 in 20), you'd observe results this extreme simply by chance.   

##### Association Testing in R 

Now that we've discussed what you can learn from an association test, let's look at an example in R. For this example we'll use the `trees` dataset available in R, which includes `girth`, `height`, and `volume` measurements for 31 black cherry trees.

With this dataset, we'll answer the question:

> Can we infer the height of a tree given its girth? 

Presumably, it's easier to measure a trees girth (width around) than it is to measure its height. Thus, here we want to know whether or not height and girt are associated. 

In this case, since we're asking if we can infer height from girth, girth is the independent variable and height is the dependent variable. In other words, we're asking does height *depend* on girth?

First, before carrying out the linear regression to test for association and answer this question, we have to be sure linear regression is appropriate. We'll test for linearity and homoscedasticity. 

To do so, we'll first use `ggplot2` to generate a scatterplot of the variables of interest.

```r
library(ggplot2)

ggplot(trees) + 
  geom_point(aes(Height, Girth))
```

{format: png}
![scatterplot of trees dataset](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1300)

From the looks of this plot, the relationship looks approximately linear, but to visually make this a little easier, we'll add a line of best first to the plot.

```r
ggplot(trees, aes(Height, Girth)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)
```

{format: png}
![scatterplot with line of best fit](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1305)

On this graph, the relationship looks approximately linear and the variance (distance from points to the line) is constant across the data. Given this, it's appropriate to use linear regression for these data.

Now that that's established, we can run the linear regression. To do so, we'll use the `lm()` function. The syntax for this function is `lm(dependent_variable ~ independent_Variable, data = dataset)`.

```r
## run the regression
fit <- lm(Girth ~ Height , data = trees)

## take a look at the output
summary(fit)
```

The `summary()` function summarizes the model as well as the output of the model. We can see the values we're interested in in this summary, including the beta estimate, the standard error (SE), and the p-value. 
Specifically, from the beta estimate, which is positive, we confirm that the relationship is positive (which we could also tell from the scatterplot). We can also interpret this beta estimate explicitly. 

Specifically, the beta estimate is the amount the dependent variable will change given a one unit increase in he independent variable. In the case of the trees, a beta estimate of 0.256, says that for every inch a tree's girth increases, its height will increase by 0.256 inches. Thus, we not only know that there's a positive relationship between the two variables, but we know by precisely how much one variable will change given a single unit increase in the other variable.

{format: png}
![Beta, SE, and p-value all included in `summary()` output](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1309)

Additionally, the strength of this relationship is summarized using the adjusted R-squared metric. The closer this value is to 1, the closer the points in your dataset fall to the line of best fit. The further they are from the line, the closer this value will be to zero.

{format: png}
![Adjusted R-squared specifies how closely the data fall are to the regression line](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1325)

As we saw in the scatterplot, the data are not right up against the regression line, so a value of 0.2445 seems reasonable.

Finally, while the `summary()` output are visually helpful, if you want to get any of the numbers out from that model, it's not always straightforward. Thankfully, there is a package to help you with that! The `tidy()` function from the `broom` package helps take the summary output from a statistical model and organize it into a tabular output. 
```r
#install.packages("broom")
library(broom)

tidy(fit)
```

{format: png}
![`tidy()` helps organize output from statistical models](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1343)

Note that the values haven't changed. They're just organized into an easy-to-use table. It's helpful to keep in mind that this function and package exist as you work with statistical models.

Finally, it's important to always keep in mind that the **interpretation of your inferential data analysis** is incredibly important. When you use linear regression to test for association, you're looking at the relationship between the two variables. While girth can be used to infer a tree's height, this is just a correlation. It **does not mean** that an increase in girth **causes** the tree to grow more. Associations are *correlations*. They are **not** causal. We'll discuss this more later in the lesson. 

For now, however, in response to our question, can we infer a tree's height from its girth, the answer is yes. We would expect, on average, a tree's height to increase 0.255 inches for every one inch increase in girth.

### Confounding

We just finished discussing how to use `lm()` to assess the association between two numeric variables. However, there is one *incredibly* important topic that we have to discuss before moving on from linear regression. **Confounding** in something to watch out for in any analysis you're doing that looks at the relationship between two more more variables. So...what is confounding?

Well, let's consider an example. What if we were interested in understanding the relationship between shoe size and literacy. To do so, we took a look at this small sample of two humans, one who wears small shoes and is not literate and one adult who wears big shoes and is literate.

{format: png}
![Two humans and their respective shoe sizes and literacy levels](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1463)

If we were to diagram this question, we may ask "Can we infer literacy rates from shoe size?"

{format: png}
![Possible to infer literacy rate from shoe size?](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1471)

If we return to our sample, it'd be important to note that one of the humans is a young child and the other is an adult. 

{format: png}
![Adult and child with their respective shoe sizes and literacy levels](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1478)

Our initial diagram failed to take into consideration the fact that these humans differed in their age. Age affects their shoe size *and* their literacy rates. In this example, age is a confounder.

{format: png}
![Age is a confounder](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1486)

Any time you have a variable that affects both your dependent *and* independent variables, it's a confounder. Ignoring confounders is not appropriate when analyzing data. In fact, in this example, you would have concluded that people who wear small shoes have lower literacy rates than those who wear large shoes. That would have been incorrect. In fact, that analysis was *confounded* by age. Failing to correct for confounding has led to misreporting in the media and retraction of scientific studies. You don't want to be in that situation. So, **always consider and check for confounding** among the variables in your dataset.

{format: png}
![Confounders are variables that affect both your dependent and independent variables](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1494)

### Multiple Linear Regression

There are ways to **effectively handle confounders within an analysis**. Confounders can be included in your linear regression model. When included, the analysis takes into account the fact that these variables are confounders and carries out the regression, removing the effect of the confounding variable from the estimates calculated for the variable of interest. 

This type of analysis is known as **multiple linear regression**, and the general format is: `lm(dependent_variable ~ independent_variable + confounder , data = dataset)`.

As a simple example, let's return to the `mtcars` dataset, which we've worked with before. In this dataset, we have data from 32 automobiles, including their weight (`wt`), miles per gallon (`mpg`), and Engine (`vs`, where 0 is "V-shaped" and 1 is "straight").

Suppose we were interested in inferring the mpg a car would get based on its weight. We'd first look at the relationship graphically:

```r
## take a look at scatterplot
ggplot(mtcars, aes(wt, mpg)) +
  geom_point()
```

{format: png}
![scatterplot of `wt` and `mpg` from `mtcars`](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1513)

From the scatterplot, the relationship looks approximately linear and the variance looks constant. Thus, we could model this using linear regression:

```r
## model the data without confounder
fit <- lm(mpg ~ wt, data = mtcars)
tidy(fit)
```

{format: png}
![mtcars linear regression output](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1509)

From this analysis, we would infer that for every increase 1000 lbs more a car weighs, it gets 5.34 miles *less* per gallon.  

However, we know that the weight of a car doesn't necessarily tell the whole story. The type of engine in the car likely affects both the weight of the car and the miles per gallon the car gets. Graphically, we could see if this were the case by looking at these scatterplots:

```r
## look at the difference in relationship 
## between Engine types
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~vs)
```

{format: png}
![Scaterplot faceting for engine type](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1339)

From this plot, we can see that V-shaped engines (`vs`= 0), tend to be heavier and get fewer miles per gallon while straight engines (`vs` = 1) tend to weigh less and get more miles per gallon. Importantly, however, we see that a car that weighs 3000 points (`wt` = 3) and has a V-Shaped engine (`vs` = 0) gets fewer miles per gallon than a car of the same weight with a straight engine (`vs` = 1), suggesting that simply modeling a linear relationship between weight and mpg is not appropriate.

Let's then model the data, taking this confounding into account:

```r
## include engine (vs) as a confounder
fit <- lm(mpg ~ wt + vs, data = mtcars)
tidy(fit)
```

{format: png}
![confounding model taken into account](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1503)

Here, we get a more accurate picture of what's going on. Interpreting multiple regression models is slightly more complicated since there are more variables; however, we'll practice how to do so now. 

The best way to interpret the coefficients in a multiple linear regression model is to focus on a single variable of interest and hold all other variables constant. For instance, we'll focus on weight (`wt`) while holding (`vs`) constant to interpret. This means that for a V-shaped engine, we expect to see a 4.44 miles per gallon decrease for every 1000 lb increase in weight. 

We can similarly interpret the coefficients by focusing on the engines (`vs`). For example, for two cars that weigh the same, we'd expect a straight engine (`vs` = 1) to get 3.5 more miles per gallon than a V-Shaped engine (`vs`= 0). 

{format: png}
![confounding model taken into account](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1531)

Finally, we'll point out that the p-value for `wt` decreased in this model relative to the model where we didn't account for confounding. This is because the model was not initially taking into account the engine difference. Sometimes when confounders are accounted for, your variable of interest will become more significant; however, frequently, the p-value will increase, and that's ok. What's important is that the data are most appropriately modeled.

### Correlation is not Causation

You've likely heard someone say before that "correlation is not causation," and it's true! In fact, there are [whole websites](http://www.tylervigen.com/spurious-correlations) dedicated to this concept.  Let's make sure we know exactly what that means before moving on. In the plot you see here, as the divorce rate in Maine decreases, so does per capita consumption of margarine. These two lines are clearly correlated; however, there isn't really a strong (or any) argument to say that one caused the other. Thus, just because you see two things with the same trend does not mean that one caused the other. These are simply **spurious correlations** -- things that trend together by chance. **Always** keep this in mind when you're doing inferential analysis, and be sure that you **never draw causal claims when all you have are associations**.

{format: png}
![Correlation does not equal causation](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1545)


In fact, one could argue that the only time you can make causal claims are when you have carried out a randomized experiment. **Randomized experiments** are studies that are designed and carried out by *randomly* assigning certain subjects to one treatment and the rest of the individuals to another treatment. The treatment is then applied and the results are then analyzed. In the case of a randomized experiment, causal claims can start to be made. Short of this, however, be careful with the language you choose and do not overstate your findings.


### Summary

In this lesson, we have covered *a lot*. We started off discussing that inferential data analysis is required since we often cannot take measurements from everyone in our population of interest. Thus, we take representative samples and estimate what the measure is in the larger population. Since this is an estimate, there is always some measure of uncertainty surrounding this estimate. We talked about how inferences are drawn using a single numeric variable and t-tests. We further discussed how to test whether or not the proportion differs between groups using `prop.test()` (the New South Wales example). Finally, we talked about simple and multiple linear regression. We discussed that linear regression helps describe the relationship between two numeric variables (`trees` example) and that multiple linear regression helps account for confounding in an analysis (`mtcars` example). We'll end this lesson by reiterating that being able to draw conclusions and clear interpretations of your analyses is critical and that you should *never* draw causal conclusions when you have associations.


### Slides and Video

![Inferential Analysis](https://www.youtube.com/watch?v=11DqIm2BbHI)

* [Slides](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/edit?usp=sharing)

{quiz, id: quiz_06_inferential}

### Inferential Analysis quiz

{choose-answers:4}
?1 Why is inferential analysis necessary?

C) Because we often can't study everyone in a population
C) Because we want to be able to infer information about a population from a sample
C) So that we can use representative samples to infer information about a larger population 
o) Because it allows analysts to summarize the data without the need for interpretation
o) It enables analysts to quantify whether the discoveries in your dataset will likely hold in a new sample
o) It allows one to predict information about individuals later on
o) It helps determine the mechanistic cause behind the relationship in your data


{choose-answers:4, points:3}
?2 Given the model: `fit <- lm(Sepal.Length ~ Sepal.Width, data = iris)` (meaning, go run that code), how much would you expect sepal length to change given a one unit increase in sepal width?

C) decrease by 0.22
m) increase by 0.22
o) increase by 1
o) decrease by 1
o) decrease by 6.52
o) increase by 6.52
o) p < 0.05


{choose-answers:4, points:2}
?3 If your beta coefficient for a model that looked at the relationship between height and weight (for example: `lm(height ~ weight)`) were 0.2, what would that mean?

C) for every 1 lb increase in weight, you would expect height to increase by 0.2 inches.
C) for every 1 lb decrease in weight, you would expect height to decrease by 0.2 inches.
m) for every 1 lb increase in height, you would expect weight to increase by 0.2 inches.
o) for every 1 lb decrease in weight, you would expect height to increase by 0.2 inches.
o) for every 1 lb increase in height, you would expect weight to decrease by 0.2 inches.
o) for every 1 lb increase in weight, you would expect height to increase by 1 inch.
o) for every 1 lb decrease in weight, you would expect hight to decrease by 1 inch.

{choose-answers:4}
?4 If you had a single numeric variable that was normally distributed, what test would you use to determine if its mean were different than the expected mean?

C) t-test
C) `t.test()`
o) `prop.test()`
o) `lm()`
o) simple linear regression
o) multiple linear regression


{choose-answers:4}
?5 To account for confounding, what is one approach you could consider?

C) multiple linear regression
o) t-test
o) `t.test()`
o) `prop.test()`
o) `lm()`
o) simple linear regression

{choose-answers:4, points:2}
?6 This code would run which of the following analyses: `lm(weight ~ height, data = df)`

C) simple linear regression
m) multiple linear regression
o) t-test
o) `t.test()`
o) `prop.test()`
o) `lm()`

{choose-answers:4, points:2}
?6 This code would run which of the following analyses: `lm(weight ~ height + sex, data = df)`

C) multiple linear regression
m) simple linear regression
o) t-test
o) `t.test()`
o) `prop.test()`
o) `lm()`

{points:3}
?7 Go to the [Chromebook Data Science Space on RStudio Cloud](https://rstudio.cloud/spaces/3919/join?access_code=RUUQ%2BeEgKea0oMF7EJy4UePldyBBMu7d0amv2KFC) and click on your copy of the 'swirl' project (If you haven't made a copy yet, do so now.) Then, type `swirl()` to get started. Tell Swirl your first name when it asks what to call you. Then, type the number that corresponds to the course `CBDS Data Analysis`. Type the number that corresponds to the lesson `L06 Inferential Analysis Q01 Swirl`. Do this swirl module! Once complete, paste the code at the end of the lesson here.

! /.*(c66R|iLNb|LpE7|4eHK|tvFJ|iDpc|fTC3|pivl|Ctjm|9XvR).*/i

{points:3}
?8 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L04 Inferential Analysis Q02 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

! /.*(Hx3B|B1rr|VRPL|kcDX|o17f|iVYf|NJP5|YAsw|YEXw|Xl5D).*/i

{points:3}
?9 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L04 Inferential Analysis Q03 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

! /.*(Vj1T|ht5U|jd5g|yG4O|hhUB|3ngr|5SXs|e5RA|clMC|bwnm).*/i

{/quiz}

{exercise, id: exercise_06_inferential}

### DataCamp:  Inference for Linear Regression

{case-sensitive: false}
? To get more practice with inferential analysis, go to the course [Inference for Linear Regression](https://www.datacamp.com/courses/inference-for-linear-regression) on DataCamp. Login and complete the first chapter: "Inferential ideas"

Once you've completed the chapter, type "completed" in the box below.

*Note*: This requires a DataCamp login, which costs money. As an exercise, this is not required to pass the course but it *will* help you get a better grasp on the concepts covered in these lessons.

*Reminder*: Videos in DataCamp are essential to understanding the material. It's best not to skip over these videos!

! completed

{/exercise}

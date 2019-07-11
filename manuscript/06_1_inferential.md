# Inferential Analysis: Overview

Inferential Analysis is what analysts carry out *after* they've described and explored their data set. After understanding your dataset better, analysts often try to infer something from the data. This is done using **statistical tests**. While we'll only be discussing **linear regression** in this lesson, there are *many* different statistical tests, each of which (when appropriately applied) can be used for inferential data analysis. 

To get started with inference in this lesson, we'll cover:

- Random Sampling & Inference
- Uncertainty
- Linear Regression
- Confounding
- Correlation

While it is certainly a lot, it will be *incredibly* important for you to understand this material going forward, so take your time on this overview and be sure to understand each paragraph, example, and image. Then, in the following lessons, you'll be able to work through some more examples and get more practice with inferential analysis.

### Getting Started with Inference

Ok, so let's break this all down a little bit. The goal of inferential analyses is to use a relatively **small sample** of data to **infer** or say something about the **population** at large. This is required because often we *want* to answer questions about a population. Let's take a dummy example here where we have a population of 14 shapes.

Here, in this graphic, the shapes represent individuals in the population and the colors of the shapes can be either pink or grey:

{format: png}
![The population](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_5)

In this example we only have fourteen shapes in the population; however, in inferential data analysis, it's not usually possible to sample *everyone* in the population. Consider if this population were everyone in the United States or every college student in the world. As getting information from every individual would be infeasible. Data are instead collected on a subset, or a **sample** of the individuals in the larger population. 

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

Given the sample we've taken, we can guess that 4-5 shapes in our population will be grey, but we aren't certain *exactly* what that number is. In statistics, this "best guess" is known as an **estimate**. This means that we estimate that 4.667 shapes will be gray. *But*, there is uncertainty in that number. Because we're taking our best guess at figuring out what that estimate should be, there's also a measure of uncertainty in that estimate. Inferential data analysis includes **generating the estimate *and* the measure of uncertainty around that estimate**.

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

##### Normality of residuals

When we fit a linear regression, typically the data do not fall *perfectly* along the regression line. Rather, there is some distance from each point to the line. Some points are quite close to the line, while others are further away. Each point's distance to the regression line can be calculated. This distance is the **residual** measurement. 

{format: png}
![Residuals are calculcated by measuring the distance from each point to the regression line](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_0_79)


In linear regression, one assumption is that these residuals follow a Normal distribution. This means that if you were to calculate each residual (each point's distance to the regression line) and then plot a histogram of all of those values - that plot should look like a Normal Distribution.

{format: png}
![Linear regression assumes normality of residuals](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_0_129)

If you do not see normality of residuals, this can suggest that outlier values - observations more extreme than the rest of the data - may exist in your data. This can severely affect you regression results and lead you to conclude something that is untrue about your data.

Thus, it is your job, when running linear regression to check for:

1. Non-linearity
2. Heteroscedasticity
3. Outlier values 
4. Normality of residuals

We'll discuss how to use diagnostic plots below to check that these assumptions have been met and that outlier values are not severely affecting your results.

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

Presumably, it's easier to measure a trees girth (width around) than it is to measure its height. Thus, here we want to know whether or not height and girth are associated. 

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

**Fitting the model**

Now that that's established, we can run the linear regression. To do so, we'll use the `lm()` function to **fit the model**. The syntax for this function is `lm(dependent_variable ~ independent_variable, data = dataset)`. 

```r
## run the regression
fit <- lm(Girth ~ Height , data = trees)
```

**Model Diagnostics**

Above, we discussed a number of assumptions of linear regression. After fitting a model, it's necessary to check the model to see if the model satisfies the assumptions of linear regression. If the model does not fit the data well (for example, the relationship is nonlinear), then you cannot use and interpret the model.

In order to assess your model, a number of diagnostic plots can be very helpful. Diagnostic plots can be generated using the `plot()` function with the fitted model as an argument.

```r
par(mfrow = c(2, 2))
plot(fit)
```
This generates four plots:

{format: png}
![diagnostic linear regression plots using `plot()`](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_0_210)

1. **Residuals vs Fitted** - checks linear relationship assumption of linear regression. A linear relationship will demonstrate a horizontal red line here. Deviations from a horizontal line suggest nonlinearity and that a different approach may be necessary.

2. **Normal Q-Q** - checks whether or not the residuals (the difference between the observed and predicted values) from the model are normally distributed. The best fit models points fall along the dashed line on the plot. Deviation from this line suggests that a different analytical approach may be required.

3. **Scale-Location** - checks the homoscedasticity of the model. A horizontal red line with points equally spread out indicates a well-fit model. A non-horizontal line or points that cluster together suggests that your data are not homoscedastic.

4. **Residuals vs Leverage** - helps to identify outlier or extreme values that may disproportionately affect the model's results. Their inclusion or exclusion from the analysis may affect the results of the analysis. Note that the top three most extreme values are identified with numbers next to the points in all four plots.

**Tree girth and height example**

In our example looking at the relationship between tree girth and height, we can first check **linearity of the data** by looking at the **Residuals vs Fitted** plot. Here, we do see a red line that is approximately horizontal, which is what we're looking for. Additionally, we're looking to be sure there is no clear pattern in the points on the plot - we *want* them to be random on this plot. Clustering of a bunch of points together or trends in this plot would indicate that the data do not have a linear relationship.

{format: png}
![Residuals plot has data scattered randomly throughout and a mostly horizontal fitted line](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_0_217)


To check for **homogeneity of the variance**, we can turn to the **Scale-Location** plot. Here, we're again looking for a horizontal red line. In this dataset, there's a suggestion that there is some heteroscedasticity, with points not being equally far from the regression line across the observations. 

While not discussed explicitly here in this lesson, we will note that when the data are nonlinear or the variances are not homogeneous (are not homoscedastic), **transformations** of the data can often be applied and then linear regression can be used.

**QQ Plots** are very helpful in assessing the **normality of residuals**. Normally distributed residuals will fall along the grey dotted line. Deviation from the line suggests the residuals are not normally distributed.Here, in this example, we do not see the points fall perfectly along the dotted line, suggesting that our residuals are not normally distributed.

{format: png}
![Deviation from the dotted line suggests non-normality of residuals](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_0_227)

A histogram (or densityplot) of the residuals can also be used for this portion of regression diagnostics. Here, we're looking for a Normal distribution of the residuals. 

```r
library(ggplot2)
ggplot(fit, aes(fit$residuals)) + 
  geom_histogram(bins = 5)
```

The QQ Plot and the histogram of the residuals will always give the same answer. Here, we see that with our limited sample size, we do not have perfectly Normally distributed residuals; however, the points do not fall wildly far from the dotted line.

{format: png}
![Residuals are not perfectly Normally distributed](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_0_251)

Finally, whether or not **outliers** (extreme observations) are driving our results can be assessed by looking at the **Residuals vs Leverage** plot.

Generally speaking, standardized residuals greater than 3 or less than -3 are to be considered as outliers. Here, we do not see any values in that range (by looking at the y-axis), suggesting that there are no extreme outliers driving the results of our analysis.

{format: png}
![Outliers in a dataset can affect the results of your analysis](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_0_237)


**Interpreting the model**

While the relationship in our example appears to be linear, does not indicate being driven by outliers, is approximately homoscedastic and has residuals that are not perfectly Normally distributed, but fall close to the line in the QQ plot, we can discuss how to interpret the results of the model.

```r
## take a look at the output
summary(fit)
```

The `summary()` function summarizes the model as well as the output of the model. We can see the values we're interested in in this summary, including the beta estimate, the standard error (SE), and the p-value. 

Specifically, from the beta estimate, which is positive, we confirm that the relationship is positive (which we could also tell from the scatterplot). We can also interpret this beta estimate explicitly. 

{format: png}
![Beta, SE, and p-value all included in `summary()` output](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1309)

Specifically, the **beta estimate** (also known as the beta coefficient or coefficient in the `Estimate` column) is the **amount the dependent variable will change given a one unit increase in he independent variable**. In the case of the trees, a beta estimate of 0.256, says that for every inch a tree's girth increases, its height will increase by 0.256 inches. Thus, we not only know that there's a positive relationship between the two variables, but we know by precisely how much one variable will change given a single unit increase in the other variable. Note that we're looking at the second row in the output here, where the row label is "Height". This row quantifies the relationship between our two variables. The first row quantifies the intercept, or where the line crosses the y-axis.

The standard error and p-value are also included in this output. Error is typically something we want to minimize (in life and statistical analyses), so the *smaller* the error, the *more confident* we are in the association between these two variables. 

The beta estimate and the standard error are then both considered in the calculation of the p-value (found in the column `Pr[>|t|]`). The smaller this value is, the more confident we are that this relationship is not due to random chance alone.

**Variance Explained**

Additionally, the strength of this relationship is summarized using the adjusted R-squared metric. This metric explains how much of the variance this regression line explains. The more variance explained, the closer this value is to 1. And, the closer this value is to 1, the closer the points in your dataset fall to the line of best fit. The further they are from the line, the closer this value will be to zero.

{format: png}
![Adjusted R-squared specifies how closely the data fall are to the regression line](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1325)

As we saw in the scatterplot, the data are not right up against the regression line, so a value of 0.2445 seems reasonable, suggesting that this model (this regression line) explains 24.45% of the variance in the data.

**Using `broom**

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

Finally, we'll point out that the p-value for `wt` decreased in this model relative to the model where we didn't account for confounding. This is because the model was not initially taking into account the engine difference. Sometimes when confounders are accounted for, your variable of interest will become more significant; however, frequently, the p-value will increase, and that's OK. What's important is that the data are most appropriately modeled.

### Correlation is not Causation

You've likely heard someone say before that "correlation is not causation," and it's true! In fact, there are [whole websites](http://www.tylervigen.com/spurious-correlations) dedicated to this concept.  Let's make sure we know exactly what that means before moving on. In the plot you see here, as the divorce rate in Maine decreases, so does per capita consumption of margarine. These two lines are clearly correlated; however, there isn't really a strong (or any) argument to say that one caused the other. Thus, just because you see two things with the same trend does not mean that one caused the other. These are simply **spurious correlations** -- things that trend together by chance. **Always** keep this in mind when you're doing inferential analysis, and be sure that you **never draw causal claims when all you have are associations**.

{format: png}
![Correlation does not equal causation](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g3daea37311_0_1545)


In fact, one could argue that the only time you can make causal claims are when you have carried out a randomized experiment. **Randomized experiments** are studies that are designed and carried out by *randomly* assigning certain subjects to one treatment and the rest of the individuals to another treatment. The treatment is then applied and the results are then analyzed. In the case of a randomized experiment, causal claims can start to be made. Short of this, however, be careful with the language you choose and do not overstate your findings.

### Beyond Linear Regression

While we've focused on linear regression in this lesson on inference, linear regression isn't the only analytical approach out there. However, it is arguably the most commonly used. And, beyond that, there are *many* statistical tests and approaches that are slight variations on linear regression, so having a solid foundation and understanding of linear regression makes understanding these other tests and approaches much simpler.

For example, what if you didn't want to measure the linear relationship between two variables, but instead wanted to know whether or not the average observed is different from expectation...

### Mean different from expectation?

To answer a question like this, let's consider the case where you're interested in analyzing data about a single numeric variable. If you were doing descriptive statistics on this dataset, you'd likely calculate the mean for that variable. But, what if, in addition to knowing the mean, you wanted to know if the values in that variable were all within the bounds of normal variation. You could calculate that using inferential data analysis. You could use the data you have to *infer* whether or not the data are within the expected bounds.

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
![output looking at `soda_ounces` dataset](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_2_0)

We can see that the values are approximately, but not always exactly equal to the expected 12 ounces. 

#### Testing mean difference from expectation in R

To make an inference as to whether or not we're consistently getting shorted, we're going to use this sample of 100 cans. Note that we're using this sample of cans to infer something about all cans of this soft drink, since we aren't able to measure the number of ounces in all cans of the soft drink generated. 

To carry out this statistical test, we'll use a t-test.

Wait, we haven't talked about that statistical test yet. So, let's take a quick detour to discuss t-tests and how they relate to linear regression.

#### Detour: Linear Regression & t-tests

R has a built in t-test function: `t.test()`. 

However, I mentioned earlier that many statistical tests are simply extension of linear regression. In fact, a t-test is simply a linear model where we specify to only fit an intercept (where the data crosses the y-axis). In other words, this specifies to calculate the mean...which is exactly what we're looking to do here with our t-test! We'll compare these two approaches below.

However, before we can do so, we have to ensure that the data follow a normal distribution, since this is the primary assumption of the t-test.

```r
library(ggplot2)

## check for normality
ggplot(as.data.frame(soda_ounces))+
  geom_histogram(aes(soda_ounces), bins = 10)
```

Here, we see that the data are approximately normally distributed, allowing for a t-test to be used.

{format: png}
![histogram of `soda_ounces`](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_2_5)

A t-test will check whether the observed ounces differs from the expected mean (12 oz). As mentioned above, to run a t-test in R, most people use the built-in function: `t.test()`

```r
## carry out t-test
t.test(soda_ounces, mu = 12)
```

{format: png}
![`t.test()` output](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_2_13)

In the output from this function, we'll focus on the 95 percent confidence interval. Confidence Intervals provide the range of values likely to contain the unknown population parameter. Here, the population parameter we're interested in is the mean. Thus, the 95% Confidence Intervals provides us the range where, upon repeated sampling, the calculated mean would fall 95 percent of the time. More specifically, if the 95 percent confidence interval contains the expected mean (12 oz), then we can be confident that the company is not shorting us on the amount of liquid they're putting into each can.

Here, since 12 is between 11.99187 and 12.00754, we can see that the amounts in the 100 sampled cans are within the expected variation. We could infer from this sample that the population of all cans of this soft drink are likely to have an appropriate amount of liquid in the cans.

However, as mentioned previously, t-tests are an extension of linear regression. We could also look to see whether or not the cans had the expected average of 12 oz in the data collected using `lm()`.

```r
# from linear regression
regression_output <-  lm(soda_ounces ~ 1)

# calculate confidence interval
confint(regression_output)
```

{format: png}
![comparing `t.test()` and `lm()` output](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_2_21)

 Note that the confidence interval is the exact same here using `lm()` as above when we used `t.test()`! We bring this up not to confuse you, but to guide you away from trying to memorize each individual statistical test and instead understand how they relate to one another.

### More Statistical Tests

Now that you've seen how to measure the linear relationship between variables (linear regression) and how to determine if the mean of a dataset differs from expectation (t-test), it's important to know that you can ask lots of different questions using extensions of linear regression.

These have been nicely summarized by  Jonas Kristoffer Lindeløv in is blog post [Common statistical tests are linear models (or: how to teach stats)](https://lindeloev.github.io/tests-as-linear). We've included the table summarizing his post here, but we recommend you check it out and the examples included within it carefully!

{format: png}
![Common statistical tests are linear models](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/export/png?id=1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc&pageid=g5d2253b705_2_105)


### Summary

In this lesson, we have covered *a lot*. We started off discussing that inferential data analysis is required since we often cannot take measurements from everyone in our population of interest. Thus, we take representative samples and estimate what the measure is in the larger population. Since this is an estimate, there is always some measure of uncertainty surrounding this estimate. We talked about how inferences are drawn using a single numeric variable. We talked in detail about simple linear regression and touched on multiple linear regression, with a brief discussion on confounding. We discussed that linear regression helps describe the relationship between two numeric variables (`trees` example) and that multiple linear regression helps account for confounding in an analysis (`mtcars` example). We discussed t-tests (the soda example), including how t-tests (and many other common statistical tests!) are variations on linear regression. We'll end this lesson by reiterating that being able to draw conclusions and clear interpretations of your analyses is critical and that you should *never* draw causal conclusions when you have associations.

### Additional Resources

* [Common statistical tests are linear models (or: how to teach stats)](https://lindeloev.github.io/tests-as-linear), blog post by Jonas Kristoffer Lindeløv


### Slides and Video

![Inferential Analysis](https://www.youtube.com/watch?v=uabQUHwuxCs)

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
o) for every 1 lb decrease in weight, you would expect hit to decrease by 1 inch.


{choose-answers:4}
?4 To account for confounding, what is one approach you could consider?

C) multiple linear regression
o) t-test
o) `t.test()`
o) `prop.test()`
o) `lm()`
o) simple linear regression

{choose-answers:4, points:2}
?5 This code would run which of the following analyses: `lm(weight ~ height, data = df)`

C) simple linear regression
m) multiple linear regression
o) t-test
o) `t.test()`
o) `prop.test()`
o) `lm()`

{choose-answers:4, points:2}
?5 This code would run which of the following analyses: `lm(weight ~ height + sex, data = df)`

C) multiple linear regression
m) simple linear regression
o) t-test
o) `t.test()`
o) `prop.test()`
o) `lm()`

{choose-answers:4, points:2}
?6 Given the following plot, how many outliers would you conclude exist in your dataset?

![Residuals vs Leverage Plot](outliers.png)

C) 1
m) 0
o) 2
o) 3
o) 4

{points:3}
?7 Go to the [Cloud-based Data Science Space on RStudio Cloud](https://rstudio.cloud/spaces/20345/join?access_code=n4b8J1s0XmWctSy83%2BEXbGAwj7rKcuFMI7WJEJFD) and click on your copy of the 'swirl' project (If you haven't made a copy yet, do so now.) Then, type `swirl()` to get started. Tell Swirl your first name when it asks what to call you. Then, type the number that corresponds to the course `CBDS Data Analysis`. Type the number that corresponds to the lesson `L06 Inferential Analysis Q01 Swirl`. Do this swirl module! Once complete, paste the code at the end of the lesson here.

! /.+(PT5C|YSx1|ohkU|9mXn|hfHc|zsat|Og9F|f7yi|j0WN|IpKr).+/i

{points:3}
?8 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L06 Inferential Analysis Q02 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

! /.+(b400|rnZg|KcBS|RIzd|SCcB|wXcf|u4HM|DaLn|IgfM|ZG2V).+/i

{points:3}
?9 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L06 Inferential Analysis Q03 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

! /.+(4RjS|gRfS|D9lg|lMMv|HoyQ|NYt0|C1Yu|slGZ|gocd|wtzZ).+/i

{points:3}
?10 Within the same course on swirl: `CBDS Getting Data`, navigate to the lesson `L06 Inferential Analysis Q04 Swirl`. Do this swirl module! Once complete, paste the code provided at the end of the swirl module here.

!/.+(Fv8V|3iQb|1diH|A0kK|ovFN|Wd5e|mKy2|sCkw|V7bl|y6Ey).+/i

{/quiz}


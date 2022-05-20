# Inference: Multiple Regression

<!-- Google Slide ID -->
<!-- SLIDEID -->

<!-- Include a slide PNG with Page_ID from this Slide Deck: -->
<!-- ![](https://docs.google.com/presentation/d/SLIDEID/export/png?id=SLIDEID&pageid=PAGE_ID) -->
<!-- or use  `didactr::gs_slide_df("SLIDEID")$png_markdown` -->

In the last lesson, we finished discussing how to use `lm()` to assess the association between two numeric variables. However, there is one *incredibly* important topic that we have to discuss before moving on from linear regression. **Confounding** in something to watch out for in any analysis you're doing that looks at the relationship between two more more variables. So...what is confounding?

### Confounding

Well, let's consider an example. What if we were interested in understanding the relationship between shoe size and literacy. To do so, we took a look at this small sample of two humans, one who wears small shoes and is not literate and one adult who wears big shoes and is literate.


![Two humans and their respective shoe sizes and literacy levels](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1463)

If we were to diagram this question, we may ask "Can we infer literacy rates from shoe size?"


![Possible to infer literacy rate from shoe size?](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1471)

If we return to our sample, it'd be important to note that one of the humans is a young child and the other is an adult.


![Adult and child with their respective shoe sizes and literacy levels](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1478)

Our initial diagram failed to take into consideration the fact that these humans differed in their age. Age affects their shoe size *and* their literacy rates. In this example, age is a confounder.


![Age is a confounder](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1486)

Any time you have a variable that affects both your dependent *and* independent variables, it's a confounder. Ignoring confounders is not appropriate when analyzing data. In fact, in this example, you would have concluded that people who wear small shoes have lower literacy rates than those who wear large shoes. That would have been incorrect. In fact, that analysis was *confounded* by age. Failing to correct for confounding has led to misreporting in the media and retraction of scientific studies. You don't want to be in that situation. So, **always consider and check for confounding** among the variables in your dataset.


![Confounders are variables that affect both your dependent and independent variables](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1494)

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


![scatterplot of `wt` and `mpg` from `mtcars`](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1513)

From the scatterplot, the relationship looks approximately linear and the variance looks constant. Thus, we could model this using linear regression:

```r
## model the data without confounder
fit <- lm(mpg ~ wt, data = mtcars)
tidy(fit)
```


![mtcars linear regression output](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1509)

From this analysis, we would infer that for every increase 1000 lbs more a car weighs, it gets 5.34 miles *less* per gallon.  

However, we know that the weight of a car doesn't necessarily tell the whole story. The type of engine in the car likely affects both the weight of the car and the miles per gallon the car gets. Graphically, we could see if this were the case by looking at these scatterplots:

```r
## look at the difference in relationship
## between Engine types
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~vs)
```


![Scaterplot faceting for engine type](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1339)

From this plot, we can see that V-shaped engines (`vs`= 0), tend to be heavier and get fewer miles per gallon while straight engines (`vs` = 1) tend to weigh less and get more miles per gallon. Importantly, however, we see that a car that weighs 3000 points (`wt` = 3) and has a V-Shaped engine (`vs` = 0) gets fewer miles per gallon than a car of the same weight with a straight engine (`vs` = 1), suggesting that simply modeling a linear relationship between weight and mpg is not appropriate.

Let's then model the data, taking this confounding into account:

```r
## include engine (vs) as a confounder
fit <- lm(mpg ~ wt + vs, data = mtcars)
tidy(fit)
```


![confounding model taken into account](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1503)

Here, we get a more accurate picture of what's going on. Interpreting multiple regression models is slightly more complicated since there are more variables; however, we'll practice how to do so now.

The best way to interpret the coefficients in a multiple linear regression model is to focus on a single variable of interest and hold all other variables constant. For instance, we'll focus on weight (`wt`) while holding (`vs`) constant to interpret. This means that for a V-shaped engine, we expect to see a 4.44 miles per gallon decrease for every 1000 lb increase in weight.

We can similarly interpret the coefficients by focusing on the engines (`vs`). For example, for two cars that weigh the same, we'd expect a straight engine (`vs` = 1) to get 3.5 more miles per gallon than a V-Shaped engine (`vs`= 0).


![confounding model taken into account](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1531)

Finally, we'll point out that the p-value for `wt` decreased in this model relative to the model where we didn't account for confounding. This is because the model was not initially taking into account the engine difference. Sometimes when confounders are accounted for, your variable of interest will become more significant; however, frequently, the p-value will increase, and that's OK. What's important is that the data are most appropriately modeled.

### Correlation is not Causation

You've likely heard someone say before that "correlation is not causation," and it's true! In fact, there are [whole websites](http://www.tylervigen.com/spurious-correlations) dedicated to this concept.  Let's make sure we know exactly what that means before moving on. In the plot you see here, as the divorce rate in Maine decreases, so does per capita consumption of margarine. These two lines are clearly correlated; however, there isn't really a strong (or any) argument to say that one caused the other. Thus, just because you see two things with the same trend does not mean that one caused the other. These are simply **spurious correlations** -- things that trend together by chance. **Always** keep this in mind when you're doing inferential analysis, and be sure that you **never draw causal claims when all you have are associations**.


![Correlation does not equal causation](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g3daea37311_0_1545)


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


![output looking at `soda_ounces` dataset](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g5d2253b705_2_0)

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


![histogram of `soda_ounces`](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g5d2253b705_2_5)

A t-test will check whether the observed ounces differs from the expected mean (12 oz). As mentioned above, to run a t-test in R, most people use the built-in function: `t.test()`

```r
## carry out t-test
t.test(soda_ounces, mu = 12)
```


![`t.test()` output](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g5d2253b705_2_13)

In the output from this function, we'll focus on the 95 percent confidence interval. Confidence Intervals provide the range of values likely to contain the unknown population parameter. Here, the population parameter we're interested in is the mean. Thus, the 95% Confidence Intervals provides us the range where, upon repeated sampling, the calculated mean would fall 95 percent of the time. More specifically, if the 95 percent confidence interval contains the expected mean (12 oz), then we can be confident that the company is not shorting us on the amount of liquid they're putting into each can.

Here, since 12 is between 11.99187 and 12.00754, we can see that the amounts in the 100 sampled cans are within the expected variation. We could infer from this sample that the population of all cans of this soft drink are likely to have an appropriate amount of liquid in the cans.

However, as mentioned previously, t-tests are an extension of linear regression. We could also look to see whether or not the cans had the expected average of 12 oz in the data collected using `lm()`.

```r
# from linear regression
regression_output <-  lm(soda_ounces ~ 1)

# calculate confidence interval
confint(regression_output)
```


![comparing `t.test()` and `lm()` output](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g5d2253b705_2_21)

 Note that the confidence interval is the exact same here using `lm()` as above when we used `t.test()`! We bring this up not to confuse you, but to guide you away from trying to memorize each individual statistical test and instead understand how they relate to one another.

### More Statistical Tests

Now that you've seen how to measure the linear relationship between variables (linear regression) and how to determine if the mean of a dataset differs from expectation (t-test), it's important to know that you can ask lots of different questions using extensions of linear regression.

These have been nicely summarized by  Jonas Kristoffer Lindelov in is blog post [Common statistical tests are linear models (or: how to teach stats)](https://lindeloev.github.io/tests-as-linear). We've included the table summarizing his post here, but we recommend you check it out and the examples included within it carefully!


![Common statistical tests are linear models](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/export/png?id=1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo&pageid=g5d2253b705_2_105)


### Summary

In these few lessons on inference, we have covered *a lot*. We started off discussing that inferential data analysis is required since we often cannot take measurements from everyone in our population of interest. Thus, we take representative samples and estimate what the measure is in the larger population. Since this is an estimate, there is always some measure of uncertainty surrounding this estimate. We talked about how inferences are drawn using a single numeric variable. We talked in detail about simple linear regression and touched on multiple linear regression, with a brief discussion on confounding. We discussed that linear regression helps describe the relationship between two numeric variables (`trees` example) and that multiple linear regression helps account for confounding in an analysis (`mtcars` example). We discussed t-tests (the soda example), including how t-tests (and many other common statistical tests!) are variations on linear regression. We'll end this lesson by reiterating that being able to draw conclusions and clear interpretations of your analyses is critical and that you should *never* draw causal conclusions when you have associations.


### Additional Resources

* [Common statistical tests are linear models (or: how to teach stats)](https://lindeloev.github.io/tests-as-linear), blog post by Jonas Kristoffer Lindelov



### Slides and Video

![Inference: Multiple Regression](https://youtu.be/1kGutQNzP6M)

  - [Slides](https://docs.google.com/presentation/d/1xjMEjKpqu5bkgwPIuIaBmdDczW7a6lPBoagzGtvn7zo/edit?usp=sharing)

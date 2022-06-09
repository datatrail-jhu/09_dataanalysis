# Prediction and Machine Learning

In the last lesson, we discussed that inferential data analysis looks to learn something about a population by making inferences from a representative sample. While the goal in inference is to learn something about the population, when we're talking about **prediction**, the focus is on the individual. The goal of predictive analysis and machine learning approaches is to **train a model using data** to make predictions about an *individual*.

In other words, the **goal of predictive analysis** is to use data you have now to make **predictions** about **future** data.  

We spend a lot of time trying to predict things in daily life- the upcoming weather, the outcomes of sports events, and the outcomes of elections. We've previously mentioned Nate Silver at [FiveThirtyEight](fivethirtyeight.com), where they try and predict the outcomes of U.S. elections (and sporting events too!). Using historical polling data and trends and current polling, FiveThirtyEight builds models to predict the outcomes and the next US Presidential vote - and has been fairly accurate at doing so! FiveThirtyEight's models accurately predicted the 2008 and 2012 elections and was widely considered an outlier in the 2016 US elections, as it was one of the few models to suggest Donald Trump had a chance of winning.

Predicting the outcome of elections is a key example of predictive analysis, where historical data (data they have now) are used to predict something about the future.


![Basics of Predictive Analysis](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1)

In this lesson we'll walk through the important pieces of carrying out a predictive analysis, what considerations should be made when making predictions, discuss what machine learning is, and talk about how to assess accuracy within a predictive analysis.

### What is Machine Learning?

So far we've been discussing predictive analysis. But, you may have heard people on the news or in daily life talking about "machine learning." The goal of machine learning is to build models (often referred to as **algorithms**) from the patterns in data that can be used for predictions in the future. For our purposes, it's safe to argue that when doing predictive analysis, we're actually doing machine learning. As such, we'll use machine learning throughout the rest of this lesson. Here, **machine learning** refers to using the relationships within a dataset to build a model that can be used for prediction.

That said, there is without a doubt an entire field of individuals dedicating themselves to machine learning. This lesson will just touch on the very basics within the field.

### Machine Learning

In order to make predictions for the future using data you have now, there are four general steps:

1. Data Splitting - what data are you going to use to train your model? To tune your model? To test your model?
2. Variable Selection - what variable(s) from the data you have now are you going to use to predict future outcomes?
3. Model Selection -  How are you going to model the data?
4. Accuracy Assessment - How are you going to assess accuracy of your predictions?


![Basic Steps](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_5)

### Data Splitting

For predictive analysis (or machine learning), you need data on which to train your model. These are the set of observations and corresponding variables that you're going to use to build your predictive model. But, a predictive model is only worth something if in can predict accurately in a future dataset. Thus, often, in machine learning there are three datasets used to build a predictive model: train, tune, and test.

#### Train, Tune, Test

Okay, admittedly, these are *not* the most common words to use for this process. Many people use train, validate, and test. However, almost as many people use train, test, and validate, as evidenced by this [Twitter poll](https://twitter.com/michaelhoffman/status/989251677646704641):


![Twitter poll](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_9)

As such, we're mentioning those terms so that you're familiar with them, but since machine learning people can't agree on the order of the words, in this lesson, we've decided to go with more helpful terminology, as suggested by [Carl de Boer](https://twitter.com/carldeboerphd?lang=en): train, tune, and test.


![Train, Tune, Test](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_14)

##### Train

Training data are the data we described above. The data used to build your predictive model. These data are referred to as your training set.


![training data](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_93)

##### Tune

Before getting started, your original dataset is often split. Some (often 70%) of the observations in your dataset are used to train the model, while 30% are held out. This held-out set of observations from your original dataset are then used to improve (tune) the accuracy of model.

These hold-out samples are used to see whether or not your predictive model accurately makes predictions in the set of samples *not* used to train the model.


![tuning data](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_127)


##### Test

Finally, an independent dataset -- one that is *not* from the same experiment or source as the data used to train and tune your model are used to see whether or not your predictive model makes accurate predictions in a completely new dataset. Predictive models that can be generalized to and make accurate predictions in new datasets are the best predictive models.


![testing data](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_111)


### Variable Selection

For predictive analysis to be worth anything, you have to be able to predict an outcome accurately with the data you have on hand.

If all the data you have on hand are the heights of elephants in Asia, you're likely not going to be able to predict the outcome of the next US election. Thus, the variables in the data you have on hand have to be related to the outcome you're interested in predicting in some way (which is *not* the case for the heights of elephants and US elections).

Instead, to predict US elections, you'd likely want some data on outcomes of previous elections, maybe some demographic information about the voting districts, and maybe some information about the ages or professions of the people voting. All of these variables are likely to be helpful in predicting the outcome in a future election, but which ones are actually predictive? All of them? Some of them? The process of deciding which variables to use for prediction is called **variable selection**.


![Variable Selection](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_180)

You ideally want to include the *fewest variables* in your model as possible. Only having a few variables in your model avoids you having to collect a ton of data or build a really complicated model. But, you want the model to be as accurate as possible in making predictions. Thus, there's always a *balance* between minimizing the variables included (to only include the most predictive variables!) and maximizing your model's predictive accuracy.
In other words, like in inferential analysis, your ability to make accurate predictions is dependent on whether or not you have measurements on the right variables. If you aren't measuring the right variables to predict an outcome, your predictions aren't going to be accurate. Thus, **variable selection**, is incredibly important.

All that said, there *are* machine learning approaches that carry out variable selection for you, using all the data to determine which variables in the dataset are most helpful for prediction. Nevertheless, whether you are deciding on the variables to include or the computer is deciding for you, variable selection is important to accurate prediction.

#### Lack of Causality Reminder

As a reminder, as was discussed in the inferential analysis, just because one variable may predict another, it *does not mean that one **causes** the other*. In predictive analysis, you are taking advantage of the relationship between two variables, using one variable (or one *set* of variables)  to predict a second variable. Just because one variable accurately predicts another variable does *not* mean that they are causally related.


### Model Selection

Additionally, there are many ways to generate prediction models. Each model was developed for a different and specific purpose. We'll discuss a few types of predictive models here, with a focus on using linear regression. However, regardless of which model you choose to use for prediction, it's best to keep in mind that, in general, the **more data** you have and the **simpler your model is**, the best chance you have at accurately predicting future outcomes:

* More data - The more observations you have and the more variables you have to choose from to include in your model, the more likely you are to generate an accurate predictive model. Note, however, large datasets with lots of missing data or data that have been incorrectly entered are *not* better than small, complete, and accurate datasets. Having a trustworthy dataset to build your model is critical.
* Simple Models - If you can accurately predict an individual's height by only considering that person's parents height, then go for it. There's no need to include other variables if a single variable generates accurate predictions. A simple model that predicts accurately (regardless of the dataset in which you're predicting) is better than a complicated model.


#### Regression vs. Classification

Before we jump into discussing the various models you can use for predictive analysis, it's important to first note the difference between regression and classification. **Regression** is used when you're trying to predict a continuous variable. For example if you're trying to predict an individual's age, you would use regression. On the other hand **classification** is used for categorical variables, as it predicts which *group* an individual belongs to. An example of a classification would be predicting someone's education level, as there are only a limited number of groups into which one would be.


![Regression vs. Classification](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_215)

With regards to machine learning, certain methods can be used for both regression and classification, while others are designed exclusively for one or the other.

In this lesson we'll discuss one regression model and one classification model. However, there are literally [hundreds of models](http://topepo.github.io/caret/available-models.html) available for predictive modeling. Thus, it's important to keep in mind that we're really just scratching the surface here.

#### Linear Regression

Just like in the previous lesson in inferential analysis, linear regression is an incredibly powerful method in machine learning! The concept here is the same as it was in the last lesson: we're going to capitalize on the linear relationship between variables. However, instead of using linear regression to estimate something about a larger population, we're going to use linear regression for prediction of a **continuous variable**.


![linear regression](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_262)

To better understand this, let's use a conceptual example. Consider trying to predict a child's age from their height. You'd likely expect that a taller child was older. So, let's imagine that we're looking here at the training data. We see the expected relationship between height and age in this scatterplot.


![training data for age and height example](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_385)

Using the training data, linear regression is then carried out to model the relationship.


![linear regression models the relationship between a child's height and their age in the training data](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_533)

Now that we have our model, we no longer care about the individual data points in the training data. We'll simply use the linear regression model to make our predictions.


![Our linear regression model will be used for prediction](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_608)

Then, in the future when we know a child's height, we can return to our linear regression, supply it with the new child's height and it will return the child's age using the model we've built.


![predicting age from height using linear regression](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_683)

Conceptually, this is what will happen whenever we use linear regression for machine learning. However, it will be carried out mathematically, rather than graphically. This means you won't have to look on the graph to see your predictions. You'll just have to run a few lines of code that will carry out the necessary calculations to generate predictions.

Additionally, here we're using a single variable (height) to model age. Clearly, there are other variables (such as a child's sex) that could affect this prediction. Often, regression models will include multiple predictor variables that will improve prediction accuracy of the outcome variable.


#### Classification and Regression Trees (CART)

Alternatively, when trying to predict a **categorical variable**, you'll want to look at classification methods, rather than regression (which is for continuous variables). In these cases you may consider using a **classification and regression tree (CART)** for prediction. While not the *only* classification method for machine learning, CARTs are a basic and commonly-used approach to prediction for categorical variables.

Conceptually, when using a CART for prediction, a **decision tree** is generated from the training data. A decision tree branches the data based on variables within the data. For example, if we were trying to predict an individual's education level, we would likely use a dataset with information about many different people's income level, job title, and the number of children they have. These variable would then be used to generate the tree.

For example, maybe the first branch would separate individuals who make less than 40,000 dollars a year. All of those in the training data who made less than 40K would go down the left-hand branch, while everyone else would go down the right-hand branch.


![Start to generate branches for your decision tree using the data to make decisions](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_843)

At each level, the data will continue to be split, using the information in the training data.


![Branches continue to be generated from the training data](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_892)

Finally, a full decision tree will be constructed, such that there will be a label for the variable we're trying to predict at the end of each branch.


![labels are assigned at the end of each tree](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_920)

This CART will then be used for prediction in future samples. Thus, if you follow the path along the decision tree, for this example CART,  an individual who made more than $40,000 a year, was in a manual labor profession, and had children, this CART would predict that that individual's education level were "High School."


![Predictions are then made following the decisions on the tree](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_992)

Again, this is conceptually and graphically how a CART works; however, when generating a CART yourself, it again only takes a few lines of code to generate the model and carry out the necessary math.

### Model Accuracy

A common saying is that prediction is hard, especially about the future. This is true in predictive analysis. Thus, it's important to always carefully evaluate the accuracy of your model and to never overstate how well you are able to make predictions.

Generally, if your predictions are correct, you're doing well! If your predictions are wrong, you're not doing ass well. But, how do we define "well"?

#### Error Rates

To assess whether or not our predictive models are doing well, we calculate error rates. The two most common ways to assess how well our predictive models are doing are:

1. RMSE (Root-mean-square Error)
2. Accuracy

We'll note here that in order to assess error, you have to know the truth (the actual value) in addition to the predicted value. Thus, RMSE and Accuracy are assessed in the training and tuning data, where you *know* the actual value as well as the predicted value.

##### RMSE

The root-mean-square error (RMSE) is a measure used to assess prediction error for continuous variables.  Generally, we want to minimize error in prediction. Thus, a small RMSE is better than a large RMSE.


![RMSE](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1084)

Mathematically speaking, the RMSE is the square root of the variance. From earlier lessons, we know that **variance** has something to do with how confident we are in our estimate. Since we're trying to determine how close our predictions are to the actual value, this seems like a good place to start.

When we look at the equation, we can see that the difference between the predicted and actual values is calculated `(Predicted - Actual)` and that this value is then squared `(Predicted - Actual)^2`. These differences squared are then added for every individual in your dataset (that's what the sigma, or big E says). This value (the sum of all the errors squared) is then divided by the number of individuals in your dataset (`N`). This square root of this value is then taken. This is how RMSE is calculated.

We went through that description because we want to point out that when differences are squared `(Predicted - Actual)^2`, outliers, or samples whose prediction was far off from their actual value are going to increase the RMSE a lot. Thus, **a few outliers can lead to really high RMSE values**, even if all the other predictions were pretty good. This means it's important to check to see if a few outliers (meaning a few bad predictions) are leading to a high RMSE value.


##### Accuracy

Alternatively, to assess error in the prediction of categorical variables, **accuracy** is frequently used. Accuracy looks to determine the number of predictions that match their actual values.


![Accuracy](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1102)

The closer this value is to 100%, the better your predictive model was. The closer to 0%, the worse your model's predictions are.

Accuracy is a helpful way to assess error in categorical variables, but it can be used for numeric values too. However, it will only account a prediction "correct" if it matches exactly. In the case of age, if a sample's age is 10 and the model predicts it to be 10, the model will say it's been predicted correctly. However, if a sample's age is 10 and it is predicted to be 9, it will be counted as incorrect, even though it was close. A prediction off by a year will be marked just as incorrect as a sample predicted off by 50 years. Due to this, RMSE is often opted for instead of accuracy for continuous variables.

### Machine Learning Examples

To better understand all of the concepts we've just discussed, we'll walk through two examples, one for prediction of a continuous variable using linear regression and a second for prediction of a categorical value using a CART.

#### The `caret` package

There is an *incredibly* helpful package available in R thanks to the work of [Max Kuhn](https://twitter.com/topepos?lang=en). As mentioned above, there are hundreds of different machine learning algorithms. Max's R package `caret` has compiled all of them into a single framework, allowing you to use *many* different machine learning models via a single package. Additionally, he has written [a very helpful book](http://topepo.github.io/caret/) to accompany the package. We'll be using this package throughout these examples.

#### Continuous Variable Prediction: Linear Regression

For this example, we'll keep it simple and use a dataset you've seen before: the `iris` dataset. This way you can focus on the syntax used in the `caret` package and the steps of predictive analysis. In this example, we'll attempt to use the data in the `iris` dataset to predict `Sepal.Length`

##### Data Splitting

As mentioned above, one of the first steps is often to take your dataset and split it into a training set and a tuning set. To do this, we'll load the `caret` package and use the `createDataPartition()` function to split the dataset.

```r
## install and load packages
install.packages("caret")
library(caret)
library(dplyr)

## get Index for training set
set.seed(123)
trainIndex <- createDataPartition(iris$Species, p = .7,
                                  list = FALSE,
                                  times = 1)

## split into training and tuning set                                  
iris_train <- iris %>% slice(trainIndex)
iris_tune <- iris %>% slice(-trainIndex)

## take a a look
str(iris_train)
str(iris_tune)
```

After running this code , if we take a look at the training and tuning datasets, we can see that 70% of our observations are in the training dataset and the other 30% are in the tuning dataset, as we specified.


![structure of training and tuning data](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1230)

##### Variable Selection

What if we first try to predict `Sepal.Length` in our training data from `Sepal.Width`. To do that, we provide the `train` function with the model and specify that the dataset we'll be using is the `iris` dataset. Additionally, we let the train function know that we want to run linear regression (`lm`) and that we want to assess our model's accuracy using the `RMSE` metric.

```r
## train regression model
set.seed(123)
fit.lm <- train(Sepal.Length ~ Sepal.Width,
                data = iris,
                method = "lm",
                metric = "RMSE")
```

After training the model, we take a look at our RMSE, and see that it is `0.82` for this dataset.

```r
## look at RMSE
fit.lm$results
```


![RMSE](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1151)

Using this model, we would then generate predictions of `Sepal.Length` in the tuning dataset using the `predict()` function. Since we know the actual `Sepal.Length` in the tuning set, these predictions can then be visualized using a scatterplot.

```r
## make predictions in tuning data set
predictions <- predict(fit.lm, iris_tune)


## visualize results
iris_tune %>%
  mutate(predictions = predictions) %>%
  ggplot() +
  geom_point(aes(Sepal.Length,predictions))
```


![Scatterplot shows `Sepal.Length` is not predicted well from `Sepal.Width` alone](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1143)

Given the lack of correlation, we can see that this model does not predict sepal length in our tuning set well.

In this first attempt, we specified which variable to use for prediction; however, what if we provided our regression model with all the variables in the dataset (specified by the `.` in the code here:

```r
## train regression model
set.seed(123)
fit.lm2 <- train(Sepal.Length ~ .,
                data=iris,
                method="lm",
                metric= "RMSE")

## look at RMSE
fit.lm2$results

## make predictions in tuning data set
predictions2 <- predict(fit.lm2, iris_tune)


## visualize results
iris_tune %>%
  mutate(predictions = predictions2) %>%
  ggplot() +
  geom_point(aes(Sepal.Length,predictions2))
```


![Scatterplot](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1173)

##### Accuracy Assessment

Now when we look at the results we visually see improvement in the `Sepal.Length` predictions within the tuning dataset, which is also reflected in the decreased RMSE (0.324).

Here, by including additional variables (often referred to as `features` in machine learning), we see improved prediction accuracy. There are more robust ways than trying a number of different variables in your model to select which should be included in your predictive model. These will be covered in lessons in the advanced track of this Course Set.

##### Model Selection

In this example (and the example below), we've pre-specified which model we were going to use for the example ahead of time. However, there are many different regression models from which we could have chosen and a number of parameters in each that can be tuned, each of which can improve the predictive accuracy of your model. Learning how to choose and tune the best model will be discussed in lessons in the advanced track of this Course Set; however, for now we'll note that, as specified in the `caret` book, the `train()` function has a number of capabilities. It can:

* evaluate how different tuning parameters in the model affect performance
* choose the "optimal" model, given these parameters
* estimate model performance (given a training set)

Here, we haven't played around much with the tuning parameters; however, checking out [the documentation on how to do this](http://topepo.github.io/caret/model-training-and-tuning.html#fitting-models-without-parameter-tuning) can lead to improved prediction as you generate predictive models on your own.


#### Categorical Variable Prediction: CART

A more natural prediction model given this dataset may be to predict what `Species` a flower is, given its measurements. We'll use the `iris` dataset to carry out this classification prediction here, using a CART.

##### Data Splitting

Data splitting from above will be used here. Thus, our training set will still be `iris_train` and our tuning set `iris_tune`.

##### Variable Selection

Given the relatively small nature of this dataset, we'll build the CART using all of the data; however, further and more robust optimization of what variables are included in the model is possible within the `caret` package.

Here we specify that we want to predict `Species`, that we want to use a CART to do so by setting the method to `rpart`, and that, since it's a categorical variable, we're going to use `Accuracy` to as our assessment metric.

```r
## CART
set.seed(7)
fit.cart <- train(Species~.,
                data = iris,
                method = "rpart",
                metric = "Accuracy")

## look at Accuracy
fit.cart$results

## make predictions in tuning data set
predictions_cart <- predict(fit.cart, iris_tune)

table(iris_tune$Species, predictions_cart)
```
#### Accuracy Assessment


![`table()` output](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/export/png?id=1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ&pageid=g3db61636bd_0_1187)

Here, we see that in the tuning data, the CART accurately predicted the Species of most flowers using the model generated from the training data; however, it did make two incorrect predictions (the 1s in the table).


### Summary

In this lesson we have covered the basics of what predictive analysis is, what types of prediction are commonly done, and how to carry out a predictive analysis using the caret package. Surely, this lesson has only introduced the very basics of machine learning, and there is still a lot out there to learn beyond what is in this lesson!

### Additional Resources

* [The `caret` Package book](http://topepo.github.io/caret/index.html)
* [Example of machine learning using `caret` and the `iris` dataset for classification](https://rstudio-pubs-static.s3.amazonaws.com/261616_3097bfd3aa4341faafede5ed2ca7bb39.html)

### Slides and Video

![Prediction & Machine Learning](https://www.youtube.com/watch?v=qNC5OGra4d8)

* [Slides](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/edit?usp=sharing)

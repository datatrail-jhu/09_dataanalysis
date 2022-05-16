# Do I Have The Data I Need?

After identifying your problem and transforming it into a data science question, your next step is to identify and ensure that you have access to the data necessary to answer the question. However, good data can be hard to come by. Depending on your question, it can be costly or simply infeasible to obtain the data you need.

For instance, consider wanting to know the answer to the question "Does money make people happy?" One way to get data for your problem is to give people cash and to collect data from those same individuals later to see if the money they received made happier. First, this isn't a cheap experiment, so you may not have the money to do this. Second, how would you want to *measure happiness*? You can't just step on a scale and measure someone's happiness. If you had each individual report their happiness on a scale of 1-10, one person may rate their happiness at an 8. Another person, who could be just as happy as the person who rated their happiness at an 8 may rate their happiness at a 6. You can see quickly how getting the right data to answer this question may not be so simple.


![Does money make people happy?](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/export/png?id=1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o&pageid=g3ec882b221_0_25)

In another situation, what if you are interested in answering the question "Does texting while driving causes accidents?" It wouldn't be ethical to run a study and tell people to text while they're driving and then determine if those who texted had more care accidents. It's not okay to design experiments that knowingly put participants at risk of harm.


![Does texting while driving cause accidents?](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/export/png?id=1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o&pageid=g3ec882b221_0_56)

Thus, although each of us generate data daily through the apps we use or through our activity on social media platforms, often the data most easily available are *not* the data we need to answer the questions we're most interested in answering. In this lesson we'll discuss **how to determine whether or not you have the data** you need to answer the question you have, **limitations of the data** you have, **considerations to make** when you don't yet have the data you need, and what to do to **get the data you need**.

### The Data Science Question

In the last lesson we discussed how to take a problem you're interested in understanding better and turning it into a data science question. Specifically, the last lesson looked at [David Robinson](http://varianceexplained.org/about/)'s [blog post analyzing Donald Trump's tweets](http://varianceexplained.org/r/trump-tweets/). David Robinson set out to answer the specific question **"How do the tweets on the _@realDonaldTrump_ account differ between those posted using an iPhone vs. those posted using an Android?"** Before answering the question, David Robinson determined what/whose data would need to be collected, what measurements he would need, the limitations to the analysis, and the type of analysis he would use.

In this lesson, we're going to really focus on the second and third questions there. What data do you need to answer your data science question and what limitations do these data have? We'll focus on the details of how to get the data necessary to answer the question of interest. We'll walk through this process again using the [Trump Tweets blog post](http://varianceexplained.org/r/trump-tweets/) as an example.


![Trump Tweets Blog Post](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/export/png?id=1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o&pageid=g3ec882b221_0_155)

### The Perfect Dataset: The Data We Want

Once you determine your data science question of interest, it's helpful to **envision the perfect dataset**. This dataset likely doesn't exist in the real world, but our goal will be to get data that match this optimal dataset *as closely as possible*.

Thus to answer the question

> Do the tweets on the _@realDonaldTrump_ account differ between those posted using an iPhone vs. those posted using an Android? Are the Android tweets angrier and more negative?

we would ideally want a dataset where each row is a different tweet with each row containing information on the following variables:

* `date` - date the tweet was written
* `time` - time the tweet went out
* `os` - the operating system of where the tweet came from (Android or iPhone)
* `author`- author of each tweet
* `location` - where the author was when the tweet was written
* `tweet` - what the tweet said
* `censored` - whether or not the tweet was later deleted
  * `censored_date` - date on which the tweet was deleted
  * `censored_time` - time at which the tweet was deleted
* `anger` - some measurement of how angry and negative the tweet is

Additionally, in a perfect world, we'd have all the tweets ever tweeted from _@realDonaldTrump_.

Having all these data in this format would enable us to answer the question of interest!

### The Data We Have

*But*, the data we *have* are typically not *exactly* the data we *want*.

In this case, David Robinson was able to use the `twitteR` package and the Twitter API to obtain a number of Donald Trump's tweets. Ultimately, the dataset he used for his analysis contained 628 tweets from an iPhone, and 762 tweets from an Android. That's not nearly *all* the tweets from this account; however, the Twitter API limits the number of tweets one can obtain. Already, the **data we have are not the optimal data we wanted**, but that's OK.

Additionally, the data from the Twitter API does *not* include the `author`, the author's location, nor any information about deleted tweets. Again, the data we have are quite different from our optimal data.

Finally, the dataset does not include any measure of how angry or negative the content of the tweets are. David will have to use the tweets to determine that during his analysis.


![The data we have](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/export/png?id=1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o&pageid=g3ec882b221_0_186)

Nevertheless, David did have information on this subset of tweets, including the date, time, os, and what the tweet said. While not exactly the data he would have likely liked to have, David was still able to use these data while noting the limitations of the data in his blog post!

### The Data We Can Get (Easily)

In this case, David Robinson had enough data to answer the question he was interested in. However, often you may not have the data you need right from the beginning. After looking at the data you have, it's worth considering whether or not there are data that you need that you can easily get access to.

Depending upon your data science question, you may consider obtaining data from any of the sources discussed in the Getting Data course. For example, you could look at data from:

* Government Data
* APIs
* Open Datasets (such as those on [Kaggle](www.kaggle.com) or [data.world](data.world))
* your company

These are all examples of places where it's usually pretty easy to obtain data. And, ideally, whenever possible, you'll want to work with **raw data** -- data that haven't yet been cleaned (i.e. outliers have not yet been removed) so that you know you have the most complete dataset from the start. You can then clean and wrangle the data after getting the raw data.

However, what if the data you want don't exist in any of these places? When the data aren't available,  it's up to you (your team, your boss, or your company) to collect the data.

### Data Collection

In practice, data are defined by how they are collected. While it may not always be up to you to determine how the data are going to be collected, it's important to understand the different ways in which data are collected:

* __Observational data__ are collected from a sample of the bigger population of interest. For instance, data on household expenditure in the U.S. are usually collected from a sample of American household. Observational data can be in the following forms:

  * __Cross-sectional data__ are collected from a sample of the bigger population of interest *at a specific point in time*.

  * __Longitudinal or panel data__ are collected from a sample of the population of interest but *at multiple points in time*. For instance, data on the effect of peer effect in school on life outcomes are measured at multiple points in the lives of the individuals. In longitudinal or panel data, the *sample does not change from one point in time to another*. For example, if data is collected on 1000 individuals in the year 2010, in 2015 the data is likely collected from the same 1000 individuals.

* __Experimental data__ are collected through a randomized experiment. In an experiment, the researchers divide the sample into to or more (that is chosen from the bigger population of interest) and assign the treatment (let's say the vaccination) to one group while the group receives no treatment. The outcomes are then observed and compared. This differs from observational data, which involves collecting data without changing any of the existing conditions.

If you are able to generate the dataset you need or collect the data you wanted to answer your question, then you're all set. But, what if there are limitations to you getting those data?   

### The Data We Can't Get

Often there will be data you would love to have to answer your data science question, but you won't be able to get those data. There are a number of limitations to data collection. We'll discuss a number of common ones here.

#### Limited Resources

In the introduction to this lesson, we discussed an experiment where we would give people money and measure their happiness. However, if we didn't have the money to carry out this experiment, we wouldn't be able to run this experiment and thus, **money** would be a limited resource.

However, money is not the only limiting factor. What if you need to know the answer to your question next month but it would take you a year to collect the necessary data? In this case **time** would be a limited resource.

Alternatively, what if another company had the data you needed, but the company you work for is a competitor. In this case, they likely wouldn't share the data with you. **Access to data** can also be limiting.

#### Ethical Limitations

In the introduction to this lesson, we also talked about the case where we wanted to know if texting increases the number of accidents. We mentioned that we wouldn't be able to carry out the experiment of telling people to text when they're driving and then seeing if those people get into more accidents due to ethical limitations. It is **unethical to collect data knowingly putting individuals in harms way**.

However, there are more nuanced situations as well. What if you want to collect data about reproductive health? You may want to know *everything* about each mother's medical history, including very sensitive and personal information. For example, you may want to know whether or not each individual in your dataset has ever had an abortion. Asking sensitive and invasive questions should only be asked when absolutely necessary. Further, this data will *always* have to be stored securely, and can only be asked with approval of and oversight committee (such as an Institutional Review Board). Thus, while it may be *helpful* to have information about certain variables, it may be inappropriate or too invasive to obtain this information.

#### Security

Mentioned briefly above, but to really spell it out here: not all data are publicly-available and not all data *should* be publicly-available. **Personal data and data that contain sensitive information must be secured properly and cannot be shared freely**. While the data you want may exist somewhere, you may not have access to it, nor will you be granted access to it for security reasons. In these cases, you will not be able to use these data.

### Questions to Ask Ourselves

If you run into problems obtaining or collecting the data you need to answer your question, there are a number of questions to ask yourself:

* Can I **change the question** in such a way that is still interesting but that can be answered with the data that I *do* have?
* If I use the data to which I have access, **is the project still worth doing**?
* **Will the project be feasible** if I change it?
* If it is still feasible, I'll need to **rework the question and redesign my data collection plan**. What will that look like?

In the case where you decide to change the question and determine that the project is still worth doing at this point, it's important to go back through the exercise of determining what data you would optimally have, what you do have, and what you can get easily to ensure that you won't be wasting your time by moving forward with the project.

However, in some cases, you'll have a super interesting question, but you won't be able to do the project given the data you have. In these situations, save the idea for a later point when you may have the resources or access to the data you need, and then move onto the next one. Everyone has had to abandon projects in their career, and it's OK to move on. It's much better to leave a project behind in the planning stages than to spend months or years on a project/analysis that was doomed from the start!

### Are the Data We Have Good Data?

All that said, once you have your data science question *and* the data you want to use, you'll need to determine **whether the data are good enough**. If they're not, before you spend hours on it, quit and look for other sources of data.

#### The need to wrangle

For example, data downloaded from other resources often need to be cleaned and wrangled. (Note: If the data that you obtain, however, are pre-processed, make sure you understand how the processing was done!) To clean your data, you'll always want to record the steps you take to reformat the data. We suggest the following steps to check and tidy the data for your analysis. Make sure:

* each variable forms a column
* each observation forms a row
* each table/file stores data about one kind of observation (e.g. people/hospitals).
* if variables are collected from multiple sources, they are merged properly
* column names are easy to use and informative
* apparent mistakes in the data have been removed
* missing values are formatted uniformly and correctly
* variable values are internally consistent
* appropriate transformed variables have been added

These are the concepts previously discussed in the Data Tidying lessons in an earlier course in this Course Set, so many of them should be familiar. Cleaning data to make sure the dataset is in a tidy format, that the variables are all appropriately-named, and that the values within each variable are as you expect them to be is an important step in determining whether or not the data you have will be useful in answering your data science question. These topics will be further discussed in the Descriptive Analysis and Exploratory Analysis lessons in the later lessons in this course.

#### When data aren't good

That all said, let's assume you have the dataset that contains the variables you are looking for, and it is tidy and ready to go for your analysis. It's always nice to step back to make sure the data is the right data before you spend hours and hours on your analysis. So, let's discuss some of the potential and common issues people run into with their data.

##### Number of observations is too small

It happens quite often that collecting data is expensive or not easy. For instance, in a medical study on the effect of a drug on patients with Alzheimer disease, researchers will be happy if they can get a sample of 100 people. These studies are expensive, and it's hard to find volunteers who enroll in the study. It is also the case with most social experiments. While data are everywhere, the data you need may not be. Therefore, most data scientists at some point in their career face the curse of small sample size. Small sample size makes it hard to be confident about the results of your analysis. So when you can, and it's feasible, **a large sample is preferable to a small sample**. But when your only available dataset to work with is small you will have to note that in your analysis. Although we won't learn them in this course, there are particular methods for inferential analysis when sample size is small.

##### Dataset does not contain the exact variables you are looking for

In data analysis, it is common that you don't always have what you need. You may need to know individuals' IQ, but all you have is their GPA. You may need to understand food expenditure, but you have total expenditure. You may need to know parental education, but all you have is the number of books the family owns. It is often that the variable that we need in the analysis does not exist in the dataset and we can't measure it. In these cases, our best bet is to find the closest variables to that variable. Variables that may be different in nature but are highly *correlated* with (similar to) the variable of interest are what are often used in such cases. These variables are called **proxy variables**.

For instance, if we don't have parental education in our dataset, we can use the number of books the family has in their home as a proxy. Although the two variables are different, they are highly correlated (very similar), since more educated parents tend to have more books at home. So in *most* cases where you can't have the variable you need in your analysis, you can replace it with a proxy. Again, it must always be noted clearly in your analysis why you used a proxy variable and what variable was used as your proxy.

##### Variables in the dataset are not collected in the same year

Imagine we want to find the relationship between the effect of cab prices and the number of rides in New York City. We want to see how people react to price changes. We get a hold of data on **cab prices in 2018**, but we only have data on the **number of rides from 2015**. Can these two variables be used together in our analysis? Simply, no. If we want to answer this question, we can't match these two sets of data. If we're using the prices from 2018, we should find the number of rides **from 2018** as well. Unfortunately, a lot of the time, this is an issue you'll run into. You'll either have to find a way to get the data from the same year or go back to the drawing board and ask a different question. This issue can be ignored only in cases where we're confident the variables does not change much from year to year.

##### Dataset is not representative of the population that you are interested in

You will hear the term *representative sample*, but what is it? Before defining a representative sample, let's see what a population is in statistical terms. We have used the word *population* without really getting into its definition.

A sample is part of a population. A population, in general, is every member of the whole group of people we are interested in. Sometimes it is possible to collect data for the entire population, like in the U.S. Census, but in most cases, we can't. So we collect data on only a subset of the population. For example, if we are studying the effect of sugar consumption on diabetes, we can't collect data on the entire population of the United States. Instead, we collect data on a *sample* of the *population*. Now, that we know what sample and population are, let's go back to the definition of a representative sample.

A **representative sample** is a sample that accurately reflects the larger population. For instance, if the population is every adult in the United States, the sample includes an appropriate share of men and women, racial groups, educational groups, age groups, geographical groups, and income groups. If the population is supposed to be every adult in the U.S., then you can't collect data on just people in California, or just young people, or only men. This is the idea of a representative sample. It has to model the broader population in all major respects.

We give you one example in politics. Most recent telephone poles in the United States have been bad at predicting election outcomes. Why? This is because by calling people's landlines you can't guarantee you will have a representative sample of the voting age population since younger people are not likely to have landlines. Therefore, most telephone polls are skewed toward older adults.

Random sampling is a necessary approach to having a representative sample. Random sampling in data collection means that you randomly choose your subjects and don't choose who gets to be in the sample and who doesn't. In random sampling, you select your subjects from the population at random like based on a coin toss. The following are examples of lousy sampling:

* A research project on attitudes toward owning guns through a survey sent to subscribers of a gun-related magazine (gun magazine subscribers are not representative of the general population, and the sample is very biased)
* A research project on television program choices by looking at Facebook TV interests (not everybody has a Facebook account)
* A research study on school meals and educational outcomes done in a neighborhood with residents mainly from one racial group (school meal can have a different effect on different income and ethnic groups)
* A researcher polls people as they walk by on the street.
* A TV show host asks the program viewers to visit the network website and respond to a poll.

With this logic, most online surveys or surveys on social media has to be taken with a grain of salt because not members of all social groups have an online presentation or use social media.

The moral of the story is that **always think about what your population is**. Your population will change from one project to the next. If you are researching the effect of smoking on pregnant women, then your population is, well, pregnant women (and not men). After you know your population, then you will always want collect data from a sample that is representative of your population. Random sampling helps.

And lastly, if you have no choice but to work with a dataset that is not collected randomly and is biased, be careful not to generalize your results to the entire population. If you collect data on pregnant women of age 18-24, you can't generalize your results to older women. If you collect data from the political attitudes of residents of Washington, DC, you can't say anything about the whole nation.

##### Some variables in the dataset are measured with error

Another curse of a dataset is measurement error. In simple, measurement error refers to incorrect measurement of variables in your sample. Just like measuring things in the physical world comes with error (like measuring distance, exact temperature, BMI, etc.), measuring variables in the social context can come with an error. When you ask people how many books they have read in the past year, not everyone remembers it correctly. Similarly, you may have measurement error when you ask people about their income. A good researcher recognizes measurement error in the data before any analysis and takes it into account during their analysis.

##### Variables are confounded

What if you were interested in determining what variables lead to increases in crime? To do so, you obtain data from a US city with lots of different variables and crime rates for a particular time period. You would then wrangle the data and at first you look at the relationship between popsicle sales and crime rates. You see that the more popsicles that are sold, the higher the crime rate.


![popsicles and crime rate](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/export/png?id=1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o&pageid=g3db10fb92e_0_125)

Your first thought may be that popsicles lead to crimes being committed. However, there is a confounder that's not being considered!

We will see in detail what confounders are in the lesson on Inferential Analysis but in short **confounders** are other variables that may affect our outcome but are also correlated with (have a relationship with) our main variable of interest. In the popsicle example, temperature is an important confounder. More crimes happen when it's warm out *and* more popsicles are sold. It's not the popsicles at all driving the relationship. Instead temperature is likely the culprit.


![temperature is a confounder](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/export/png?id=1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o&pageid=g3e017d0f95_0_0)

Therefore, if we're really interested in what increases crime rate, we should also consider the temperature. Thus, it's important to understand the relationship between the variables in your dataset. This will be further discussed in the Exploratory Analysis lesson.


### A case study: Why were polls so wrong about the 2016 US election?

The results of the 2016 US presidential election came as a surprise to a lot of the media outlets and poll experts. Most polls consistently projected that Hillary Clinton would defeat Donald Trump. Election forecasters put Clinton at a winning position at a chance as high as 70-99 percent. Polls are usually trustworthy, but what happened in 2016?


![Why were polls so wrong about the 2016 US election?](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/export/png?id=1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o&pageid=g3ec882b221_0_938)

We don't know the whole story yet. But for starters, the one issue everyone agrees is the data used in the prediction algorithms were not wholly appropriate. To be more specific, the problem was what is called the **nonresponse bias**. Nonresponse bias is the bias the sample caused by a particular **section of the population systematically refusing to answer to the poll or survey**. The consequence of nonresponse bias is a *sample that is not representative of the population* as we discussed above. (For instance, most rich people refuse to announce their income in surveys and as a result, there is nonresponse bias in most surveys of income. Ok, back to the election. It is known that less educated voters who constituted a bulk of Trump voters are hard for pollsters to reach. The result of this was the lack of this pro-Trump segment of the population in the polls during the weeks leading to the election. [Pew Research](http://www.pewresearch.org/fact-tank/2016/11/09/why-2016-election-polls-missed-their-mark/) also points out to dishonesty in responses to polls (people not being truthful about who they were planning to vote for) as another reason why polls failed to predict the outcome of the election accurately.

While it's always easier to look back at a failed analysis and determine what went wrong then to identify the issues up front, researchers would have benefited from determining if the data they had were the most appropriate for answering their question of interest.

### Summary

Once you've honed in on a good data science question, it's important to determine if the data available to you are the data you need. To do this:

1. Imagine the optimal dataset
2. Determine what data you have
3. Identify the data you can (easily) get
4. Figure out limitations in the data you have
5. Are the limitations so great that you need to re-work your question?
  - If yes, start over and form a new data science question, then return to step 1
  - If not, continue with your analysis, *but* note all limitations in your analysis
6. Explore and wrangle the dataset
7. Analyze the data and answer the data science question!

All in all, the data and how they're collected matters. There is a term in statistics that says "**garbage in, garbage out**," which means poor quality input will always produce poor output. A data analysis that is based on faulty data produces faulty results. Be cautious about the data that you use in your analysis, ensure that the data you need to answer your question of interest are the data you have, and *always* tell your listeners and readers about the deficiencies of your data. After all, you will know your data better than anyone else!


### Slides and Video

![Do I Have The Data I Need](https://www.youtube.com/watch?v=90SP7w_6SYo)

* [Slides](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/edit?usp=sharing)

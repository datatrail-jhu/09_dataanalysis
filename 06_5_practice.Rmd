# Inference: Practice

<!-- Google Slide ID -->
<!-- 1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU -->

<!-- Include a slide PNG with Page_ID from this Slide Deck: -->
<!-- ![](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=PAGE_ID) -->
<!-- or use  `didactr::gs_slide_df("1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU")$png_markdown` -->

Often when we're learning new concepts we get focused on one part of the process (getting the code to run!) and lose sight of the big picture (why are we doing this analysis again?). In the last few lessons we've discussed a lot. We've discussed regression conceptually, gone through examples of running simple and multiple regression, and saw a few examples of regression in the real world. Now it's time to make sure we're able to carry out our own regression analysis from start to finish! The goal of this lesson is to ask an inference-focused question and use data to answer that question. In this we'll explore a dataset (EDA!) and fit a regression model (using linear regression!)

Be sure that you're carrying out the analysis on your own throughout this lesson to understand what's going on here *and* because you'll need the objects created in this lesson to complete the quiz at the end. Feel free to copy the code but make sure you're *understanding* not only the code but also the *output*. Getting code to run is half the battle, but we need to be sure we understand the output of the code for it to mean anything!

### The Question

Health Care in the United States is a complicated mess of confusing coverage policies, costly procedures, and hard-to-understand insurance companies. But, understanding this system and how it affects health in the United States is important! In this lesson, we're going to walk through an example using a real dataset to better understand healthcare coverage and spending across the United States.

The specific question we're setting out to answer is:

> What is the relationship between healthcare coverage and healthcare spending in the United States?

### The Data

The data and motivation for this question come from an awesome project called [Open Case Studies](https://opencasestudies.github.io/). This project provides datasets and tutorials that use real data to teach data-related concepts. The specific case study we're using in this lesson can be found [here](https://github.com/opencasestudies/ocs-healthexpenditure). We're going to walk through this analysis step by step, using a number of their approaches and materials. But, you can certainly find more information in the [case study](https://opencasestudies.github.io/casestudies/ocs-healthexpenditure.html) directly!

To get started working with these data in RStudio Cloud, we'll need to first read the data in using read_csv and the URL directly.

```r
# uncomment if packages not yet installed
# install.packages("readr")

library(readr)

# read in coverage data
coverage <- read_csv("https://raw.githubusercontent.com/opencasestudies/ocs-healthexpenditure/master/data/KFF/healthcare-coverage.csv", skip = 2, n_max  = 52)

# read in spending data
spending <- read_csv("https://raw.githubusercontent.com/opencasestudies/ocs-healthexpenditure/master/data/KFF/healthcare-spending.csv", skip = 2, n_max  = 52)
```

Note in the code here there are a few additional arguments that have to be included. We use `skip = 2` to skip the first two rows in the file and set `n_max  = 52`. This is something we haven't seen previously, but `n_max` specifies the maximum number of records to read in. Here, we're specifying to find the location where the column `Location` is Notes and then stop the row before that. This will ignore Notes included at the end of the file. You can see the notes included if you scroll to the end of one of these [files on GitHub](https://github.com/opencasestudies/ocs-healthexpenditure/blob/master/data/KFF/healthcare-coverage.csv).

Recognizing that these steps have to be done is part of carrying out a project. It's your job as the analyst to know and understand the dataset inside out and backwards. Familiarizing yourself with the many arguments in functions like `read_csv()` from `readr` (use `?readr::read_csv` to see them) will help you keep in mind the things to look out for when reading datasets into R.

### Descriptive Analysis

The first thing you'll want to do is get a sense of what data are included in each dataset to familiarize yourself with the information included. Remember that the `glimpse()` function can be very helpful here!

```r
# install.packages("dplyr")
library(dplyr)
glimpse(coverage)
```


![`glimpse()` gives us a look at what's included in our coverage dataset](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_0)

Looking at the output here, we see that there are 52 observations and 29 variables being measured. We see that the observations are the states in the US (likely including Washington, DC) and one for the US overall. We then see that a number of pieces of data (variables) have been collected over four years (2013-2016).

We also get an idea of what *types* of data are stored in our dataset. We see lots of numeric variable (`dbl`) and a few strings (`chr`). But wait...should those strings *actually* be strings? It looks like there's numeric information stored in those variables (`2013__Other Public`, for example). It looks like the way missing data has been specified in these data ("N/A") is causing some issues... R is expecting "NA" by default...so we'll have to go back and specify for R to look for "N/A" as well in just a second.

But first, let's see if we have the same issue in the spending dataset.

```r
glimpse(spending)
```


![`glimpse()` demonstrates we have the same number of observations in the spending dataset](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_6)

When we look at the `glimpse()` output for spending, we see that we again have the same number of observations (N=52) but here we have 25 variables summarizing total health spending from 1991-2014. So, right off the bat we know that the only two years we have overlapping information are 2013 and 2014. Something to keep in mind!

Also, we see that all observations (aside from Location) are numeric (`dbl`), so it doesn't appear we have any "N/A" issues here.

Before we go any further, let's address those "N/A" values. If you looked at the `read_csv` documentation, you're aware that `na` is an argument to that function. So, let's read these data in once again, but specify that "N/A" is how missing data has been specified in the coverage dataset.

```r
# read in coverage data
# consider how N/A is specified
coverage <- read_csv("https://raw.githubusercontent.com/opencasestudies/ocs-healthexpenditure/master/data/KFF/healthcare-coverage.csv", skip = 2, n_max  = 52, na = "N/A")                    
```

Now, after specifying how to handle missing values, when we use `glimpse(coverage)` we see that numeric data are all of type `dbl` as we expected! It's important to always take a look at the output you generate. If we hadn't looked at our `glimpse()` output carefully, we would have missed this and our variable would have been of the wrong type! So, a friendly reminder to **always look at your output**.

Now that our datasets are in good order and we have an idea of what information is included in them generally, remember that the `skimr` package is also very helpful for getting a quick and deep understanding of your data. If we use the `skim()` function from this package on each dataset, we can learn more information about the data we have.

In this output, we get information not just about how many observations we have and what variables we have information about and their types, we also start to get an understanding of the typical values (mean, median) and range (min, max) for the data in our dataset.


```r
# install.packages("skimr")
library(skimr)

skim(coverage)
```


![`skim()` provides a ton of helpful information](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_11)

For example, in our `coverage` dataset, we quickly see that most variables have complete information, but there is missing information in the `Other Public` variables across the years. We also know that the average (mean) for Total has remained constant (1.2 x 10^7) for the years included in this dataset.

```r
skim(spending)
```


![`skim()` summarizes the spending dataset](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_11)

We can similarly see at a glance that there is no missing information in the `spending` dataset. However, unlike in the coverage dataset, here, with data from more years we can see spending has increased over time. Specifically, the average in 1991 was 25996.06 and 98570.17 by 2014.

Using `glimpse()` and `skim()` we get an understanding of what information is included in our dataset as well as what typical values are and what data are missing.

What we *don't* get here is variability across states, whether one state spends more than others, and what the relationship between spending and coverage is. That's what EDA is for!


### EDA

With an understanding of the data we have, we're now able to start understanding the dataset deeply through exploratory data analysis (EDA).

To ensure that we're going in the right direction, it's important to keep our question of interest in mind. We ultimately want to measure the relationship between healthcare coverage and healthcare spending in the United States. At this point, these data are stored in two different dataframes. To explore their relationship, we'll want to wrangle them into a single dataframe before continuing forward.

#### Data Wrangling

To decide how to best do this we have to consider *what* type of join we need here. Remember that there are a number of common joins: `left_join`, `left_join`, `inner_join`, and `full_join`. (Refer back to the [Getting Data](https://leanpub.com/universities/courses/jhu/DataTrail-getting-data) course if you need a review on these). We have to decide for our purposes which join is most appropriate.

We noted earlier that coverage and spending only overlap by two years (2013 and 2014). If we only want to analyze the data where we have information from both years, we'll need to use `inner_join`.

Additionally, we'll need to be able to tell R what columns to join on. Unfortunately, at this point our data are not in the tidiest of formats. Remember, tidy data has the following properties:

* Each variable in a column.
* Each observation in a row.
* Each type of observational unit forms a table

Neither dataset follows these principles. We'll have to wrangle our data to get them into the appropriate format before we can join them together!

To do this, remember that `tidyr` is a really helpful package for wrangling and reshaping data. (Refer back to the [Data Tidying](https://leanpub.com/universities/courses/jhu/DataTrail-tidying) course if you need a refresher on reshaping data.) Currently, the `coverage` dataset is in a wide format, but we want it in a long format where each Location is a row and we have information about the year, type and total coverage in the columns. To accomplish this, we'll use `gather()`!

```r
# install.packages("tidyr")
library(tidyr)

coverage <- gather(coverage, "year_type", "tot_coverage", -Location)
coverage
```


![`gather()` takes our "wide" `coverage` dataset to "long"](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_39)

We'll want to do the same to our `spending` dataset:

```r
spending <- gather(spending, "year", "tot_spending", -Location)
```


![`gather()` takes our `spending` dataset from "wide" to "long"](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_44)

We're making progress! Our data are in a tidy format now; however, you may have noticed that information about year is tied up with other information. We'll want to separate that out. Fortunately, `tidyr` has the incredibly helpful `separate()` function! We'll use that to separate out year information so that we can use that in our join! Note that here we're including `convert = TRUE` so that the resulting year columns is of type `int`.


```r
coverage <- coverage %>%
  separate(year_type, sep="__", into=c("year", "type"), convert = TRUE)
```


![`separate()` to separate column contents](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_49)

And, just like that, we've got `year` in its own column!

Now, let's repeat that for our `spending` dataset! We've also included the `select()` function to remove the `name` column. This includes the same information ("Total Health Spending") for every row, and thus we can get rid of it. We use the `-` operator to remove a column from our dataset:

```r
spending <- spending %>%
  separate(year, sep="__", into=c("year", "name"), convert = TRUE) %>%
  select(-name)
spending
```


![`spending` dataset now has appropriate tidy data format and appropriate columns](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_49)

#### Join: `inner_join`

The datasets are now in a tidy format with each row containing an observation (different state or location) and each column contains a variable. We can also now join our data so that we're only looking at coverage and spending data from the years we have both pieces of information. We'll join using the `Location` and `year` columns.

```r
hc <- inner_join(coverage, spending, by = c("Location", "year"))
hc
```


![`inner_join()` gets information in a single dataframe](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_59)

We now have a dataset with 728 observations where each row contains coverage and spending information for a particular `Location` in a particular `year`.

Okay, before we move on, you may think to yourself..."OK, I *know* that different states have different populations. That's probably important here." If you thought that to yourself, you're right! And, you're also in luck. That information is hiding within the `type` variable. The `Total` information here includes the total population. We can include that as a column in our dataset!

```r
pop <- hc %>%
  filter(type == "Total") %>%
  select(Location, year, population = tot_coverage)
pop
```

![extract population information](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_59)

The `population` column now includes the population for each `Location` in each `year` in our dataset!

Let's add that information to our `hc` dataset by first removing all rows where `type` is "Total" (using `filter()`) and then by combining the datasets (using `left_join`).

```r
hc <- hc %>%
  filter(type != "Total") %>%
  left_join(pop, by = c("Location", "year"))
hc
```


![with population information included in `hc`](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_74)

With population information, we will want to calculate spending per capita and the proportion of people covered in each state. Spending per capita calculates the spending per person. Having these values allow us to compare values across states with different populations. We use mutate to accomplish this:


```r
hc <- hc %>%
    mutate(spending_capita = (tot_spending*1e6) / population,
           prop_coverage = tot_coverage / population)
```


![calculated `spending_capita` using population information](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_84)

Okay, we're almost fully wrangled! But, before we move on, we know what Location is in each row; however, it *could* be helpful to have the two-letter abbreviation and region of the United States in this dataset, so let's add that in. And, we're in luck! There's an R package (`datasets`) with just that information in it that you can use! Let's use the data in that dataset to add that information to our `hc` dataframe!

```r
library(datasets)
data(state)
```

Note that this includes a number of objects that start `state.`. We'll add the two-letter abbreviation (`state.abb`) and region (`state.region`) to our `hc` dataset using `mutate()`.

```r
hc <- hc %>%
  mutate(abb = state.abb[match(Location, state.name)],
        region = state.region[match(Location, state.name)])
hc
```


![`abb` and `region` information added to `hc` dataset](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_74)

Note that this adds two additional columns (`abb` and region`) to our `hc` dataframe. Also, note that where there is not state information ("United States" and "District of Columbia"), these columns have NA, as we would expect!

And just like that, we have all the information we'll need! It took some work to get there, and it may not always be obvious exactly what step has to be done next, but by keeping the tidy data principles in mind and using the tools we've learned, we're ready to explore these data further!

#### Exploratory Visualizations

With our dataset in the correct format, let's take a look using `ggplot2` to better understand our data!

We're ultimately interested in understanding the relationship between coverage and spending across states, so we'll want to be sure to look at the distributions of each of those variables. But, we'll want to use the ones adjusted for population as those are comparable across states.

We'll also want to remove the rows that are not states (US, and Washington DC).

And, let's just look at Employer-supplied health coverage.

```r
# focus on 50 states
hc <- hc %>%
  filter(Location != "District of Columbia",  
         Location != "United States")

# just employer
hc_employer <- hc %>%
  filter(type == "Employer")
```

Now, we're ready to look at some histograms! As a reminder, we won't spend a ton of time making these perfect visualizations because during EDA the goal is not to communicate our results perfectly, but rather just to inform us (the analysts) about the data. Later on if you were to present these in a meeting or at a conference, you would want to spend time making sure they're explanatory (rather than just exploratory) visualizations.

```r
# install.packages("ggplot2")
library(ggplot2)

ggplot(hc_employer, aes(prop_coverage)) +
  geom_histogram()
```


![`prop_coverage` shows a bimodal distribution](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_93)

The proportion covered shows a distribution where coverage ranges from around 40% to 60% across the 50 states in 2013.

```r
ggplot(hc_employer, aes(spending_capita)) +
  geom_histogram()
```


![`spending_capita` shows is approximately Normal](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_93)

Unlike the proportion covered, spending per capita is approximately Normal with a median somewhere right below $8,000. We do see a few outliers. We'll want to see which states these are that have much lower and much higher than average spending per capita.

We're ultimately interested in understanding the relationship between these two variables, so let's take a look at that with a scatterplot:

```r
ggplot(hc_employer,
       aes(x = spending_capita, y = prop_coverage)) +
  geom_point() +
  xlab("spending per capita") +
  ylab("coverage proportion")
```


![relationship between spending and coverage](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_110)

At a glance, there appears to be a linear relationship between these two variables where the more spending per person in a state, the higher proportion of the population has health care supplied by the employer. To fully understand this relationship, let's explore it with linear regression!

### Linear Regression

To answer our question:

> What is the relationship between healthcare coverage and healthcare spending in the United States?

we'll model this relationship using linear regression. Visually, this trend-line would look as follows:

```r
hc_employer %>%
  filter(year == "2013") %>%
  ggplot(aes(x = spending_capita, y = prop_coverage)) +
  geom_point() +
  xlab("spending per capita") +
  ylab("coverage proportion") +
  geom_smooth(method = "lm", col = "red")
```


![visualizing the linear relationship with `ggplot2`](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_116)

In addition to looking at this visually, we also want to understand the regression model and take a look at model diagnostics. To do so we'll use `lm` and `tidy`. (`tidy` is from the `broom` package)

```r
# install.packages("broom")
library(broom)

hc_2013 <- hc_employer %>% filter(year == "2013")

fit <- lm(prop_coverage ~ spending_capita,
         data = hc_2013)
tidy(fit)
```


![`broom` output for 2013 linear regression model](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_121)

Here we see that across states in the US in 2013, for every 1 dollar more spent on healthcare, the proportion of individuals covered increase by 0.000019 (the `estimate` column in the `tidy()` output).

While this number is quite small, a 1 USD increase in health care spending is probably not the right unit to consider. We would likely want to consider a $1000 increase in spending. For example, to interpret this model, we'd say that for every $1000 more in health care spending, we see a 1.9% increase in the population covered across the US. (We get this number by multiplying the coefficient 0.000019 * 1000 and then converting from proportion to percentage by multiplying by 100.)

But, remember that each point here represents a state! And, states that are in the same region of the US may be clustered. The region a state is in may affect health care spending and the proportion of the population covered! A confounder! Visually, let's take a look by labeling each point with the two-letter state abbreviation and coloring the points based on the region of the US where the state is located.

```r
ggplot(hc_2013, aes(x = spending_capita, y = prop_coverage,
           color = region)) +
geom_point() +
xlab("spending per capita") +
ylab("coverage proportion") +
geom_smooth(method = "lm", col = "red") +
geom_text(aes(label=abb), nudge_x = 150)
```


![states cluster based on geographic location](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_126)

In this plot we see that states tend to cluster. States in the Northeast tend to spend more on healthcare and have a higher proportion of the population covered, whereas the opposite is true in the South. This suggests that to understand the overall relationship, we likely want to consider region as a confounder in the analysis.

```r
fit2 <- lm(prop_coverage ~ spending_capita + region,
         data = hc_2013)
tidy(fit2)
```


![`broom` output for 2013 multiple regression model accounting for region as a confounder](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_131)


In this regression model, we see when we focus on the `spending_capita` row, that the `estimate` is much smaller (0.000006) and, when we look at the `p.value` column, that this result is likely insignificant (as we would see results this extreme by chance along 35.9% of the time). This suggests that regional differences are contributing largely to the relationship between spending per capita and the proportion of the population with health coverage. Without considering this confounder we would have come to the wrong conclusion! What we learned here was that there are regional differences across the country regarding how much is spent and how much of the population has health coverage! What we *didn't* learn is that there is a significant relationship between spending and coverage.

To see this visually, consider faceting by region:

```r
ggplot(hc_2013, aes(x = spending_capita, y = prop_coverage,
           color = region)) +
geom_point() +
xlab("spending per capita") +
ylab("coverage proportion") +
geom_smooth(method = "lm", col = "red") +
geom_text(aes(label=abb), nudge_x = 150) +
facet_wrap(~region)
```


![faceting by region demonstrates limited relationship between spending and proportion of population covered](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_136)

Here, we see pretty flat lines (particularly in the Northeast and the West), supporting the findings from our multiple regression model.

#### Model diagnostics

Don't forget that we have to check our model assumptions to determine whether linear regression was appropriate. To do this we can use the `plot` function on the output from fitting our model:

```r
par(mfrow = c(2,2))
plot(fit2)
```

 
![model diagnostics](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/export/png?id=1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU&pageid=g5df245fced_0_242)

We're looking here for:

* a horizontal red line in our Residuals vs. Fitted plot, demonstrating a linear relationship between variables.
* a horizontal line in our Scale-Location plot, demonstrating the data are homoscedastic,
* points falling along the dotted line in our QQ Plot, demonstrating the residuals are Normally distributed
* standardized residuals to fall between -2 and 2 in the Residuals vs. Leverage plot, suggesting there are no obvious outliers driving our regression results

In our model diagnostics plot, we see that the first three bullet points are met, demonstrating that linear regression is appropriate; however, we see in the Residuals vs. Leverage plot that there are some outlier states in our analysis. Before finalizing our analysis, we would want to figure out which states these are and why their values are outliers in this dataset.

Finally, note that we only looked at "Employer" type of coverage in 2013. Feel free to carry out similar analyses as we've done here to look at other `type`s of coverage and/or for the `year` 2014 to be sure you fully understand these analyses.

### Summary

In this lesson, we've put a whole lot together. We walked through how to carry out a regression from start to finish. From asking the question, to reading the dataset in, to exploring the dataset, and to generating the model, there is a lot to do! Hopefully this has started to pull the previous few lessons all together and you're getting more comfortable with what inference is, know how to carry it out in R, and most importantly understand how to interpret these analyses.

### Additional Resources

* [Open Case Studies](https://opencasestudies.github.io/), by Pei-Lun Kuo, Leah Jager, Margaret Taub, and Stephanie Hicks
  * [Health Expenditures Case Study](https://opencasestudies.github.io/casestudies/ocs-healthexpenditure.html)
  * [Case Study on GitHub](https://github.com/opencasestudies/ocs-healthexpenditure)
* [join cheatsheet](http://stat545.com/bit001_dplyr-cheatsheet.html), by Jenny Bryan
* [DataTrail Getting Data Course](https://leanpub.com/universities/courses/jhu/DataTrail-getting-data)
* [DataTrail Data Tidying Course](https://leanpub.com/universities/courses/jhu/DataTrail-tidying)

### Slides and Video

![Inference: Practice](https://youtu.be/RuVXyAqI4vU)

  - [Slides](https://docs.google.com/presentation/d/1w-nLXrBvfKHc-AgjCfSfUGE1a6Vy7ogFoTu7ZiDSDFU/edit?usp=sharing)

# Inference: Examples

<!-- Google Slide ID -->
<!-- 11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ -->

<!-- Include a slide PNG with Page_ID from this Slide Deck: -->
<!-- ![](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=PAGE_ID) -->
<!-- or use  `didactr::gs_slide_df("11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ")$png_markdown` -->

In the last lesson, we went through a number of the basics of simple linear regression, discussed confounding, introduced multiple linear regression, and discussed analytical approaches built off of linear regression. Through that lesson and in the swirl modules in the quiz, we went through a few simple examples; however, since linear regression is the foundation of *tons* of work being done in the real world, we wanted to walk through two additional examples - which we'll call case studies - in this lesson.

This lesson will help you:

1. See how linear regression can be used
2. Understand the types of questions where it's applicable
3. Learn to interpret results you find in the world
4. Analyze your own data in the future

### Introduction

Data scientists, statisticians, social scientists, economists, and natural scientists are all related to one another in that they all ask questions about the world and use data to answer them. In this lesson, through three case studies, we'll happen focus on questions that economists have asked in recent years, but these approaches are used by all types of people analyzing data and answering questions. In this lesson, we'll discuss the data economists have collected to answer their questions of interest, the analyses they've carried out, and their results.

### Case Study #1: The Effects of Watching *Sesame Street* on Educational Outcomes

In an earlier lesson we  mentioned that when carrying out inferential analyses, analysts are taking a small sample of data to say something about what would happen if we collected more data, say, from the entire population. The example question we introduced was trying to measure and understand the effect of *Sesame Street* on children's learning.

To better understand this relationship, we proposed that an analyst could set out to answer the question: "Is there a relationship between watching *Sesame Street* and test scores among children?"

In fact, many economists have studied exactly this! In our first case study, we'll walk through a recent analysis looking at the effects of *Sesame Street* on educational outcomes.


![Eary Childhood Education by Television](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d27895a1a_0_3)

#### Question

The general question the economists we'll be talking about today (Melissa S. Kearney and Phillip B. Levine) set out to answer was: "Does exposure to *Sesame Street* improve educational and labor market outcomes?"

Now, this group was not the first to study a question involving *Sesame Street* and educational outcomes, but they did build upon the work of others' in their analysis.

This means that they had to figure out what *specific* question they were going to ask to add something new to the discussion.

Rather than looking at a small sample of children (as others had done previously), the economists we'll be discussing here set out to answer the question for a larger group: How was an entire generation of children impacted by having access to Sesame Street?

While this question is getting more specific, the actual questions they'd ask was driven by the data to which they had access.


#### Data

When asking questions about populations across an entire country on data that were generated more than 50 years ago (Sesame Street debuted in 1969), often the data you need are not all in a single location. Thus, to have measurements on availability of *Sesame Street* as well as educational and labor outcomes, these economists had to use a number of different data sources:

* **Census Data** - 1980, 1990, and 2000 Census data
* **1980 High School and Beyond Survey**
* **Broadcast exposure data** - when *Sesame Street* was broadcast, only certain parts of the country had access to the channels that broadcast Sesame Street

Among these data, the economists would be most interested in the following variables:
1. *Sesame Street* Coverage Rates (or, how available was *Sesame Street* in the county in 1969)
2. Educational outcome
3. Labor market outcomes
4. Policy changes (indicator for whether Food Stamp program had been introduced and Head Start Program expenditures had increased)
5. Individual demographic information - race/ethnicity, age, and socioeconomic status (SES)


![Sesame Street Coverage Rates](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d27895a1a_0_11)


#### Analysis

These economists used two primary regression models to analyze these data. It was a multiple regression model; however, admittedly, it is a tad more complex than those models we've considered so far. Now, fundamentally it is just a multiple regression model where the effect of *Sesame Street* coverage on outcome (educational or labor market) is being measured while controlling for policy changes and demographic factors. However, I will note that the *way* in which policy and demographic factors were included goes beyond the scope of this lesson.

#### Results

Nevertheless, we can still interpret the results from this analysis! The results, as they often are for inferential analyses, are presented in the form of a table.

Before presenting the results of the table, the economists first demonstrate (using a figure) that before 1969 when *Sesame Street* was introduced, there was no difference in students at grade level between areas that would go on to have *Sesame Street* coverage and those that would not. However, as time goes on, their analysis demonstrates an increase in students at grade level in areas where *Sesame Street* was available.


![Sesame Street availability correlated with areas where more students were at grade level after 1969](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d27895a1a_0_21)

Table 4 from this paper then summarizes the results looking at the impact *Sesame Street* coverage (meaning how available *Sesame Street* was in an area) has on educational outcomes. The authors present the effect sizes and standard errors in parentheses.

To intercept these, values greater than 0 have a positive relationship, less than zero a negative relationship. And, the smaller the standard error, the more confident we are in the estimate.


![Table 4 summarizes results looking at impact of *Sesame Street* on Educational Outcomes](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d2130274b_0_48)

For example, if we just focus on the first row measuring the aggregate effect, we see that the effect size is 0.105. Being greater than 0, we see that there is some positive effect. This means that the more *Sesame Street* was available, the better the educational outcomes. The standard error here is 0.041, a value close to but not exactly zero, suggesting that we're relatively confident that this effect is truly close to 0.105.


![Sesame Street Availability is associated with an increase in educational attainment](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d27895a1a_0_108)

To interpret what an effect size of 0.105 means in the context of this analysis, a 1 point increase in coverage rates would lead to a 0.105 percentage point increase in the rate of grade-for-age status (their measure of educational attainment).

The economists who carried out the study, however, point out that a 1 point increase in coverage rates is not typical. Rather, if a child were to move from a low coverage area to a strong coverage area, this would actually be a 30 point increase in coverage rates. This means that the effect for moving from a low coverage to a high coverage area would actually result in a 3.2%  (0.3 * 0.105 = 0.032) increase in the rate of grade-for-age status.

The authors also stratified their results by gender and race. By comparing the effect sizes, we can see that the effect is larger in males than it is in females and in black children relative to white children.


![The results are strongest in males and black children](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d27895a1a_0_115)

To demonstrate that this effect has anything to do with Sesame Street, the authors carried out the same analysis *before* *Sesame Street* was released. In doing this, the economists are looking for effect sizes close to zero, suggesting that the availability of *Sesame Street* in 1969 is truly playing a role in improving educational outcomes.

This is what we call a negative control, meaning they're doing this analysis expecting no effect (effect sizes near zero). The authors present their results from this null analysis in a table again.


![Before *Sesame Street* availability, coverage did not demonstrate a difference in educational attainment](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d2130274b_0_12)


#### Conclusion

In this work, the economists set out to understand at the population level how the availability of *Sesame Street* affects the educational outcomes of children across the country. They had to figure out how to measure *Sesame Street* availability, educational outcomes, policy changes, and demographic information before being able to use linear regression and answer their question. Once they determined that they were able to measure all of their needed variables at the county level, they carried out their regression and demonstrated that when *Sesame Street* was available, a higher percentage students started performing at their grade level - a positive relationship between *Sesame Street* availability and educational attainment!

### Case Study #2: Effects of Religion on Happiness

Economists have long been interested in measuring happiness and understanding happiness. Sometimes they're interested in understanding a single person's happiness and what contributes to that; however, more often they're looking at populations - cities, states, or whole countries and trying to understand why certain populations are happier than others.

A [recent analysis](https://www.aeaweb.org/articles?id=10.1257/aer.103.3.591) in the American Economic Review set out to study the relationship between religiosity and happiness.

#### Question

The general question the economists (Deaton and Stone) started with was "Is religion good for you?"

However, as we've discussed in previous courses, in order to analyze this question using data, we really need a more *specific* question, one where we know what we're measuring in order to answer this question.

To answer this question, the researchers knew they needed, at a minimum, information on people's **religiosity** as well as reports of how happy they are (also known as their "**well-being**").

#### Data

The authors used data from two different sources:

* Gallup Healthways Well-being Index survey (N=1,000 randomly-selected *Americans* surveyed daily since January 2008)
* Gallup World Poll (N=1,000+ people from *160 different countries*)

**Religiosity**

People responded either yes or no to the question "Is religion an important part of your daily life?"

**Well-being**

- **ladder** - people rate their lives on a scale from 0 (worst possible life) to 10 (best possible life)
- **happiness** - people respond either yes or no to the question "Did you experience a lot of happiness yesterday?"

The economists running this study had to determine what they were going to measure and where those data were going to come from before ever being able to answer their question. They settled on two different measures of well-being and a single measure of religiosity.

Note that these are survey data, so we're relying on individuals reporting information accurately, something that does not always happen with surveys...and certainly something to always keep in mind when interpreting results.

#### Analysis

To analyze these data, the researchers had to decide which variables to use (meaning what to measure, discussed above) and how to analyze it. They chose to utilize linear regression, with religiosity as the independent variable and well-being as the dependent variable.

The authors were particularly interested in understanding a paradox. The authors know that *individuals* who are religious tend to have *higher* self-reported well-being; however, regions (states or countries) that are more religious tend to have *lower* well-being as a population.

The individual effect is completely opposite to what we see at the population level. While this paradox has been reported before, these authors wanted to look in this much larger dataset to determine the effect of religion on your health.

#### Results

The authors carried out a number of linear regressions. At times it was simple linear regression (i.e. looking at the relationship between individuals religiosity and self-reported well-being) and sometimes it involved multiple linear regression (the same model, but accounting for differences in income).

They reported their findings in a table where they include the beta coefficient, standard error (SE), and number of observations used to calculate the statistics. They do this for both the ladder measurement of well-being as well as the happiness measure and reported all of these findings in a single table.


![Table 2 summarizes relationship between self-reported well-being and religiosity](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d2130274b_0_5)

#### Interpretation

To understand the answer to the question "Is religion good for you?," readers have to know how to interpret this type of table.

##### Religiosity and Ladder-happiness in the USA

Let's first try to interpret the relationship between people's religiosity (independent variable) how people rank their lives (the dependent variable fist focusing on ladder score - a measure from 0 to 10) among individuals in the USA.


![Religious individuals in the USA have higher self-reported well-being](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d2130274b_0_21)

Focusing on the pink box here, we see that person-level data has a positive beta coefficient, indicating a positive relationship between religiosity and well-being. This means that religious people (on average) tend to have higher ladder measure of well-being than non-religious individuals. The second row here demonstrates that when accounting for income (with multiple regression), this result remains and in fact gets stronger (0.263 > 0.248). We can also see that these results come from analyzing individual data from more than 1 million individuals(the Observations column) and that the error around this estimate is quite small (SE column).

Moving to the third row here, we see that at the state level (rather than the individual level), there is a slight, negative relationship between religiosity and well-being. This result suggests that the more religious a state is, the less happy they are as a state. However, once accounting for income, we see that this negative relationship goes away, suggesting that income, rather than religiosity, drives this effect.

##### Religiosity and Yesterday's happiness in the USA

Now, remember that well-being was measured in more than one way. We can now look at the USA-level results where there were only two possible options - yes or no to the question: "Did you experience a lot of happiness yesterday?"


![Little or no effect of religiosity on yesterday's happiness in USA ](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d2130274b_0_28)

Here the results are all positive, but also very close to zero, suggesting that the effect of religiosity on yesterday's measure of happiness is quite small.

##### Worldwide religiosity and happiness

One benefit of this study was that the researchers had measurements from many people worldwide, so they were able to study the effect of religiosity on well-being across countries.


![Religious individuals in the USA have higher self-reported well-being](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/export/png?id=11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ&pageid=g5d2130274b_0_35)

Again, we turn to the table to look at this relationship. Looking at the beta coefficients, we see that the results suggest that more religious countries tend to have lower well-being measurements (measured by the negative beta coefficient); however, once income was accounted for, this result demonstrated that more religious countries (when accounting for income) tend to have higher measures of ladder well-being. The same general trend held across countries when looking at the effects of religiosity on yesterday's happiness.

#### Conclusion

The economists of this study discuss a number of confusing findings related to happiness and suggest possible explanations of these results. They use regression to understand the effects of the independent variable (religiosity or income) on the dependent variable (well-being / happiness). However, as with all studies, one set of analyses does not answer all the questions on the subject - additional analyses and experiments would be needed to understand these results fully.

### Summary

In this lesson we walked through two real-life examples of inference being used to answer questions. In the first we looked at the relationship between the availability of *Sesame Street* and educational attainment. In the second, we looked at the effect of religiosity on well-being. Both studies used regression in their inferential analyses to answer their questions of interest. We discussed effect sizes (beta coefficients) and their interpretation in the previous lesson as well as this lesson. Understanding regression will get you a great start in understanding inferential (and even predictive!) analysis.

### Additional Resources

- [Early Childhood Education by Television: Lessons from *Sesame Street*](https://pubs.aeaweb.org/doi/pdfplus/10.1257/app.20170300), by Melissa S. Kearney and Phillip B. Levine
- [Why Kids Who Watched *Sesame Street* Did Better In School](https://qz.com/1554895/why-kids-who-watched-sesame-street-did-better-in-school/), article in Quartz by Annabelle Timsit
- [Two Happiness Puzzles](https://www.aeaweb.org/articles?id=10.1257/aer.103.3.591), by Angus Deaton and Arthur A. Stone

### Slides and Video

![Inference: Examples](https://youtu.be/Xpef4tULTH4)

  - [Slides](https://docs.google.com/presentation/d/11rrwsdm99qI2VMXAr59cHV6J-0Njk5-tfDtsjz_zGpQ/edit?usp=sharing)

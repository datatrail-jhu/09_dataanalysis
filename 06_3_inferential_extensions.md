
# Inferential Analysis: Extensions

<!-- Google Slide ID -->
<!-- 10CMugorqDye14mgGSjsbi_z7zVauK7jyH7QyPmQA9Lw -->

<!-- Include a slide PNG with Page_ID from this Slide Deck: -->
<!-- ![](https://docs.google.com/presentation/d/10CMugorqDye14mgGSjsbi_z7zVauK7jyH7QyPmQA9Lw/export/png?id=10CMugorqDye14mgGSjsbi_z7zVauK7jyH7QyPmQA9Lw&pageid=PAGE_ID) -->
<!-- or use  `didactr::gs_slide_df("10CMugorqDye14mgGSjsbi_z7zVauK7jyH7QyPmQA9Lw")$png_markdown` -->

So far we've spent a fair amount of time talking about linear regression. While linear regression isn't the only analytical approach out there, it is arguably the most commonly used. And, beyond that, there are *many* statistical tests and approaches that are slight variations on linear regression, so having a solid foundation and understanding of linear regression makes understanding these other tests and approaches simpler.

In this lesson, we'll discuss extensions of linear regression. The goal here is not for you to memorize the various tests we'll discuss. But, we want you to be familiar with what tests are out there and the types of questions they can answer. Then, when faced with an analysis you can refer back to this lesson and resources on the Internet to determine which approach is most right for your particular analysis.

### Extensions of Simple Regression

#### Pearson Correlation

#### Spearman Correlation

#### t-test

#### Wilcoxon signed-rank test



#### Two sample t-test

#### Welch's t-test

#### Mann-Whitney U

### Extensions of Multiple Regression

#### ANOVA

#### Kruskal Wallis

#### Chi-square test

#### Goodness of Fit



https://lindeloev.github.io/tests-as-linear/


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


### Summary




### Additional Resources

### Slides and Video

<!-- ![Inferential Analysis: Extensions](YouTube Link) -->

  - [Slides](Link to Slides)

{quiz, id: quiz_06_3_inferential_extensions}

### Inferential Analysis: Extensions quiz


{/quiz}

# Data Analysis Pipelines

In data science jobs in industry, often you're analyzing a dataset over time. What this means is that the dataset's structure doesn't change -- the variables you're collecting remain the same -- but the observations do. Maybe you're collecting sales figures for a company, and each month you're reanalyzing the dataset to see if trends have changed or if your predictions need to be altered. Or, possibly, you're analyzing user data where the demographics and number of users of your product change over time. In these cases, where the variables don't change but the observations do, pipelines can be incredibly helpful.

### Pipelines

Pipelines are a series of steps that can be applied to a dataset. It's helpful to generate a pipeline whenever you come across a dataset that you expect to encounter again. A pipeline could read in a dataset, process that dataset to get it into a tidy format, generate figures to summarize the data, and generate predictions. This pipeline could then be set to run any time new data are generated or on a time table, say every month. In this sense, data science pipelines should be **automated**. In other words, after you build the pipeline, you shouldn't have to do any additional work each time you run the pipelines.

Additionally, pipelines have the additional benefit that they are **reproducible**. This is helpful to you, since you'll be able to reproduce your results at any point in time. But, this is also helpful because they can be used by anyone who has access to the data. The pipeline will work if you leave the company and someone takes over for you or if you're sick and need to take a day off.  

### Considerations

When generating a pipeline, there are a number of considerations to take into account before and while you're developing the pipelines. Here, we'll discuss when to consider a pipeline, what to consider while you're generating the pipeline, and how to track changes that are made to the pipeline.

#### When to make a pipeline

Pipelines are helpful when you have a question that you will answer more than once. For example, if you have data that will be updated over time, a pipeline may be helpful. If, however, you're doing a quick analysis on a single set of data to answer a question that you will not likely have to answer again in the future, then just do the analysis and get your answer. This is not the time to generate a pipeline. *But*, if you'll likely run the analysis again in the future once more data has been collected, once you have updated numbers, or once you have data from more people, then generate a pipeline. Generally, **pipelines are helpful when there is a single question you will have to answer more than once**.

#### Including appropriate checks

Once you've decided that a pipeline will be helpful, the goal is that you'll generate a pipeline that, once you click a button, the entire analysis process will run and you'll get your answer. In order for this to happen, your pipeline will require checks before it gets started. These checks should look to see:

* are the data in the **expected format*? - Are we expecting tabular data with 10 columns? If so, does in the input data look as expected?
* are the **necessary variables included** in the dataset? - If we're going to be using the variable `sex`, is that in there? If not, is there a column called `Sex` or `gender`, and is that the column we want to use?
* are the **observations for the variables coded** as we expect? - if we're expecting females to be coded as `female`, is that what's in the data? Or are they coded as `F`, or even `0`?)

Checks to ensure that the input data is the right type of data for the pipeline to run are incredibly important. These are just a few checks you may want to run on your data. You may also want to check to ensure that the data are from the dates expected or check to be sure that the data aren't unexpectedly truncated. Considering what checks you'll need to make on your data is an important first step to generating a pipeline.

#### Avoiding Hard-Coding

In developing pipelines, you'll generally want to avoid hard coding whenever possible. Hard coding in a pipeline refers to setting a parameter in a pipeline that can not be altered without going in and editing the code. For example, if while generating a pipeline for the first time you're working with a dataset that has 100 observations. What if you specify that the expected dataset should have 100 rows and write a check for that. Well, the next time you go to run the report and you get an error because your new dataset has 150 observations. By hard-coding in the number "100" as a parameter in your pipeline, you would forced your pipeline to fail unnecessarily. **Avoiding hard-coding whenever possible is a good rule of thumb** as you generate pipelines. This means that you will just specify the input to your pipeline (which could include multiple parameters!) and your pipeline will run using the data you've input and the code in your pipeline to generate the results. You won't have to go in and change any numbers that you've hard-coded in your pipeline.

#### Scalability

Additionally, your pipeline should be scalable. A *scalable* pipeline is one that will function on a small dataset and will continue to function as the dataset gets larger. It's best to ensure that your pipeline has been generated so that it will run on your dataset as well as larger datasets that may be generated in the future.

#### Versioning

Finally, pipelines should be versioned. If the format of the dataset changes in the future, you'll want to be able to update your pipeline, but you don't want to loose the original pipeline, since that's what works on the older datasets. Or, if an API changes (which they do!), you'll need to update your pipeline to account for these changes. Again, you don't want to lose the older version. **Versioning** here refers to the process of tracking changes in your pipeline.

Every time you've pushed to GitHub, you've been using a type of versioning. GitHub tracks commits, which keeps track of every version of your work. However, in pipeline development, it's best to explicitly track the versions of your pipelines.

In software each version of a piece of software is often tracked by a set of three numbers, each of which is separated by a decimal place. A general scheme used in software versioning is to version a piece of software as `major.minor.patch`. In this scheme, a large release with **breaking changes** (changes that could cause previous versions of the software to be incompatible with the current version) will increase the first number in the sequence (`major`). The second value (`minor`) will be increased when a version of the software is released that includes new features that are non-breaking. Versions where the the third value (`patch`) in the sequence are increased include non-breaking changes that tend to be minimal fixes to the software.


![major.minor.patch](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_101)

In this scheme, 0.9.0 would represent software that is in development (referred to as the beta version). Incremental improvements on the beta version would be versions 0.9.1 and 0.9.2, etc. The `major` number remains a zero until the first major release. Upon release, the first version of the software would be 1.0.0. Small non-breaking changes to this version would increase the `patch` number, making versions like 1.0.1 and 1.0.2. When new features are added to this piece of software that are non-breaking, the second `minor` number will be increased, and version 1.1.0 would be released. The next time a non-breaking feature was added, version 1.2.0 would be released. Finally, when a big breaking change were made in the future to improve the software overall, a new version would be released. This would be version 2.0.0.


![versioning scheme](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_180)

This scheme from software development can be very helpful in pipeline development. While in development, a pipeline should be versioned such that the first version of the pipeline is 0.9.0. As improvements are made, the pipeline can increase its versioned as discussed above (0.9.1, 0.9.2, etc.). When the pipeline is ready to be officially deployed, its version will be 1.0.0. Then, as changes are made and the pipeline improved, versioning will allow for these changes to be tracked.


### Parameterized Reports

In R, one of the simplest ways to generate a pipeline is to write a **parameterized** report. Parameterized reports can be generated by starting with an R Markdown document (with which you're already familiar!) and adding additional information to the YAML at the top of the document. Parameters can be defined at the top of the report using the `params` field. For example, if you wanted to specify the file you were using in your report, you could define a parameter `filename` within the `params` field. Then, when rendering the report, you would specify which file to use to generate the report, as you see here:


```
---
title: My Document

params:
   filename: filename_filedate.csv
---
```

This file could then be rendered as an argument within the `rmarkdown::render()` function. The `filename` argument could be updated to use whichever file you want to use to generate the report:

```r
rmarkdown::render("MyDocument.Rmd", params = list(
  filename = "filename_filedate.csv")
)
```

Note that for any parameter not specified within `rmarkdown::render()`, the default value within the R Markdown document will be used.

### Pipeline Example Survey Results

To really understand how a pipeline would be generated, let's work with an example set of data. In a previous lesson, we talked about how you can read in a Google Sheet using the `googlesheets` package to read in the most up-to-date version of the spreadsheet. In this previous lesson we talked about surveying your friends about how many hours they spend each day working, sleeping, having fun, eating, socializing, and other. We'll use this example again here to generate a parameterized report that will analyze these data as they're updated.

#### The Data

The data we'll use for this example can be viewed [here](https://docs.google.com/spreadsheets/d/e/2PACX-1vTuPnBT7Y6emAamDSaXo_RV-X54c0a6nJh4e-bqurRsNW_EIm6ygq90UVfySQbSg0Ue9-U4wSykQqKF/pubhtml). For our purposes, we're going to say that the first Sheet (`Sheet1`) is the data that were collected after the first week the survey ran, while `Sheet 2` contains all data collected in the first two weeks.


![Google Sheets data](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_129)

Imagine that a week after you've sent the survey out to your friends, you're really curious about the results. Thus, you write a parameterized report to visualize the results! You do this because you want to be able to analyze the data at the click of a button _and_ because you know you'll generate this report again in the future once more data have been collected.

#### Following Along

If you're interested in running this pipeline and following along on your own, the code used in this lesson can be found [here](https://rstudio.cloud/project/48127). You can make a copy of this space in RStudio Cloud and generate your own reports. The URL you'll want to include when prompted is the following URL: https://docs.google.com/spreadsheets/d/1MpGE4YHB14qBgrg3lqa1eq_Mb7L8TMOwTZtVzqQ0mmA.

To get started writing the parameterized report, you'll want to set up your report in the R Markdown format and read your data in.

#### The Setup

To get started, you'll want to open up a new R Markdown document.


![New R Markdown Document](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_8)

In this document you'll want to specify two parameters using `params`:


![YAML of R Markdown](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_13)

The `file_url` parameter says "ask". This means that when we go to knit the report, we want to RStudio to ask at that point what URL to use for the Google Sheet. The second parameter, `worksheet`, specifies that we want the default to be the first worksheet, but we give ourselves the flexibility to specify a different worksheet, if we so choose.

After setting up the YAML, we'll want to install and load any packages that we'll use in the `setup` code chunk:


![`setup` code chunk](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_18)

Here, we're installing four packages. In this code we state that if the packages haven't already been installed, do so. Then, all packages are loaded into our RStudio Cloud session.

#### Reading The Data In

After setting up the RStudio Cloud environment, the data are read in in the code chunk `data`.


![`data` code chunk](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_23)

Using `gs_url()` and `gs_read()` from the `googlesheets` package we're able to read in the Google Sheet and specify which worksheet we want to include for analysis. Notice the use of the `params` object. When this file is knit, it will take the `params` specified in the YAML as the input for compiling the report. We'll see exactly how to do this later in this lesson. Note that including a parameter always begins with the object `params`. This is followed by a dollar sign (`$`). Finally, you use the name specified in the YAML to specify which parameter you want to include in your code. Specifically here, we first specify that we want to register the Google Sheet using `params$file_url` and then specify which worksheet to read in by specifying `params$worksheet`.

#### Checks

Before actually writing the code to analyze the data, you want to be sure your report runs the appropriate checks on the data itself. As discussed earlier in this lesson, these checks should ensure that the data are in the format the rest of the code is expecting. For example, if you accidentally specified the wrong file on which to run the report, you'd want your report to send you a warning letting you know that the data were not what the report was expecting. Checks are incredibly important parts of a data science pipeline and should not be overlooked.

We will only include a single check here in this example; however, for most pipelines, you'll certainly want to write a few more checks to **ensure that your analysis will run properly**. Always try to anticipate possible mistakes that users could make in generating this report. Then, write checks to test for each possible scenario. Remember, others should be able to generate this report in your absence.

Here, we would add this code to a code chunk called `checks`.


![`checks` code chunk](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_43)

In the code in this chunk (above), we're checking to see if the expected column names are what are in the Google Sheet URL that was provided. You'll see we specify what the expected column names are by creating the `columns` object. Then, the check looks to see how many columns in the Google Sheet are the same as the columns specified in the `columns` object. If they are not all equal, then the report will not compile and an error will be thrown.

Note that there are three types of feedback your code can give in R:

- **message** - prints a message but not stop execution
- **warning** - prints a warning message but not stop execution
- **stop** - stops execution of the current expression and executes an error action

In this code, we're providing a `stop()` message because we don't want the report to carry out the analysis unless the data are in the expected format. However, in other cases, you may just want to print a message in the output or provide the user with a warning but not stop the report from compiling. In these cases you would use `message()` and `warning()`, respectively.

Finally, note that in this code chunk we've included `echo = FALSE`. This evaluates the code so the check is carried out, but doesn't print it in the output report.

Once you've written enough checks to ensure that your report will only compile when you have the right data in the right format, you're ready to begin the analysis.

#### The Analysis

To analyze the data, maybe you're just interested in summarizing the mean number of hours your friends spend doing each activity. To do this, you would first clean the data and then generate a plot.

##### Data Cleaning

Before you can generate this plot, you will want to check and clean your data. For this example here, what if people said they spent more than 24 hours doing things in a day? Well, we know there are only 24 hours in a day, so you'd likely want to exclude these individuals from the analysis, as you won't know for sure where the error in their data entry happened. You would write a few lines of code to do this using your data wrangling skills.


![`clean` code chunk](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_52)

Here, we have specified that we don't want this code chunk included in the final report, using `include = FALSE` in the code chunk. We have also included comments so that anyone looking at the raw code would know what the code does. But, the final knit report will not include such details.

You'd also want to be sure that your report provides a description of how many individuals' data are included in your analysis and how many samples have been removed (an example of a descriptive analysis!).

Below the code chunk, we include a brief description of the data by specifying how many samples are included in the analysis and how many have been removed due to issues with their data using Markdown syntax. None of the numbers here have been hard-coded. They will all automatically populate with the appropriate number when the report is knit.

##### Data Analysis

Once you're confident that your data are ready to be used for analysis, you'd write the code to generate the plot. Here, we're not focusing on the plot, so we use very basic code, but if this were a report you were sending around to your boss or team, you'd likely want to improve the labels, increase the font size, and maybe change the theme. Nevertheless, with this, you're ready to knit your parameterized report.


![`analyze` code chunk](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_73)

#### Knitting

To generate your knit report, you'll click on the arrow to the right of "Knit" and select "Knit with Parameters..." from the drop-down menu.


![Knit with Parameters...](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_28)

If prompted, say yes to installing necessary packages. Then, a window will appear where the `file_url` box will say "ask", indicating that you'll have to specify the URL here. The default worksheet is 1. You can leave this as is, or change it to specify a different worksheet.


![Knit with Parameters pop-up window](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_32)

After adding the URL for the appropriate Google Sheet, you'll want to click "Knit"


![After adding URL, click Knit](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_38)

Your report will appear! Here, we see a summary of the data after the first week of collecting information from your friends.


![Report with survey data](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_62)

We see that most of your friends' time is spent working and sleeping, which makes enough sense!

However, the whole point of this report is that you can run it again with ease for an updated dataset -- as that's the whole point of a pipeline. The second sheet in this Google Sheet represents your updated data. Thus, we'll click "Knit with Parameters" again and specify the appropriate URL (the same as earlier), but change worksheet to '2'. We'll again Knit our report.


![Change parameter and re-Knit](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_67)

Just like that, we see the data summarized across more of our friends! People are still working and sleeping the most; however, we see a lot more variability in this updated dataset!


![Report with updated survey data](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/export/png?id=1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI&pageid=g3eacf30f3b_1_57)

### Summary

This lesson has covered what a data science pipeline is, when you'd want to generate one, considerations to make when writing a pipeline, and a simple example of how to generate a data science pipeline using parameterized reports in R Markdown. Whenever you're going to be working with a dataset that updates or a number of different datasets that are similar, start by writing a robust data science pipeline.

### Additional Resources

* [Building a Data Pipeline from Scratch](https://medium.com/the-data-experience/building-a-data-pipeline-from-scratch-32b712cfb1db), by [Alan Marazzi](https://www.rdisorder.eu/)
* [Parameterized R Markdown reports with RStudio Connect](https://www.rstudio.com/resources/videos/parameterized-r-markdown-reports-with-rstudio-connect/)
* [RMarkdown Parameterized Reports](https://rmarkdown.rstudio.com/developer_parameterized_reports)
* [Chapter 15: Parameterized Reports in R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/parameterized-reports.html), by Yihui Xie, J.J. Allaire, and Garrett Grolemund


### Slides and Video

![Data Analysis Pipelines](https://www.youtube.com/watch?v=zE_doXeNENc)

* [Slides](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/edit?usp=sharing)

# Identifying data

After knowing your problem and transforming it into a data science problem, your next step is to identify the appropriate data. Good data is hard to come by. Depending on your problem it can be costly or just infeasible. For instance, you want to know if money makes people happy. One way to get data for your problem is to give people cash and check with them later to see if it makes them more content, which isn't a cheap experiment. What if you are interested in knowing if texting while driving causes accidents. Can you run a study and tell people to text while drive and see if it makes them have car accidents? 

So, although we can collect our own data, most of the time you use data that already exist. So it's important to know what data you can access. These are the different scenarios you may face:
* You can find data free on the web in which case be sure to reference the source. If you load the data from an internet source, record the URL and the time accessed.
* Your client or supervisor provides the data to you in which case try to know about the terms of use of the data and sharing limitations. In most cases, you are not allowed to share the data.
* You need to buy the data which again may come with terms of use.
* You may need to contact owners of the data to get access to them. Polite emails go a long way.

In each of the cases above, it's always better to get the raw data and do the cleaning yourself. You can also ask for a tidy version of the data. Finally, if the data do not exist, you may need to generate/collect them yourself.

In practice, data are defined by how they are collected:

Observational data are collected from a sample of the bigger population of interest. For instance, data on household expenditure in the U.S. are usually collected from a sample of American household. Observational data can be in the following forms:

  * Cross-sectional data are collected from a sample of the bigger population of interest *at a specific point in time*.

  * Longitudinal data are collected from a sample of the population of interest but *at multiple points in time*. For instance, data on the effect of peer effect in school on life outcomes are measured at multiple points in the lives of the individuals.

  * Panel data are collected from a sample of the population of interest *at multiple points in time* but the *sample may change from one point in time to another*. For example, if data is collected on 1000 individual in the year 2010, in 2015 the data may be collected from 1000 individual that may or may not overlap with the 2010 sample.

2. Experimental data are collected through a randomized experiment. In an experiment, the researchers divide the sample into to or more (that is chosen from the bigger population of interest) and assign the treatment (let's say the vaccination) to one group while the group receives no treatment. The outcomes are then observed and compared. This differs from observational data, which involves collecting data without changing any of the existing conditions. 

Determine whether the data is good enough. If it's not, before you spend hours on it, quit and look for other sources of data. Downloaded data from other resources often needs to be processed. If the data that you obtain is pre-processed, make sure you understand how. Record the steps you take to reformat the data. We suggest the following steps to check and tidy the data for your analysis. Make sure

* if variables are collected from multiple sources, they are merged properly
* each variable forms a column
* each observation forms a row
* each table/file stores data about one kind of observation (e.g. people/hospitals).
* column names are easy to use and informative
* apparent mistakes in the data have been removed
* missing values are formatted uniformly and correctly
* variable values are internally consistent
* appropriate transformed variables have been added.

As an exercise think about the following question: Is there any association between crime rates and temperature? And for simplicity, let's assume we're not looking for any causal relationship between the two variables, i.e., we're not trying to prove higher temperature (or lower temperature) causes more crime. We simply want to know if there is any correlation between the two. How do we go about finding data? 
Well, it is obvious that our main two variables are crime rates (what are the crime rates?) and temperature. We could do this through two main ways. We could look at the temperature and crime rates of American cities (or a sample of them) at a specific time (let's say January 2017) or their average annual temperature. This is an example of cross-sectional data. We could also look at the two variables in American cities (or again a sample of them) but at multiple points in time, say in January, April, July, and October 2017. This is an example of longitudinal data. For simplicity, we can focus on the first case: cross-sectional data. Becuase we don't know how to find crime or temperature data, our only way is to Google search. A simple search for crime data gives the following results:

![Search results for "crime data USA"](images/02_identifying_data/02_dataanalysis_identifying_data-05.png)
 
Since FBI is the official source for crime data, we click on the third link "FBI -- Crime in the U.S." You will then be taken to a page which lists all the years that the data is available. Let's click on 2017. In the next page, click on "Preliminary Report." On the next page click on "Table 4" which shows Offenses Reported to Law Enforcement, by State by City 100,000 and over in population. 

![FBI --  Crime in the U.S.](images/02_identifying_data/02_dataanalysis_identifying_data-06.png)

In the following page click on Download Excel to click all the data as an Excel file. 

![Download FBI crime data as an Excel file](images/02_identifying_data/02_dataanalysis_identifying_data-07.png)

You can also click on Data Declaration to learn more about the data and how they are collected. You can learn about the methodology used to obtain the data. 

![Data declaration](images/02_identifying_data/02_dataanalysis_identifying_data-08.png)

This is how the data looks. The variables included in the data are state, city, year, population, violent crime, murder, rape, robbery, aggravated assault, property crime, burglary, larceny-theft, motor vehicle theft, and arson. The rates are from January to June of 2017 and 2017 for cities 100,000 and over in population.

![Excel file containing the crime data](images/02_identifying_data/02_dataanalysis_identifying_data-09.png)

Now that you have the Excel file on your computer upload the file to RStudio.cloud and import it into your environment using the following code. We will use the package `readxl`. The second part of the code tidies variable names and removes unnecessary columns from the data. The last line removes the spaces in column names and replaces them with dots. 

![Importing FBI crime data into R](images/02_identifying_data/02_dataanalysis_identifying_data-10.png)

If you look at the first few rows of the data using functions `head()` or `glimpse()` you see that under columns State, City, and Population there are many `NA` values. This is because the data contains multiple years for the same city and multiple cities for the same state and the data collectors didn't bother to repeat the name of the city or the state.

![Missing values in the names of the cities and states](images/02_identifying_data/02_dataanalysis_identifying_data-11.png)

To fix this we use the package `zoo` to repeat city and state names and population values. The function `na.locf()` fills NA values with the cell above them. When you look at the data now you will see the missing values in those three variables (City, State, and Population) are filled with values.

![Filling the missing values in the names of the cities and states using the package `zoo`](images/02_identifying_data/02_dataanalysis_identifying_data-12.png)


The crime data is ready for our analysis. Now, it's time to find data on temperature across American cities. Google search shows that a good source of climate data is the [National Centers for Environmental Information](https://www.ncdc.noaa.gov/). 

![National Centers for Environmental Information website](images/02_identifying_data/02_dataanalysis_identifying_data-13.png)

Click on "Data Access" then under Quick Links click on Land-Based Station > Datasets > GHCN > Comparative Climatic Data.

![Where to find data on climate National Centers for Environmental Information website](images/02_identifying_data/02_dataanalysis_identifying_data-14.png)

In the next page find the link "Normal Daily Maximum Temperature" under Climate Normals. Right click on the link and copy the link address. The link address is "http://www1.ncdc.noaa.gov/pub/data/ccd-data/nrmmax.txt". Now, in R you can use any command to import this text file. 

![Copy link address for the txt data](images/02_identifying_data/02_dataanalysis_identifying_data-15.png)

Once you copied the link address, go back to your R script file on RStudio.cloud and paste the link inside quotation marks and assign it to a variable called www. We then use the package `readr` to import the txt file from the link address. Because of some issues with the way the original data is formatted, we set `header` to False and manually assign variable names as follows. The last line converts the variable `City` to a character so that we can merge the two datasets.

![Importing temperature data into R using `readr` package](images/02_identifying_data/02_dataanalysis_identifying_data-16.png)

We have the two datasets (crime and temperature data) in two separate data frames. Both data have a variable named `City` in them. In order to merge the two datasets we can use the package `dplyr` and the function `inner_join()` (why?) and the key `City` to find the overlap of the two data frames. Before merging, let's filter the data to the year 2017. We can also create a new variable called `Crimepc` which is crime per capita calculated as the crime rate in each city divided by its population.

![Merging the two sets of data and a summary of the data](images/02_identifying_data/02_dataanalysis_identifying_data-17.png)

Voila! We have a single data frame that contains crime data and temperature data for 91 cities in the United States. We are left with fewer cities than the original data frames and this is because there are only 91 overlapping cities. This could also be due to a mismatch in city names in the two datasets so you may want to go over the data and look for them (For instance, the city Mobile in the crime data has a "4" in front of it).

Our data is now ready for any analysis. We can plot the variable `Crimepc` against the variable `ANN`, which represents the annual temperature in a city. We can use `ggplot2` and the function `geom_point()`. We can also use `stat_smooth()` to have a trend line on the graph. As you can see below, the line is slightly positively sloped which shows a small positive correlation between the two variables. 

![Graphing crime per capita against annual temperature in the sample](images/02_identifying_data/02_dataanalysis_identifying_data-18.png)

We can't really tell if it's higher temperature that causes more crime. We are only showing that there is a positive correlation between them. This exercise was merely designed to show the process of data collection. Data don't come easy and, as we saw in this example, may come from multiple sources. But the good news is that as the world is moving toward more and bigger data, there is going to be more data available for everybody to use. Keep in mind, however, that big or small, you need the right data for your data science question. 


### Slides and Video

* [Slides](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/edit?usp=sharing)

{quiz, id: quiz_02_identifying_data}

### Identifying data quiz

{choose-answers:4} ? What is NOT among the best practices of acquiring data?
C) Never ask for the raw data. Tidy data is always better.
C) You should never ask others to share their data with you.
o) Make sure you follow the terms of service of the data. 
o) You can use data from the web.
o) Cite the source of your data.
o) If you can't find the right data for your purpose, think about how you can collect it.

{choose-answers:4} ? What kind of data is the following: Data that is collected from the same sample of the population at multiple points in time.

C) Longitudinal data
o) Cross-sectional data
o) Experimental data
o) Time series data
o) Panel data

{choose-answers:4} ? What's the similarity between panel data and longitudinal data?

C) both refer to data that is collected at multiple points in time
C) both are considered observational data
o) both refer to data that is collected from the same sample over time
o) both are considered big data
o) both are data that contain the whole population

{choose-answers:4} ? Which steps do you have to take when checking and tidying data?

C) variable values are internally consistent
C) appropriate transformed variables have been added
o) column names should be abbreviations
o) data should be tidied and the original data should be removed
o) all missing values should be removed from the data

{/quiz}


### include this analysis later?? 

As an exercise think about the following question: Is there any association between crime rates and temperature? And for simplicity, let's assume we're not looking for any causal relationship between the two variables, i.e., we're not trying to prove higher temperature (or lower temperature) causes more crime. We simply want to know if there is any correlation between the two. How do we go about finding data? 

Well, it is obvious that our main two variables are crime rates (what are the crime rates?) and temperature. We could do this through two main ways. We could look at the temperature and crime rates of American cities (or a sample of them) at a specific time (let's say January 2017) or their average annual temperature. This is an example of cross-sectional data. We could also look at the two variables in American cities (or again a sample of them) but at multiple points in time, say in January, April, July, and October 2017. This is an example of longitudinal data. For simplicity, we can focus on the first case: cross-sectional data. Becuase we don't know how to find crime or temperature data, our only way is to Google search. A simple search for crime data gives the following results:

![Search results for "crime data USA"](images/02_identifying_data/02_dataanalysis_identifying_data-5.png)

Since FBI is the official source for crime data, we click on the third link "FBI -- Crime in the U.S." You will then be taken to a page which lists all the years that the data is available. Let's click on 2017. In the next page, click on "Preliminary Report." On the next page click on "Table 4" which shows Offenses Reported to Law Enforcement, by State by City 100,000 and over in population. 

![FBI --  Crime in the U.S.](images/02_identifying_data/02_dataanalysis_identifying_data-6.png)

In the following page click on Download Excel to click all the data as an Excel file. 

![Download FBI crime data as an Excel file](images/02_identifying_data/02_dataanalysis_identifying_data-7.png)

You can also click on Data Declaration to learn more about the data and how they are collected. You can learn about the methodology used to obtain the data. 

![Data declaration](images/02_identifying_data/02_dataanalysis_identifying_data-8.png)

This is how the data looks. The variables included in the data are state, city, year, population, violent crime, murder, rape, robbery, aggravated assault, property crime, burglary, larceny-theft, motor vehicle theft, and arson. The rates are from January to June of 2017 and 2017 for cities 100,000 and over in population.

![Excel file containing the crime data](images/02_identifying_data/02_dataanalysis_identifying_data-9.png)

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

We can't really tell if it's higher temperature that causes more crime. We are only showing that there is a positive correlation between them. This is mainly due to missing confounders. We will see in detail what confounders are in the lesson on Inferential Analysis but in short confounders are other variables that may affect our outcome but are also correlated with our main variable of interest. In our example, confounders are variables that are correlated with crime rate but also with temperature. Can you think of any? Well, imagine hotter cities are poorer (hypothetically). If that's the case, we also know that cities being poor is also associated with having a higher crime rate. Therefore, average income in a city is a confounding variable because it's both correlated with temperature and crime rate. Therefore, if we're really interested in the effect of temperature on crime rate, we should also consider the poverty level.

![Poverty can be a confounding variable](images/02_identifying_data/02_dataanalysis_identifying_data-19.png)

The other issue with our analysis is the sampling issue. We only had data on cities with 100,000 residents or more. In a good data analysis, any conclusion about the population should use a random sample from the population. Our sample is not random. Why? Because we did not select a random sample of cities and instead used data on larger cities. So we can't conclude anything about the U.S. as a whole. All we can say is that we found a positive correlation between temperature and crime rate in a sample of larger cities in the U.S. This exercise was merely designed to show the process of data collection. Data don't come easy and, as we saw in this example, may come from multiple sources. But the good news is that as the world is moving toward more and bigger data, there is going to be more data available for everybody to use. Keep in mind, however, that big or small, you need the right data for your data science question. 



# Identifying data

After knowing your problem and transforming it to a data science problem, your next step is to identify the appropriate data. Good data is hard to come by. Depending on your problem it can be costly or just infeasible. For instance, you want to know if money make people happy. One way to get data for your problem is to give people money and check with them later to see if it makes them happier, which isn't a cheap experiment. What if you are interested in knowing if texting while driving causes accidents. Can you run a study and tell people to text while drive and see if it makes them have car accidents? 

So, although we can collect our own data, most of the time you use data that already exist. So it's important to know what data you can access. These are the different scenarios you may face:
* You can find data free on the web in which case be sure to reference the source. If you load the data from an interent source, record the url and the time accessed.
* Your client or supervisor provides the data to you in which case try to know about the terms of use of the data and sharing limitations. In most case you are not allowed to share the data.
* You need to buy the data which again may come with terms of use.
* You may need to contact owners of the data to get access to them. Polite emails go a long way.

In each of the cases above, it's always better to get the raw data and do the cleaning yourself. You can also ask for a tidy version of the data. Finally, if the data does not exist, you may need to generate/collect them yourself.

In practice, data are defined by how they are collected:

Observational data: data is collected from a sample of the bigger population of interest. For instance, data on household expenditure in the U.S. is usually collected from a sample of American household

  * Cross-sectional data: data is collected from a sample of the bigger population of interest *at a specific point in time*.

  * Longitudinal data: data is collected from a sample of the population of interest but *at multiple points in time*. For instance, data on the effect of peer effect in school on life outcomes is measured at multiple points in the lives of the individuals.

  * Panel data: data is collected from a sample of the population of interest *at multiple points in time* but the *sample may change from one point in time to another*. For example, if data is collected on 1000 individual in year 2010, in 2015 the data may be collected from 1000 individual that may or may not overlap with the 2010 sample.

2. Experimental data: data is collected throught a randomized experiment. In an experiment the researchers divide the sample into to or more (that is chosen from the bigger population of interest) and assigns the treatment (let's say the vaccination) to one group while the group receives no treatment. The outcomes are then observed and compared. This differes from observational data, which involves collecting data without changing any of the existing conditions. 

Determine whether the data is good enought. If it's not, before you spend hours on it, quit and look for other sources of data. Downloaded data from other resrouces often needs to be processed. If the data that you obtain is pre-processed, make sure you understand how. Record the steps you take to reformat the data. We suggest the following steps to tidy the data for your analysis. Make sure

* if variables are collected from multiple sources, they are merged properly
* each variable forms a column
* each observation forms a row
* each table/file stores data about one kind of observation (e.g. people/hospitals).
* column names are easy to use and informative
* obvious mistakes in the data have been removed
* missing values are formatted uniformly and correctly
* variable values are internally consistent
* appropriate transformed variables have been added

As an exercise think about the following question: Is there any association between crime rates and temperature? And for simplicity, let's assume we're not looking for any causal relationship between the two variables, i.e., we're not trying to prove higher temperature (or lower temperature) causes more crime. We simply want to know if there is any correlation between the two. How do we go about finding data? 
Well, it is obvious that our main two variables are crime rates (what are the crime rates?) and temperature. We could do this throught two main ways. We could look at the temperature and crime rates of American cities (or a sample of them) at a specific time (let's say January 2017) or their average annual temperature. This is an example of cross-sectional data. We could also look at the two variabels in American cities (or again a sample of them) but at multiple points in time, say in Janurary, April, July, and October 2017. This is an example of longitudinal data. For simplicity we can focus on the first case: cross-sectional data. Becuase we don't know how to find crime or temperature data, our only way is to Google search. A simple search for crime data gives the following results:

![Search results for "crime data USA"]()
 
Since FBI is the official source for crime data, we click on the third link "FBI -- Crime in the U.S.". You will then be taken to a page which lists all the years that the data is avaiable. Let's click on 2017. In the next page, click on "Preliminary Report". On the next page click on "Table 4" which shows Offenses Reported to Law Enforcement, by State by City 100,000 and over in population. 

![FBI --  Crime in the U.S.]()

In the following page click on Download Excel to click all the data as an Excel file. 

![Download FBI crime data as an Excel file]()

You can also click on Data Declaration to learn more about the data and how they are collected. You can learn about the methodology used to collect the data. 

![Data declaration]()

This is how the data looks. The variables included in the data are: state, city, year, population, violent crime, murder, rape, robbery, aggravated assualt, property crime, burglary, larceny-theft, motor-vehicle theft, and arsen. The rates are for January to June of 2016 and 2017 for cities 100,000 and over in population.

![Excel file containing the crime data]()

Now, it's time to find data on temperature across American cities. Google search shows that a good source of climate data is the [National Centers for Environmental Information](https://www.ncdc.noaa.gov/). 

![National Centers for Environmental Information website]()

Click on "Data Access" then under Quick Links click on Land-Based Station > Datasets > GHCN > Comparative Climatic Data.

![Where to find data on climate National Centers for Environmental Information website]()












Big or small - you need the right data
The data may not contain the answer. The combination of some data and an aching desire for an answer does not ensure that a reasonable answer can be extracted from a given body of data... 

Tukey: https://en.wikipedia.org/wiki/John_Tukey




[Tidy data](http://vita.had.co.nz/papers/tidy-data.pdf refers to the shape of the data






### Slides and Video

* [Slides](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/edit?usp=sharing)

{quiz, id: quiz_02_identifying_data}

### Identifying data quiz


{/quiz}

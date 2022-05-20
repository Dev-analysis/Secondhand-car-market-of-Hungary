# What you like to buy a secondhand car?

What do you think about the secondhand car?
The secondhand car market is one of the fastest-growing sectors.

Why?
[here](https://www.grandviewresearch.com/industry-analysis/used-car-market) is some info:

The globally used car market size was valued at USD 1.57 trillion in 2021 
and is expected to exapnd at a compound annual growth rate (CAGR) of 6.1% 
from 2022 to 2030.

# Aim

The aim of this repository is to deal with the real-world dataset and perform 
analysis procedure:

* ETL: Export transform and load
* Data Cleaning: Perform data cleaning
* Data Exploration: Finding the useful insights
* visualization: Creating Dashboard 



# About Dataset

The dataset originates from the biggest used car advertisement
site of Hungary. This dataset is a result of a web-parsing project,
that could be found in a [GitHub repo](https://github.com/atttilakiss/Project-HaHU_KA)
The following information had to be acknowledged:

two main tables: advertisements (about 38k records); catalogs (about 16k records)

advertisements:

contains the main details of the advertisement

contains the sales status (manually updated, moderately reliable)

in order to prevent privacy issues the following columns had been replaced with 'NA's:

'description',
'advertisement_url'
catalogs:

technical details of the car represented in each advertisement
this data not available for every advertisement
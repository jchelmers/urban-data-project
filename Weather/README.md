This directory contains the data files and Jupyter notebooks needed to scrape weather data (temperature and humidity) for the zipcodes and dates in our restaurant dataset and then match that weather info with the appropriate restaurants.

The **Scrape_Weather.ipynb** notebook crawls the Weather Underground archives to compute three-day average temperature and humidity for the zipcode and most recent inspection date of every restaurant in our dataset. Before running this notebook, please download the following file:
* **health_inspect_cleaned.csv**. Available in this repo at: https://github.com/jchelmers/urban-data-project. When you download this file, please retain the directory structure of the GitHub, i.e. this file should be downloaded one level up from this directory.

This notebook will create a CSV named **weather_data.csv** in the working directory. This file contains the scraped weather data.

The **Scrape_Central_Park_Weather.ipynb** notebook crawls the Weather Undeground archives to compute three-day average temperature and humidity based on the Central Park weather station for the most recent inspection date of any restaurant for any restaurant for which the other notebook was not able to find data, e.g. if there is no weather station in the restaurant's zipcode. Before running this notebook, please download the following files:
* **health_inspect_cleaned.csv** as described above.
* **missing_weather_data.csv**. Available in this repo at https://github.com/jchelmers/urban-data-project/tree/master/Weather. Can also be regenerated using the **Incorporate_Weather_Data.ipynb** notebook, as described below.

This notebook will create a CSV named **weather_CentralPark.csv** in the working directory. This file contains the scraped Central Park weather data.

Before running the **Incorporate_Weather_Data.ipynb**:
* Please make sure you have run the **Scrape_Weather.ipynb** notebook and/or downloaded the **weather_data.csv** file available in this repo at https://github.com/jchelmers/urban-data-project/tree/master/Weather.
* You can then use this notebook to generate a **missing_weather_data.csv** file that contains the indices of any restaurants for which it was not possible to scrape precise weather data. You will need to uncomment the lines marked with "Uncomment these lines..." if you'd like to do so.
* To run the rest of this notebook, please make sure you have run the **Scrape_CentralPark.ipynb** notebook and/or downloaded the **weather_CentralPark.csv** file available in this repo at https://github.com/jchelmers/urban-data-project/tree/master/Weather.

This notebook will create a CSV named **health_inspect_cleaned_weather_added.csv** in the working directory. This file contains the cleaned restaurant dataset with additional columns for the three-day average temperature and humidity.
This directory contains the data files and Jupyter notebook needed to scrape the average Google star ratings of the restaurants in our dataset from the Google Places API. If it is not possible to find a rating for a particular restaurant, we use the average rating in that zipcode or average rating overall intead.

To use the code, you will need a Google Places API key, as indicated in the notebook.

Before running the **Scrape_Google_Ratings.ipynb** notebook, please download the following files:
* **camis_dba.csv** Available in this repo at: https://github.com/jchelmers/urban-data-project/tree/master/Ratings. This file should be saved in the same directory as the notebook.
* **health_inspect_cleaned_loc_added.csv** Available in this repo at https://github.com/jchelmers/urban-data-project/tree/master/Geocoding. When you download this file, please retain the directory structure of the GitHub, i.e. this file should be downloaded into a directory named Geocoding located at ../Geocoding relative to this directory.
* **weather_data.csv** Available in this repo at: https://github.com/jchelmers/urban-data-project/tree/master/Weather. When you download this file, please retain the directory structure of the GitHub, i.e. this file should be downloaded into a directory named Weather located at ../Weather relative to this directory.

The notebook will create a CSV name **ratings0_23329.csv** with intermediate results in the working directory. It will also create a CSV named **Health_Insp_weather_loc_rating.csv**. This file contains the cleaned restaurant dataset, including weather data, with additional columns for the average Google star ratings and indicator variables corresponding to whether the rating needed to be replaced with the mean (see above).
This directory contains the data files and Jupyter notebook needed to convert the addresses of the restaurants in our dataset to latitude and longitude. The Jupyter notebook uses the OpenStreetMap Nominatim serach tool to geocode as many of the addresses as possible, and falls back on the Google Maps Geocoding API for the addresses which Nominatim is not able to convert.

Before running the **Geocode_Restaurant_Locations.ipynb** notebook, please download the following files:
* **health_inspect_cleaned.csv**. Available in this repo at: https://github.com/jchelmers/urban-data-project. When you download this file, please retain the directory structure of the GitHub, i.e. this file should be downloaded one level up from this directory.

This notebook will create the following CSVs in the working directory:
* **violations_converted.csv**
* **violations_converted_fe_p1.csv**
* **violations_converted_fe_p2.csv**
* **g1.csv**
* **g2.csv**
* **health_inspect_cleaned_loc_added.csv**

The last CSV contains the cleaned restaurant dataset, with additional columns for latitude and longitude.
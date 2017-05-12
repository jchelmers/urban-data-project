This directory contains the Jupyter notebook needed to integrate the features we engineered and the features from our original restaurant dataset.

Before running the **Combine_New_Features.ipynb** notebook, please downlaod the following files:
* **Health_Insp_weather_loc_rating.csv** Available in this repo at: https://github.com/jchelmers/urban-data-project/tree/master/Ratings.
* **health_inspect_cleaned_weather_added.csv** Available in this repo at: https://github.com/jchelmers/urban-data-project/tree/master/Weather.
* **health_inspect_loc_license.csv** Available in this repo at: https://github.com/jchelmers/urban-data-project/tree/master/Licenses.
* **vdf_with_complaints.csv** Available in this repo at: https://github.com/jchelmers/urban-data-project/tree/master/311 Complaints.
* **prior_violations.csv** Available in this repo at: https://github.com/jchelmers/urban-data-project.

Please preserved the directory structure of the GitHub when downloading these files.

This notebook will create a CSV named **violations_all.csv** in the parent directory above the working directory. This file contains the final version of our dataset, with all added features, used in our modeling.
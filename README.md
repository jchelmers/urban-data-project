# urban-data-project

Group members:
* Seda Bilaloglu
* Julie Helmers
* Jonathan Toy

This repo contains our code and data files for the final project for the DS-GA 1003 Machine Learning and Computational Statistics course taught by Professor David Rosenberg (NYU, Spring 2017). We were advised by Dr. Bonnie Ray.

For our project, we classified New York City restaurants according to their probability of exhibiting two or more critical food safety violations on their next inspection, using data from the New York Department of Health and Mental Hygiene, 311 Services, Department of Consumer Affairs, New York State Liquor Authority, Weather Underground, OpenStreetMap, and Google Places.

Our data sources and other references can be found in the **Predicting Food Safety Violations Report.pdf** document

---

The subfolders contain READMEs with instructions on how to replicate our results. Please preserve the directory structure of the GitHub when cloning/downloading the code and data files; otherwise, you will need to modify the relative paths in several places in our code. Also keep in mind that almost all of the Jupyter notebooks generate CSVs that may overwrite the versions you have downloaded from the GitHub. Please comment out the relevant lines (search for the function 'pd.to_csv') if you would like to use our versions of the files instead.

Before running the **Preprocess_Restaurants.ipynb** Jupyter notebook, which extracts violation/inspection history-related features from the New York DOHMH dataset of food safety violations, please download and UNZIP the following file:
* **health_inspect_old.csv** Available in this repo at https://github.com/jchelmers/urban-data-project. This file was downloaded from NYC OpenData at https://data.cityofnewyork.us/Health/DOHMH-New-York-City-Restaurant-Inspection-Results/43nn-pn8j in March of 2017.

This notebook generates the following CSVs:
* **prior_violations.csv** in the working directory
* **health_inspect_cleaned.csv** in a subdirectory named Heatmap

Before running the **Modeling Results.ipynb** Jupyter notebook, which produces our final modeling results, please download the following files:
* **violations_all.csv** Available in this repo at https://github.com/jchelmers/urban-data-project.
* **Health_Insp_weather_loca_rating.csv** Available in this repo at https://github.com/jchelmers/urban-data-project/tree/master/Ratings. When you download this file, please retain the directory structure of the GitHub, i.e. this file should be downloaded into a subdirectory named Ratings.

This notebook generates a CSV named **GBC_testset_w_confusionmatrix.csv** in the working directory.
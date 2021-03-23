Canada Provinces COVID-19 Dataset
===

***Description:***
This repository contains one publicly available COVID-19 dataset for the Geography-Based-SEIRDS model
https://github.com/SimulationEverywhere-Models/Geography-Based-SEIRDS

***Instructions:***
- Generate the gpkg and geojson from the raw data shape file by:
- unzip the shp file in the raw_data/geography folder
- copy the contents to the geography folder and remove the lpr_000b16a_e folder
- run geoConverter.sh in the data_processing/shapefile folder
- copy the resulting gpkg and geojson files from the output folder to the model_data folder
- Run the scenario generator as needed, it uses the files from the model_data folder, the other data processing scripts do not need to be run

***What a raw dataset contains:***
- A Geographical Boundary File for the specified area.
- Population counts within the regions of the geographical file.
- The COVID-19 case numbers in each region per day starting in 2020.

***What a model dataset contains:***
- A Geographical Boundary File for the specified area (properly formatted)
- A *clean.csv which contains region id, region population, region area, and region name
- an *adjacency.csv which contains information on which regions share borders for neighborhood generation

This repository contains tools to process raw datasets, scenario generation, and example files from the process output:
- data_processing : scripts used to process raw data
- model_data : the output of the data_processing stage
- raw_data : the publicly available COVID-19 data
- scenario_generation : uses the outputs of data_processing stage that are copied to the model data folder to generate a scenario

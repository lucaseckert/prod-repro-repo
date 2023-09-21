# README
This repository contains a project for the **CIEE Productivity and Reproducibility Module**.

The repositry is orgnaized into 5 folders and an R project. Below is a description of each folder and its contents.
To reproduce this project simply download the 5 folders and the R project, and run each of the R scripts in the scripts folder in the order they are numbered. This should populate the other folders with the data and output from the analysis. To reporduce the manuscript, simply run the R markdown script in the manuscript folder.

## 0_rawdata
This folder contains the raw data in a csv file. This data is generated with the 00_raw-data-access.R script in the scripts folder. All data is accessed through the palmerpenguins R package. The data is further explained in the data dictionary.

## 01_scripts
This folder contains the R scripts to reproduce the analysis. The scripts are as follows: 
00_raw-data-access.R accesssing the data and saves it as a csv in the raw data folder
01_data-cleaning.R cleans the data and saves the clean data in the tidy data folder
02_analysis.R conducts the main statistical analysis for the project
03_figures.R prodces the figures that are saved in the figures folder and appear in the manuscript

## 02_tidydata
This folder contains a csv of the cleaned data, generated with the 01_data-cleaning.R script. The data is explained in the data dictionary.

## 03_figures
This folder contains the figures, saved as RDS objects and pngs, geenerated with the 03_figures.R script.

## 04_manuscript
This folder contains an R markdown file to generate the final manuscript, as well as a PDF of the output.

## 05_references
This contains files for generating the references in the manuscript. 
The csl file for the citation style is downloaded from: https://github.com/citation-style-language/styles/blob/master/ecology-letters.csl
The ciee-prod-repro.bib file is taken from the Zotero library for the project, contains the literature that is cited.
The grateful-refs.bib file contains reference information for the R packages that were used, and is generated in the manuscript Rmd file.

## 06_prereg
This contains an R mardown file for generating the pregestration, as well as the PDF output


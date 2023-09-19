## Data Cleaning 

## Date: September 19 2023
## Authors: Lucas Eckert

## Description: Script for cleaning raw data. I selected just the variables that
## would be used for analysis, quickly looked for obvious errors, and saved the 
## clean data to our directory

## loading packages
library(tidyverse)

## for the analysis, we only require bill length, depth and species
## for simplicity we will only keep those variables and check for obvious errors
## I wouldn't usually discard these other variables but I want to have
## some "data cleaning" here but the data are already very clean

## reading and checking out raw data
rawdata<-read.csv("./00_rawdata/penguins.csv", stringsAsFactors = T)
summary(rawdata)

## selecting relevant variables
data <- rawdata %>% select(species,bill_length_mm,bill_depth_mm)
summary(data)

## roughly plotting the data to look for obvious errors/outliers
data %>%
  GGally::ggpairs(aes(color = species))

## while there are a couple data points that could be statistically classified
## as outliers, they are not obscenly out of the normal range

## saving the "cleaned" data as a new csv in the tidy data folder
write_csv(data, "02_tidydata/penguins-clean.csv")

## Raw Data Access

## Date: September 7 2023
## Authors: Lucas Eckert

## Description: Script for accessing raw data. The raw data is availabe from 
## the plamerpenguins R package, so we will load that package, access the data, 
## and save the raw data to our directory

## loading packages
library(palmerpenguins)
library(tidyverse)

## viewing data
view(penguins)

## write csv of raw data to our directory (rawdata folder)
write_csv(penguins, "00_rawdata/penguins.csv")
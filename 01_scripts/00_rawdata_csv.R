## September 7 2023
## Lucas Eckert
## script for loading raw data

## loading packages
library(palmerpenguins)
library(tidyverse)

## viewing data
view(penguins)

## write csv
write_csv(penguins, "00_rawdata/penguins.csv")
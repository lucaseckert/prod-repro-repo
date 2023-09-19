## Data Analysis

## Date: September 19 2023
## Authors: Lucas Eckert

## Description: Script for analyzing the data. The purpose of this analysis is 
## to look for species differences in bill ratio - a new variable we create, 
## which is the bill depth/length

## loading packages
library(tidyverse)
library(ggfortify)

## loading cleaned data
data<-read.csv("./02_tidydata/penguins-clean.csv", stringsAsFactors = T)
summary(data)

## calculating bill ratio
data <- data %>% mutate(bill_ratio = bill_depth_mm/bill_length_mm)

## roughly plotting bill ratio for each species
## note that publication quality figures are made in the "figures.R" script
ggplot(data, aes(x=species, y=bill_ratio))+
  geom_boxplot()+
  theme_bw()

## getting mean bill ratio for each species
ratio_means <- data %>% group_by(species) %>% 
  summarise(species_mean = mean(bill_ratio, na.rm=T))

## looking for differences in mean bill ratio among species  with an anova model
fit<-aov(bill_ratio~species, data = data)
summary(fit)

## and determining the specific differences, with multiple testing correction
pairwise.t.test(data$bill_ratio, data$species,
                p.adjust.method = "bonferroni")

## checking assumptions of our model
autoplot(fit)

## Figures

## Date: September 19 2023
## Authors: Lucas Eckert

## Description: Script for producing publication quality scripts. The 2 figures
## we make are (1) showing the relationship between bill length and depth for 
## each species and (2) comparing the bill ratio among species

## loading packages
library(tidyverse)

## loading cleaned data
data<-read.csv("./02_tidydata/penguins-clean.csv", stringsAsFactors = T)
summary(data)

## calculating bill ratio
data <- data %>% mutate(bill_ratio = bill_depth_mm/bill_length_mm)

## Figure 1: bill length-depth relationship
fig1<-ggplot(data, aes(x=bill_length_mm, y=bill_depth_mm, color=species))+
  geom_point()+
  geom_smooth(method = "lm", se = FALSE, 
              linetype="dashed")+
  theme_bw()+
  ylab("Bill Depth (mm)")+
  xlab("Bill Length (mm)")+
  theme(legend.title = element_blank(),
        legend.position = "top",
        legend.text = element_text(size=11),
        panel.grid.minor = element_blank())
fig1

## Figure 2: comparing bill ratios
fig2<-ggplot(data, aes(x=species, y=bill_ratio, color=species))+
  geom_boxplot()+
  geom_jitter(alpha=0.2)+
  theme_bw()+
  ylab("Bill Ratio")+
  xlab("")+
  theme(legend.position = "none",
        axis.text.x = element_text(size=11),
        panel.grid = element_blank())
fig2

## exporting figures as pngs and r objects
ggsave("figure1.png", fig1, path = "./03_figures")
saveRDS(fig1, "./03_figures/figure1.RDS")
ggsave("figure2.png", fig2, path = "./03_figures")
saveRDS(fig2, "./03_figures/figure2.RDS")

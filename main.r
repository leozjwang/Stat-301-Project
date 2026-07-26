library(readr)
library(tidyverse)
library(infer)
library(broom)
elec_data <- read.csv("complete_dataset.csv")
print(summary(elec_data))

elec_data$holiday <- as.factor(elec_data$holiday)
elec_data$school_day <- as.factor(elec_data$school_day)

fit <- lm(RRP ~ min_temperature + max_temperature + solar_exposure + rainfall + school_day + holiday, elec_data)
print(tidy(fit))

#test by leo
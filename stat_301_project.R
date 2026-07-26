library(dplyr)
library(readr)
elec_data <- read.csv("data/complete_dataset.csv")

# Convert variables to correct type (date or factor)
elec_data <- elec_data |>
  mutate(date = as.Date(date),
         school_day= as.factor(school_day),
         holiday = as.factor(holiday))

# Remove columns that we will most likely not use
elec_filtered <- elec_data |>
  select(-demand_pos_RRP, -demand_neg_RRP, -RRP_positive, -RRP_negative, -frac_at_neg_RRP)
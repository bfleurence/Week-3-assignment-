#### Preamble ####
# Purpose: Cleans the raw marridge data into an analysis dataset
# Author: Benjamin Fleurence 
# Date: 19 September, 2024
# Contact: b.fleurence@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  seperate(col = time_period, 
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "1", sep = "-"))
         )
  
#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")


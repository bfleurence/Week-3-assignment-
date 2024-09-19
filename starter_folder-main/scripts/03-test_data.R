#### Preamble ####
# Purpose: Sanity chekc of the data 
# Author: Benjamin Fleurence [...UPDATE THIS...]
# Date: 19 September 2024 [...UPDATE THIS...]
# Contact: b.fleurence@mail.utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####

data <- read.csv("data/raw_data/simulated.csv")

### Test for negatives 
data$number_of_marriage |> min() <= 0

### Test for NAs
all(is.na(data$number_of_marriage))




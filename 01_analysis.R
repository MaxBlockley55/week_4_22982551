
source("00_clean.R")

library(tidyverse)

flights_means <- flights_clean %>%
  group_by(name) %>%
  summarise(
    avg_dep_delay = mean(dep_delay, na.rm = TRUE),
    avg_arr_delay = mean(arr_delay, na.rm = TRUE)
  ) %>%
  arrange(avg_dep_delay)





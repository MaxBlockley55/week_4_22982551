if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
if (!requireNamespace("nycflights13", quietly = TRUE)) {
  install.packages("nycflights13")
}
suppressPackageStartupMessages(library(tidyverse))
library(nycflights13)

head(flights)

library(tidyverse)

flights_selected <- flights %>%
  select(dep_delay, arr_delay, carrier)


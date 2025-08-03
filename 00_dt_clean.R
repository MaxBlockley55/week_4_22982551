if (!requireNamespace("data.table", quietly = TRUE)) {
  install.packages("data.table")
}

library(data.table)
library(nycflights13)

#convert these librarys to data tables

flights_dt <- as.data.table(flights)
airlines_dt <- as.data.table(airlines)

#selct carrier, and dely variables
flights_clean_dt <- flights_dt[, . (carrier, dep_delay, arr_delay)][
  #Join airline name
  airlines_dt, on = "carrier"
][, .(name, dep_delay, arr_delay)]


# Data comes from Meteo-france
library(dplyr)

# Import
meteoClermont <- read.csv2("data-raw/synop.201903.csv", dec = ".", na.strings = "mq", colClasses = c(date = "character")) %>%
  filter(numer_sta == 7460) %>%
  select(date, wind_dir = dd, wind_speed = ff, temp = t, w = u, pres, precipitation = rr3)

usethis::use_data(meteoClermont, overwrite = TRUE)

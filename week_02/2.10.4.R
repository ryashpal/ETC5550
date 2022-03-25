install.packages("USgas")

library(USgas)

data("us_total")

head(us_total)

us_total %>%
  as_tsibble(key = state, index = year) -> us

us %>%
  filter(state %in% c("Maine", "Vermont", "New Hampshire", "Massachusetts", "Connecticut", "Rhode Island")) %>%
  autoplot()


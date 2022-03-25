library(openxlsx)


fpp.tourism = openxlsx::read.xlsx("https://bit.ly/fpptourism", sheet=1)

head(fpp.tourism)

tourism

fpp.tourism %>%
  mutate(Quarter = yearquarter(Quarter)) %>%
  as_tsibble(key = c(Region, State, Purpose), index = Quarter) -> fpp.tourism.ts


fpp.tourism.ts

tourism

fpp.tourism.ts %>% distinct(Purpose)

fpp.tourism.ts %>% distinct(Region)

fpp.tourism.ts %>% distinct(State)


fpp.tourism.ts %>%
  group_by(State) %>%
  summarise(TotalTrips = sum(Trips))


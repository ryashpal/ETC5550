library(fpp3)

gafa_stock

gafa_stock %>% distinct(Symbol)

# gafa_stock %>%
#   group_by(Symbol) %>%
#   summarise(maximum = max(Close))

# gafa_stock %>%
#   dplyr::group_by(Symbol) %>%
#   dplyr::summarise(maximum = max(Close))

AAPL.stock <- gafa_stock %>% filter(Symbol == "AAPL")

AAPL.stock

AAPL.max <- max(AAPL.stock$Close)

AAPL.max

gafa_stock %>% filter(Close == AAPL.max)

gafa_stock %>%
  filter(Symbol == "GOOG") %>%
  autoplot(Close)


Max_Close_price <- as_tibble(gafa_stock) %>% select(-Date) %>%
  group_by(Symbol) %>% summarise(maximum = max(Close))

Max_Close_price

Max_Close_price[1, 2]

for (i in 1:nrow(Max_Close_price)) {
#  print(i)
  print(gafa_stock %>% filter(Close == as.numeric(Max_Close_price[i, 2])))
}


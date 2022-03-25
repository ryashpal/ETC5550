library(fpp3)

help(aus_production)

aus_production

aus_production %>%
  autoplot(Bricks)

help(pelt)

pelt

pelt %>%
  autoplot(Lynx)

help(gafa_stock)

gafa_stock

gafa_stock %>%
  autoplot(Close)

help(vic_elec)

vic_elec

vic_elec %>%
  autoplot(Demand) +
  labs(title = "Half-hourly electricity demand for Victoria, Australia",
                       y = "Demand (MW)")


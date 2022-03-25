library(fpp3)

help(gafa_stock)

help(PBS)

help(vic_elec)

help(pelt)

gafa_stock

PBS

vic_elec

pelt


gafa_stock %>%
  autoplot(Close)

gafa_stock %>%
  filter(Symbol == "GOOG") %>%
  autoplot(Close)


# PBS %>%
#   autoplot(Cost)

#PBS %>%
#  autoplot(Cost)

PBS %>%
  filter(ATC2 == "A10") %>%
  autoplot(Cost)

PBS %>%
  filter(ATC2 == "A10", Concession == "General") %>%
  autoplot(Cost)

PBS %>%
  filter(ATC2 == "A10", Concession == "General", Type=="Safety net") %>%
  autoplot(Cost)

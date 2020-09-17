library(dplyr)
library(ggplot2)
library(dslabs)
library(RColorBrewer)
data(us_contagious_diseases)
us_contagious_diseases %>% filter(!is.na(population)) %>% group_by(year, disease) %>%
  summarize(rate = sum(count)/sum(population)*10000) %>% 
  ggplot(aes(year, rate, color = disease)) + geom_line()
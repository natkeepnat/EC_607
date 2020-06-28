library(tidyverse)
library(nycflights13)

#pipe example
test_1 <- mpg %>% filter(manufacturer=="audi") %>% group_by(model) %>% summarise(hwy_mean = mean(hwy))
test_2 <- summarise(group_by(filter(mpg, manufacturer=="audi"), model), hwy_mean = mean(hwy))
test_3 <- mpg %>% 
          filter(manufacturer=="audi") %>% 
          group_by(model) %>% 
          summarise(hwy_mean = mean(hwy))

#key dplyr verbs: filter, arrange, select, mutate, summarise

#filter
starwars %>%
  filter(
    species == "Human", 
    height >= 190
  )
starwars %>%
  filter(is.na(height))
starwars %>%
  filter(!is.na(height))

#arrange
starwars %>%
  arrange(birth_year)
starwars %>%
  arrange(name)

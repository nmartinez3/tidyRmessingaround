## some practice messing with tidyr and dplyr

demo("so-17481212")

race %>% 
      gather(Key,Value,2:8) %>%
      mutate(Time = Key, Score = Value) %>%
      select(-Key, -Value) %>%
      mutate(Time = as.numeric(Time)) %>%
      arrange(Name,Time)

## more messing arround

race.alt<-race

race.alt %>%
      gather(Key,Value,2:8) %>%
      rename(Time = Key, Score = Value) %>%
      mutate(Time = as.numeric(Time)) %>%
      arrange(Name,Time)
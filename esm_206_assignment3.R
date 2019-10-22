# Andrew Salvador
# ESM 206, Assignment 3, task 1, 21 October 2019

# Attach necessary packages

library(tidyverse)
library(here)
library(janitor)
library(tidyr)

# Read in Mono Lake data

mono_lake_data <- read_csv("Mono Lake Annual Levels.csv", skip = 5)

# Clean up the column headers

data_clean <- mono_lake_data %>% 
  clean_names() %>% 
  rename(ft_above_sea = lake_level_feet_above_sea_level)

# Make a line graph of Mono Lake level from 1850-2017

ggplot(data_clean, aes(x = year,
                       y = ft_above_sea)) +
  geom_line(aes(color = ft_above_sea)) +
  labs(x = "Year",
       y = "Feet above sea level",
       title = "Mono Lake annual water levels from 1850-2017")

# Random exploratory stuff

ggplot(data_clean, aes(x = year,
                       y = ft_above_sea)) +
  geom_ribbon(aes(ymin = 6350, ymax = ft_above_sea)) +
  geom_hline(aes(yintercept = 6400), color = "red") +
  geom_vline(aes(xintercept = 1950), color = "blue") +
  annotate(geom = "text",
           x = 1950, 
           y = 6410,
           label = "YOOO",
           color = "green") +
  theme_dark() +
  annotate(geom = "rect",
           xmin = 1950,
           xmax = 2000,
           ymin = 6360,
           ymax = 6390,
           fill = "green",
           alpha = .3) +
  geom_rect(xmin = 1930,
            xmax = 1940,
            ymin = 6400,
            ymax = 6600,
            fill = "purple",
            alpha = .34)
            
# More messing around (just a line graph not ribbon with fill)

ggplot(data_clean, aes(x = year,
                       y = ft_above_sea)) +
  geom_line() +
  geom_hline(aes(yintercept = 6400), color = "red") +
  geom_vline(aes(xintercept = 1950), color = "blue") +
  annotate(geom = "text",
           x = 1950, 
           y = 6410,
           label = "YOOO",
           color = "yellow") +
  theme_dark() +
  annotate(geom = "rect",
           xmin = 1950,
           xmax = 2000,
           ymin = 6360,
           ymax = 6390,
           fill = "green",
           alpha = .3) +
  geom_rect(xmin = 1930,
            xmax = 1940,
            ymin = 6400,
            ymax = 6600,
            fill = "purple",
            alpha = .34)

  
#Trying the real graph out

ggplot(data_clean, aes(x = year,
                       y = ft_above_sea)) +
  geom_line(color = "blue") +
  labs(x = "Year", 
       y ="Feet above sea level",
       title = "Mono Lake annual water levels from 1850-2017") +
  annotate(geom = "rect",
           xmax = 2025,
           xmin = 1850,
           ymax = 6377,
           ymin = 6350.1,
           fill = "sienna2",
           alpha = .2) +
  annotate(geom = "text",
           x = 1905,
           y = 6372,
           label = "(6377ft) Land bridge emerges allowing 
  predator access to birds' nesting sites",
           color = "sienna4") +
 geom_hline(aes(yintercept = 6377), 
            color = "sienna4") +
  annotate(geom = "rect",
           xmax = 2025,
           xmin = 1850,
           ymax = 6360,
           ymin = 6350.1,
           fill = "red",
           alpha = .3) +
            # Here maybe use a transparent rectangel instead of a line?
  annotate(geom = "text",
           x = 1905,
           y = 6355.5,
           label = "(6360ft) Birds' food sources adversely 
 affected due to increased lake salinity",
           color = "red3") +
  geom_hline(aes(yintercept = 6360), 
             color = "red") +
  geom_point(aes(x = 1940,
                 y = 6417),
                 size = 0.8) + 
  geom_text(aes(x = 1975, 
                y = 6421, 
                label = "(1940) Mono Basin diversion begins")) +
  geom_point(aes(x = 1982,
                 y = 6372.8),
             size = 0.8) +
  geom_text(aes(x = 1989, 
                y = 6367,
                label = "(1982) Mono Lake Tufa 
                State Reserve created")) +
  scale_y_continuous(limits = c(6350.1, 6439), expand = c(0,0)) + #what about that decimal point, and (6439)
  scale_x_continuous(limits = c(1850, 2025), expand = c(0,0)) +
  theme_linedraw(12)

 
  


# Random stuff

  geom_vline(aes(xintercept = 1950), color = "blue") +
  annotate(geom = "text",
           x = 1950, 
           y = 6410,
           label = "YOOO",
           color = "yellow") +
  theme_dark() +
  annotate(geom = "rect",
           xmin = 1950,
           xmax = 2000,
           ymin = 6360,
           ymax = 6390,
           fill = "green",
           alpha = .3) 



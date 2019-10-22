# Andrew Salvador
# ESM 206, Assignment 3, Task 2
# 21 October 2019


library(tidyverse)
library(hexbin)
library(tidyr)

space_launches <- read_csv("space_launches.csv")

# Mess around wrangling
space_data <- space_launches %>% 
  select(launch_date:category, -state_code, -variant) %>% 
  filter(launch_year >= 1994) %>% 
  arrange(launch_year) %>% 
  filter(agency == "US")



# Random really bad graph
ggplot(space_launches, aes(x = launch_year,
                       y = agency)) +
  geom_hex(bins = 5000) +
  scale_fill_continuous(type = "viridis") +
  geom_point(aes(x = launch_year,
                 y = agency),
                 size = .1) +
  geom_hline(aes(yintercept = 16,
                 color = "pink"))

#Other really bad graph (this one is better to turn in)
ggplot(space_launches, aes(x = launch_year,
                           y = agency)) +
  geom_count(aes(color = launch_year)) +
  theme(legend.position = "left") +
  annotate(geom = "rect",
           xmax = 1992,
           xmin = 1958,
           ymax = 42,
           ymin = 39,
           fill = "blue",
           alpha = .2) +
  annotate(geom = "text",
           x = 1973,
           y = 40.5,
           label = "a lot",
           color = "blue4") +
  geom_vline(aes(xintercept = 1991),
               color = "pink1") +
  geom_vline(aes(xintercept = 2018),
             color = "red") +
  annotate(geom = "rect",
           xmax = 2018,
           xmin = 1991,
           ymax = 42,
           ymin = 0,
           fill = "yellow",
           alpha = .2) +
  annotate(geom = "text",
           x = 1990,
           y = 25,
           label = "(1991)",
           size = 18) +
  scale_x_continuous(limits = c(1920, 2070)) +
  coord_flip()



 
 
  





 
   

  
  




           
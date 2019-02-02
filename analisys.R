library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb,rate)) %>% 
  ggplot(aes(abb,rate)) +
  geom_bar(width = 0.5, stat = "identity") +
  coord_flip()

ggsave("figs/boxplot.png")

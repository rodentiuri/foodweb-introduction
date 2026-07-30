install.packages(c(
  "tidyverse",
  "igraph",
  "ggraph",
  "tidygraph"
))

library(readr)

interactions <- read_csv("data/interactions.csv")

print(interactions)

# Packages
library(readr)
library(igraph)

# Calling data
interactions <- read.csv("data/interactions.csv")

# Creating food-web object
foodweb <- graph_from_data_frame(
  interactions,
  directed=TRUE
)

# Checking it
foodweb

# Counting
vcount(foodweb) # vertices
ecount(foodweb) # interactions

# Visualize
plot(foodweb)

# Metrics
degree(foodweb) # how many interactions each species does?

# See which are the vertices
V(foodweb)

# Edges
E(foodweb)

## Ecological questions

# Who are all the species?
V(foodweb)$name # names of the vertices/nodes

# Who's eaten by HAWK?
neighbors(foodweb, "Hawk", mode = "out")

# Who's eaten by SNAKE?
neighbors(foodweb, "Snake", mode = "out")

# Who eats SNAKE?
neighbors(foodweb, "Snake", mode = "in")

# Degrees might be IN or OUT.

# See number of total degrees for each species
degree(foodweb)

# See number of degrees in - i.e. how many predators the species has
degree(foodweb, mode = "in")

# See number of degrees out - i.e. how many preys the species has
degree(foodweb, mode = "out")

# How many species exist?
vcount(foodweb) # each node is a species

# How many interactions exist?
ecount(foodweb) # interactions counter

# Which species are producers?
(degree(foodweb, mode = "out") == 0) # the ones that have no out

# Which species are apex predators?
(degree(foodweb, mode = "in") == 0) # the ones that have no in

# How many preys each predator has?

# How many predators each species has?

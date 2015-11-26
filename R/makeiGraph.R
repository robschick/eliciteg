library(igraph)
par(mfrow = c(1, 3))
# North to MIDA
adjm <- matrix(0, 3, 3)
adjm[1, 2] <- 1
g <- graph.adjacency( adjm )
V(g)$name <- c('North', 'MIDA', 'SEUS')
g <- set.vertex.attribute(g, 'x', value = c(-68.5, -70.4, -75.5))
g <- set.vertex.attribute(g, 'y', value = c(43, 36, 30.6))
plot.igraph(g, vertex.size = 20, edge.width = 3, edge.color = 'black', frame = TRUE)

# loop for MIDA
adjm <- matrix(0, 3, 3)
adjm[2, 2] <- 1
g <- graph.adjacency( adjm )
V(g)$name <- c('North', 'MIDA', 'SEUS')
g <- set.vertex.attribute(g, 'x', value = c(-68.5, -70.4, -75.5))
g <- set.vertex.attribute(g, 'y', value = c(43, 36, 30.6))
plot.igraph(g, vertex.size = 20, edge.width = 3, edge.color = 'black', frame = TRUE)



# South to MIDA
adjm <- matrix(0, 3, 3)
adjm[3, 2] <- 1
g <- graph.adjacency( adjm )
V(g)$name <- c('North', 'MIDA', 'SEUS')
g <- set.vertex.attribute(g, 'x', value = c(-68.5, -70.4, -75.5))
g <- set.vertex.attribute(g, 'y', value = c(43, 36, 30.6))
plot.igraph(g, vertex.size = 20, edge.width = 3, edge.color = 'black', frame = TRUE)

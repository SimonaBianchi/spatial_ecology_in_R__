# How to calculate the density of individuals in population

# Installing the spatstat package
install.packages ("spatstat")

#Recalling the package
library (spatstat)

#dataset
bei

plot (bei)

# Changing the argument
plot(bei, pch=19)

# changing the shape and size
plot(bei, pch=19, cex=.5)

# covariate images 
bei.extra

plot(bei.extra)

#extracting data
elevation <- bei.extra$elev
plot(elevation)

elevation <- bei.extra[[1]]

# Density map starting from points
densitymap <- density(bei)

plot(densitymap)
plot(bei)

points(bei)
points(bei, col="green")




# How to calculate the density of individuals in population

# Installing the spatstat package
install.packages ("spatstat")

#Recalling the package
library (spatstat)

#dataset
bei
# vector: point with coordinates
# raster: immagine con griglie

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

#coviariate: can explain the distribution of elements in space

# DAY 2
# multiframe: image in which we can put inside different plots. plot(elevation) e plot (density) exemple
par(mfrow= c(1, 2))
# 1 and 2 are parts of an array: concatenate (c). 1 e 2 sono elementi insieme di multiframe, per questo concatenati
plot(elevation2)
plot(densitymap)

par(mfrow= c(2, 1))
# per mettere in colonna

# per tornare indietro a una sola immagine: let's go back to the original plots
dev.off()

# Changing colors to maps
#http vedi docente. color ramp: 
# color palette, impo capital letters
cl <- colorRampPalette(c("red", "orange", "yellow"))(3)
plot(densitymap, col=cl)

cl <- colorRampPalette(c("red", "orange", "yellow"))(10)
plot(densitymap, col=cl)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(densitymap, col=cl)

# Searching Colors in R
# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
# Exercise: change the color palette of the map: 
# cln: nuovo nome per distinguere da precedente
cln <- colorRampPalette(c("azure", "burlywood", "darkolivegreen3"))(100)
plot(densitymap, col=cln)

#Exercise2: build a multiframe and plot the desity map with two differen color ramp palette
par(mfrow=c(1, 2))
plot(densitymap, col=cln)
plot(densitymap, col=cl)

#to use points:
par(mfrow=c(2,1))
plot(elevation2)
points(bei)








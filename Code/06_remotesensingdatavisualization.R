# code for managing and analyzing remote sensing data
# imageRy --> function to intall from github: intall_github(). this function belong to the package devtools (package for developing packages)

install.packages("devtools")
library(devtools)
install_github("ducciorocchini/imageRy")

library(terra)
Library(imageRy)

# listing data inside of imagery
im.list()

# Sentinel_2_bands

#importing the data
im.import()
b2 <- im.import("sentinel.dolomites.b2.tif")

colorRampPalette (c("black", "grey", "light grey")) (100)
cl <- colorRampPalette (c("black", "grey", "light grey")) (100)
plot(b2, col=cl)

# exercise import band 3 and plot it with previous palette (green band)
b3 <- im.import("sentinel.dolomites.b3.tif")
cl <- colorRampPalette (c("black", "grey", "light grey")) (100)
plot(b3, col=cl)

# importing band 4 (red)
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cl)

# importing band 8 (NIR)
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8, col=cl)

#plotting all the images in a multiframe
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)

# stack them: consider them as part of the same array and c them
sentstack <- c(b2, b3, b4, b8)
plot(sentstack, col=cl)

# plot only one layer of the stack
dev.off()
plot(sentstack[[1]], col=cl)

# multiframe with different colour palette
par(mfrow=c(2,2))
clb <- colorRampPalette (c("dark blue", "blue", "light blue")) (100)
clg <- colorRampPalette (c("dark green", "green", "light green")) (100)
clr <- colorRampPalette (c("dark red", "red", "pink")) (100)
clnir <- colorRampPalette (c("brown", "orange", "yellow")) (100)

par(mfrow=c(2,2))
plot(b2, col=clb)
plot(b3, col=clg)
plot(b4, col=clr)
plot(b8, col=clnir)

# rgb scheme --> natural colour image
dev.off()
im.plotRGB(sentstack, red=3, green=2, blue=1)
im.plotRGB(sentstack, r=3, g=2, b=1)
im.plotRGB(sentstack, 3, 2, 1)

# false colour image
im.plotRGB(sentstack, r=4, g=3, b=2)







# overlap: Estimates of Coefficient of Overlapping for Animal Activity Patterns. code to estimate the temporal ovelap between species. 

install.packages("overlap")
library(overlap)

data(kerinci)
kerinci
head(kerinci)

#gives the statistics of the single zones
summary(kerinci)

#create a new field: time in a radiant. also cereating a new column inside the kerinci dataset
kerinci$Timecirc <- kerinci$Time * 2 * pi
#now when you tipe kerinci, or summary(kerinci) you get a new column which links kerinci with time

#select only the tiger data --> == the comma at the end closes the query. 
tiger <- kerinci[kerinci$Sps=="tiger",]
#then you can type tiger or head(tiger)

#density plot= curva che segue i picchi di un istogramma
# first, select the time only for the tiger
tigertime <- tiger$Timecirc

densityPlot(tigertime)

# macaque
#exercise: select the data for the macaque in the kevingi set and assign tham to the new object.
macaque <- kerinci[kerinci$Sps=="macaque",]
# select the time for the macaque and make density the density plot
macaquetime <- macaque$Timecirc
densityPlot(macaquetime)

#how does the movement in time of the two species relate?
overlapPlot(tigertime, macaquetime)

# SQL
# to select everything that is not macaque: !=
nomacaque <- kerinci [kerinci$Sps!= "macaque",]



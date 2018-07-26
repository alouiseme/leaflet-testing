#packages
library(leaflet)
library(tidyverse)
library(mapproj)

#initiate leaflet
m <- leaflet() %>%
	#add tiles
addTiles() %>%
	#set view
setView(-80, 26, zoom = 10) %>%
	#add markers (1)
addMarkers(lng=-80.28889, lat=25.92253, popup="<b>1</b><br>")
#View map object
m

#import csv of locations
FLIC_FPH_final <- read.csv("FLIC_FPH_final.csv", stringsAsFactors=FALSE) 
# Brings in the file 'FLIC_FPH_final.csv'
# Be sure to first set the working directory in R to where the file is listed

m <- leaflet(FLIC_FPH_final) %>% addTiles() %>% setView(-80.37760, 25.67215, zoom = 8) %>% addCircleMarkers( ~longitude, ~latitude, popup = FLIC_FPH_final$location_name, weight = 3, radius = 2, color = '#000000', stroke = TRUE, fillOpacity = 0.75)
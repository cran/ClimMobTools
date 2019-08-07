## ----setup, include=FALSE------------------------------------------------
TRAVIS <- !identical(tolower(Sys.getenv("TRAVIS")), "true")
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  purl = TRAVIS
)

## ----install, message=FALSE, eval=FALSE, echo=TRUE-----------------------
#  library("devtools")
#  
#  devtools::install_github("agrobioinfoservices/ClimMobTools")
#  

## ----fetch, message=FALSE, eval=FALSE, echo=TRUE-------------------------
#  library("ClimMobTools")
#  library("tidyverse")
#  library("magrittr")
#  
#  # the API key
#  key <- "d39a3c66-5822-4930-a9d4-50e7da041e77"
#  
#  data <- ClimMobTools::getDataCM(key = key,
#                                  project = "breadwheat",
#                                  tidynames = TRUE)
#  
#  # reshape the data into the wide format
#  data %<>%
#    filter(!str_detect(variable, "survey")) %>%
#    group_by(id) %>%
#    distinct(id, variable, value) %>%
#    spread(variable, value) %>%
#    ungroup()
#  
#  

## ----temperature, message=FALSE, eval=FALSE, echo=TRUE-------------------
#  # first we convert the lonlat into numeric
#  # and the planting dates into Date
#  data %<>%
#    mutate(lon = as.numeric(lon),
#           lat = as.numeric(lat),
#           plantingdate = as.Date(plantingdate,
#                                  format = "%Y-%m-%d"))
#  
#  # then we get the temperature indices
#  temp <- temperature(data[c("lon","lat")],
#                      day.one = data["plantingdate"],
#                      span = 120)
#  

## ----rain, message=FALSE, eval=FALSE, echo=TRUE--------------------------
#  rain <- rainfall(data[c("lon","lat")],
#                   day.one = data["plantingdate"],
#                   span = 120)
#  

## ----rain2, message=FALSE, eval=FALSE, echo=TRUE-------------------------
#  rain <- rainfall(data[c("lon","lat")],
#                   day.one = data["plantingdate"],
#                   span = 120,
#                   days.before = 15)
#  
#  

## ----plrankings, message=FALSE, eval=FALSE, echo=TRUE--------------------
#  G <- build_rankings(data,
#                      items = c("item_A","item_B","item_C"),
#                      input = c("overallperf_pos","overallperf_neg"),
#                      grouped.rankings = TRUE)
#  
#  

## ----plmodel, message=FALSE, eval=FALSE, echo=TRUE-----------------------
#  library("PlackettLuce")
#  
#  modeldata <- cbind(G, temp, rain)
#  
#  tree <- pltree(G ~ ., data = modeldata, npseudo = 5)
#  


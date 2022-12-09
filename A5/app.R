#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

library(shiny)
library(ggplot2)
library(leaflet)
library(tidyverse)
library(maps)
library(readr)
library(plotly)
#library("rsconnect")

source("~/Documents/info201/assignments/a5-capriceculkin/A5/ui.R")
source("~/Documents/info201/assignments/a5-capriceculkin/A5/server.R")

shinyApp(ui = ui, server = server) 

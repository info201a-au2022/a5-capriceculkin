#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#library(shiny)
#library(dplyr)
#library(ggplot2)
#library(plotly)

a5_dataset <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")

combination_data <- data.frame(a5_dataset$country, a5_dataset$gdp, a5_dataset$co2) %>%
  na.omit() %>%
  rename("Country" = "a5_dataset.country") %>%
  rename("GDP" = "a5_dataset.gdp") %>%
  rename("CO2" = "a5_dataset.co2") %>%
  group_by(Country) %>%
  summarise(GDP = sum(GDP), CO2 = sum(CO2))


###Chart code 

GDP_and_CO2 <-  combination_data %>%
  filter() %>%
  ggplot( aes(x = `GDP`, y = `CO2`, color = Country)) +
  xlab("Gross Domestic Product Measured in $") +
  ylab("Annual total production-based emissions of carbon dioxide") +
  geom_point () +
  theme_bw()

# Define server logic required to draw a histogram

server <- function(input, output, session) {
}

shinyApp(ui = ui, server = server) 


#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#library(shiny)
#library(bslib)

# UI code

Intro <- tabPanel(
  "Introduction",
  h1(strong("A5 by Caprice Culkin")),
  p(strong("INFO 201 Autumn 2022, Section AB")),
  h3("Where This Data Come From?"),
  p("This data is from Our World in Data, and specifically is Data on CO2 and Greenhouse Gas Emissions."),
  br(),
  h3("Variables I Chose to Analyze"),
  p("The variables that I chose to analyze from the dataset are as follows"),
  h5("Variable 1: Country"),
  p("geographic location"),
  h5("Variable 2: GDP"),
  p("Gross domestic product measured in international-$ using 2011 prices to adjust for price changes over time (inflation) and price differences between countries. Calculated by multiplying GDP per capita with population."),
  h5("Variable 3: CO2"),
  p("Annual total production-based emissions of carbon dioxide (CO₂), excluding land-use change, measured in million tonnes. This is based on territorial emissions, which do not account for emissions embedded in traded goods."),
  br(),
  h3("Three Relevant Generated Values of Interest"),
  p("With the three listed variables earlier, I decided to make a dataframe that grouped by country, and summarised GDP and CO2, while also removed the Not Available Data Values. From this I got a bunch of different countries values, and will choose three for this analysis."),
  p("1 - Afghanistan, GDP = $1.481041e+12, CO2 = 183.341 ppm (parts per million"),
  p("2 = Albania, GDP = $8.648130e+11, CO2 = 272.379ppm"),
  p("3 = Algeria, GDP = 1.170792e+13, CO2 = 4326.990ppm")
)
-------------------------------------------------
Page_1 <- tabPanel(
  "Interactive Visualization",
  titlePanel("Interactive Dot Plot"),
  mainPanel(
    ggplotly(GDP_and_CO2)) ,
  mainPanel(
    br(),
    br(),
    p("This dot plot shows the correlation between a Countrys' GDP and its responding CO2 emissions. For interactivity, you can hover over each dot and it will show you cthe corresponding country as well as the GDP and CO2. The widget is actually the column shown on the right- when you double click on any country, it will change the country/data that is displayed in the chart and show only that!"),
    p("I wanted to include this chart because I wanted to see these two variables and if there is some sort of correlation. Interesting enough, there seems to be a positive correlation between a country GDP and their CO2 emissions.")
  )
)

#UI fr

ui <- navbarPage("Impact of Gross Domestic Product and Annual Carbon Dioxide Emissions",
                 theme = bs_theme(version = 5, bootswatch = "vapor"),
                 Intro,
                 Page_1
)


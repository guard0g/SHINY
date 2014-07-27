
# Showing the effect of compound interest over time 
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Time Value of Money"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput('rate',"Interest Rate in %",5,min=0,max=100,step=1 ),
      sliderInput("months",
                  "Number of months",
                  min = 1,
                  max = 240,
                  value = 24)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("moneyPlot"),
      p("A Simple Calculator that illustrates the difference of Time Value of Money between Simple and Compound Interest."), 
      p("Specifically:"),
      p("Enter the annual interest Rate in percent"),
      p("Use a slidebar to set the number of months"),
      p("See the difference between simple interest and compound interest over time in the plot")
     )
  )
))

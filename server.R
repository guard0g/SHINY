
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
    
  output$moneyPlot <- renderPlot({
    x    <- 1:input$months
    compound <- (1+input$rate/1200)^x
    simple <- (1+input$rate/1200*x)    
    plot(x,compound, main="Time vs Money: Compound vs Simple Interest",
         xlab="Time in Months",ylab="Value")
    lines(x,simple,col = "red",lwd=3)

  })

})

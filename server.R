#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(quantmod)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$grafico <- renderPlot({
    stockdata <- getSymbols(input$Share, src = "yahoo",
                          from = "2019-01-01", to = "2019-02-04",
                          auto.assign = FALSE)
    candleChart(stockdata, name = input$Share)
  })

  
})

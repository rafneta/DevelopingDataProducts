#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Shares in American Stock market"),
  sidebarLayout(
    sidebarPanel(
p("You can view the shares in the American stock
exchange of the different companies available from the 
beginning of the year 2019 until 2019-02-04, the data 
is extracted from yahoo. The code u1.r and server.R 
  are in the following link",
  style = "font-family: 'times'; font-si16pt"),
tags$div(tags$a(href="https://github.com/rafneta/DevelopingDataProducts",
target = "_blank","Github Repository")),
      br(),
       selectInput("Share",
                   label = "Share",
                   choices = c("Apple"= "AAPL", "CISCO"= "CSCO",
                               "IBM"= "IBM", "Facebook" = "FB",
                               "Twitter" = "TWTR", 
                               "Microsoft" ="MSFT","Google" = "GOOG"))
                   
    ),
    mainPanel("Shares in American Stock market",
       plotOutput("grafico")
       
    )
  )
))

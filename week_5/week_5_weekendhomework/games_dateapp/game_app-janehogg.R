
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(tidyverse)
library(bslib)


CodeClanData::game_sales

developer_choice <- sort(unique( game_sales$developer))

# Define UI for application that draws a histogram
ui <- fluidPage(
  
    titlePanel("Games Development - Best Performing Genre/Developer"),

    theme = bs_theme (bootswatch = "sketchy"),
    tags$i( "Everyone is a Winner !!"),
    tags$br(),
    tags$b( "for the bold text"),
    tags$a("Economist Website",
           href = "https://www.economist.com/culture/2022/05/10/video-game-writing-is-improving-by-leaps-and-bounds" ),
    tags$h1(" xxx"),
    sidebarLayout(
      sidebarPanel(
        radioButtons(
          inputId = "Games Genre",
          label = "Action, Sport or something else ?",
          choices = c("Action", "Sport", "Shooter", "Misc",
                      "Racing", "Adventure", "Fighting", "Platform", "Puzzle",
                      "Role-Playing", "Simulation")),
        
        selectInput(
        inputId = "Genre,"
        lable = "Which Genre",
        choice = genre_
          
        ),

      
      
      selectInput(
        inputId = 
        label = ,
        choices = country_choice)
        # Show a plot of the generated distribution
        mainPanel(
           plotOutput(    )
    )


# Define server logic required to draw a histogram
server <- function(input, output) {

    })
}

# Run the application 
shinyApp(ui = ui, server = server)



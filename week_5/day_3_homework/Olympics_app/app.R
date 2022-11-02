#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/

##'Basic shiny app 

library(shiny)
library(tidyverse)
library(bslib)

olympics <- CodeClanData::olympics_overall_medals

country_choice <- sort(unique( olympics$team))

ui <- fluidPage(
  titlePanel("Olympic Medals"),
  theme = bs_theme (bootswatch = "yeti"),
  tags$i( "italics text can be places here"),
  tags$br(),
  tags$b( "for the bold text"),
  tags$a("Codeclans Website", href = "https://codeclan.com" ),
  tags$h1("This is an enourmous heading"),
  sidebarLayout(
    sidebarPanel(
      radioButtons(
        inputId = "Season",
        label = "Summer or Winter ?",
        choices = c("Summer", "Winter")),
      
      
      selectInput(
        inputId = "team",
        label = "Which Team?",
        choices = country_choice)
        
      ),
    mainPanel(plotOutput("medal_plot"))
    
  ))
  


server <- function(input, output) {
  output$medal_plot <- renderPlot(
    olympics %>%
      filter(team == input$team,
             season == input$Season) %>%
      ggplot (aes(x=medal, y = count, fill = medal))+
      geom_col()
  )
  
}

shinyApp(ui, server)




  
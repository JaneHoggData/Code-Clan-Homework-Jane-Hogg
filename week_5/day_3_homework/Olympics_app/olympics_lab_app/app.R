#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)
library(tidyverse)
library(bslib)

olympics <- CodeClanData::olympics_overall_medals

country_choice <- sort(unique( olympics$team))

ui <- fluidPage(
  titlePanel("Olympic Medals"),
  theme = bs_theme (bootswatch = "sketchy"),
  tags$i( "Everyone is a Winner !!"),
  tags$br(),
  tags$b( "for the bold text"),
  tags$a("ParaOlympic Website",
         href = "https://www.paralympic.org/paralympic-games" ),
  tags$h1("Five Country Medal Comparisons"),
  sidebarLayout(
    sidebarPanel(
      radioButtons(
        inputId = "Season",
        label = "Summer or Winter ?",
        choices = c("Summer", "Winter")),
      radioButtons(
        inputId = "Medal",
        label = "Gold, Silver or Bronze ?",
        choices = c("Gold", "Silver", "Bronze")),
     

      
      
      
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



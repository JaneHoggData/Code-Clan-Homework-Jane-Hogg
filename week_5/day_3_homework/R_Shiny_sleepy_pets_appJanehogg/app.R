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

library(readr)
pets <- read_csv("pets.csv")
View(pets)



sleepy_pets <- sort(unique( pets$sleep))

ui <- fluidPage(
  titlePanel("Pets and Sleep"),
  theme = bs_theme (bootswatch = "yeti"),
  tags$i( "No Pets were harmed during this research"),
  tags$br(),
  tags$b( "for the bold text"),
  tags$a("Pets at Home Website", href = "https://www.petsathome.com/" ),
  tags$h1("Who sleeps the most?"),
  sidebarLayout(
    sidebarPanel(
      radioButtons(
        inputId = "Gender",
        label = "Male or Female ",
        choices = c("Male", "Female")),
      
      
      selectInput(
        inputId = "sleep",
        label = "How much Sleep?",
        choices = sleep)
        
      ),
    mainPanel(plotOutput("sleep_plot"))
    
  ))
  
server <- function(input, output) {
  output$sleep_plot <- renderPlot(
    sleep_plot <- ggplot(pets) +
      aes(x = sleep, fill = sex) +
      scale_fill_manual(values=c('#E69F00', '#56B4E9')) +
      geom_histogram(bins = 20, col = "white", show.legend = FALSE) + 
      theme_light() + 
      labs(y = "Gender", x = "Sleep/hrs") + 
      facet_wrap(~ sex, nrow = 2)
  )
  
}

shinyApp(ui, server)





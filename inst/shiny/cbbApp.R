library(shiny)
library(tidyverse)
library(hoops)
library(ggplot2)

ui <- fluidPage(
  titlePanel("College Basketball Data"),
  sidebarLayout(
    sidebarPanel(
      textInput("team", "Select a Team!"),
      actionButton("submit", "Go!")
    ),
    
    mainPanel(
      tableOutput("teamTab"),
      plotOutput("teamPlot")
    )
  )
)


server <- function(input, output, session){
  observeEvent(input$submit, {
    req(input$team)
    tm <- input$team
    cbbga23 <- hoops::cbbga23
    Teams <- hoops::Teams
    if (tm %in% Teams$Team){
      output$teamTab <- renderTable({
        record <- tibble(tmRec(tm))
        
      }, digits = 3, colnames = FALSE, rownames = FALSE)
      
      output$teamPlot <- renderPlot({
        ptsHist(tm)
      })
    } else {
      
      output$teamTab <- renderTable({
        availableTms <- sort(unique(c(cbbga23$Home, cbbga23$Away)))
        message <- paste("We don't have data for that team! Try again with one of these?",
                         paste(availableTms, collapse = ",\n", recycle0 = TRUE))
        message
      }, colnames = FALSE)
      output$team_plot <- NULL
    }
    
  })
  
}
shinyApp(ui = ui, server = server)
library(shiny)


server <- function(input, output, session) {
  output$revelation <- renderText(({
    paste("Your information about: ' ", input$top_secret, "' is classified as DANGEROUS. You risk your life if you choose to continue the search")
  }))
  
}


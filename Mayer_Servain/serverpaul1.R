library(shiny)


server <- function(input, output, session) {
  output$revelation <- renderText(({
    paste("You risk your life if you choose to continue the search of the word: '", input$top_secret, "' (True or false):",input$classe, ".")
  }))
  
}


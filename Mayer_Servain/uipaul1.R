library(shiny)

ui <- pageWithSidebar(
  titlePanel("TOP SECRET INFORMATION, DO NOT READ"),
  sidebarPanel(
    textInput(inputId = "top_secret",
              label = "Type a key-word to find the most confidential top secret information in the world about it:",
              value = "")
  ),
  mainPanel(h3("Based on our information from agents at the highest levels of government who wish to remain anonymous, we can state that:"),
    textOutput("revelation")
  )
  )
  
server <- function(input, output, session) {
  output$revelation <- renderText(({
    paste("Your information about: ' ", input$top_secret, "' is classified as DANGEROUS. You risk your life if you choose to continue the search")
  }))
  
}



shinyApp(ui, server)

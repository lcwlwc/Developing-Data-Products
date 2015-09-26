
library(shiny)

Agehappy <- function(Age) ((Age + runif(1, 0, 10))/105)*100

shinyServer(
    function(input, output) {
        output$inputchildren <- renderPrint({input$Children})
        output$inputAge <- renderPrint({input$Age})
        output$inputGender <- renderPrint({input$Gender})
        output$prediction <- renderPrint({Agehappy(input$Age)})
    }
)
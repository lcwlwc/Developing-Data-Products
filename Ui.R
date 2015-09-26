library(shiny)

shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Happiness Prediction"),
        sidebarPanel(
            numericInput('Children', 'Number of Children', 0, min = 0, max = 10, step = 1),
            numericInput('Age', "Age", 0, min = 0, max = 100, step = 1),
            selectInput("Gender", label = "Your Gender", choices = list("Male"="Male", "Female"="Female"), selected = 1),
            submitButton('Go!')
        ),
        mainPanel(
            h3('Prediction'),
            
            h4('You have'),
            verbatimTextOutput("inputchildren"),
            h4('children,'),
            
            h4('your age is '),
            verbatimTextOutput("inputAge"),
            
            h4("and you are a"),
            verbatimTextOutput("inputGender"),
            
            h4('Your happiness level is '),
            verbatimTextOutput("prediction")
        
            )
    )
)
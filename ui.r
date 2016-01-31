


library(shiny)

shinyUI(fluidPage(
  titlePanel("Uploading Files"),
  sidebarLayout(
    sidebarPanel(
      
      fileInput('file1', 'Choose CSV File',
                accept=c('text/csv', 
                         'text/comma-separated-values,text/plain', 
                         '.csv')),
      selectInput("var", 
                  label = "Choose a variable to display",
                  choices = c("y", "a", "b", "c", "d", "e"),
                  selected = "y"),
      
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
      
    ),
    
    mainPanel(
      dataTableOutput('datenblatt'),
      
      plotOutput("histo"),
      
      tableOutput("Werte_a")
    )
  )
))




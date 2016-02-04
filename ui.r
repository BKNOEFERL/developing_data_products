





library(shiny)

shinyUI(fluidPage(
  titlePanel("Univariate Analysis - linear models"),
  sidebarLayout(
    sidebarPanel(
      p("With this app, the user is able to select a semikolon delimited csv file containing 6 variables (1 outcome, and 5 explanatory variables)."),
      p("To try out the app, you can use the test_data.csv on my github repo:"),
        a("https://github.com/BKNOEFERL/developing_data_products"),
      p("After reading the data in you can see the first 25 rows of the dataset (by changing the show entry, you can choose to see for example the first 10 rows"),
      p("Below that, you can see a histogramm of the variable you have chosen on the left, as well as the output of a linear model with y as outcome and your chosen variable as independent variable"), 
      p("The app will be improved, but for this assignment, it is important to take a csv file, which is semikolon delimited and where dec is comma. The variable names should be y for the outcome and b to e for the independent variables"), 
      p("Please feel free to use the above mentioned test data frame"), 
      
      fileInput('file1', 'Choose .csv File',
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





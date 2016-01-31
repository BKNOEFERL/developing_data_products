


library(shiny)

shinyServer(function(input, output) {
  
  
  output$datenblatt <- renderDataTable({
    
    
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    

    dat <- read.csv(inFile$datapath, header=TRUE, sep=";")
    
    dat
    
    
  })
  
  output$histo <- renderPlot({
    
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    dat <- read.csv(inFile$datapath, header=TRUE, sep=";", dec=",")
    
    bins <- seq(min(dat[,input$var]), max(dat[,input$var]), length.out = input$bins + 1)
    
    hist(dat[,input$var], col="green", breaks=bins)
  })
  
  
  output$Werte_a <- renderTable({
    
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    dat <- read.csv(inFile$datapath, header=TRUE, sep=";", dec=",")
    summary(lm(dat$y~dat[,input$var]))
  })
  
  
})




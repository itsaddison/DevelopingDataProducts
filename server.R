library(shiny) 
nirvanafunction<-function(age,wisdomrating) {
  wisdomrating/age
  }

evaluation<-function(age,wisdomrating){
  nirvana_value<-(wisdomrating/age)
  ifelse(nirvana_value<.2,"screwed",
  ifelse(nirvana_value>=.2,"lying to yourself"))
}

shinyServer(
  function(input, output) {
    output$estimation <- renderPrint({nirvanafunction(input$age,input$wisdomrating)})
    output$evaluation <- renderPrint({evaluation(input$age,input$wisdomrating)})
  } 
)
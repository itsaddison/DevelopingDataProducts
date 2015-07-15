library(shiny) 
shinyUI(
  pageWithSidebar(
    headerPanel("Are you on the path to self-actualization?"),
      sidebarPanel(
      numericInput('age', 'Insert your age in Earth years', 18) ,
      numericInput('wisdomrating', 'Insert your wisdom rating, from 1-10,
      based on an honest self-assessment of your attained wisdom', 
      5, min = 0, max = 10, step = 0.5),
      checkboxGroupInput("checkGroup", label = h3("Can you handle the truth?"), 
      choices = list("Yes", "No", "Hell No"), selected = 1),
      submitButton('Get my Nirvana Rating')), 
    mainPanel(
      p('Truth-seekers around the world want to know if they are on the path to Nirvana.
        Well, good news has arrived! This Shiny App was specifically designed with these
        human beings in mind. We can help you assess your Universal Nirvana Rating - UNR - 
        as well as tell you how you stack up with other human beings alive today.'),

        p('Simply enter you age and perceived self-prescribed wisdom rating, and we will do the rest.

        The checkboxes about your ability to handle the truth will not change your score,
        but instead simply prepare you for what you are about to find out about yourself.'),
        
        p('If you are behind the curve, fear not and seek on!'),
      tags$div(
        tags$ul(
          code("PLEASE NOTE: The average 30 year old male cannot handle the truth and is screwed"))),
      
      h4('Comparing your unique values to the prescribed formula, your UNR is:'), 

      verbatimTextOutput("estimation"),
      p('Which means that you are:'),verbatimTextOutput("evaluation"))))
library(shiny)

shinyUI(fluidPage(
    titlePanel('Baseball'),
    sidebarPanel(
        selectInput('team',choices = levels(baseball$Team),label = 'Select a Team!'),
        selectInput('stat', choices = names(baseball)[4:15], label = 'Select a Stat!')
        
    ),
    mainPanel(plotOutput('plot1'))
))
source("help.R")
shinyUI(fluidPage(
    titlePanel('Baseball'),
    sidebarPanel(
        selectInput('team',choices = levels(baseball$Name),label = 'Select a Team!'),
        selectInput('stat', choices = names(baseball)[c(4:9,11:12)], label = 'Select a Stat!')
        
    ),
    mainPanel(
        tabsetPanel(
            tabPanel('Plot',plotOutput('plot1')),
            tabPanel('Table', dataTableOutput('table')),
            tabPanel('About', htmlOutput('about'))
))))
library(ggplot2)
baseball <- read.csv('baseball.csv')
shinyServer(function(input, output){
    
    output$plot1 <- renderPlot({
        dat <- baseball[baseball$Team == input$team, c('Year',input$stat)]
        qplot(Year,dat[,2], data = dat,main = paste(input$stat, 'for', input$team, sep = ' ')) + geom_line() +
            scale_y_continuous(input$stat)
            
        })
}
    )
source("help.R")

shinyServer(function(input, output){
 
    output$plot1 <- renderPlot({
        var <- paste(input$stat)
        
        dat <- baseball[baseball$Name == input$team, c('Year',input$stat,'Playoffs')]
        names(dat) <- c('Year', 'Statistic', 'Playoffs')
        play <- dat[dat$Playoffs == 1, 'Year']
        ggplot(aes(x=Year,y = Statistic), data = dat) + geom_line() +
            scale_y_continuous(input$stat) + geom_vline(xintercept = play,linetype = "dashed", colour = "blue") + 
            labs(title = paste(var, 'for', input$team, sep = " "))
            
        })
    output$about <- renderText('This app will show a chosen statistic, for a chosen team, 
                               over the time period that a team has existed. 
                               The app is completely reactive, 
                               so the only interaction necessary is picking from the two combo boxes.  
                               Years that a team made the playoffs have a dashed vertical line')
    
    output$table <- renderDataTable(dat <- baseball[baseball$Name == input$team, c('Year',input$stat)])
}
    )
library(shiny); library(ggplot2)
baseball <- read.csv('baseball.csv')
baseball <- baseball[,c(-11,-12,-13)]

teamNames <- data.frame(levels(baseball$Team), c('Anaheim Angels', 'Arizona Diamondbacks', 'Atlanta Braves',
                                                 'Baltimore Orioles', 'Boston Red Sox', 'California Angles', 'Chicago Cubs', 'Chicago White Sox',
                                                 'Cincinnati Reds', 'Cleveland Indians', 'Colorado Rockies', 'Detroit Tigers', 'Florida Marlins',
                                                 'Houston Astros', "Kansas City A's", 'Kansas City Royals', 'Los Angeles Angels', 
                                                 'Los Angeles Dodgers', 'Miami Marlins', 'Milwaukee Brewers', 'Minnesota Twins', 'Milwaukee Braves',
                                                 'Montreal Expos', 'New York Mets', 'New York Yankees', "Oakland A's", 'Philadelphia Phillies',
                                                 'Pittsburgh Pirates', 'San Diego Padres', 'Seattle Mariners', 'Seattle Pilots', 'San Francisco Giants',
                                                 'St. Louis Cardinals', 'Tampa Bay Devil Rays', 'Tampa Bay Rays', 'Texas Rangers', 'Toronto Blue Jays',
                                                 'Washington Nationals', 'Washington Senators'))
names(teamNames) <- c('Team', 'Name')

baseball <- merge(baseball,teamNames,by = 'Team')

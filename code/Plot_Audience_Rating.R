
Plot_Audience_Rating <- function(Data){
  
  
  order <- Data %>% arrange(desc('Audience..score..')) %>% pull('Film')
  
  Plot <- Data %>% plot_orderset(., Column = 'Film', Order = order) %>% ggplot() + geom_bar(aes(x= Film, y = Audience..score.., fill = Film), stat = 'identity') + 
    coord_cartesian(ylim = c(50, 90))  + theme(axis.text.x = element_blank()) + labs(title = 'Audeince Rating of Films with Rotten Tomatoes Scores of above 80%', subtitle = "1 reflects 500 days of summer due to technical issues")
  
  Plot
  
  
}
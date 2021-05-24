

Gross_Plot <- function(Data){
  
  Data <- na.omit(Data)
  
  order1 <- Data %>% arrange(desc(Mean_Studio_Gross)) %>% pull(Lead.Studio)
  
  Plot <- Data %>% plot_orderset(.,Column = 'Lead.Studio', Order = order1) %>% ggplot() + geom_bar(aes(x=Lead.Studio, y = Mean_Studio_Gross, fill= Lead.Studio), stat = 'identity') +
    theme(axis.text.x = element_blank()) + labs(title = "Mean Worldwide Gross by each Studio")
  
  
  Plot
  
}
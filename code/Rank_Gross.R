
Rank_Gross <- function(Data){
  
  Data <- Data %>% filter(is.na(Worldwide.Gross) == 0) %>% group_by(Lead.Studio) %>% summarise(Mean_Studio_Gross = mean(Worldwide.Gross)) %>% arrange(desc(Mean_Studio_Gross))
  
  return(Data)
  
  
}
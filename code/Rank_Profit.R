
Rank_Profit <- function(Data){
  
  Data <- Data %>% filter(is.na(Profitability) == 0) %>% group_by(Lead.Studio) %>% summarise(Mean_Studio_Profitability = mean(Profitability)) %>% arrange(desc(Mean_Studio_Profitability))
  
  return(Data)
  
  
}
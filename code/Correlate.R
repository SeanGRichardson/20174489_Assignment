

Correlate <- function(Data){
 
  Data <- Data %>% select(Audience..score.., Rotten.Tomatoes.., Worldwide.Gross)

  
  
  ut <- upper.tri(Data)
  Corr_Table <-data.frame(
      row = rownames(Data)[row(Data)[ut]],
      column = rownames(Data)[col(Data)[ut]],
      cor  =(Data)[ut]
    )
  
  return(Corr_Table)
  
}
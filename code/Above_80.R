
Above_80 <- function(Data){
  
  Data <- Data %>% filter(Rotten.Tomatoes.. >  80)
  
  # (500) Days of Summer was giving me problems (the plot of the movie as well as the brackets in the title)
  # So I decided to remove a brackets in titles for ease of analysis
  
  for (i in 1:nrow(Data)) {
    
    if( Data[i,1] == "(500) Days of Summer")
      Data[i,1] <- "Five Hundred Days of Summer"
    
  }
  
  return(Data)
  
}
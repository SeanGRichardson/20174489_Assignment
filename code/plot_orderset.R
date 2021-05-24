

# Many thanks for providing the following function, it has been a lifesaver

plot_orderset <- function(df, Column, Order){
  
  df[,Column][[1]] <- factor(df[,Column][[1]], levels = Order)
  
  df
  
}

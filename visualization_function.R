library(ggplot2)

viz <- function(df){
  ggplot(df, aes(x=continent, fill=continent)) + geom_bar()
}
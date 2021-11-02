library(ggplot2)

viz <- function(df){
  ggplot(df, aes(x=continent, fill=continent)) + geom_bar()
}


#zby:create visualization function which in used in presentation.Rmd file
vf<-function(input,lifeExp,gdpPercap){
  library(tidyverse) #load all "tidyverse" libraries
  picture<-ggplot(data=input,mapping=aes(x=lifeExp,y=gdpPercap,group=continent,color=continent))+geom_point()+xlab("lifeExp")+ylab("gdpPercap") 
  return(picture)
}
#zby:transfer the functionn file to display the picture of
p<-vf(input=gapminder,lifeExp=gapminder$lifeExp,gdpPercap=gapminder$gdpPercap)
p

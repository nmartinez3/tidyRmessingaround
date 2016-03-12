##praciticing using gather and reverting back to original data

require(tidyr)
require(dplyr)
iris_new<-iris
iris_new$row<-1:nrow(iris_new)
iris_newnew<-gather(iris_new,measurement_type,measurement,Sepal.Length:Petal.Width)
iris_original<- iris_newnew %>% spread(measurement_type,measurement,convert=T)
iris_original<- iris_original[,-2]
iris_original<- iris_original[,c(4,5,2,3,1)]
head(iris_original)
head(iris)
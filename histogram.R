###histogram----
#histogram using bsic R functions

View(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length) 
hist(iris$Petal.Width)

#histogram using the ggplot2 package
library(tidyverse)   # for package activation 
# i am using theme_minimal() for a clean look of the histogram.
# histogram of iris data set (sepal length) using ggplot2
ggplot(iris, aes(x= Sepal.Length))+ geom_histogram(binwidth = 0.5,
                                                   fill = "blue",
                                                   color = "white")+
  theme_minimal() + labs(title = "Histogram of Sepal Length",
                         x = "Sepal Length",
                         y = "Frequency")

# histogram of titanic data set (age) using ggplot2
ggplot(titanic, aes(x= Age))+
  geom_histogram(fill="#000080",
                 binwidth = 3,
                 colour = "black")+ 
  labs(title = "Histogram of Age of Titanic Passengers",
       x= "Age of Passengers", 
       y= "Frequency")

#Histogram using mpg dataset
view(mpg)
ggplot(mpg, aes(x=displ))+ geom_histogram(binwidth = 0.2,
                                      fill = "blue",
                                      color = "white")+
labs(title = "Histogram of Engine Displacement",
                         x = "Engine Displacement",
                         y = "Frequency")


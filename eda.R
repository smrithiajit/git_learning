install.packages(c("ggplot2"))
library('ggplot2')
ggplot(iris, aes(x = Petal.Length, y = Sepal.Length, colour = Species)) + 
  geom_point() +
  ggtitle('Iris Species by Petal and Sepal Length')

cor(iris[, c('Petal.Length', 'Sepal.Length')])


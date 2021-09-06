# Download Iris dataset from UCI repository
iris.uci <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"),header=FALSE)

#Assign column names to the dataset
colnames(iris.uci)<-c("sepal.length","sepal.width","petal.length","petal.width","species")

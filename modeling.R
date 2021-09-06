
# Read the data into the dataframe
iris=read.csv('/cloud/project/iris_processed.csv')

#Change the column 'Is.Versicolor' to a factor variable
iris[['Is.Versicolor']] <- as.numeric(iris[['Species']] == 'versicolor')

# Apply linear ML model
fit.lm <- lm(Is.Versicolor ~ Petal.Length + Sepal.Length, data = iris)


# Get the summary of the model
summary(fit.lm)


# If the probability of prediction is greater than 0.5 the outcome is assigned 1, else 0
iris[['Predict.Versicolor.lm']] <- as.numeric(predict(fit.lm) > 0.5)

## Plot predicted vs. actual values( confusion matrix)

table(iris[, c('Is.Versicolor', 'Predict.Versicolor.lm')])


# Let's apply a generalized linear model
fit.logit <- glm(Is.Versicolor ~ Petal.Length + Sepal.Length, data = iris,
                 family = binomial(link = 'logit'))

# let's check out a summary of the model
summary(fit.logit)
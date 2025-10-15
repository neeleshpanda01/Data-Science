dataset = read.csv("C:/Users/ece-lab/Desktop/Salary_Data.csv")
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary,SplitRatio = 2/3)
training_set = subset(dataset, split==TRUE)
test_set= subset(dataset, split==FALSE)

training_set[,2:3]=scale(training_set[, 2:3])
test_set[,2:3]=scale(test_set[,2:3])

regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)

y_pred = predict(regressor, newdata = test_set)
y_pred

#visualize
install.packages('ggplot2')
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$YearsExpirence, y = training_set$Salary),
colour = 'red') +
  geom_line(aes(x = training_set$YearsExpirence, y = predict(regressor, newdata = training_set)),
             colour = 'blue') +
  ggtitle('Salary vs expirence (Training set)') +
  xlab('Years of Expirence') +
  ylab('Salary')

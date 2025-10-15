fin$Country = factor(fin$Country,
                     levels = c('France', 'Spain','Germany'),
                     labels=c(1,2,3))
fin$Purchased = factor(fin$Purchased,
                     levels = c('No','Yes'),
                     labels=c(0,1))

install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(fin$Purchased,SplitRatio = 0.8)
training_set = subset(dataset, split==TRUE)
test_set= subset(dataset, split==FALSE)

#feature scaling
training_set[,2:3]=scale(training_set[, 2:3])
test_set[,2:3]=scale(test_set[,2:3])

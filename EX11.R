#Kmeans clustering
dataset = read.csv("Mall_customers.csv")
x <- dataset[4:5]

set.seed(6)
wcss <- vector()
for (i in 1:10) wcss[i] <-sum(kmeans(x, i)$withinss)
plot(1:10, wcss, type = "b", main = paste('Clusters of clients'),xlab = "Number of clusters", ylab ="WCSS")

#Applying k-Means to the mall dataset
set.seed(29)
kmeans <- kmeans(x, 5, iter.max = 300, nstart = 10)

library(cluster)
clusplot(x,
         kmeans$cluster,
         lines=0,
         shade=TRUE,
         color=TRUE,
         labels=2,
         plotcare=FALSE,
         span=TRUE,
         main=paste("Clusters of slients"),
         xlab="Annual Income",
         ylab="spending Score")
